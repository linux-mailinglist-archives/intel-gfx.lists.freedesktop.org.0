Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8244230DA6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768586E351;
	Tue, 28 Jul 2020 15:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729B06E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:25:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21959517-1500050 
 for multiple; Tue, 28 Jul 2020 16:25:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:24:51 +0100
Message-Id: <20200728152501.26685-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200728152501.26685-1-chris@chris-wilson.co.uk>
References: <20200728152501.26685-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Remove requirement for holding
 i915_request.lock for breadcrumbs
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the breadcrumb enabling/cancelling itself is serialised by the
breadcrumbs.irq_lock, with a bit of care we can remove the outer
serialisation with i915_request.lock for concurrent
dma_fence_enable_signaling(). This has the important side-effect of
eliminating the nested i915_request.lock within request submission.

The challenge in serialisation is around the unsubmission where we take
an active request that wants a breadcrumb on the signaling engine and
put it to sleep. We do not want a concurrent
dma_fence_enable_signaling() to attach a breadcrumb as we unsubmit, so
we must mark the request as no longer active before serialising with the
concurrent enable-signaling.

On retire, we serialise with the concurrent enable-signaling, but
instead of clearing ACTIVE, we mark it as SIGNALED.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 130 +++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  14 ---
 drivers/gpu/drm/i915/i915_request.c         |  39 +++---
 3 files changed, 100 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 91786310c114..3d211a0c2b5a 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -220,17 +220,17 @@ static void signal_irq_work(struct irq_work *work)
 	}
 }
 
-static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
+static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
 	struct intel_engine_cs *engine =
 		container_of(b, struct intel_engine_cs, breadcrumbs);
 
 	lockdep_assert_held(&b->irq_lock);
 	if (b->irq_armed)
-		return true;
+		return;
 
 	if (!intel_gt_pm_get_if_awake(engine->gt))
-		return false;
+		return;
 
 	/*
 	 * The breadcrumb irq will be disarmed on the interrupt after the
@@ -250,8 +250,6 @@ static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 
 	if (!b->irq_enabled++)
 		irq_enable(engine);
-
-	return true;
 }
 
 void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
@@ -310,57 +308,99 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
 {
 }
 
-bool i915_request_enable_breadcrumb(struct i915_request *rq)
+static void insert_breadcrumb(struct i915_request *rq,
+			      struct intel_breadcrumbs *b)
 {
-	lockdep_assert_held(&rq->lock);
+	struct intel_context *ce = rq->context;
+	struct list_head *pos;
 
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
-		return true;
+	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
+		return;
 
-	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
-		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
-		struct intel_context *ce = rq->context;
-		struct list_head *pos;
+	__intel_breadcrumbs_arm_irq(b);
 
-		spin_lock(&b->irq_lock);
+	/*
+	 * We keep the seqno in retirement order, so we can break
+	 * inside intel_engine_signal_breadcrumbs as soon as we've
+	 * passed the last completed request (or seen a request that
+	 * hasn't event started). We could walk the timeline->requests,
+	 * but keeping a separate signalers_list has the advantage of
+	 * hopefully being much smaller than the full list and so
+	 * provides faster iteration and detection when there are no
+	 * more interrupts required for this context.
+	 *
+	 * We typically expect to add new signalers in order, so we
+	 * start looking for our insertion point from the tail of
+	 * the list.
+	 */
+	list_for_each_prev(pos, &ce->signals) {
+		struct i915_request *it =
+			list_entry(pos, typeof(*it), signal_link);
 
-		if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
-			goto unlock;
+		if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
+			break;
+	}
+	list_add(&rq->signal_link, pos);
+	if (pos == &ce->signals) /* catch transitions from empty list */
+		list_move_tail(&ce->signal_link, &b->signalers);
+	GEM_BUG_ON(!check_signal_order(ce, rq));
 
-		if (!__intel_breadcrumbs_arm_irq(b))
-			goto unlock;
+	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+}
 
-		/*
-		 * We keep the seqno in retirement order, so we can break
-		 * inside intel_engine_signal_breadcrumbs as soon as we've
-		 * passed the last completed request (or seen a request that
-		 * hasn't event started). We could walk the timeline->requests,
-		 * but keeping a separate signalers_list has the advantage of
-		 * hopefully being much smaller than the full list and so
-		 * provides faster iteration and detection when there are no
-		 * more interrupts required for this context.
-		 *
-		 * We typically expect to add new signalers in order, so we
-		 * start looking for our insertion point from the tail of
-		 * the list.
-		 */
-		list_for_each_prev(pos, &ce->signals) {
-			struct i915_request *it =
-				list_entry(pos, typeof(*it), signal_link);
+bool i915_request_enable_breadcrumb(struct i915_request *rq)
+{
+	struct intel_breadcrumbs *b;
 
-			if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
-				break;
-		}
-		list_add(&rq->signal_link, pos);
-		if (pos == &ce->signals) /* catch transitions from empty list */
-			list_move_tail(&ce->signal_link, &b->signalers);
-		GEM_BUG_ON(!check_signal_order(ce, rq));
+	/* Serialises with i915_request_retire() using rq->lock */
+	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
+		return true;
 
-		set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
-unlock:
+	/*
+	 * Peek at i915_request_submit()/i915_request_unsubmit() status.
+	 *
+	 * If the request is not yet active (and not signaled), we will
+	 * attach the breadcrumb later.
+	 */
+	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
+		return true;
+
+	/*
+	 * rq->engine is locked by rq->engine->active.lock. That however
+	 * is not known until after rq->engine has been dereferenced and
+	 * the lock acquired. Hence we acquire the lock and then validate
+	 * that rq->engine still matches the lock we hold for it.
+	 *
+	 * Here, we are using the breadcrumb lock as a proxy for the
+	 * rq->engine->active.lock, and we know that since the breadcrumb
+	 * will be serialised within i915_request_submit/i915_request_unsubmit,
+	 * the engine cannot change while active as long as we hold the
+	 * breadcrumb lock on that engine.
+	 *
+	 * From the dma_fence_enable_signaling() path, we are outside of the
+	 * request submit/unsubmit path, and so we must be more careful to
+	 * acquire the right lock.
+	 */
+	b = &READ_ONCE(rq->engine)->breadcrumbs;
+	spin_lock(&b->irq_lock);
+	while (unlikely(b != &READ_ONCE(rq->engine)->breadcrumbs)) {
 		spin_unlock(&b->irq_lock);
+		b = &READ_ONCE(rq->engine)->breadcrumbs;
+		spin_lock(&b->irq_lock);
 	}
 
+	/*
+	 * Now that we are finally serialised with request submit/unsubmit,
+	 * [with b->irq_lock] and with i915_request_retire() [via checking
+	 * SIGNALED with rq->lock] confirm the request is indeed active. If
+	 * it is no longer active, the breadcrumb will be attached upon
+	 * i915_request_submit().
+	 */
+	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
+		insert_breadcrumb(rq, b);
+
+	spin_unlock(&b->irq_lock);
+
 	return !__request_completed(rq);
 }
 
@@ -368,8 +408,6 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
 
-	lockdep_assert_held(&rq->lock);
-
 	/*
 	 * We must wait for b->irq_lock so that we know the interrupt handler
 	 * has released its reference to the intel_context and has completed
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 29c0fde8b4df..21c16e31c4fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1148,20 +1148,6 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 		} else {
 			struct intel_engine_cs *owner = rq->context->engine;
 
-			/*
-			 * Decouple the virtual breadcrumb before moving it
-			 * back to the virtual engine -- we don't want the
-			 * request to complete in the background and try
-			 * and cancel the breadcrumb on the virtual engine
-			 * (instead of the old engine where it is linked)!
-			 */
-			if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
-				     &rq->fence.flags)) {
-				spin_lock_nested(&rq->lock,
-						 SINGLE_DEPTH_NESTING);
-				i915_request_cancel_breadcrumb(rq);
-				spin_unlock(&rq->lock);
-			}
 			WRITE_ONCE(rq->engine, owner);
 			owner->submit_request(rq);
 			active = NULL;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index e48daeef6882..5df7c39649cd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -322,11 +322,12 @@ bool i915_request_retire(struct i915_request *rq)
 		dma_fence_signal_locked(&rq->fence);
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
 		i915_request_cancel_breadcrumb(rq);
+	spin_unlock_irq(&rq->lock);
+
 	if (i915_request_has_waitboost(rq)) {
 		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
 	}
-	spin_unlock_irq(&rq->lock);
 
 	/*
 	 * We only loosely track inflight requests across preemption,
@@ -610,17 +611,9 @@ bool __i915_request_submit(struct i915_request *request)
 	 */
 	__notify_execute_cb_irq(request);
 
-	/* We may be recursing from the signal callback of another i915 fence */
-	if (!i915_request_signaled(request)) {
-		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
-
-		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
-			     &request->fence.flags) &&
-		    !i915_request_enable_breadcrumb(request))
-			intel_engine_signal_breadcrumbs(engine);
-
-		spin_unlock(&request->lock);
-	}
+	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
+	    !i915_request_enable_breadcrumb(request))
+		intel_engine_signal_breadcrumbs(engine);
 
 	return result;
 }
@@ -642,27 +635,27 @@ void __i915_request_unsubmit(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
 
+	/*
+	 * Only unwind in reverse order, required so that the per-context list
+	 * is kept in seqno/ring order.
+	 */
 	RQ_TRACE(request, "\n");
 
 	GEM_BUG_ON(!irqs_disabled());
 	lockdep_assert_held(&engine->active.lock);
 
 	/*
-	 * Only unwind in reverse order, required so that the per-context list
-	 * is kept in seqno/ring order.
+	 * Before we remove this breadcrumb from the signal list, we have
+	 * to ensure that a concurrent dma_fence_enable_signaling() does not
+	 * attach itself. We first mark the request as no longer active and
+	 * make sure that is visible to other cores, and then remove the
+	 * breadcrumb if attached.
 	 */
-
-	/* We may be recursing from the signal callback of another i915 fence */
-	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
-
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
+	clear_bit_unlock(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
 		i915_request_cancel_breadcrumb(request);
 
-	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
-	clear_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
-
-	spin_unlock(&request->lock);
-
 	/* We've already spun, don't charge on resubmitting. */
 	if (request->sched.semaphores && i915_request_started(request))
 		request->sched.semaphores = 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
