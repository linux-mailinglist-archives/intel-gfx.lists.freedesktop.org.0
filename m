Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B736059FB07
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3219AA82;
	Wed, 24 Aug 2022 13:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8AD18BC67
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346995; x=1692882995;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/K7HOycKpTI3xhm4qB3S9PosGbVXJ983fWcycurYtVg=;
 b=VgYjPmMIVGetUFlYDyPrV3dljHW5dMiTN/qgcFWIsfrlXVyNDY8/yRtL
 d/oY1HTpPkrzavrw7RoRhRwlAcLDJpNri2H8Q0UNdDrrzbJs2TKHJT1pJ
 +D0Kd2QGiLuekPWl7OlZeIC5zscDGF7gbIud4+S350mlEPbVmksmoIjFt
 Rey7g7czEwRUwSL923O6l7fA5l+vT4JCfGwN00gTubb9L970CU7YzieFY
 IfpACTy50xEqCuoLATQSQVLNoOZ03yez2Fh3o/l4CTqpNj6W6AUTjYah/
 XKHzxhOx7JqO80TyWQerSt5NuvugBLJTq9LVlqNN4Ox7jzIftZIoGO+b/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294747563"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294747563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="639115431"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:31 +0300
Message-Id: <29d07c82ef7d33a59fc9c8e25ae2d2f900677a4c.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/38] drm/i915: move wm_disp funcs to
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display watermark functions under drm_i915_private display
sub-struct.

Rename struct drm_i915_wm_disp_funcs to intel_wm_funcs while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++++--------
 .../gpu/drm/i915/display/intel_display_core.h | 21 ++++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 22 ----------
 drivers/gpu/drm/i915/intel_pm.c               | 42 +++++++++----------
 4 files changed, 59 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1232880796f1..2620f1d9a35d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -163,16 +163,16 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
  */
 void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->wm_disp->update_wm)
-		dev_priv->wm_disp->update_wm(dev_priv);
+	if (dev_priv->display.funcs.wm->update_wm)
+		dev_priv->display.funcs.wm->update_wm(dev_priv);
 }
 
 static int intel_compute_pipe_wm(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->wm_disp->compute_pipe_wm)
-		return dev_priv->wm_disp->compute_pipe_wm(state, crtc);
+	if (dev_priv->display.funcs.wm->compute_pipe_wm)
+		return dev_priv->display.funcs.wm->compute_pipe_wm(state, crtc);
 	return 0;
 }
 
@@ -180,20 +180,20 @@ static int intel_compute_intermediate_wm(struct intel_atomic_state *state,
 					 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (!dev_priv->wm_disp->compute_intermediate_wm)
+	if (!dev_priv->display.funcs.wm->compute_intermediate_wm)
 		return 0;
 	if (drm_WARN_ON(&dev_priv->drm,
-			!dev_priv->wm_disp->compute_pipe_wm))
+			!dev_priv->display.funcs.wm->compute_pipe_wm))
 		return 0;
-	return dev_priv->wm_disp->compute_intermediate_wm(state, crtc);
+	return dev_priv->display.funcs.wm->compute_intermediate_wm(state, crtc);
 }
 
 static bool intel_initial_watermarks(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->wm_disp->initial_watermarks) {
-		dev_priv->wm_disp->initial_watermarks(state, crtc);
+	if (dev_priv->display.funcs.wm->initial_watermarks) {
+		dev_priv->display.funcs.wm->initial_watermarks(state, crtc);
 		return true;
 	}
 	return false;
@@ -203,23 +203,23 @@ static void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->wm_disp->atomic_update_watermarks)
-		dev_priv->wm_disp->atomic_update_watermarks(state, crtc);
+	if (dev_priv->display.funcs.wm->atomic_update_watermarks)
+		dev_priv->display.funcs.wm->atomic_update_watermarks(state, crtc);
 }
 
 static void intel_optimize_watermarks(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->wm_disp->optimize_watermarks)
-		dev_priv->wm_disp->optimize_watermarks(state, crtc);
+	if (dev_priv->display.funcs.wm->optimize_watermarks)
+		dev_priv->display.funcs.wm->optimize_watermarks(state, crtc);
 }
 
 static int intel_compute_global_watermarks(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->wm_disp->compute_global_watermarks)
-		return dev_priv->wm_disp->compute_global_watermarks(state);
+	if (dev_priv->display.funcs.wm->compute_global_watermarks)
+		return dev_priv->display.funcs.wm->compute_global_watermarks(state);
 	return 0;
 }
 
@@ -2399,7 +2399,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) != 2)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (!dev_priv->wm_disp->initial_watermarks)
+	if (!dev_priv->display.funcs.wm->initial_watermarks)
 		intel_update_watermarks(dev_priv);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
@@ -8454,7 +8454,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
 	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
-	if (!dev_priv->wm_disp->optimize_watermarks)
+	if (!dev_priv->display.funcs.wm->optimize_watermarks)
 		return;
 
 	state = drm_atomic_state_alloc(&dev_priv->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e9481c5ef1a5..b829b304c487 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_cdclk_funcs;
 struct intel_crtc;
@@ -32,6 +33,23 @@ struct intel_display_funcs {
 	void (*commit_modeset_enables)(struct intel_atomic_state *state);
 };
 
+/* functions used for watermark calcs for display. */
+struct intel_wm_funcs {
+	/* update_wm is for legacy wm management */
+	void (*update_wm)(struct drm_i915_private *dev_priv);
+	int (*compute_pipe_wm)(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc);
+	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc);
+	void (*initial_watermarks)(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc);
+	void (*atomic_update_watermarks)(struct intel_atomic_state *state,
+					 struct intel_crtc *crtc);
+	void (*optimize_watermarks)(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
+	int (*compute_global_watermarks)(struct intel_atomic_state *state);
+};
+
 struct intel_display {
 	/* Display functions */
 	struct {
@@ -46,6 +64,9 @@ struct intel_display {
 
 		/* irq display functions */
 		const struct intel_hotplug_funcs *hotplug;
+
+		/* pm display functions */
+		const struct intel_wm_funcs *wm;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d8baeba82be1..31c9d302deaa 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -81,14 +81,12 @@ struct dpll;
 struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_cdclk_config;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
 struct intel_connector;
-struct intel_crtc;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
@@ -157,23 +155,6 @@ struct sdvo_device_mapping {
 	u8 ddc_pin;
 };
 
-/* functions used for watermark calcs for display. */
-struct drm_i915_wm_disp_funcs {
-	/* update_wm is for legacy wm management */
-	void (*update_wm)(struct drm_i915_private *dev_priv);
-	int (*compute_pipe_wm)(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc);
-	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
-				       struct intel_crtc *crtc);
-	void (*initial_watermarks)(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc);
-	void (*atomic_update_watermarks)(struct intel_atomic_state *state,
-					 struct intel_crtc *crtc);
-	void (*optimize_watermarks)(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc);
-	int (*compute_global_watermarks)(struct intel_atomic_state *state);
-};
-
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
@@ -505,9 +486,6 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-	/* pm display functions */
-	const struct drm_i915_wm_disp_funcs *wm_disp;
-
 	/* fdi display functions */
 	const struct intel_fdi_funcs *fdi_funcs;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ef7553b494ea..b63a1273df85 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8168,18 +8168,18 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 	}
 }
 
-static const struct drm_i915_wm_disp_funcs skl_wm_funcs = {
+static const struct intel_wm_funcs skl_wm_funcs = {
 	.compute_global_watermarks = skl_compute_wm,
 };
 
-static const struct drm_i915_wm_disp_funcs ilk_wm_funcs = {
+static const struct intel_wm_funcs ilk_wm_funcs = {
 	.compute_pipe_wm = ilk_compute_pipe_wm,
 	.compute_intermediate_wm = ilk_compute_intermediate_wm,
 	.initial_watermarks = ilk_initial_watermarks,
 	.optimize_watermarks = ilk_optimize_watermarks,
 };
 
-static const struct drm_i915_wm_disp_funcs vlv_wm_funcs = {
+static const struct intel_wm_funcs vlv_wm_funcs = {
 	.compute_pipe_wm = vlv_compute_pipe_wm,
 	.compute_intermediate_wm = vlv_compute_intermediate_wm,
 	.initial_watermarks = vlv_initial_watermarks,
@@ -8187,30 +8187,30 @@ static const struct drm_i915_wm_disp_funcs vlv_wm_funcs = {
 	.atomic_update_watermarks = vlv_atomic_update_fifo,
 };
 
-static const struct drm_i915_wm_disp_funcs g4x_wm_funcs = {
+static const struct intel_wm_funcs g4x_wm_funcs = {
 	.compute_pipe_wm = g4x_compute_pipe_wm,
 	.compute_intermediate_wm = g4x_compute_intermediate_wm,
 	.initial_watermarks = g4x_initial_watermarks,
 	.optimize_watermarks = g4x_optimize_watermarks,
 };
 
-static const struct drm_i915_wm_disp_funcs pnv_wm_funcs = {
+static const struct intel_wm_funcs pnv_wm_funcs = {
 	.update_wm = pnv_update_wm,
 };
 
-static const struct drm_i915_wm_disp_funcs i965_wm_funcs = {
+static const struct intel_wm_funcs i965_wm_funcs = {
 	.update_wm = i965_update_wm,
 };
 
-static const struct drm_i915_wm_disp_funcs i9xx_wm_funcs = {
+static const struct intel_wm_funcs i9xx_wm_funcs = {
 	.update_wm = i9xx_update_wm,
 };
 
-static const struct drm_i915_wm_disp_funcs i845_wm_funcs = {
+static const struct intel_wm_funcs i845_wm_funcs = {
 	.update_wm = i845_update_wm,
 };
 
-static const struct drm_i915_wm_disp_funcs nop_funcs = {
+static const struct intel_wm_funcs nop_funcs = {
 };
 
 /* Set up chip specific power management-related functions */
@@ -8227,7 +8227,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	/* For FIFO watermark updates */
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		skl_setup_wm_latency(dev_priv);
-		dev_priv->wm_disp = &skl_wm_funcs;
+		dev_priv->display.funcs.wm = &skl_wm_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
 
@@ -8235,19 +8235,19 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
 		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
 		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
-			dev_priv->wm_disp = &ilk_wm_funcs;
+			dev_priv->display.funcs.wm = &ilk_wm_funcs;
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Failed to read display plane latency. "
 				    "Disable CxSR\n");
-			dev_priv->wm_disp = &nop_funcs;
+			dev_priv->display.funcs.wm = &nop_funcs;
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_setup_wm_latency(dev_priv);
-		dev_priv->wm_disp = &vlv_wm_funcs;
+		dev_priv->display.funcs.wm = &vlv_wm_funcs;
 	} else if (IS_G4X(dev_priv)) {
 		g4x_setup_wm_latency(dev_priv);
-		dev_priv->wm_disp = &g4x_wm_funcs;
+		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
 		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
 					    dev_priv->is_ddr3,
@@ -8261,22 +8261,22 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 				 dev_priv->fsb_freq, dev_priv->mem_freq);
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(dev_priv, false);
-			dev_priv->wm_disp = &nop_funcs;
+			dev_priv->display.funcs.wm = &nop_funcs;
 		} else
-			dev_priv->wm_disp = &pnv_wm_funcs;
+			dev_priv->display.funcs.wm = &pnv_wm_funcs;
 	} else if (DISPLAY_VER(dev_priv) == 4) {
-		dev_priv->wm_disp = &i965_wm_funcs;
+		dev_priv->display.funcs.wm = &i965_wm_funcs;
 	} else if (DISPLAY_VER(dev_priv) == 3) {
-		dev_priv->wm_disp = &i9xx_wm_funcs;
+		dev_priv->display.funcs.wm = &i9xx_wm_funcs;
 	} else if (DISPLAY_VER(dev_priv) == 2) {
 		if (INTEL_NUM_PIPES(dev_priv) == 1)
-			dev_priv->wm_disp = &i845_wm_funcs;
+			dev_priv->display.funcs.wm = &i845_wm_funcs;
 		else
-			dev_priv->wm_disp = &i9xx_wm_funcs;
+			dev_priv->display.funcs.wm = &i9xx_wm_funcs;
 	} else {
 		drm_err(&dev_priv->drm,
 			"unexpected fall-through in %s\n", __func__);
-		dev_priv->wm_disp = &nop_funcs;
+		dev_priv->display.funcs.wm = &nop_funcs;
 	}
 }
 
-- 
2.34.1

