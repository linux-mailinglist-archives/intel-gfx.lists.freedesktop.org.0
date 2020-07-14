Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 055C521ED26
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 11:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FCE6E7EF;
	Tue, 14 Jul 2020 09:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD54E6E7EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 09:47:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21812788-1500050 
 for multiple; Tue, 14 Jul 2020 10:47:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 10:47:08 +0100
Message-Id: <20200714094709.15775-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Remove i915_request.lock
 requirement for execution callbacks
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

Fixes: 1d9221e9d395 ("drm/i915: Skip signaling a signaled request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 38 +++++++----------------------
 1 file changed, 9 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0b2fe55e6194..c59315def07d 100644
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
@@ -276,6 +273,7 @@ static void remove_from_engine(struct i915_request *rq)
 	list_del_init(&rq->sched.link);
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
+	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 	spin_unlock_irq(&locked->active.lock);
 }
 
@@ -323,12 +321,8 @@ bool i915_request_retire(struct i915_request *rq)
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
@@ -357,12 +351,6 @@ void i915_request_retire_upto(struct i915_request *rq)
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
@@ -439,18 +427,11 @@ __await_execution(struct i915_request *rq,
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
@@ -565,19 +546,18 @@ bool __i915_request_submit(struct i915_request *request)
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
