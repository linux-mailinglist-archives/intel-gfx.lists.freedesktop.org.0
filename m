Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABE21EE295
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F086E31A;
	Thu,  4 Jun 2020 10:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759FF89A86
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 10:38:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21393752-1500050 
 for multiple; Thu, 04 Jun 2020 11:37:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 11:37:35 +0100
Message-Id: <20200604103751.18816-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/22] drm/i915/gt: Couple tasklet scheduling
 for all CS interrupts
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

If any engine asks for the tasklet to be kicked from the CS interrupt,
do so.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_irq.h |  3 +++
 drivers/gpu/drm/i915/gt/intel_rps.c    |  2 +-
 drivers/gpu/drm/i915/i915_irq.c        |  8 ++++----
 4 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 0cc7dd54f4f9..28edf314a319 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -60,6 +60,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 }
 
+void gen2_engine_cs_irq(struct intel_engine_cs *engine)
+{
+	intel_engine_signal_breadcrumbs(engine);
+	if (intel_engine_needs_breadcrumb_tasklet(engine))
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+}
+
 static u32
 gen11_gt_engine_identity(struct intel_gt *gt,
 			 const unsigned int bank, const unsigned int bit)
@@ -273,9 +280,9 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
+		gen2_engine_cs_irq(gt->engine_class[RENDER_CLASS][0]);
 	if (gt_iir & ILK_BSD_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		gen2_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
 }
 
 static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
@@ -299,11 +306,11 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
 void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
+		gen2_engine_cs_irq(gt->engine_class[RENDER_CLASS][0]);
 	if (gt_iir & GT_BSD_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		gen2_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
 	if (gt_iir & GT_BLT_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[COPY_ENGINE_CLASS][0]);
+		gen2_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0]);
 
 	if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
 		      GT_BSD_CS_ERROR_INTERRUPT |
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
index 886c5cf408a2..6c69cd563fe1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
@@ -9,6 +9,7 @@
 
 #include <linux/types.h>
 
+struct intel_engine_cs;
 struct intel_gt;
 
 #define GEN8_GT_IRQS (GEN8_GT_RCS_IRQ | \
@@ -19,6 +20,8 @@ struct intel_gt;
 		      GEN8_GT_PM_IRQ | \
 		      GEN8_GT_GUC_IRQ)
 
+void gen2_engine_cs_irq(struct intel_engine_cs *engine);
+
 void gen11_gt_irq_reset(struct intel_gt *gt);
 void gen11_gt_irq_postinstall(struct intel_gt *gt);
 void gen11_gt_irq_handler(struct intel_gt *gt, const u32 master_ctl);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 2f59fc6df3c2..2e4ddc9ca09d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1741,7 +1741,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		return;
 
 	if (pm_iir & PM_VEBOX_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
+		gen2_engine_cs_irq(gt->engine[VECS0]);
 
 	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
 		DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 490574669eaa..bade4371d1a4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3682,7 +3682,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
 		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -3787,7 +3787,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		I915_WRITE(GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -3929,10 +3929,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		I915_WRITE(GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
 
 		if (iir & I915_BSD_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[VCS0]);
+			gen2_engine_cs_irq(dev_priv->gt.engine[VCS0]);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
