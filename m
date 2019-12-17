Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E01D812280F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A982C6E96F;
	Tue, 17 Dec 2019 09:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC2F6E96A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 09:57:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19605952-1500050 
 for multiple; Tue, 17 Dec 2019 09:56:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 09:56:41 +0000
Message-Id: <20191217095642.3124521-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
References: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Remove direct invocation of
 breadcrumb signaling
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

Only signal the breadcrumbs from inside the irq_work, simplifying our
interface and calling conventions. The micro-optimisation here is that
by always using the irq_work interface, we know we are always inside an
irq-off critical section for the breadcrumb signaling and can ellide
save/restore of the irq flags.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 27 +++++++------------
 drivers/gpu/drm/i915/gt/intel_engine.h        |  4 +--
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 12 ++++-----
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +--
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  8 +++---
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 10 files changed, 27 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 8a9facf4f3b6..5fa4d621528e 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -130,16 +130,15 @@ __dma_fence_signal__notify(struct dma_fence *fence,
 	}
 }
 
-void intel_engine_breadcrumbs_irq(struct intel_engine_cs *engine)
+static void signal_irq_work(struct irq_work *work)
 {
-	struct intel_breadcrumbs *b = &engine->breadcrumbs;
+	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
 	struct intel_context *ce, *cn;
 	struct list_head *pos, *next;
-	unsigned long flags;
 	LIST_HEAD(signal);
 
-	spin_lock_irqsave(&b->irq_lock, flags);
+	spin_lock(&b->irq_lock);
 
 	if (b->irq_armed && list_empty(&b->signalers))
 		__intel_breadcrumbs_disarm_irq(b);
@@ -185,31 +184,23 @@ void intel_engine_breadcrumbs_irq(struct intel_engine_cs *engine)
 		}
 	}
 
-	spin_unlock_irqrestore(&b->irq_lock, flags);
+	spin_unlock(&b->irq_lock);
 
 	list_for_each_safe(pos, next, &signal) {
 		struct i915_request *rq =
 			list_entry(pos, typeof(*rq), signal_link);
 		struct list_head cb_list;
 
-		spin_lock_irqsave(&rq->lock, flags);
+		spin_lock(&rq->lock);
 		list_replace(&rq->fence.cb_list, &cb_list);
 		__dma_fence_signal__timestamp(&rq->fence, timestamp);
 		__dma_fence_signal__notify(&rq->fence, &cb_list);
-		spin_unlock_irqrestore(&rq->lock, flags);
+		spin_unlock(&rq->lock);
 
 		i915_request_put(rq);
 	}
 }
 
-static void signal_irq_work(struct irq_work *work)
-{
-	struct intel_engine_cs *engine =
-		container_of(work, typeof(*engine), breadcrumbs.irq_work);
-
-	intel_engine_breadcrumbs_irq(engine);
-}
-
 static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
 	struct intel_engine_cs *engine =
@@ -290,9 +281,9 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 
 		/*
 		 * We keep the seqno in retirement order, so we can break
-		 * inside intel_engine_breadcrumbs_irq as soon as we've passed
-		 * the last completed request (or seen a request that hasn't
-		 * event started). We could iterate the timeline->requests list,
+		 * inside intel_engine_signal_breadcrumbs as soon as we've
+		 * passed the last completed request (or seen a request that
+		 * hasn't event started). We could walk the timeline->requests,
 		 * but keeping a separate signalers_list has the advantage of
 		 * hopefully being much smaller than the full list and so
 		 * provides faster iteration and detection when there are no
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 0926ecea9147..b21c20ee9e23 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -213,13 +213,11 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine);
 
 static inline void
-intel_engine_queue_breadcrumbs(struct intel_engine_cs *engine)
+intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
 {
 	irq_work_queue(&engine->breadcrumbs.irq_work);
 }
 
-void intel_engine_breadcrumbs_irq(struct intel_engine_cs *engine);
-
 void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 332b12a574fb..f796bdf1ed30 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -28,7 +28,7 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 		tasklet = true;
 
 	if (iir & GT_RENDER_USER_INTERRUPT) {
-		intel_engine_queue_breadcrumbs(engine);
+		intel_engine_signal_breadcrumbs(engine);
 		tasklet |= intel_engine_needs_breadcrumb_tasklet(engine);
 	}
 
@@ -245,9 +245,9 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine_class[RENDER_CLASS][0]);
+		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
 	if (gt_iir & ILK_BSD_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
 }
 
 static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
@@ -271,11 +271,11 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
 void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine_class[RENDER_CLASS][0]);
+		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
 	if (gt_iir & GT_BSD_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
 	if (gt_iir & GT_BLT_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine_class[COPY_ENGINE_CLASS][0]);
+		intel_engine_signal_breadcrumbs(gt->engine_class[COPY_ENGINE_CLASS][0]);
 
 	if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
 		      GT_BSD_CS_ERROR_INTERRUPT |
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4ebfecd95032..4db54fd6a2fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1483,7 +1483,7 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 	if (!list_empty(&ve->context.signal_link)) {
 		list_move_tail(&ve->context.signal_link,
 			       &engine->breadcrumbs.signalers);
-		intel_engine_queue_breadcrumbs(engine);
+		intel_engine_signal_breadcrumbs(engine);
 	}
 	spin_unlock(&old->breadcrumbs.irq_lock);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f5b2e7c7e6c8..f3d1e921fba6 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -742,7 +742,7 @@ static void reset_finish_engine(struct intel_engine_cs *engine)
 	engine->reset.finish(engine);
 	intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
 
-	intel_engine_breadcrumbs_irq(engine);
+	intel_engine_signal_breadcrumbs(engine);
 }
 
 static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
@@ -771,7 +771,7 @@ static void nop_submit_request(struct i915_request *request)
 	i915_request_mark_complete(request);
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 
-	intel_engine_queue_breadcrumbs(engine);
+	intel_engine_signal_breadcrumbs(engine);
 }
 
 static void __intel_gt_set_wedged(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 00d1fb582e95..a5fbd1422f73 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -719,7 +719,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	}
 
 	/* Papering over lost _interrupts_ immediately following the restart */
-	intel_engine_queue_breadcrumbs(engine);
+	intel_engine_signal_breadcrumbs(engine);
 out:
 	intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 5f5a000c801d..eabd5e1a2b95 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1566,7 +1566,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		return;
 
 	if (pm_iir & PM_VEBOX_USER_INTERRUPT)
-		intel_engine_breadcrumbs_irq(gt->engine[VECS0]);
+		intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
 
 	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
 		DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 83f549d203a0..39df9d49a134 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -77,7 +77,7 @@ static void advance(struct i915_request *request)
 	i915_request_mark_complete(request);
 	GEM_BUG_ON(!i915_request_completed(request));
 
-	intel_engine_queue_breadcrumbs(request->engine);
+	intel_engine_signal_breadcrumbs(request->engine);
 }
 
 static void hw_delay_complete(struct timer_list *t)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index a5348f79114f..42b79f577500 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3619,7 +3619,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
 		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_breadcrumbs_irq(dev_priv->engine[RCS0]);
+			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -3724,7 +3724,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		I915_WRITE(GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_breadcrumbs_irq(dev_priv->engine[RCS0]);
+			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -3866,10 +3866,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		I915_WRITE(GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_breadcrumbs_irq(dev_priv->engine[RCS0]);
+			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
 
 		if (iir & I915_BSD_USER_INTERRUPT)
-			intel_engine_breadcrumbs_irq(dev_priv->engine[VCS0]);
+			intel_engine_signal_breadcrumbs(dev_priv->engine[VCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 269470d3527a..2118284b796e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -408,7 +408,7 @@ bool __i915_request_submit(struct i915_request *request)
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
 	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
 	    !i915_request_enable_breadcrumb(request))
-		intel_engine_queue_breadcrumbs(engine);
+		intel_engine_signal_breadcrumbs(engine);
 
 	__notify_execute_cb(request);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
