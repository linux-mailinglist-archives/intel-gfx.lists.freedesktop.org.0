Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F5458FEF4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36192B3D9F;
	Thu, 11 Aug 2022 15:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFFCB3DD6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230839; x=1691766839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GPvtOcM8eognjwQOdPGQXdztRcv8Gu41HXTFp8Frlo4=;
 b=ZAcimvw+JALF46AVcxlA6BRZ7m/D2rgFiWKdGLl8RGbiuG4pIW0FTHkh
 on/HBifAs2N/M1uj5YBmMFAOOUXOWsgqgDZfTrZDE3rQIQxsNtn6u1/N6
 D9jorAbhXZ0/t1U7a2D749gtZGwEsNacHGwdkLr76CNT5RT+nUeQSVXGZ
 zXU8yuHB+KNGNXENVJi3tspJqVv8oRfBWUzQdR0/FVXZYAvXCTi4AFIOW
 PTC71uckFkVXh092uP0uXcTIWi237SBtucuc5e4B8xYoeMnEyGwy7qxU8
 CGK/olVUcElwIX0LlL2DA6twOwVgdksEHf/wis0AnNhEp2A/0s2iSnyrK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278319128"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="278319128"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="634257982"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:16 +0300
Message-Id: <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while
at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++
 drivers/gpu/drm/i915/i915_drv.h               |  4 --
 drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
 3 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index ff76bd4079e4..98c6ccdc9100 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -10,6 +10,7 @@
 
 struct intel_atomic_state;
 struct intel_cdclk_funcs;
+struct intel_clock_gating_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
@@ -44,6 +45,9 @@ struct intel_display {
 
 		/* irq display functions */
 		const struct intel_hotplug_funcs *hotplug;
+
+		/* pm private clock gating functions */
+		const struct intel_clock_gating_funcs *clock_gating;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 513fae9e7a81..216298d2d677 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -78,7 +78,6 @@
 #include "intel_wopcm.h"
 
 struct dpll;
-struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 struct intel_atomic_state;
@@ -502,9 +501,6 @@ struct drm_i915_private {
 	/* unbound hipri wq for page flips/plane updates */
 	struct workqueue_struct *flip_wq;
 
-	/* pm private clock gating functions */
-	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
-
 	/* pm display functions */
 	const struct drm_i915_wm_disp_funcs *wm_disp;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ef7553b494ea..043094573c20 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -59,7 +59,7 @@
 
 static void skl_sagv_disable(struct drm_i915_private *dev_priv);
 
-struct drm_i915_clock_gating_funcs {
+struct intel_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *i915);
 };
 
@@ -8053,7 +8053,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
+	dev_priv->display.funcs.clock_gating->init_clock_gating(dev_priv);
 }
 
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -8069,7 +8069,7 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 }
 
 #define CG_FUNCS(platform)						\
-static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs = { \
+static const struct intel_clock_gating_funcs platform##_clock_gating_funcs = { \
 	.init_clock_gating = platform##_init_clock_gating,		\
 }
 
@@ -8113,58 +8113,58 @@ CG_FUNCS(nop);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_PONTEVECCHIO(dev_priv))
-		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &pvc_clock_gating_funcs;
 	else if (IS_DG2(dev_priv))
-		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &dg2_clock_gating_funcs;
 	else if (IS_XEHPSDV(dev_priv))
-		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &xehpsdv_clock_gating_funcs;
 	else if (IS_ALDERLAKE_P(dev_priv))
-		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &adlp_clock_gating_funcs;
 	else if (IS_DG1(dev_priv))
-		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &dg1_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 12)
-		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &gen12lp_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 11)
-		dev_priv->clock_gating_funcs = &icl_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &icl_clock_gating_funcs;
 	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &cfl_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &cfl_clock_gating_funcs;
 	else if (IS_SKYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &skl_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &skl_clock_gating_funcs;
 	else if (IS_KABYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &kbl_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &kbl_clock_gating_funcs;
 	else if (IS_BROXTON(dev_priv))
-		dev_priv->clock_gating_funcs = &bxt_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &bxt_clock_gating_funcs;
 	else if (IS_GEMINILAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &glk_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &glk_clock_gating_funcs;
 	else if (IS_BROADWELL(dev_priv))
-		dev_priv->clock_gating_funcs = &bdw_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &bdw_clock_gating_funcs;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs = &chv_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &chv_clock_gating_funcs;
 	else if (IS_HASWELL(dev_priv))
-		dev_priv->clock_gating_funcs = &hsw_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &hsw_clock_gating_funcs;
 	else if (IS_IVYBRIDGE(dev_priv))
-		dev_priv->clock_gating_funcs = &ivb_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &ivb_clock_gating_funcs;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs = &vlv_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &vlv_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 6)
-		dev_priv->clock_gating_funcs = &gen6_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &gen6_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 5)
-		dev_priv->clock_gating_funcs = &ilk_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &ilk_clock_gating_funcs;
 	else if (IS_G4X(dev_priv))
-		dev_priv->clock_gating_funcs = &g4x_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &g4x_clock_gating_funcs;
 	else if (IS_I965GM(dev_priv))
-		dev_priv->clock_gating_funcs = &i965gm_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &i965gm_clock_gating_funcs;
 	else if (IS_I965G(dev_priv))
-		dev_priv->clock_gating_funcs = &i965g_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &i965g_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 3)
-		dev_priv->clock_gating_funcs = &gen3_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &gen3_clock_gating_funcs;
 	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-		dev_priv->clock_gating_funcs = &i85x_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &i85x_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 2)
-		dev_priv->clock_gating_funcs = &i830_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &i830_clock_gating_funcs;
 	else {
 		MISSING_CASE(INTEL_DEVID(dev_priv));
-		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
+		dev_priv->display.funcs.clock_gating = &nop_clock_gating_funcs;
 	}
 }
 
-- 
2.34.1

