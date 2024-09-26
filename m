Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD7987818
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 19:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C5A10EBBB;
	Thu, 26 Sep 2024 17:03:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pw6W+ocF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B4F10EBBB;
 Thu, 26 Sep 2024 17:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727370191; x=1758906191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qo8HOG02XBRELuh6ncXSr4dSQAIAZ6VJ/Elqn9he6Xk=;
 b=Pw6W+ocFFdFYMDsP+WLwD+iYNapGXiUScuvtDPxUBlaTA010itz+Cnaf
 4t8FU/rN4lVoQSxD2zmpvr9YUaD5YmthrB61Ge18z0m8MsSvsX+6OuyBK
 6CnCpf00AxaRG5pA6NfV1390l9Bfgt8Ubs3fJQ4gT99sNUIznnvQJTvEJ
 n0csoxHooWP8XW5bhM3FYE3e39K6k94hzzNwuh0FCmpkOcXUcrY3H7TE2
 4nMVSa1k/XOvI7zah2iXBu+OoiLuS0kg9RSDWLLsGFcuhag9scujscXs+
 tvSXau03yV1gba0seYjmn4Kc7w2WlkWKFOn7qMP5uPkd1PE+LDpoDzGDl g==;
X-CSE-ConnectionGUID: pueBeLecQ8G5wmbHvy2vzA==
X-CSE-MsgGUID: i4N0dTACTxKr96LE0O7CGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26609081"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26609081"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:58:15 -0700
X-CSE-ConnectionGUID: r6F/NNc0RhuIuPqALWZ3OQ==
X-CSE-MsgGUID: /0KhWZgGS7S1qtGA+yvPeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="77162433"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:58:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/irq: remove GEN8_IRQ_RESET_NDX() and
 GEN8_IRQ_INIT_NDX() macros
Date: Thu, 26 Sep 2024 19:57:48 +0300
Message-Id: <8b2a2b5b56fc38187f510b3bc439c652f6ad96b8.1727369787.git.jani.nikula@intel.com>
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
GEN8_IRQ_RESET_NDX() and GEN8_IRQ_INIT_NDX() macros, and call the
underlying gen3_irq_reset() and gen3_irq_init() functions
directly. Remove the macros, along with the macro name concatenation
hackery.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c   | 18 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c         | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_irq.h                | 17 -----------------
 drivers/gpu/drm/i915/i915_reg.h                |  8 ++++++++
 4 files changed, 25 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5c6b9918ed3a..ed243283ba6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1546,7 +1546,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
 	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
@@ -1589,7 +1589,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
 	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
@@ -1620,9 +1620,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 	}
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-				  dev_priv->display.irq.de_irq_mask[pipe],
-				  ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
+		gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
+			      dev_priv->display.irq.de_irq_mask[pipe],
+			      ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -1641,7 +1641,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
 	}
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+		gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
@@ -1829,9 +1829,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-					  dev_priv->display.irq.de_irq_mask[pipe],
-					  de_pipe_enables);
+			gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
+				      dev_priv->display.irq.de_irq_mask[pipe],
+				      de_pipe_enables);
 	}
 
 	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index fbb3117e324a..0c1e405240af 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -452,10 +452,10 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 
-	GEN8_IRQ_RESET_NDX(uncore, GT, 0);
-	GEN8_IRQ_RESET_NDX(uncore, GT, 1);
-	GEN8_IRQ_RESET_NDX(uncore, GT, 2);
-	GEN8_IRQ_RESET_NDX(uncore, GT, 3);
+	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
+	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
+	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
+	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
 }
 
 void gen8_gt_irq_postinstall(struct intel_gt *gt)
@@ -476,14 +476,14 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 
 	gt->pm_ier = 0x0;
 	gt->pm_imr = ~gt->pm_ier;
-	GEN8_IRQ_INIT_NDX(uncore, GT, 0, ~gt_interrupts[0], gt_interrupts[0]);
-	GEN8_IRQ_INIT_NDX(uncore, GT, 1, ~gt_interrupts[1], gt_interrupts[1]);
+	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interrupts[0]);
+	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interrupts[1]);
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
 	 * is enabled/disabled. Same wil be the case for GuC interrupts.
 	 */
-	GEN8_IRQ_INIT_NDX(uncore, GT, 2, gt->pm_imr, gt->pm_ier);
-	GEN8_IRQ_INIT_NDX(uncore, GT, 3, ~gt_interrupts[3], gt_interrupts[3]);
+	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
+	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interrupts[3]);
 }
 
 static void gen5_gt_update_irq(struct intel_gt *gt,
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 06a38671b32b..da3d97143511 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -47,21 +47,4 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
 void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		   u32 imr_val, u32 ier_val);
 
-#define GEN8_IRQ_RESET_NDX(uncore, type, which) \
-({ \
-	unsigned int which_ = which; \
-	gen3_irq_reset((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
-					       GEN8_##type##_IER(which_), \
-					       GEN8_##type##_IIR(which_))); \
-})
-
-#define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
-({ \
-	unsigned int which_ = which; \
-	gen3_irq_init((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
-					      GEN8_##type##_IER(which_), \
-					      GEN8_##type##_IIR(which_)), \
-		      imr_val, ier_val); \
-})
-
 #endif /* __I915_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 818fb71f7efc..818142f5a10c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2491,6 +2491,10 @@
 #define GEN8_GT_IIR(which) _MMIO(0x44308 + (0x10 * (which)))
 #define GEN8_GT_IER(which) _MMIO(0x4430c + (0x10 * (which)))
 
+#define GEN8_GT_IRQ_REGS(which)		I915_IRQ_REGS(GEN8_GT_IMR(which), \
+						      GEN8_GT_IER(which), \
+						      GEN8_GT_IIR(which))
+
 #define GEN8_RCS_IRQ_SHIFT 0
 #define GEN8_BCS_IRQ_SHIFT 16
 #define GEN8_VCS0_IRQ_SHIFT 0  /* NB: VCS1 in bspec! */
@@ -2542,6 +2546,10 @@
 #define  GEN8_PIPE_VSYNC		REG_BIT(1)
 #define  GEN8_PIPE_VBLANK		REG_BIT(0)
 
+#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
+						      GEN8_DE_PIPE_IER(pipe), \
+						      GEN8_DE_PIPE_IIR(pipe))
+
 #define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
 #define _HPD_PIN_TC(hpd_pin)	((hpd_pin) - HPD_PORT_TC1)
 
-- 
2.39.2

