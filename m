Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDB82229E3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A422A6ECA4;
	Thu, 16 Jul 2020 17:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA3D6ECA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:28:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21841849-1500050 
 for multiple; Thu, 16 Jul 2020 18:28:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 18:28:45 +0100
Message-Id: <20200716172845.31427-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200716113357.7644-4-chris@chris-wilson.co.uk>
References: <20200716113357.7644-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Replace
 intel_engine_transfer_stale_breadcrumbs
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

After staring at the breadcrumb enabling/cancellation and coming to the
conclusion that the cause of the mysterious stale breadcrumbs must the
act of submitting a completed requests, we can then redirect those
completed requests onto a dedicated signaled_list at the time of
construction and so eliminate intel_engine_transfer_stale_breadcrumbs().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 44 +++++++--------------
 drivers/gpu/drm/i915/gt/intel_engine.h      |  3 --
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 15 -------
 drivers/gpu/drm/i915/i915_request.c         |  5 +--
 4 files changed, 17 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index a0f52417238c..11660bef1545 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -144,7 +144,6 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 
 static void __signal_request(struct i915_request *rq, struct list_head *signals)
 {
-	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
 	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
 	if (!__dma_fence_signal(&rq->fence))
@@ -278,32 +277,6 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
-void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
-					     struct intel_context *ce)
-{
-	struct intel_breadcrumbs *b = &engine->breadcrumbs;
-	unsigned long flags;
-
-	spin_lock_irqsave(&b->irq_lock, flags);
-	if (!list_empty(&ce->signals)) {
-		struct i915_request *rq, *next;
-
-		/* Queue for executing the signal callbacks in the irq_work */
-		list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
-			GEM_BUG_ON(rq->engine != engine);
-			GEM_BUG_ON(!__request_completed(rq));
-
-			__signal_request(rq, &b->signaled_requests);
-		}
-
-		INIT_LIST_HEAD(&ce->signals);
-		list_del_init(&ce->signal_link);
-
-		irq_work_queue(&b->irq_work);
-	}
-	spin_unlock_irqrestore(&b->irq_lock, flags);
-}
-
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
 {
 }
@@ -317,6 +290,17 @@ static void insert_breadcrumb(struct i915_request *rq,
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
 		return;
 
+	/*
+	 * If the request is already completed, we can transfer it
+	 * straight onto a signaled list, and queue the irq worker for
+	 * its signal completion.
+	 */
+	if (__request_completed(rq)) {
+		__signal_request(rq, &b->signaled_requests);
+		irq_work_queue(&b->irq_work);
+		return;
+	}
+
 	__intel_breadcrumbs_arm_irq(b);
 
 	/*
@@ -341,8 +325,10 @@ static void insert_breadcrumb(struct i915_request *rq,
 			break;
 	}
 	list_add(&rq->signal_link, pos);
-	if (pos == &ce->signals) /* catch transitions from empty list */
+	if (pos == &ce->signals) { /* catch transitions from empty list */
 		list_move_tail(&ce->signal_link, &b->signalers);
+		irq_work_queue(&b->irq_work); /* check after enabling irq */
+	}
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
@@ -401,7 +387,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 
 	spin_unlock(&b->irq_lock);
 
-	return !__request_completed(rq);
+	return true;
 }
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index a9249a23903a..faf00a353e25 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -237,9 +237,6 @@ intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
 void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 
-void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
-					     struct intel_context *ce);
-
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 				    struct drm_printer *p);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 21c16e31c4fe..88a5c155154d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1805,18 +1805,6 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
-static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
-{
-	/*
-	 * All the outstanding signals on ve->siblings[0] must have
-	 * been completed, just pending the interrupt handler. As those
-	 * signals still refer to the old sibling (via rq->engine), we must
-	 * transfer those to the old irq_worker to keep our locking
-	 * consistent.
-	 */
-	intel_engine_transfer_stale_breadcrumbs(ve->siblings[0], &ve->context);
-}
-
 #define for_each_waiter(p__, rq__) \
 	list_for_each_entry_lockless(p__, \
 				     &(rq__)->sched.waiters_list, \
@@ -2275,9 +2263,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 					virtual_update_register_offsets(regs,
 									engine);
 
-				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve);
-
 				/*
 				 * Move the bound engine to the top of the list
 				 * for future execution. We then kick this
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index fc25382e1201..d88f046ccbdd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -609,9 +609,8 @@ bool __i915_request_submit(struct i915_request *request)
 	 */
 	__notify_execute_cb_irq(request);
 
-	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
-	    !i915_request_enable_breadcrumb(request))
-		intel_engine_signal_breadcrumbs(engine);
+	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
+		i915_request_enable_breadcrumb(request);
 
 	return result;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
