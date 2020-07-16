Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF003222534
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470F46E2DA;
	Thu, 16 Jul 2020 14:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDB56EC66
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 14:22:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21839536-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 15:22:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 15:22:07 +0100
Message-Id: <20200716142207.13003-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200716142207.13003-1-chris@chris-wilson.co.uk>
References: <20200716142207.13003-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Remove i915_request.lock requirement
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are using the i915_request.lock to serialise adding an execution
callback with __i915_request_submit. However, if we use an atomic
llist_add to serialise multiple waiters and then check to see if the
request is already executing, we can remove the irq-spinlock.

v2: Avoid using the irq_work when outside of the irq-spinlocks, where we
can execute the callbacks immediately.
v3: Pay close attention to the order of setting ACTIVE on retirement, we
need to ensure the request is signaled and breadcrumbs detached before
we finish removing the request from the engine.

Fixes: 1d9221e9d395 ("drm/i915: Skip signaling a signaled request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 121 ++++++++++++++++------------
 1 file changed, 70 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 80b6fbabd9b4..b0230e22b417 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -186,30 +186,34 @@ static void irq_execute_cb_hook(struct irq_work *wrk)
 	irq_execute_cb(wrk);
 }
 
-static void __notify_execute_cb(struct i915_request *rq)
+static __always_inline void
+__notify_execute_cb(struct i915_request *rq, bool (*fn)(struct irq_work *wrk))
 {
 	struct execute_cb *cb, *cn;
 
-	lockdep_assert_held(&rq->lock);
-
-	GEM_BUG_ON(!i915_request_is_active(rq));
 	if (llist_empty(&rq->execute_cb))
 		return;
 
-	llist_for_each_entry_safe(cb, cn, rq->execute_cb.first, work.llnode)
-		irq_work_queue(&cb->work);
+	llist_for_each_entry_safe(cb, cn,
+				  llist_del_all(&rq->execute_cb),
+				  work.llnode)
+		fn(&cb->work);
+}
 
-	/*
-	 * XXX Rollback on __i915_request_unsubmit()
-	 *
-	 * In the future, perhaps when we have an active time-slicing scheduler,
-	 * it will be interesting to unsubmit parallel execution and remove
-	 * busywaits from the GPU until their master is restarted. This is
-	 * quite hairy, we have to carefully rollback the fence and do a
-	 * preempt-to-idle cycle on the target engine, all the while the
-	 * master execute_cb may refire.
-	 */
-	init_llist_head(&rq->execute_cb);
+static void __notify_execute_cb_irq(struct i915_request *rq)
+{
+	__notify_execute_cb(rq, irq_work_queue);
+}
+
+static bool irq_work_imm(struct irq_work *wrk)
+{
+	wrk->func(wrk);
+	return false;
+}
+
+static void __notify_execute_cb_imm(struct i915_request *rq)
+{
+	__notify_execute_cb(rq, irq_work_imm);
 }
 
 static inline void
@@ -274,9 +278,14 @@ static void remove_from_engine(struct i915_request *rq)
 		locked = engine;
 	}
 	list_del_init(&rq->sched.link);
+	spin_unlock_irq(&locked->active.lock);
+
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
-	spin_unlock_irq(&locked->active.lock);
+
+	/* Prevent further __await_execution() registering a cb, then flush */
+	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
+	__notify_execute_cb_imm(rq);
 }
 
 bool i915_request_retire(struct i915_request *rq)
@@ -288,6 +297,7 @@ bool i915_request_retire(struct i915_request *rq)
 
 	GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
 	trace_i915_request_retire(rq);
+	i915_request_mark_complete(rq);
 
 	/*
 	 * We know the GPU must have read the request to have
@@ -305,16 +315,7 @@ bool i915_request_retire(struct i915_request *rq)
 		__i915_request_fill(rq, POISON_FREE);
 	rq->ring->head = rq->postfix;
 
-	/*
-	 * We only loosely track inflight requests across preemption,
-	 * and so we may find ourselves attempting to retire a _completed_
-	 * request that we have removed from the HW and put back on a run
-	 * queue.
-	 */
-	remove_from_engine(rq);
-
 	spin_lock_irq(&rq->lock);
-	i915_request_mark_complete(rq);
 	if (!i915_request_signaled(rq))
 		dma_fence_signal_locked(&rq->fence);
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
@@ -323,13 +324,21 @@ bool i915_request_retire(struct i915_request *rq)
 		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
 	}
-	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
-		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
-		__notify_execute_cb(rq);
-	}
-	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 	spin_unlock_irq(&rq->lock);
 
+	/*
+	 * We only loosely track inflight requests across preemption,
+	 * and so we may find ourselves attempting to retire a _completed_
+	 * request that we have removed from the HW and put back on a run
+	 * queue.
+	 *
+	 * As we set I915_FENCE_FLAG_ACTIVE on the request, this should be
+	 * after removing the breadcrumb and signaling it, so that we do not
+	 * inadvertently attach the breadcrumb to a completed request.
+	 */
+	remove_from_engine(rq);
+	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
+
 	remove_from_client(rq);
 	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
 
@@ -357,12 +366,6 @@ void i915_request_retire_upto(struct i915_request *rq)
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
@@ -460,18 +463,24 @@ __await_execution(struct i915_request *rq,
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
+	/*
+	 * Register the callback first, then see if the signaler is already
+	 * active. This ensures that if we race with the
+	 * __notify_execute_cb from i915_request_submit() and we are not
+	 * included in that list, we get a second bite of the cherry and
+	 * execute it ourselves. After this point, a future
+	 * i915_request_submit() will notify us.
+	 *
+	 * In i915_request_retire() we set the ACTIVE bit on a completed
+	 * request (then flush the execute_cb). So by registering the
+	 * callback first, then checking the ACTIVE bit, we serialise with
+	 * the completed/retired request.
+	 */
+	if (llist_add(&cb->work.llnode, &signal->execute_cb)) {
+		if (i915_request_is_active(signal) ||
+		    __request_in_flight(signal))
+			__notify_execute_cb_imm(signal);
 	}
-	spin_unlock_irq(&signal->lock);
 
 	return 0;
 }
@@ -587,18 +596,28 @@ bool __i915_request_submit(struct i915_request *request)
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 	}
 
+	/*
+	 * XXX Rollback bonded-execution on __i915_request_unsubmit()?
+	 *
+	 * In the future, perhaps when we have an active time-slicing scheduler,
+	 * it will be interesting to unsubmit parallel execution and remove
+	 * busywaits from the GPU until their master is restarted. This is
+	 * quite hairy, we have to carefully rollback the fence and do a
+	 * preempt-to-idle cycle on the target engine, all the while the
+	 * master execute_cb may refire.
+	 */
+	__notify_execute_cb_irq(request);
+
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
