Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836EF312F90
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CB36E87A;
	Mon,  8 Feb 2021 10:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D25E6E86D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809215-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:13 +0000
Message-Id: <20210208105236.28498-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/31] drm/i915: Fix the iterative dfs for
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
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 56 +++++++++++++++++++--------
 1 file changed, 40 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a42d8b5bf1f9..312e1538d001 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -565,9 +565,11 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 void __i915_sched_defer_request(struct intel_engine_cs *engine,
 				struct i915_request *rq)
 {
+	struct list_head *pos = &rq->sched.waiters_list;
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
-	struct list_head *pl;
-	LIST_HEAD(list);
+	const int prio = rq_prio(rq);
+	struct i915_request *rn;
+	LIST_HEAD(dfs);
 
 	SCHED_TRACE(se, "defer request " RQ_FMT "\n", RQ_ARG(rq));
 
@@ -579,14 +581,11 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 	 * to those that are waiting upon it. So we traverse its chain of
 	 * waiters and move any that are earlier than the request to after it.
 	 */
-	pl = lookup_priolist(se, rq_prio(rq));
+	rq->sched.dfs.prev = NULL;
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
 
@@ -602,19 +601,44 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 				   __i915_request_has_started(w) &&
 				   !__i915_request_is_complete(rq));
 
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
-			GEM_BUG_ON(i915_request_is_active(w));
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
+	pos = lookup_priolist(se, prio);
+	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_add_tail(&rq->sched.link, pos);
+	}
 }
 
 static void queue_request(struct i915_sched *se, struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
