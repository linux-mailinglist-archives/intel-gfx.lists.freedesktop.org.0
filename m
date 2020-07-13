Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E5521DE29
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 19:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BA86E51B;
	Mon, 13 Jul 2020 17:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C936E51B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 17:04:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21806747-1500050 
 for multiple; Mon, 13 Jul 2020 18:04:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 18:04:40 +0100
Message-Id: <20200713170440.3256-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove i915_request.lock requirement
 for execution callbacks
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

We are using the i915_request.lock to serialise adding an execution
callback with __i915_request_submit. However, if we use an atomic
llist_add to serialise multiple waiters and then check to see if the
request is already executing, we can remove the irq-spinlock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 37 +++++++----------------------
 1 file changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0b2fe55e6194..7a287358785d 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -190,13 +190,11 @@ static void __notify_execute_cb(struct i915_request *rq)
 {
 	struct execute_cb *cb, *cn;
 
-	lockdep_assert_held(&rq->lock);
-
-	GEM_BUG_ON(!i915_request_is_active(rq));
 	if (llist_empty(&rq->execute_cb))
 		return;
 
-	llist_for_each_entry_safe(cb, cn, rq->execute_cb.first, work.llnode)
+	llist_for_each_entry_safe(cb, cn,
+				  llist_del_all(&rq->execute_cb), work.llnode)
 		irq_work_queue(&cb->work);
 
 	/*
@@ -209,7 +207,6 @@ static void __notify_execute_cb(struct i915_request *rq)
 	 * preempt-to-idle cycle on the target engine, all the while the
 	 * master execute_cb may refire.
 	 */
-	init_llist_head(&rq->execute_cb);
 }
 
 static inline void
@@ -323,12 +320,8 @@ bool i915_request_retire(struct i915_request *rq)
 		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
 	}
-	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
-		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
-		__notify_execute_cb(rq);
-	}
-	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 	spin_unlock_irq(&rq->lock);
+	__notify_execute_cb(rq);
 
 	remove_from_client(rq);
 	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
@@ -357,12 +350,6 @@ void i915_request_retire_upto(struct i915_request *rq)
 	} while (i915_request_retire(tmp) && tmp != rq);
 }
 
-static void __llist_add(struct llist_node *node, struct llist_head *head)
-{
-	node->next = head->first;
-	head->first = node;
-}
-
 static struct i915_request * const *
 __engine_active(struct intel_engine_cs *engine)
 {
@@ -439,18 +426,11 @@ __await_execution(struct i915_request *rq,
 		cb->work.func = irq_execute_cb_hook;
 	}
 
-	spin_lock_irq(&signal->lock);
-	if (i915_request_is_active(signal) || __request_in_flight(signal)) {
-		if (hook) {
-			hook(rq, &signal->fence);
-			i915_request_put(signal);
-		}
-		i915_sw_fence_complete(cb->fence);
-		kmem_cache_free(global.slab_execute_cbs, cb);
-	} else {
-		__llist_add(&cb->work.llnode, &signal->execute_cb);
+	if (llist_add(&cb->work.llnode, &signal->execute_cb)) {
+		if (i915_request_is_active(signal) ||
+		    __request_in_flight(signal))
+			__notify_execute_cb(signal);
 	}
-	spin_unlock_irq(&signal->lock);
 
 	return 0;
 }
@@ -565,19 +545,18 @@ bool __i915_request_submit(struct i915_request *request)
 		list_move_tail(&request->sched.link, &engine->active.requests);
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 	}
+	__notify_execute_cb(request);
 
 	/* We may be recursing from the signal callback of another i915 fence */
 	if (!i915_request_signaled(request)) {
 		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
 
-		__notify_execute_cb(request);
 		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
 			     &request->fence.flags) &&
 		    !i915_request_enable_breadcrumb(request))
 			intel_engine_signal_breadcrumbs(engine);
 
 		spin_unlock(&request->lock);
-		GEM_BUG_ON(!llist_empty(&request->execute_cb));
 	}
 
 	return result;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
