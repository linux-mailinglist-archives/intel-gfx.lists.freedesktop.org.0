Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE5698D12A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B1710E6F1;
	Wed,  2 Oct 2024 10:27:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xpv+3vEG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BC010E6EF;
 Wed,  2 Oct 2024 10:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727864823; x=1759400823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TzelG5BYIqGEJKoYEghT1dt5w+hmojSFOqMf7PqIQz8=;
 b=Xpv+3vEGYILuhJCrYILjGmQruBlsN30D59n2KmaNRcy5lhD+KXmZ9E/I
 4ShbXc2OjPAT92Kn2HGIAaGQ7VyRRs1Gx86GrbgmyjILLNdNAXqX3i494
 WACvZ9BdVeOLowBVJN/mY9mSRS9V5xY4rtStKLllrVT2yJZpyISwbRy9Q
 YBJv0Da46TR1Uu6dbKFVxT+aTnk1M4RYdcdaZMUbfLIwt1KoYOERwzKUg
 PeIr/kqm/ghPNjSGi8VV/JPj1pmUFsMIQ9jyepiUsz5WcYhd9tKbx/Lnc
 jMZmH6J8XdqKpurJKaSYbQGtG9yq0bdt5fR7Ccd9rqCLLR95toJMmlLji Q==;
X-CSE-ConnectionGUID: DXljv90wSNKz2YM+uSKb0w==
X-CSE-MsgGUID: +fmopOjHSeWoX+lE9YRxZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37614852"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="37614852"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:27:02 -0700
X-CSE-ConnectionGUID: QGro8Nd1S0qYFrVPqmlKKQ==
X-CSE-MsgGUID: aS5FAyc+QkOcLMZg3W+CdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78923436"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:27:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 3/3] drm/i915/irq: remove GEN8_IRQ_RESET_NDX() and
 GEN8_IRQ_INIT_NDX() macros
Date: Wed,  2 Oct 2024 13:26:45 +0300
Message-Id: <20241002102645.136155-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241002102645.136155-1-jani.nikula@intel.com>
References: <20241002102645.136155-1-jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c   | 18 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c         | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_irq.h                | 17 -----------------
 drivers/gpu/drm/i915/i915_reg.h                |  8 ++++++++
 4 files changed, 25 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 380859749906..09061c9c2f40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1536,7 +1536,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
 	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
@@ -1579,7 +1579,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
 	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
@@ -1610,9 +1610,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
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
@@ -1631,7 +1631,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
 	}
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+		gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
@@ -1819,9 +1819,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
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
2.39.5

