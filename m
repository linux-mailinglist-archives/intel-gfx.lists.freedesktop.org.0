Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CA7414BEC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F186EC01;
	Wed, 22 Sep 2021 14:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC5F6EC01
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:30:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223649637"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223649637"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704040795"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:28 +0300
Message-Id: <48ff9d62b95ae1f83f0543693290b1eb7ce7f50e.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/24] drm/i915/wm: provide wrappers around
 watermark vfuncs calls (v2)
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

This moves one wrapper from the pm->display side, and creates
wrappers for all the others, this should simplify things later.

One thing to note is that the code checks the existance of some
of these ptrs, so the wrappers are a bit complicated by that.

Suggested by Jani.

v2: fixup warnings in wrong place error.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 187 ++++++++++++-------
 drivers/gpu/drm/i915/intel_pm.c              |  39 ----
 drivers/gpu/drm/i915/intel_pm.h              |   1 -
 3 files changed, 123 insertions(+), 104 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c1129d8a424..331c9030a8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -126,6 +126,101 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 					 struct drm_modeset_acquire_ctx *ctx);
 
+
+/**
+ * intel_update_watermarks - update FIFO watermark values based on current modes
+ * @dev_priv: i915 device
+ *
+ * Calculate watermark values for the various WM regs based on current mode
+ * and plane configuration.
+ *
+ * There are several cases to deal with here:
+ *   - normal (i.e. non-self-refresh)
+ *   - self-refresh (SR) mode
+ *   - lines are large relative to FIFO size (buffer can hold up to 2)
+ *   - lines are small relative to FIFO size (buffer can hold more than 2
+ *     lines), so need to account for TLB latency
+ *
+ *   The normal calculation is:
+ *     watermark = dotclock * bytes per pixel * latency
+ *   where latency is platform & configuration dependent (we assume pessimal
+ *   values here).
+ *
+ *   The SR calculation is:
+ *     watermark = (trunc(latency/line time)+1) * surface width *
+ *       bytes per pixel
+ *   where
+ *     line time = htotal / dotclock
+ *     surface width = hdisplay for normal plane and 64 for cursor
+ *   and latency is assumed to be high, as above.
+ *
+ * The final value programmed to the register should always be rounded up,
+ * and include an extra 2 entries to account for clock crossings.
+ *
+ * We don't use the sprite, so we can ignore that.  And on Crestline we have
+ * to set the non-SR watermarks to 8.
+ */
+static void intel_update_watermarks(struct drm_i915_private *dev_priv)
+{
+	if (dev_priv->display.update_wm)
+		dev_priv->display.update_wm(dev_priv);
+}
+
+static int intel_compute_pipe_wm(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_pipe_wm)
+		return dev_priv->display.compute_pipe_wm(state, crtc);
+	return 0;
+}
+
+static int intel_compute_intermediate_wm(struct intel_atomic_state *state,
+					 struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (!dev_priv->display.compute_intermediate_wm)
+		return 0;
+	if (drm_WARN_ON(&dev_priv->drm,
+			!dev_priv->display.compute_pipe_wm))
+		return 0;
+	return dev_priv->display.compute_intermediate_wm(state, crtc);
+}
+
+static bool intel_initial_watermarks(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.initial_watermarks) {
+		dev_priv->display.initial_watermarks(state, crtc);
+		return true;
+	}
+	return false;
+}
+
+static void intel_atomic_update_watermarks(struct intel_atomic_state *state,
+					   struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.atomic_update_watermarks)
+		dev_priv->display.atomic_update_watermarks(state, crtc);
+}
+
+static void intel_optimize_watermarks(struct intel_atomic_state *state,
+				      struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.optimize_watermarks)
+		dev_priv->display.optimize_watermarks(state, crtc);
+}
+
+static void intel_compute_global_watermarks(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_global_watermarks)
+		dev_priv->display.compute_global_watermarks(state);
+}
+
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
@@ -2528,9 +2623,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		 * we'll continue to update watermarks the old way, if flags tell
 		 * us to.
 		 */
-		if (dev_priv->display.initial_watermarks)
-			dev_priv->display.initial_watermarks(state, crtc);
-		else if (new_crtc_state->update_wm_pre)
+		if (!intel_initial_watermarks(state, crtc))
+		    if (new_crtc_state->update_wm_pre)
 			intel_update_watermarks(dev_priv);
 	}
 
@@ -2903,8 +2997,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
-	if (dev_priv->display.initial_watermarks)
-		dev_priv->display.initial_watermarks(state, crtc);
+	intel_initial_watermarks(state, crtc);
 	intel_enable_transcoder(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
@@ -3114,8 +3207,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_set_pipe_chicken(new_crtc_state);
 
-	if (dev_priv->display.initial_watermarks)
-		dev_priv->display.initial_watermarks(state, crtc);
+	intel_initial_watermarks(state, crtc);
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		const struct intel_dbuf_state *dbuf_state =
@@ -3532,7 +3624,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
-	dev_priv->display.initial_watermarks(state, crtc);
+	intel_initial_watermarks(state, crtc);
 	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
@@ -3575,10 +3667,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
-	if (dev_priv->display.initial_watermarks)
-		dev_priv->display.initial_watermarks(state, crtc);
-	else
-		intel_update_watermarks(dev_priv);
+	if (!intel_initial_watermarks(state, crtc))
+	    intel_update_watermarks(dev_priv);
 	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
@@ -6758,32 +6848,23 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	if (dev_priv->display.compute_pipe_wm) {
-		ret = dev_priv->display.compute_pipe_wm(state, crtc);
-		if (ret) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Target pipe watermarks are invalid\n");
-			return ret;
-		}
-
+	ret = intel_compute_pipe_wm(state, crtc);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Target pipe watermarks are invalid\n");
+		return ret;
 	}
 
-	if (dev_priv->display.compute_intermediate_wm) {
-		if (drm_WARN_ON(&dev_priv->drm,
-				!dev_priv->display.compute_pipe_wm))
-			return 0;
-
-		/*
-		 * Calculate 'intermediate' watermarks that satisfy both the
-		 * old state and the new state.  We can program these
-		 * immediately.
-		 */
-		ret = dev_priv->display.compute_intermediate_wm(state, crtc);
-		if (ret) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "No valid intermediate pipe watermarks are possible\n");
-			return ret;
-		}
+	/*
+	 * Calculate 'intermediate' watermarks that satisfy both the
+	 * old state and the new state.  We can program these
+	 * immediately.
+	 */
+	ret = intel_compute_intermediate_wm(state, crtc);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "No valid intermediate pipe watermarks are possible\n");
+		return ret;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
@@ -8876,23 +8957,6 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
-/*
- * Handle calculation of various watermark data at the end of the atomic check
- * phase.  The code here should be run after the per-crtc and per-plane 'check'
- * handlers to ensure that all derived state has been updated.
- */
-static int calc_watermark_data(struct intel_atomic_state *state)
-{
-	struct drm_device *dev = state->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-
-	/* Is there platform-specific watermark information to calculate? */
-	if (dev_priv->display.compute_global_watermarks)
-		return dev_priv->display.compute_global_watermarks(state);
-
-	return 0;
-}
-
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
 				     struct intel_crtc_state *new_crtc_state)
 {
@@ -9539,9 +9603,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 
 	intel_fbc_choose_crtc(dev_priv, state);
-	ret = calc_watermark_data(state);
-	if (ret)
-		goto fail;
+	intel_compute_global_watermarks(state);
 
 	ret = intel_bw_atomic_check(state);
 	if (ret)
@@ -9713,8 +9775,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
 	}
 
-	if (dev_priv->display.atomic_update_watermarks)
-		dev_priv->display.atomic_update_watermarks(state, crtc);
+	intel_atomic_update_watermarks(state, crtc);
 }
 
 static void commit_pipe_post_planes(struct intel_atomic_state *state,
@@ -9841,9 +9902,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	/* FIXME unify this for all platforms */
 	if (!new_crtc_state->hw.active &&
-	    !HAS_GMCH(dev_priv) &&
-	    dev_priv->display.initial_watermarks)
-		dev_priv->display.initial_watermarks(state, crtc);
+	    !HAS_GMCH(dev_priv))
+		intel_initial_watermarks(state, crtc);
 }
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
@@ -10265,8 +10325,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
 			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
 
-		if (dev_priv->display.optimize_watermarks)
-			dev_priv->display.optimize_watermarks(state, crtc);
+		intel_optimize_watermarks(state, crtc);
 	}
 
 	intel_dbuf_post_plane_update(state);
@@ -11367,7 +11426,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
 	/* Write calculated watermark values back */
 	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
 		crtc_state->wm.need_postvbl_update = true;
-		dev_priv->display.optimize_watermarks(intel_state, crtc);
+		intel_optimize_watermarks(intel_state, crtc);
 
 		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
 	}
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index be6520756aae..4054c6f7a2f9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7132,45 +7132,6 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
-/**
- * intel_update_watermarks - update FIFO watermark values based on current modes
- * @dev_priv: i915 device
- *
- * Calculate watermark values for the various WM regs based on current mode
- * and plane configuration.
- *
- * There are several cases to deal with here:
- *   - normal (i.e. non-self-refresh)
- *   - self-refresh (SR) mode
- *   - lines are large relative to FIFO size (buffer can hold up to 2)
- *   - lines are small relative to FIFO size (buffer can hold more than 2
- *     lines), so need to account for TLB latency
- *
- *   The normal calculation is:
- *     watermark = dotclock * bytes per pixel * latency
- *   where latency is platform & configuration dependent (we assume pessimal
- *   values here).
- *
- *   The SR calculation is:
- *     watermark = (trunc(latency/line time)+1) * surface width *
- *       bytes per pixel
- *   where
- *     line time = htotal / dotclock
- *     surface width = hdisplay for normal plane and 64 for cursor
- *   and latency is assumed to be high, as above.
- *
- * The final value programmed to the register should always be rounded up,
- * and include an extra 2 entries to account for clock crossings.
- *
- * We don't use the sprite, so we can ignore that.  And on Crestline we have
- * to set the non-SR watermarks to 8.
- */
-void intel_update_watermarks(struct drm_i915_private *dev_priv)
-{
-	if (dev_priv->display.update_wm)
-		dev_priv->display.update_wm(dev_priv);
-}
-
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
 {
 	u32 val;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 99bce0b4f5fb..990cdcaf85ce 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -29,7 +29,6 @@ struct skl_wm_level;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
-void intel_update_watermarks(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
-- 
2.30.2

