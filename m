Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E370995969
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 23:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE2D10E5FA;
	Tue,  8 Oct 2024 21:44:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cs0udx/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6AD10E5FA;
 Tue,  8 Oct 2024 21:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728423841; x=1759959841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/edGNNa0YoeA+x34uqOSgzb1JSS+B864L9gA3pLvY04=;
 b=Cs0udx/i9NEU0Nrk6xTKdwgAYsyX5JDENhlpjWk957uLV5MuyXhRmf2i
 QYiHOPxZxZ/cSF5SlIzxuxV9HYhrkvkomTTN23z1a3jUxtvvecJbr4/CU
 GESgWrmgwlzqmd4nSdhwAVcmRHOJPjcgV6BshtJXnJbUgqCS0nXFNkEDN
 jxRwjgBRBmFBgLS2gqEURJgk5Pr8t5Mp4KbVSz+FNkhgORD2e7ZeNZHQF
 fvD+GbKmjrB56dzoYM4Ws9D5WzaLR7AlyeIQK/sp4YMSbfiaVlHhS0Ed7
 2mayXaKyD/WoVbqjBStSZoGktbRuI+eko8wTvXDds7Brf7mA22luE3isn w==;
X-CSE-ConnectionGUID: sFYj1yZ4SrKAu1k03L6hxw==
X-CSE-MsgGUID: vfzJN6Z8TSGmZehwEnv/0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27831645"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27831645"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 14:44:01 -0700
X-CSE-ConnectionGUID: cVtVQ2B7Q/O22ZRC4wWwZg==
X-CSE-MsgGUID: 1VBLUfYNRoqI5Tma5tccvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76113135"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 14:43:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 00:43:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/irq: s/gen3/gen2/
Date: Wed,  9 Oct 2024 00:43:48 +0300
Message-ID: <20241008214349.23331-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we use the gen3 codepaths also for gen2
rename everything to gen2_ to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 50 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 24 ++++-----
 drivers/gpu/drm/i915/i915_irq.c               | 36 ++++++-------
 drivers/gpu/drm/i915/i915_irq.h               |  6 +--
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  8 +--
 5 files changed, 62 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a4367ddc7a44..5d5754890168 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1496,7 +1496,7 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
-	gen3_irq_reset(uncore, VLV_IRQ_REGS);
+	gen2_irq_reset(uncore, VLV_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -1539,7 +1539,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	dev_priv->irq_mask = ~enable_mask;
 
-	gen3_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 }
 
 void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1556,10 +1556,10 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
+			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
-	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
-	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
 }
 
 void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1599,18 +1599,18 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
+			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
-	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
-	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
 
 	if (DISPLAY_VER(dev_priv) >= 14)
-		gen3_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
+		gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
 	else
-		gen3_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
+		gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		gen3_irq_reset(uncore, SDE_IRQ_REGS);
+		gen2_irq_reset(uncore, SDE_IRQ_REGS);
 }
 
 void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
@@ -1630,7 +1630,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 	}
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
+		gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
 			      dev_priv->display.irq.de_irq_mask[pipe],
 			      ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
 
@@ -1651,7 +1651,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
 	}
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
+		gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
@@ -1685,7 +1685,7 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 	else
 		mask = SDE_GMBUS_CPT;
 
-	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
+	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
@@ -1742,7 +1742,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 	}
 
 	if (IS_HASWELL(i915)) {
-		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
+		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
 		display_mask |= DE_EDP_PSR_INT_HSW;
 	}
 
@@ -1753,7 +1753,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 
 	ibx_irq_postinstall(i915);
 
-	gen3_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
+	gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
 		      display_mask | extra_mask);
 }
 
@@ -1827,11 +1827,11 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
 
-			gen3_assert_iir_is_zero(uncore,
+			gen2_assert_iir_is_zero(uncore,
 						TRANS_PSR_IIR(dev_priv, trans));
 		}
 	} else {
-		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
+		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
 	}
 
 	for_each_pipe(dev_priv, pipe) {
@@ -1839,20 +1839,20 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
+			gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
 				      dev_priv->display.irq.de_irq_mask[pipe],
 				      de_pipe_enables);
 	}
 
-	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
-	gen3_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
+	gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
+	gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
 
 	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
 
-		gen3_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
+		gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
 			      de_hpd_enables);
 	}
 }
@@ -1865,10 +1865,10 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
 			     XELPDP_TBT_HOTPLUG_MASK;
 
-	gen3_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
+	gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
 		      de_hpd_enables);
 
-	gen3_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
+	gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
 }
 
 static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -1876,7 +1876,7 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 mask = SDE_GMBUS_ICP;
 
-	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
+	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 0c1e405240af..1240d44eeb85 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -452,10 +452,10 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 
-	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
-	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
-	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
-	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
+	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
+	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
+	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
+	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
 }
 
 void gen8_gt_irq_postinstall(struct intel_gt *gt)
@@ -476,14 +476,14 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 
 	gt->pm_ier = 0x0;
 	gt->pm_imr = ~gt->pm_ier;
-	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interrupts[0]);
-	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interrupts[1]);
+	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interrupts[0]);
+	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interrupts[1]);
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
 	 * is enabled/disabled. Same wil be the case for GuC interrupts.
 	 */
-	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
-	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interrupts[3]);
+	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
+	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interrupts[3]);
 }
 
 static void gen5_gt_update_irq(struct intel_gt *gt,
@@ -514,9 +514,9 @@ void gen5_gt_irq_reset(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 
-	gen3_irq_reset(uncore, GT_IRQ_REGS);
+	gen2_irq_reset(uncore, GT_IRQ_REGS);
 	if (GRAPHICS_VER(gt->i915) >= 6)
-		gen3_irq_reset(uncore, GEN6_PM_IRQ_REGS);
+		gen2_irq_reset(uncore, GEN6_PM_IRQ_REGS);
 }
 
 void gen5_gt_irq_postinstall(struct intel_gt *gt)
@@ -538,7 +538,7 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 	else
 		gt_irqs |= GT_BLT_USER_INTERRUPT | GT_BSD_USER_INTERRUPT;
 
-	gen3_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
+	gen2_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
 
 	if (GRAPHICS_VER(gt->i915) >= 6) {
 		/*
@@ -551,6 +551,6 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 		}
 
 		gt->pm_imr = 0xffffffff;
-		gen3_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
+		gen2_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 333d58343b37..f75cbf5b8a1c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -77,7 +77,7 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
-void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
+void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 {
 	intel_uncore_write(uncore, regs.imr, 0xffffffff);
 	intel_uncore_posting_read(uncore, regs.imr);
@@ -94,7 +94,7 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 /*
  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
  */
-void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 {
 	u32 val = intel_uncore_read(uncore, reg);
 
@@ -110,10 +110,10 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 	intel_uncore_posting_read(uncore, reg);
 }
 
-void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		   u32 imr_val, u32 ier_val)
 {
-	gen3_assert_iir_is_zero(uncore, regs.iir);
+	gen2_assert_iir_is_zero(uncore, regs.iir);
 
 	intel_uncore_write(uncore, regs.ier, ier_val);
 	intel_uncore_write(uncore, regs.imr, imr_val);
@@ -622,7 +622,7 @@ static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 	if (HAS_PCH_NOP(dev_priv))
 		return;
 
-	gen3_irq_reset(uncore, SDE_IRQ_REGS);
+	gen2_irq_reset(uncore, SDE_IRQ_REGS);
 
 	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
 		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
@@ -634,7 +634,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen3_irq_reset(uncore, DE_IRQ_REGS);
+	gen2_irq_reset(uncore, DE_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 
 	if (GRAPHICS_VER(dev_priv) == 7)
@@ -671,7 +671,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
-	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
@@ -688,8 +688,8 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 	gen11_gt_irq_reset(gt);
 	gen11_display_irq_reset(dev_priv);
 
-	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
-	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 }
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
@@ -705,8 +705,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen11_display_irq_reset(dev_priv);
 
-	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
-	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
 }
@@ -720,7 +720,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 
-	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display.irq.display_irqs_enabled)
@@ -765,7 +765,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen11_gt_irq_postinstall(gt);
 	gen11_de_irq_postinstall(dev_priv);
 
-	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
+	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
 	gen11_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
@@ -781,7 +781,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		gen11_gt_irq_postinstall(gt);
 
-	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
+	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
 	dg1_de_irq_postinstall(dev_priv);
 
@@ -869,7 +869,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
-	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -901,7 +901,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
 
-	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
@@ -974,7 +974,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
-	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
+	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -1022,7 +1022,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_G4X(dev_priv))
 		enable_mask |= I915_BSD_USER_INTERRUPT;
 
-	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index da3d97143511..0457f6402e05 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -40,11 +40,11 @@ bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
 void intel_synchronize_irq(struct drm_i915_private *i915);
 void intel_synchronize_hardirq(struct drm_i915_private *i915);
 
-void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
+void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
 
-void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
+void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
 
-void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		   u32 imr_val, u32 ier_val);
 
 #endif /* __I915_IRQ_H__ */
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index 977ef47ea1f9..a7dbc6554d69 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -7,7 +7,7 @@
 #include "i915_reg.h"
 #include "intel_uncore.h"
 
-void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
+void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 {
 	intel_uncore_write(uncore, regs.imr, 0xffffffff);
 	intel_uncore_posting_read(uncore, regs.imr);
@@ -24,7 +24,7 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 /*
  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
  */
-void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 {
 	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
 	u32 val = intel_uncore_read(uncore, reg);
@@ -41,10 +41,10 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 	intel_uncore_posting_read(uncore, reg);
 }
 
-void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		   u32 imr_val, u32 ier_val)
 {
-	gen3_assert_iir_is_zero(uncore, regs.iir);
+	gen2_assert_iir_is_zero(uncore, regs.iir);
 
 	intel_uncore_write(uncore, regs.ier, ier_val);
 	intel_uncore_write(uncore, regs.imr, imr_val);
-- 
2.45.2

