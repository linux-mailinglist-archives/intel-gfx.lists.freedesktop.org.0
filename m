Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C010F2E6473
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC888925D;
	Mon, 28 Dec 2020 15:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FFB8999C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448206-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:52:02 +0000
Message-Id: <20201228155229.9516-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/54] drm/i915: Extract the ability to defer
 and rerun a request later
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lift the ability to defer a request until later from execlists into the
common layer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 55 ++--------------
 drivers/gpu/drm/i915/i915_scheduler.c         | 66 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_scheduler.h         |  5 +-
 3 files changed, 67 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 778aa21523d9..ce65997508f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -995,9 +995,13 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-static void defer_request(struct i915_request *rq, struct list_head * const pl)
+static void defer_active(struct intel_engine_cs *engine)
 {
-	LIST_HEAD(list);
+	struct i915_request *rq;
+
+	rq = __intel_engine_rewind_requests(engine);
+	if (!rq)
+		return;
 
 	/*
 	 * We want to move the interrupted request to the back of
@@ -1006,52 +1010,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 	 * flight and were waiting for the interrupted request to
 	 * be run after it again.
 	 */
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
-			GEM_BUG_ON(i915_request_is_active(w));
-			if (!i915_request_is_ready(w))
-				continue;
-
-			if (rq_prio(w) < rq_prio(rq))
-				continue;
-
-			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
-			list_move_tail(&w->sched.link, &list);
-		}
-
-		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
-	} while (rq);
-}
-
-static void defer_active(struct intel_engine_cs *engine)
-{
-	struct i915_request *rq;
-
-	rq = __intel_engine_rewind_requests(engine);
-	if (!rq)
-		return;
-
-	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	__intel_engine_defer_request(engine, rq);
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index db31906ad9ec..e2ba5d63a8cb 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -171,8 +171,8 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	}
 }
 
-struct list_head *
-i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
+static struct list_head *
+lookup_priolist(struct intel_engine_cs *engine, int prio)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_priolist *p;
@@ -324,7 +324,7 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
 
-	plist = i915_sched_lookup_priolist(engine, prio);
+	plist = lookup_priolist(engine, prio);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -449,12 +449,63 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq)
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
+			GEM_BUG_ON(i915_request_is_active(w));
+			if (!i915_request_is_ready(w))
+				continue;
+
+			if (rq_prio(w) < rq_prio(rq))
+				continue;
+
+			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
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
 
@@ -553,7 +604,7 @@ __intel_engine_rewind_requests(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
 		if (rq_prio(rq) != prio) {
 			prio = rq_prio(rq);
-			pl = i915_sched_lookup_priolist(engine, prio);
+			pl = lookup_priolist(engine, prio);
 		}
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
@@ -658,8 +709,7 @@ void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 
 		i915_request_clear_hold(rq);
 		list_move_tail(&rq->sched.link,
-			       i915_sched_lookup_priolist(rq->engine,
-							  rq_prio(rq)));
+			       lookup_priolist(rq->engine, rq_prio(rq)));
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
 		/* Also release any children on this engine that are ready */
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index b4b722982870..152faac61468 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -43,15 +43,14 @@ void i915_request_enqueue(struct i915_request *request);
 
 struct i915_request *
 __intel_engine_rewind_requests(struct intel_engine_cs *engine);
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *request);
 
 bool __intel_engine_hold_request(struct intel_engine_cs *engine,
 				 struct i915_request *request);
 void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 				   struct i915_request *request);
 
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
