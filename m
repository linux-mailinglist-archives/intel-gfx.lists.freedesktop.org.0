Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B6BC490FB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 20:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F135610E476;
	Mon, 10 Nov 2025 19:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jyyI3Kkk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5785110E302;
 Mon, 10 Nov 2025 19:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762803123; x=1794339123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jZ7X6laDa5r/hAzxvYVHkV9cTtiUODqwwS0zk1j+0DQ=;
 b=jyyI3Kkkr9rUl6oTztfkfAEk3Ybb4J4GBVoIhXlA7bcYTIt3CduyaNsv
 KI9Lh/Pb8tpQ0Xxr3ubc5oDElS3CdM3SMVr0A7b03aN2fk4UrjdTccAwg
 p06lhYQGeVBskPhO8GFEcZJlZR+BXZJ8WilQYFm8bYlvoPFa7AGbEyMFm
 u5BlOSo2cmNwhjrfWR3ydqlKhC044MQE6JJS/kX+/D6XTKBOLMTpSsXhp
 Va0AWCQjJHxzdqYIYNiCrzDisORnh7OAi5am13CTeOih9tcU+3tm4CBH6
 QEX1cMgBFgnU/R0O6OtCuGT67tdIdgdNKDiMnQsmYSWQzbzWtlZVvAJsz g==;
X-CSE-ConnectionGUID: /9E1/XEBTCGmWjrKWmhmzA==
X-CSE-MsgGUID: lM9jz2z6QxWcJEZv3PywUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82257727"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="82257727"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:32:03 -0800
X-CSE-ConnectionGUID: 3uhuRvyJS9mXFddbRiXQDA==
X-CSE-MsgGUID: DTDkMVjLSl+6PZnEPrIsZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="192860103"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:32:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/display: shorten the intel_display_irq_regs_*
 function names
Date: Mon, 10 Nov 2025 21:31:39 +0200
Message-ID: <ab7b409334ad0b02f531dcacbbad0f7d4a20c6f1.1762803004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762803004.git.jani.nikula@intel.com>
References: <cover.1762803004.git.jani.nikula@intel.com>
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

Shorten the intel_display_irq_regs_* function names to the underlying
function names with a _wl suffix for clarity.

- intel_display_irq_regs_init() -> irq_init_wl()
- intel_display_irq_regs_reset() -> irq_reset_wl()
- intel_display_irq_regs_assert_irr_is_zero() -> assert_iir_is_zero_wl()

This emphasizes the difference is the wakelock. Platforms without the
DMC wakelock mechanism can use the non-wl versions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 76 +++++++++----------
 1 file changed, 34 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c9e7814479f6..09036cd92558 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -97,9 +97,8 @@ static void error_init(struct intel_display *display, struct i915_error_regs reg
 	intel_de_posting_read(display, regs.emr);
 }
 
-static void
-intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs regs,
-			    u32 imr_val, u32 ier_val)
+static void irq_init_wl(struct intel_display *display, struct i915_irq_regs regs,
+			u32 imr_val, u32 ier_val)
 {
 	intel_dmc_wl_get(display, regs.imr);
 	intel_dmc_wl_get(display, regs.ier);
@@ -112,8 +111,7 @@ intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_put(display, regs.imr);
 }
 
-static void
-intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs regs)
+static void irq_reset_wl(struct intel_display *display, struct i915_irq_regs regs)
 {
 	intel_dmc_wl_get(display, regs.imr);
 	intel_dmc_wl_get(display, regs.ier);
@@ -126,8 +124,7 @@ intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_put(display, regs.imr);
 }
 
-static void
-intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display, i915_reg_t reg)
+static void assert_iir_is_zero_wl(struct intel_display *display, i915_reg_t reg)
 {
 	intel_dmc_wl_get(display, reg);
 
@@ -1983,7 +1980,7 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 
 	i9xx_pipestat_irq_reset(display);
 
-	intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
+	irq_reset_wl(display, VLV_IRQ_REGS);
 	display->irq.vlv_imr_mask = ~0u;
 }
 
@@ -2094,7 +2091,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
 
 	display->irq.vlv_imr_mask = ~enable_mask;
 
-	intel_display_irq_regs_init(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
+	irq_init_wl(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
 }
 
 void vlv_display_irq_postinstall(struct intel_display *display)
@@ -2145,10 +2142,10 @@ void gen8_display_irq_reset(struct intel_display *display)
 	for_each_pipe(display, pipe)
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
-			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
+			irq_reset_wl(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
-	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
-	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
+	irq_reset_wl(display, GEN8_DE_PORT_IRQ_REGS);
+	irq_reset_wl(display, GEN8_DE_MISC_IRQ_REGS);
 
 	if (HAS_PCH_SPLIT(display))
 		ibx_display_irq_reset(display);
@@ -2190,18 +2187,18 @@ void gen11_display_irq_reset(struct intel_display *display)
 	for_each_pipe(display, pipe)
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
-			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
+			irq_reset_wl(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
-	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
-	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
+	irq_reset_wl(display, GEN8_DE_PORT_IRQ_REGS);
+	irq_reset_wl(display, GEN8_DE_MISC_IRQ_REGS);
 
 	if (DISPLAY_VER(display) >= 14)
-		intel_display_irq_regs_reset(display, PICAINTERRUPT_IRQ_REGS);
+		irq_reset_wl(display, PICAINTERRUPT_IRQ_REGS);
 	else
-		intel_display_irq_regs_reset(display, GEN11_DE_HPD_IRQ_REGS);
+		irq_reset_wl(display, GEN11_DE_HPD_IRQ_REGS);
 
 	if (INTEL_PCH_TYPE(display) >= PCH_ICP)
-		intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
+		irq_reset_wl(display, SDE_IRQ_REGS);
 }
 
 void gen8_irq_power_well_post_enable(struct intel_display *display,
@@ -2219,9 +2216,9 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 	}
 
 	for_each_pipe_masked(display, pipe, pipe_mask)
-		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-					    display->irq.de_pipe_imr_mask[pipe],
-					    ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
+		irq_init_wl(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
+			    display->irq.de_pipe_imr_mask[pipe],
+			    ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&display->irq.lock);
 }
@@ -2239,7 +2236,7 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
 	}
 
 	for_each_pipe_masked(display, pipe, pipe_mask)
-		intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
+		irq_reset_wl(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	spin_unlock_irq(&display->irq.lock);
 
@@ -2272,7 +2269,7 @@ static void ibx_irq_postinstall(struct intel_display *display)
 	else
 		mask = SDE_GMBUS_CPT;
 
-	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
+	irq_init_wl(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void valleyview_enable_display_irqs(struct intel_display *display)
@@ -2334,7 +2331,7 @@ void ilk_de_irq_postinstall(struct intel_display *display)
 	}
 
 	if (display->platform.haswell) {
-		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
+		assert_iir_is_zero_wl(display, EDP_PSR_IIR);
 		display_mask |= DE_EDP_PSR_INT_HSW;
 	}
 
@@ -2345,8 +2342,8 @@ void ilk_de_irq_postinstall(struct intel_display *display)
 
 	ibx_irq_postinstall(display);
 
-	intel_display_irq_regs_init(display, DE_IRQ_REGS, display->irq.ilk_de_imr_mask,
-				    display_mask | extra_mask);
+	irq_init_wl(display, DE_IRQ_REGS, display->irq.ilk_de_imr_mask,
+		    display_mask | extra_mask);
 }
 
 static void mtp_irq_postinstall(struct intel_display *display);
@@ -2422,11 +2419,10 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 			if (!intel_display_power_is_enabled(display, domain))
 				continue;
 
-			intel_display_irq_regs_assert_irr_is_zero(display,
-								  TRANS_PSR_IIR(display, trans));
+			assert_iir_is_zero_wl(display, TRANS_PSR_IIR(display, trans));
 		}
 	} else {
-		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
+		assert_iir_is_zero_wl(display, EDP_PSR_IIR);
 	}
 
 	for_each_pipe(display, pipe) {
@@ -2434,23 +2430,20 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
-			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-						    display->irq.de_pipe_imr_mask[pipe],
-						    de_pipe_enables);
+			irq_init_wl(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
+				    display->irq.de_pipe_imr_mask[pipe],
+				    de_pipe_enables);
 	}
 
-	intel_display_irq_regs_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked,
-				    de_port_enables);
-	intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked,
-				    de_misc_masked);
+	irq_init_wl(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
+	irq_init_wl(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
 
 	if (IS_DISPLAY_VER(display, 11, 13)) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
 
-		intel_display_irq_regs_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
-					    de_hpd_enables);
+		irq_init_wl(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked, de_hpd_enables);
 	}
 }
 
@@ -2461,17 +2454,16 @@ static void mtp_irq_postinstall(struct intel_display *display)
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
 			     XELPDP_TBT_HOTPLUG_MASK;
 
-	intel_display_irq_regs_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
-				    de_hpd_enables);
+	irq_init_wl(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask, de_hpd_enables);
 
-	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
+	irq_init_wl(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
 }
 
 static void icp_irq_postinstall(struct intel_display *display)
 {
 	u32 mask = SDE_GMBUS_ICP;
 
-	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
+	irq_init_wl(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
 void gen11_de_irq_postinstall(struct intel_display *display)
-- 
2.47.3

