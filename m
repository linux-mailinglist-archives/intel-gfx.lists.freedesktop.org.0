Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A07E33806A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:36:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE4E6EE90;
	Thu, 11 Mar 2021 22:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5F46EE8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:46 +0000 (UTC)
IronPort-SDR: fpHGozLEroF1vlNt9rde4mhZ219psWBIwbe5Udp0G6w6BkgwLPev/B2B3K02ZZZsY8DqcFzfMP
 NrnfP6eHE1eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="185395067"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="185395067"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
IronPort-SDR: N2j6hcyNlELGVRQflLGglAqekbkOqso8YGsVDTrCEcCmxrdmlp64CDB34dSf9nY5f4tX8bC9Fk
 RbShkx+1dKNQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852659"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:35:41 -0800
Message-Id: <20210311223632.3191939-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/56] drm/i915: Convert INTEL_GEN() to
 DISPLAY_VER() as appropriate in i915_irq.c
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

Convert the display-specific usage of INTEL_GEN, while leaving the
non-display usage as-is for now.

In the near-future we'll probably want to think about moving display
interrupt handling to its own file under the display/ directory.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 66 ++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 44aed4cbf894..23be88d59055 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -192,13 +192,13 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		hpd->hpd = hpd_gen11;
 	else if (IS_GEN9_LP(dev_priv))
 		hpd->hpd = hpd_bxt;
-	else if (INTEL_GEN(dev_priv) >= 8)
+	else if (DISPLAY_VER(dev_priv) >= 8)
 		hpd->hpd = hpd_bdw;
-	else if (INTEL_GEN(dev_priv) >= 7)
+	else if (DISPLAY_VER(dev_priv) >= 7)
 		hpd->hpd = hpd_ivb;
 	else
 		hpd->hpd = hpd_ilk;
@@ -477,7 +477,7 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (INTEL_GEN(dev_priv) < 5)
+	if (DISPLAY_VER(dev_priv) < 5)
 		goto out;
 
 	/*
@@ -579,7 +579,7 @@ static void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 	spin_lock_irq(&dev_priv->irq_lock);
 
 	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		i915_enable_pipestat(dev_priv, PIPE_A,
 				     PIPE_LEGACY_BLC_EVENT_STATUS);
 
@@ -806,7 +806,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
 		vtotal /= 2;
 
-	if (IS_GEN(dev_priv, 2))
+	if (DISPLAY_VER(dev_priv) == 2)
 		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
 	else
 		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
@@ -856,8 +856,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	int position;
 	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
 	unsigned long irqflags;
-	bool use_scanline_counter = INTEL_GEN(dev_priv) >= 5 ||
-		IS_G4X(dev_priv) || IS_GEN(dev_priv, 2) ||
+	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
+		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
 		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 
 	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
@@ -1304,7 +1304,7 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	 * don't trust that one either.
 	 */
 	if (pipe_crc->skipped <= 0 ||
-	    (INTEL_GEN(dev_priv) >= 8 && pipe_crc->skipped == 1)) {
+	    (DISPLAY_VER(dev_priv) >= 8 && pipe_crc->skipped == 1)) {
 		pipe_crc->skipped++;
 		spin_unlock(&pipe_crc->lock);
 		return;
@@ -1366,12 +1366,12 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 {
 	u32 res1, res2;
 
-	if (INTEL_GEN(dev_priv) >= 3)
+	if (DISPLAY_VER(dev_priv) >= 3)
 		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
 	else
 		res1 = 0;
 
-	if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
 	else
 		res2 = 0;
@@ -2077,7 +2077,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
 	}
 
-	if (IS_GEN(dev_priv, 5) && de_iir & DE_PCU_EVENT)
+	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
 		gen5_rps_irq_handler(&dev_priv->gt.rps);
 }
 
@@ -2184,7 +2184,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	de_iir = raw_reg_read(regs, DEIIR);
 	if (de_iir) {
 		raw_reg_write(regs, DEIIR, de_iir);
-		if (INTEL_GEN(i915) >= 7)
+		if (DISPLAY_VER(i915) >= 7)
 			ivb_display_irq_handler(i915, de_iir);
 		else
 			ilk_display_irq_handler(i915, de_iir);
@@ -2269,7 +2269,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
@@ -2282,15 +2282,15 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 
 	mask = GEN8_AUX_CHANNEL_A;
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		mask |= GEN9_AUX_CHANNEL_B |
 			GEN9_AUX_CHANNEL_C |
 			GEN9_AUX_CHANNEL_D;
 
-	if (IS_CNL_WITH_PORT_F(dev_priv) || IS_GEN(dev_priv, 11))
+	if (IS_CNL_WITH_PORT_F(dev_priv) || DISPLAY_VER(dev_priv) == 11)
 		mask |= CNL_AUX_CHANNEL_F;
 
-	if (IS_GEN(dev_priv, 11))
+	if (DISPLAY_VER(dev_priv) == 11)
 		mask |= ICL_AUX_CHANNEL_E;
 
 	return mask;
@@ -2300,9 +2300,9 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
 	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
-	else if (INTEL_GEN(dev_priv) >= 9)
+	else if (DISPLAY_VER(dev_priv) >= 9)
 		return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
 	else
 		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
@@ -2326,7 +2326,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-			if (INTEL_GEN(dev_priv) >= 12)
+			if (DISPLAY_VER(dev_priv) >= 12)
 				iir_reg = TRANS_PSR_IIR(intel_dp->psr.transcoder);
 			else
 				iir_reg = EDP_PSR_IIR;
@@ -2340,7 +2340,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			intel_psr_irq_handler(intel_dp, psr_iir);
 
 			/* prior GEN12 only have one EDP PSR */
-			if (INTEL_GEN(dev_priv) < 12)
+			if (DISPLAY_VER(dev_priv) < 12)
 				break;
 		}
 	}
@@ -2408,7 +2408,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 
 static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 9)
+	if (DISPLAY_VER(i915) >= 9)
 		return GEN9_PIPE_PLANE1_FLIP_DONE;
 	else
 		return GEN8_PIPE_PRIMARY_FLIP_DONE;
@@ -2433,7 +2433,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		}
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
+	if (DISPLAY_VER(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
 		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
 		if (iir) {
 			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
@@ -2479,7 +2479,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 				found = true;
 			}
 
-			if (INTEL_GEN(dev_priv) >= 11) {
+			if (DISPLAY_VER(dev_priv) >= 11) {
 				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
 
 				if (te_trigger) {
@@ -2809,7 +2809,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
-	u32 bit = INTEL_GEN(dev_priv) >= 7 ?
+	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -2920,7 +2920,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
-	u32 bit = INTEL_GEN(dev_priv) >= 7 ?
+	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -3094,7 +3094,7 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum transcoder trans;
 
 		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
@@ -3523,7 +3523,7 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
 
-	if (INTEL_GEN(dev_priv) >= 8)
+	if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 	else
 		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
@@ -3714,13 +3714,13 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 	enum pipe pipe;
 
-	if (INTEL_GEN(dev_priv) <= 10)
+	if (DISPLAY_VER(dev_priv) <= 10)
 		de_misc_masked |= GEN8_DE_MISC_GSE;
 
 	if (IS_GEN9_LP(dev_priv))
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
 		if (intel_bios_is_dsi_present(dev_priv, &port))
@@ -3737,7 +3737,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	else if (IS_BROADWELL(dev_priv))
 		de_port_enables |= BDW_DE_PORT_HOTPLUG_MASK;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum transcoder trans;
 
 		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
@@ -3766,7 +3766,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
 	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
@@ -4317,7 +4317,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	} else {
 		if (HAS_PCH_DG1(dev_priv))
 			dev_priv->display.hpd_irq_setup = dg1_hpd_irq_setup;
-		else if (INTEL_GEN(dev_priv) >= 11)
+		else if (DISPLAY_VER(dev_priv) >= 11)
 			dev_priv->display.hpd_irq_setup = gen11_hpd_irq_setup;
 		else if (IS_GEN9_LP(dev_priv))
 			dev_priv->display.hpd_irq_setup = bxt_hpd_irq_setup;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
