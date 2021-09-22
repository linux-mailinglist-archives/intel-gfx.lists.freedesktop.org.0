Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE36414BEF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034E56EBFE;
	Wed, 22 Sep 2021 14:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18636EC00
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:30:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="287275409"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="287275409"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="436245557"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:32 +0300
Message-Id: <85e32ec8d5fead28a2131d8a62ac7fb220cfc5c5.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/24] drm/i915: split watermark vfuncs from
 display vtable.
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

From: Dave Airlie <airlied@redhat.com>

These are the watermark api between display and pm.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++---------
 drivers/gpu/drm/i915/i915_drv.h              | 24 ++++++++----
 drivers/gpu/drm/i915/intel_pm.c              | 40 ++++++++++----------
 3 files changed, 53 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c32ac150212d..a32c9a4ac888 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -162,16 +162,16 @@ static void intel_modeset_setup_hw_state(struct drm_device *dev,
  */
 static void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->display.update_wm)
-		dev_priv->display.update_wm(dev_priv);
+	if (dev_priv->wm_disp.update_wm)
+		dev_priv->wm_disp.update_wm(dev_priv);
 }
 
 static int intel_compute_pipe_wm(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.compute_pipe_wm)
-		return dev_priv->display.compute_pipe_wm(state, crtc);
+	if (dev_priv->wm_disp.compute_pipe_wm)
+		return dev_priv->wm_disp.compute_pipe_wm(state, crtc);
 	return 0;
 }
 
@@ -179,20 +179,20 @@ static int intel_compute_intermediate_wm(struct intel_atomic_state *state,
 					 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (!dev_priv->display.compute_intermediate_wm)
+	if (!dev_priv->wm_disp.compute_intermediate_wm)
 		return 0;
 	if (drm_WARN_ON(&dev_priv->drm,
-			!dev_priv->display.compute_pipe_wm))
+			!dev_priv->wm_disp.compute_pipe_wm))
 		return 0;
-	return dev_priv->display.compute_intermediate_wm(state, crtc);
+	return dev_priv->wm_disp.compute_intermediate_wm(state, crtc);
 }
 
 static bool intel_initial_watermarks(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.initial_watermarks) {
-		dev_priv->display.initial_watermarks(state, crtc);
+	if (dev_priv->wm_disp.initial_watermarks) {
+		dev_priv->wm_disp.initial_watermarks(state, crtc);
 		return true;
 	}
 	return false;
@@ -202,23 +202,23 @@ static void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.atomic_update_watermarks)
-		dev_priv->display.atomic_update_watermarks(state, crtc);
+	if (dev_priv->wm_disp.atomic_update_watermarks)
+		dev_priv->wm_disp.atomic_update_watermarks(state, crtc);
 }
 
 static void intel_optimize_watermarks(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.optimize_watermarks)
-		dev_priv->display.optimize_watermarks(state, crtc);
+	if (dev_priv->wm_disp.optimize_watermarks)
+		dev_priv->wm_disp.optimize_watermarks(state, crtc);
 }
 
 static void intel_compute_global_watermarks(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.compute_global_watermarks)
-		dev_priv->display.compute_global_watermarks(state);
+	if (dev_priv->wm_disp.compute_global_watermarks)
+		dev_priv->wm_disp.compute_global_watermarks(state);
 }
 
 /* returns HPLL frequency in kHz */
@@ -3734,7 +3734,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) != 2)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (!dev_priv->display.initial_watermarks)
+	if (!dev_priv->wm_disp.initial_watermarks)
 		intel_update_watermarks(dev_priv);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
@@ -11393,7 +11393,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
 	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
-	if (!dev_priv->display.optimize_watermarks)
+	if (!dev_priv->wm_disp.optimize_watermarks)
 		return;
 
 	state = drm_atomic_state_alloc(&dev_priv->drm);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 497a466ed0cf..a095184df006 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -328,13 +328,10 @@ struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
 };
 
-struct drm_i915_display_funcs {
-	void (*get_cdclk)(struct drm_i915_private *dev_priv,
-			  struct intel_cdclk_config *cdclk_config);
-	void (*set_cdclk)(struct drm_i915_private *dev_priv,
-			  const struct intel_cdclk_config *cdclk_config,
-			  enum pipe pipe);
-	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
+/* functions used for watermark calcs for display. */
+struct drm_i915_wm_disp_funcs {
+	/* update_wm is for legacy wm management */
+	void (*update_wm)(struct drm_i915_private *dev_priv);
 	int (*compute_pipe_wm)(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
@@ -346,7 +343,15 @@ struct drm_i915_display_funcs {
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
-	void (*update_wm)(struct drm_i915_private *dev_priv);
+};
+
+struct drm_i915_display_funcs {
+	void (*get_cdclk)(struct drm_i915_private *dev_priv,
+			  struct intel_cdclk_config *cdclk_config);
+	void (*set_cdclk)(struct drm_i915_private *dev_priv,
+			  const struct intel_cdclk_config *cdclk_config,
+			  enum pipe pipe);
+	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
 	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 	/* Returns the active state of the crtc, and if the crtc is active,
@@ -961,6 +966,9 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	struct drm_i915_clock_gating_funcs clock_gating_funcs;
 
+	/* pm display functions */
+	struct drm_i915_wm_disp_funcs wm_disp;
+
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index add50ff01d7c..826216a115fd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7962,7 +7962,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	/* For FIFO watermark updates */
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		skl_setup_wm_latency(dev_priv);
-		dev_priv->display.compute_global_watermarks = skl_compute_wm;
+		dev_priv->wm_disp.compute_global_watermarks = skl_compute_wm;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
 
@@ -7970,12 +7970,12 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
 		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
 		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
-			dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
-			dev_priv->display.compute_intermediate_wm =
+			dev_priv->wm_disp.compute_pipe_wm = ilk_compute_pipe_wm;
+			dev_priv->wm_disp.compute_intermediate_wm =
 				ilk_compute_intermediate_wm;
-			dev_priv->display.initial_watermarks =
+			dev_priv->wm_disp.initial_watermarks =
 				ilk_initial_watermarks;
-			dev_priv->display.optimize_watermarks =
+			dev_priv->wm_disp.optimize_watermarks =
 				ilk_optimize_watermarks;
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
@@ -7984,17 +7984,17 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_setup_wm_latency(dev_priv);
-		dev_priv->display.compute_pipe_wm = vlv_compute_pipe_wm;
-		dev_priv->display.compute_intermediate_wm = vlv_compute_intermediate_wm;
-		dev_priv->display.initial_watermarks = vlv_initial_watermarks;
-		dev_priv->display.optimize_watermarks = vlv_optimize_watermarks;
-		dev_priv->display.atomic_update_watermarks = vlv_atomic_update_fifo;
+		dev_priv->wm_disp.compute_pipe_wm = vlv_compute_pipe_wm;
+		dev_priv->wm_disp.compute_intermediate_wm = vlv_compute_intermediate_wm;
+		dev_priv->wm_disp.initial_watermarks = vlv_initial_watermarks;
+		dev_priv->wm_disp.optimize_watermarks = vlv_optimize_watermarks;
+		dev_priv->wm_disp.atomic_update_watermarks = vlv_atomic_update_fifo;
 	} else if (IS_G4X(dev_priv)) {
 		g4x_setup_wm_latency(dev_priv);
-		dev_priv->display.compute_pipe_wm = g4x_compute_pipe_wm;
-		dev_priv->display.compute_intermediate_wm = g4x_compute_intermediate_wm;
-		dev_priv->display.initial_watermarks = g4x_initial_watermarks;
-		dev_priv->display.optimize_watermarks = g4x_optimize_watermarks;
+		dev_priv->wm_disp.compute_pipe_wm = g4x_compute_pipe_wm;
+		dev_priv->wm_disp.compute_intermediate_wm = g4x_compute_intermediate_wm;
+		dev_priv->wm_disp.initial_watermarks = g4x_initial_watermarks;
+		dev_priv->wm_disp.optimize_watermarks = g4x_optimize_watermarks;
 	} else if (IS_PINEVIEW(dev_priv)) {
 		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
 					    dev_priv->is_ddr3,
@@ -8008,18 +8008,18 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 				 dev_priv->fsb_freq, dev_priv->mem_freq);
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(dev_priv, false);
-			dev_priv->display.update_wm = NULL;
+			dev_priv->wm_disp.update_wm = NULL;
 		} else
-			dev_priv->display.update_wm = pnv_update_wm;
+			dev_priv->wm_disp.update_wm = pnv_update_wm;
 	} else if (DISPLAY_VER(dev_priv) == 4) {
-		dev_priv->display.update_wm = i965_update_wm;
+		dev_priv->wm_disp.update_wm = i965_update_wm;
 	} else if (DISPLAY_VER(dev_priv) == 3) {
-		dev_priv->display.update_wm = i9xx_update_wm;
+		dev_priv->wm_disp.update_wm = i9xx_update_wm;
 	} else if (DISPLAY_VER(dev_priv) == 2) {
 		if (INTEL_NUM_PIPES(dev_priv) == 1)
-			dev_priv->display.update_wm = i845_update_wm;
+			dev_priv->wm_disp.update_wm = i845_update_wm;
 		else
-			dev_priv->display.update_wm = i9xx_update_wm;
+			dev_priv->wm_disp.update_wm = i9xx_update_wm;
 	} else {
 		drm_err(&dev_priv->drm,
 			"unexpected fall-through in %s\n", __func__);
-- 
2.30.2

