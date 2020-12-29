Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E48402E7049
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8F68938C;
	Tue, 29 Dec 2020 12:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239DA891A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455185-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:01:19 +0000
Message-Id: <20201229120145.26045-30-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/56] drm/i915: Fix the iterative dfs for
 defering requests
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

The current implementation of walking the children of a deferred
requests lacks the backtracking required to reduce the dfs to linear.
Having pulled it from execlists into the common layer, we can reuse the
dfs code for priority inheritance.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 58 +++++++++++++++++++--------
 1 file changed, 42 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index e2ba5d63a8cb..f76e8960d382 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -452,25 +452,26 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 void __intel_engine_defer_request(struct intel_engine_cs *engine,
 				  struct i915_request *rq)
 {
-	struct list_head *pl;
-	LIST_HEAD(list);
+	struct list_head *pos = &rq->sched.waiters_list;
+	struct i915_request *rn;
+	LIST_HEAD(dfs);
+	int prio;
 
 	lockdep_assert_held(&engine->active.lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
+	prio = rq_prio(rq);
+
 	/*
 	 * When we defer a request, we must maintain its order with respect
 	 * to those that are waiting upon it. So we traverse its chain of
 	 * waiters and move any that are earlier than the request to after it.
 	 */
-	pl = lookup_priolist(engine, rq_prio(rq));
+	rq->sched.dfs.next = NULL;
 	do {
-		struct i915_dependency *p;
-
-		GEM_BUG_ON(i915_request_is_active(rq));
-		list_move_tail(&rq->sched.link, pl);
-
-		for_each_waiter(p, rq) {
+		list_for_each_continue(pos, &rq->sched.waiters_list) {
+			struct i915_dependency *p =
+				list_entry(pos, typeof(*p), wait_link);
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
@@ -486,19 +487,44 @@ void __intel_engine_defer_request(struct intel_engine_cs *engine,
 				   __i915_request_has_started(w) &&
 				   !__i915_request_is_complete(rq));
 
-			GEM_BUG_ON(i915_request_is_active(w));
-			if (!i915_request_is_ready(w))
+			if (!i915_request_in_priority_queue(w))
 				continue;
 
-			if (rq_prio(w) < rq_prio(rq))
+			/*
+			 * We also need to reorder within the same priority.
+			 *
+			 * This is unlike priority-inheritance, where if the
+			 * signaler already has a higher priority [earlier
+			 * deadline] than us, we can ignore as it will be
+			 * scheduled first. If a waiter already has the
+			 * same priority, we still have to push it to the end
+			 * of the list. This unfortunately means we cannot
+			 * use the rq_deadline() itself as a 'visited' bit.
+			 */
+			if (rq_prio(w) < prio)
 				continue;
 
-			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
-			list_move_tail(&w->sched.link, &list);
+			GEM_BUG_ON(rq_prio(w) != prio);
+
+			/* Remember our position along this branch */
+			rq = stack_push(w, rq, pos);
+			pos = &rq->sched.waiters_list;
 		}
 
-		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
-	} while (rq);
+		/* Note list is reversed for waiters wrt signal hierarchy */
+		GEM_BUG_ON(rq->engine != engine);
+		GEM_BUG_ON(!i915_request_in_priority_queue(rq));
+		list_move(&rq->sched.link, &dfs);
+
+		/* Track our visit, and prevent duplicate processing */
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+	} while ((rq = stack_pop(rq, &pos)));
+
+	pos = lookup_priolist(engine, prio);
+	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_add_tail(&rq->sched.link, pos);
+	}
 }
 
 static void queue_request(struct intel_engine_cs *engine,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
