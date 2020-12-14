Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224F12D95E7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EFF6E2A3;
	Mon, 14 Dec 2020 10:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701906E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317832-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:29 +0000
Message-Id: <20201214100949.11387-49-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 49/69] drm/i915: Extract the ability to defer
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
 .../drm/i915/gt/intel_execlists_submission.c  | 55 +++----------------
 drivers/gpu/drm/i915/i915_scheduler.c         | 52 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |  3 +
 3 files changed, 62 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 2963486714b0..5206e335c456 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1816,9 +1816,13 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-static void defer_request(struct i915_request *rq, struct list_head * const pl)
+static void defer_active(struct intel_engine_cs *engine)
 {
-	LIST_HEAD(list);
+	struct i915_request *rq;
+
+	rq = __unwind_incomplete_requests(engine);
+	if (!rq)
+		return;
 
 	/*
 	 * We want to move the interrupted request to the back of
@@ -1827,52 +1831,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
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
-				   i915_request_started(w) &&
-				   !i915_request_completed(rq));
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
-	rq = __unwind_incomplete_requests(engine);
-	if (!rq)
-		return;
-
-	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	__intel_engine_defer_request(engine, rq);
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index d3f7c340873e..1e0d0784d8c2 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -481,6 +481,58 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
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
+	pl = i915_sched_lookup_priolist(engine, rq_prio(rq));
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
+				   i915_request_started(w) &&
+				   !i915_request_completed(rq));
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
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index ae019a29be90..d673743c4644 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -41,6 +41,9 @@ void i915_request_set_priority(struct i915_request *request, int prio);
 
 void i915_request_enqueue(struct i915_request *request);
 
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *request);
+
 bool __intel_engine_hold_request(struct intel_engine_cs *engine,
 				 struct i915_request *request);
 void __intel_engine_unhold_request(struct intel_engine_cs *engine,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
