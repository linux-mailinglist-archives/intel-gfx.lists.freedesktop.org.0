Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 408A71E9F1F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638776E14F;
	Mon,  1 Jun 2020 07:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219DE6E0DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356604-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:14 +0100
Message-Id: <20200601072446.19548-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/36] drm/i915: Trim the ironlake+ irq handler
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

Ever noticed that our interrupt handlers are where we spend most of our
time on a busy system? In part this is unavoidable as each interrupt
requires to poll and reset several registers, but we can try and so as
efficiently as possible.

Function                                     old     new   delta
ilk_irq_handler                             2317    2156    -161

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_irq.c | 59 ++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 63579ab71cf6..07c0c7ea3795 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2097,69 +2097,66 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
  */
 static irqreturn_t ilk_irq_handler(int irq, void *arg)
 {
-	struct drm_i915_private *dev_priv = arg;
+	struct drm_i915_private *i915 = arg;
+	void __iomem * const regs = i915->uncore.regs;
 	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
-	irqreturn_t ret = IRQ_NONE;
 
-	if (!intel_irqs_enabled(dev_priv))
+	if (!unlikely(intel_irqs_enabled(i915)))
 		return IRQ_NONE;
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
-	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	/* disable master interrupt before clearing iir  */
-	de_ier = I915_READ(DEIER);
-	I915_WRITE(DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
+	de_ier = raw_reg_read(regs, DEIER);
+	raw_reg_write(regs, DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
 
 	/* Disable south interrupts. We'll only write to SDEIIR once, so further
 	 * interrupts will will be stored on its back queue, and then we'll be
 	 * able to process them after we restore SDEIER (as soon as we restore
 	 * it, we'll get an interrupt if SDEIIR still has something to process
 	 * due to its back queue). */
-	if (!HAS_PCH_NOP(dev_priv)) {
-		sde_ier = I915_READ(SDEIER);
-		I915_WRITE(SDEIER, 0);
+	if (!HAS_PCH_NOP(i915)) {
+		sde_ier = raw_reg_read(regs, SDEIER);
+		raw_reg_write(regs, SDEIER, 0);
 	}
 
 	/* Find, clear, then process each source of interrupt */
 
-	gt_iir = I915_READ(GTIIR);
+	gt_iir = raw_reg_read(regs, GTIIR);
 	if (gt_iir) {
-		I915_WRITE(GTIIR, gt_iir);
-		ret = IRQ_HANDLED;
-		if (INTEL_GEN(dev_priv) >= 6)
-			gen6_gt_irq_handler(&dev_priv->gt, gt_iir);
+		raw_reg_write(regs, GTIIR, gt_iir);
+		if (INTEL_GEN(i915) >= 6)
+			gen6_gt_irq_handler(&i915->gt, gt_iir);
 		else
-			gen5_gt_irq_handler(&dev_priv->gt, gt_iir);
+			gen5_gt_irq_handler(&i915->gt, gt_iir);
 	}
 
-	de_iir = I915_READ(DEIIR);
+	de_iir = raw_reg_read(regs, DEIIR);
 	if (de_iir) {
-		I915_WRITE(DEIIR, de_iir);
-		ret = IRQ_HANDLED;
-		if (INTEL_GEN(dev_priv) >= 7)
-			ivb_display_irq_handler(dev_priv, de_iir);
+		raw_reg_write(regs, DEIIR, de_iir);
+		if (INTEL_GEN(i915) >= 7)
+			ivb_display_irq_handler(i915, de_iir);
 		else
-			ilk_display_irq_handler(dev_priv, de_iir);
+			ilk_display_irq_handler(i915, de_iir);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 6) {
-		u32 pm_iir = I915_READ(GEN6_PMIIR);
+	if (INTEL_GEN(i915) >= 6) {
+		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
 		if (pm_iir) {
-			I915_WRITE(GEN6_PMIIR, pm_iir);
-			ret = IRQ_HANDLED;
-			gen6_rps_irq_handler(&dev_priv->gt.rps, pm_iir);
+			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
+			gen6_rps_irq_handler(&i915->gt.rps, pm_iir);
 		}
 	}
 
-	I915_WRITE(DEIER, de_ier);
-	if (!HAS_PCH_NOP(dev_priv))
-		I915_WRITE(SDEIER, sde_ier);
+	raw_reg_write(regs, DEIER, de_ier);
+	if (sde_ier)
+		raw_reg_write(regs, SDEIER, sde_ier);
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
-	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
-	return ret;
+	return IRQ_HANDLED;
 }
 
 static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
