Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58430E014
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 17:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DCF6EB52;
	Wed,  3 Feb 2021 16:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFE56EB34
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 16:53:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23778162-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 16:52:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 16:52:59 +0000
Message-Id: <20210203165259.13087-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203165259.13087-1-chris@chris-wilson.co.uk>
References: <20210203165259.13087-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 9/9] drm/i915: Extract the ability to defer and
 rerun a request later
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lift the ability to defer a request until later from execlists into the
common layer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 57 +++--------------
 drivers/gpu/drm/i915/i915_scheduler.c         | 63 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_scheduler.h         |  5 +-
 3 files changed, 67 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 310c248efa0b..9d24d91f5ae7 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -979,54 +979,6 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-static void defer_request(struct i915_request *rq, struct list_head * const pl)
-{
-	LIST_HEAD(list);
-
-	/*
-	 * We want to move the interrupted request to the back of
-	 * the round-robin list (i.e. its priority level), but
-	 * in doing so, we must then move all requests that were in
-	 * flight and were waiting for the interrupted request to
-	 * be run after it again.
-	 */
-	do {
-		struct i915_dependency *p;
-
-		GEM_BUG_ON(i915_request_is_active(rq));
-		list_move_tail(&rq->sched.link, pl);
-
-		for_each_waiter(p, rq) {
-			struct i915_request *w =
-				container_of(p->waiter, typeof(*w), sched);
-
-			if (p->flags & I915_DEPENDENCY_WEAK)
-				continue;
-
-			/* Leave semaphores spinning on the other engines */
-			if (w->engine != rq->engine)
-				continue;
-
-			/* No waiter should start before its signaler */
-			GEM_BUG_ON(i915_request_has_initial_breadcrumb(w) &&
-				   __i915_request_has_started(w) &&
-				   !__i915_request_is_complete(rq));
-
-			if (!i915_request_is_ready(w))
-				continue;
-
-			if (rq_prio(w) < rq_prio(rq))
-				continue;
-
-			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
-			GEM_BUG_ON(i915_request_is_active(w));
-			list_move_tail(&w->sched.link, &list);
-		}
-
-		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
-	} while (rq);
-}
-
 static void defer_active(struct intel_engine_cs *engine)
 {
 	struct i915_request *rq;
@@ -1035,7 +987,14 @@ static void defer_active(struct intel_engine_cs *engine)
 	if (!rq)
 		return;
 
-	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	/*
+	 * We want to move the interrupted request to the back of
+	 * the round-robin list (i.e. its priority level), but
+	 * in doing so, we must then move all requests that were in
+	 * flight and were waiting for the interrupted request to
+	 * be run after it again.
+	 */
+	__i915_sched_defer_request(engine, rq);
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a5df27061c3c..641141f3ce10 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -179,8 +179,8 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	}
 }
 
-struct list_head *
-i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
+static struct list_head *
+lookup_priolist(struct intel_engine_cs *engine, int prio)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_priolist *p;
@@ -332,7 +332,7 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
 
-	plist = i915_sched_lookup_priolist(engine, prio);
+	plist = lookup_priolist(engine, prio);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -463,12 +463,63 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+void __i915_sched_defer_request(struct intel_engine_cs *engine,
+				struct i915_request *rq)
+{
+	struct list_head *pl;
+	LIST_HEAD(list);
+
+	lockdep_assert_held(&engine->active.lock);
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+
+	/*
+	 * When we defer a request, we must maintain its order with respect
+	 * to those that are waiting upon it. So we traverse its chain of
+	 * waiters and move any that are earlier than the request to after it.
+	 */
+	pl = lookup_priolist(engine, rq_prio(rq));
+	do {
+		struct i915_dependency *p;
+
+		GEM_BUG_ON(i915_request_is_active(rq));
+		list_move_tail(&rq->sched.link, pl);
+
+		for_each_waiter(p, rq) {
+			struct i915_request *w =
+				container_of(p->waiter, typeof(*w), sched);
+
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
+			/* Leave semaphores spinning on the other engines */
+			if (w->engine != engine)
+				continue;
+
+			/* No waiter should start before its signaler */
+			GEM_BUG_ON(i915_request_has_initial_breadcrumb(w) &&
+				   __i915_request_has_started(w) &&
+				   !__i915_request_is_complete(rq));
+
+			if (!i915_request_is_ready(w))
+				continue;
+
+			if (rq_prio(w) < rq_prio(rq))
+				continue;
+
+			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
+			GEM_BUG_ON(i915_request_is_active(w));
+			list_move_tail(&w->sched.link, &list);
+		}
+
+		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
+	} while (rq);
+}
+
 static void queue_request(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
 	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link,
-		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	list_add_tail(&rq->sched.link, lookup_priolist(engine, rq_prio(rq)));
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
@@ -567,7 +618,7 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
 		if (rq_prio(rq) != prio) {
 			prio = rq_prio(rq);
-			pl = i915_sched_lookup_priolist(engine, prio);
+			pl = lookup_priolist(engine, prio);
 		}
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 9860459fedb1..00ce0a9d519d 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -44,6 +44,8 @@ void i915_request_enqueue(struct i915_request *request);
 
 struct i915_request *
 __i915_sched_rewind_requests(struct intel_engine_cs *engine);
+void __i915_sched_defer_request(struct intel_engine_cs *engine,
+				struct i915_request *request);
 
 bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 				  struct i915_request *rq);
@@ -55,9 +57,6 @@ bool i915_sched_suspend_request(struct intel_engine_cs *engine,
 void i915_sched_resume_request(struct intel_engine_cs *engine,
 			       struct i915_request *rq);
 
-struct list_head *
-i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
-
 void __i915_priolist_free(struct i915_priolist *p);
 static inline void i915_priolist_free(struct i915_priolist *p)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
