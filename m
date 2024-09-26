Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF2A9877FB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 18:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC22B10EBB4;
	Thu, 26 Sep 2024 16:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuugID6g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E0AC10EBB1;
 Thu, 26 Sep 2024 16:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727369883; x=1758905883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1NXCTm1LVaC8nBcOU+eNloAwMayjviu9CzusRZd1Is=;
 b=NuugID6g1jKVM/3H8r3oBQwK9RaFODS1IJnO3K4FjqX50y+gDssX04di
 OxFB0OtsFlugtGrRwmPbP1dL5olNn8he5n/+H2HpFXhIMbRPzjKtaDrXn
 4af2rP5mEeohT/NYYItHMg0hA8WkTGdT6MOo/um9xcBfe6E8Uq2cLw3iI
 EMKCF2aGsl+h8oSYN9T/cVpbp0muENnh2NsthJ6WqMvKZdaVrZ3pocf2O
 jreDGGjqo5zpcueS4jFh9F+h6+SO4gcrra1bul7m7qwd0RjvlYw/hj4o6
 JTpHFucAQCxyiWV/7PlN154mdOQ9pWJ4QuGZAqChf+Z7EmLKepJrUGQ2m A==;
X-CSE-ConnectionGUID: lPuGbHsUQlqnx22GUcZSrg==
X-CSE-MsgGUID: P3jjPPeZRrKi1qFy2roz5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37050020"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="37050020"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:58:03 -0700
X-CSE-ConnectionGUID: w3Cedo7QQe+QYXQjyncKVQ==
X-CSE-MsgGUID: kBeKZKS7RVy+sRGriOwqbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="77020863"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:58:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/irq: remove GEN3_IRQ_RESET() and GEN3_IRQ_INIT()
 macros
Date: Thu, 26 Sep 2024 19:57:47 +0300
Message-Id: <9e231087a6eabfcb1b018b3d3fd7b9f016df6f4e.1727369787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1727369787.git.jani.nikula@intel.com>
References: <cover.1727369787.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Define register offset triplets for all registers used with
GEN3_IRQ_RESET() and GEN3_IRQ_INIT() macros, and call the underlying
gen3_irq_reset() and gen3_irq_init() functions directly. Remove the
macros, along with the macro name concatenation hackery.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 34 +++++++-------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  8 ++--
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  4 ++
 drivers/gpu/drm/i915/i915_irq.c               | 28 ++++++------
 drivers/gpu/drm/i915/i915_irq.h               |  7 ---
 drivers/gpu/drm/i915/i915_reg.h               | 45 +++++++++++++++++++
 6 files changed, 84 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6878dde85031..5c6b9918ed3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1486,7 +1486,7 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
-	GEN3_IRQ_RESET(uncore, VLV_);
+	gen3_irq_reset(uncore, VLV_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -1529,7 +1529,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	dev_priv->irq_mask = ~enable_mask;
 
-	GEN3_IRQ_INIT(uncore, VLV_, dev_priv->irq_mask, enable_mask);
+	gen3_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 }
 
 void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1548,8 +1548,8 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 						   POWER_DOMAIN_PIPE(pipe)))
 			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
 
-	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
-	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
+	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
+	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
 }
 
 void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -1591,16 +1591,16 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 						   POWER_DOMAIN_PIPE(pipe)))
 			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
 
-	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
-	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
+	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
+	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
 
 	if (DISPLAY_VER(dev_priv) >= 14)
-		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
+		gen3_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
 	else
-		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
+		gen3_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		GEN3_IRQ_RESET(uncore, SDE);
+		gen3_irq_reset(uncore, SDE_IRQ_REGS);
 }
 
 void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
@@ -1675,7 +1675,7 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 	else
 		mask = SDE_GMBUS_CPT;
 
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
@@ -1743,7 +1743,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 
 	ibx_irq_postinstall(i915);
 
-	GEN3_IRQ_INIT(uncore, DE, i915->irq_mask,
+	gen3_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
 		      display_mask | extra_mask);
 }
 
@@ -1834,15 +1834,15 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 					  de_pipe_enables);
 	}
 
-	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
-	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
+	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
+	gen3_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
 
 	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
 
-		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
+		gen3_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
 			      de_hpd_enables);
 	}
 }
@@ -1855,10 +1855,10 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
 			     XELPDP_TBT_HOTPLUG_MASK;
 
-	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
+	gen3_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
 		      de_hpd_enables);
 
-	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
+	gen3_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
 }
 
 static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -1866,7 +1866,7 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 mask = SDE_GMBUS_ICP;
 
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index ad4c51f18d3a..fbb3117e324a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -514,9 +514,9 @@ void gen5_gt_irq_reset(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 
-	GEN3_IRQ_RESET(uncore, GT);
+	gen3_irq_reset(uncore, GT_IRQ_REGS);
 	if (GRAPHICS_VER(gt->i915) >= 6)
-		GEN3_IRQ_RESET(uncore, GEN6_PM);
+		gen3_irq_reset(uncore, GEN6_PM_IRQ_REGS);
 }
 
 void gen5_gt_irq_postinstall(struct intel_gt *gt)
@@ -538,7 +538,7 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 	else
 		gt_irqs |= GT_BLT_USER_INTERRUPT | GT_BSD_USER_INTERRUPT;
 
-	GEN3_IRQ_INIT(uncore, GT, gt->gt_imr, gt_irqs);
+	gen3_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
 
 	if (GRAPHICS_VER(gt->i915) >= 6) {
 		/*
@@ -551,6 +551,6 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 		}
 
 		gt->pm_imr = 0xffffffff;
-		GEN3_IRQ_INIT(uncore, GEN6_PM, gt->pm_imr, pm_irqs);
+		gen3_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
 	}
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 57a3c83d3655..04577658695e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1472,6 +1472,10 @@
 						 GEN6_PM_RP_DOWN_THRESHOLD  | \
 						 GEN6_PM_RP_DOWN_TIMEOUT)
 
+#define GEN6_PM_IRQ_REGS			I915_IRQ_REGS(GEN6_PMIMR, \
+							      GEN6_PMIER, \
+							      GEN6_PMIIR)
+
 #define GEN7_GT_SCRATCH(i)			_MMIO(0x4f100 + (i) * 4)
 #define   GEN7_GT_SCRATCH_REG_NUM		8
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7938a44b5681..f0d69bd432f5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -662,7 +662,7 @@ static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 	if (HAS_PCH_NOP(dev_priv))
 		return;
 
-	GEN3_IRQ_RESET(uncore, SDE);
+	gen3_irq_reset(uncore, SDE_IRQ_REGS);
 
 	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
 		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
@@ -674,7 +674,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	GEN3_IRQ_RESET(uncore, DE);
+	gen3_irq_reset(uncore, DE_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 
 	if (GRAPHICS_VER(dev_priv) == 7)
@@ -711,7 +711,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
@@ -728,8 +728,8 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 	gen11_gt_irq_reset(gt);
 	gen11_display_irq_reset(dev_priv);
 
-	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
+	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 }
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
@@ -745,8 +745,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen11_display_irq_reset(dev_priv);
 
-	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
+	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
 }
@@ -760,7 +760,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 
-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display.irq.display_irqs_enabled)
@@ -805,7 +805,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen11_gt_irq_postinstall(gt);
 	gen11_de_irq_postinstall(dev_priv);
 
-	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
+	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
 	gen11_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
@@ -821,7 +821,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		gen11_gt_irq_postinstall(gt);
 
-	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
+	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
 	dg1_de_irq_postinstall(dev_priv);
 
@@ -1036,7 +1036,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
-	GEN3_IRQ_RESET(uncore, GEN2_);
+	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -1068,7 +1068,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
 	}
 
-	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
+	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
@@ -1141,7 +1141,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
-	GEN3_IRQ_RESET(uncore, GEN2_);
+	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -1190,7 +1190,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_G4X(dev_priv))
 		enable_mask |= I915_BSD_USER_INTERRUPT;
 
-	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
+	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 361ba46eed76..06a38671b32b 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -55,9 +55,6 @@ void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 					       GEN8_##type##_IIR(which_))); \
 })
 
-#define GEN3_IRQ_RESET(uncore, type) \
-	gen3_irq_reset((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR))
-
 #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
 ({ \
 	unsigned int which_ = which; \
@@ -67,8 +64,4 @@ void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		      imr_val, ier_val); \
 })
 
-#define GEN3_IRQ_INIT(uncore, type, imr_val, ier_val) \
-	gen3_irq_init((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR), \
-		      imr_val, ier_val)
-
 #endif /* __I915_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7396fc630e29..818fb71f7efc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -422,6 +422,11 @@
 #define GEN2_IIR	_MMIO(0x20a4)
 #define GEN2_IMR	_MMIO(0x20a8)
 #define GEN2_ISR	_MMIO(0x20ac)
+
+#define GEN2_IRQ_REGS		I915_IRQ_REGS(GEN2_IMR, \
+					      GEN2_IER, \
+					      GEN2_IIR)
+
 #define VLV_GUNIT_CLOCK_GATE	_MMIO(VLV_DISPLAY_BASE + 0x2060)
 #define   GINT_DIS		(1 << 22)
 #define   GCFG_DIS		(1 << 8)
@@ -434,6 +439,10 @@
 #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
 #define VLV_PCBR_ADDR_SHIFT	12
 
+#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
+					      VLV_IER, \
+					      VLV_IIR)
+
 #define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
 #define EIR		_MMIO(0x20b0)
 #define EMR		_MMIO(0x20b4)
@@ -2444,11 +2453,19 @@
 #define DEIIR   _MMIO(0x44008)
 #define DEIER   _MMIO(0x4400c)
 
+#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
+					      DEIER, \
+					      DEIIR)
+
 #define GTISR   _MMIO(0x44010)
 #define GTIMR   _MMIO(0x44014)
 #define GTIIR   _MMIO(0x44018)
 #define GTIER   _MMIO(0x4401c)
 
+#define GT_IRQ_REGS		I915_IRQ_REGS(GTIMR, \
+					      GTIER, \
+					      GTIIR)
+
 #define GEN8_MASTER_IRQ			_MMIO(0x44200)
 #define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
 #define  GEN8_PCU_IRQ			(1 << 30)
@@ -2560,6 +2577,10 @@
 #define  TGL_DE_PORT_AUX_DDIB		REG_BIT(1)
 #define  TGL_DE_PORT_AUX_DDIA		REG_BIT(0)
 
+#define GEN8_DE_PORT_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_PORT_IMR, \
+						      GEN8_DE_PORT_IER, \
+						      GEN8_DE_PORT_IIR)
+
 #define GEN8_DE_MISC_ISR _MMIO(0x44460)
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
@@ -2570,17 +2591,29 @@
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
 
+#define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
+						      GEN8_DE_MISC_IER, \
+						      GEN8_DE_MISC_IIR)
+
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
 #define GEN8_PCU_IIR _MMIO(0x444e8)
 #define GEN8_PCU_IER _MMIO(0x444ec)
 
+#define GEN8_PCU_IRQ_REGS		I915_IRQ_REGS(GEN8_PCU_IMR, \
+						      GEN8_PCU_IER, \
+						      GEN8_PCU_IIR)
+
 #define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
 #define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
 #define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
 #define GEN11_GU_MISC_IER	_MMIO(0x444fc)
 #define  GEN11_GU_MISC_GSE	(1 << 27)
 
+#define GEN11_GU_MISC_IRQ_REGS		I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
+						      GEN11_GU_MISC_IER, \
+						      GEN11_GU_MISC_IIR)
+
 #define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
 #define  GEN11_MASTER_IRQ		(1 << 31)
 #define  GEN11_PCU_IRQ			(1 << 30)
@@ -2624,6 +2657,10 @@
 						 GEN11_TBT_HOTPLUG(HPD_PORT_TC2) | \
 						 GEN11_TBT_HOTPLUG(HPD_PORT_TC1))
 
+#define GEN11_DE_HPD_IRQ_REGS		I915_IRQ_REGS(GEN11_DE_HPD_IMR, \
+						      GEN11_DE_HPD_IER, \
+						      GEN11_DE_HPD_IIR)
+
 #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
 #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
 #define  GEN11_HOTPLUG_CTL_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) * 4))
@@ -2644,6 +2681,10 @@
 #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
 #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
 
+#define PICAINTERRUPT_IRQ_REGS			I915_IRQ_REGS(PICAINTERRUPT_IMR, \
+							      PICAINTERRUPT_IER, \
+							      PICAINTERRUPT_IIR)
+
 #define XELPDP_PORT_HOTPLUG_CTL(hpd_pin)	_MMIO(0x16F270 + (_HPD_PIN_TC(hpd_pin) * 0x200))
 #define  XELPDP_TBT_HOTPLUG_ENABLE		REG_BIT(6)
 #define  XELPDP_TBT_HPD_LONG_DETECT		REG_BIT(5)
@@ -3000,6 +3041,10 @@
 #define SDEIIR  _MMIO(0xc4008)
 #define SDEIER  _MMIO(0xc400c)
 
+#define SDE_IRQ_REGS			I915_IRQ_REGS(SDEIMR, \
+						      SDEIER, \
+						      SDEIIR)
+
 #define SERR_INT			_MMIO(0xc4040)
 #define  SERR_INT_POISON		(1 << 31)
 #define  SERR_INT_TRANS_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
-- 
2.39.2

