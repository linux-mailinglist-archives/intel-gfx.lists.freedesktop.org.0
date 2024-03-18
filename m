Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542E987E57E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 10:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1789C10F4EE;
	Mon, 18 Mar 2024 09:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VfXx+M/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D8510F4EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 09:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710753325; x=1742289325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NN6BvbIwk5FuRIFM8pKsW14Ig5XVwv1VVHtWeQc+lpo=;
 b=VfXx+M/mY9BkmOzJGa59RwZwsdGCHpkagdBYnp5AW2p8EQltQ/8WrqKk
 bsVneFMQof4hWWW0XFCAJGiEdkCAUbpVmuOiDHHmZ4D9A8qPveytvTXa4
 UQQ8To6mfrNIL0s6u+4ZG1UidUwSXiy81sYtUrHqo+2YXAfrx+bOQUxJZ
 7Vek71lbjC0k1edF3rjQLnVvUGpnJe9DpQKg6H0c4WaDWU76ZLsKJNhlb
 5CFj2GdvtUzpkz3MHgpndLV9HpqiCJs5Cv8hrHvyPH0SzCHDrqbZmz7F/
 NIpnzxdQghYlQnG95u+XXl0oTQ5CstOmLLciF85KYMWWkr1SQX3HDiop/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="9363947"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="9363947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 02:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13469684"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa008.fm.intel.com with ESMTP; 18 Mar 2024 02:15:21 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 5/6] drm/i915: Handle joined pipes inside hsw_crtc_enable()
Date: Mon, 18 Mar 2024 11:15:15 +0200
Message-Id: <20240318091515.19166-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240313095949.6898-6-stanislav.lisovskiy@intel.com>
References: <20240313095949.6898-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
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

Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
slave crtcs should be handled by master hooks. Same for encoders.
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

v2: - Moved skl_pfit_enable, intel_dsc_enable, intel_crtc_vblank_on to intel_enable_ddi,
      so that it is now finally symmetrical with the disable case, because currently
      for some weird reason we are calling those from skl_commit_modeset_enables, while
      for the disable case those are called from the ddi disable hooks.

v3: - Create intel_ddi_enable_hdmi_or_sst symmetrical to
      intel_ddi_post_disable_hdmi_or_sst and move it also under non-mst check.

v4: - Fix intel_enable_ddi sequence

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  45 ++++--
 drivers/gpu/drm/i915/display/intel_display.c | 162 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h |   7 +
 3 files changed, 124 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 290ccab7c9ee8..9128b82a49c31 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3366,15 +3366,28 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	intel_wait_ddi_buf_active(dev_priv, port);
 }
 
-static void intel_enable_ddi(struct intel_atomic_state *state,
-			     struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
+static void intel_ddi_enable_hdmi_or_sst(struct intel_atomic_state *state,
+					 struct intel_encoder *encoder,
+					 const struct intel_crtc_state *crtc_state,
+					 const struct drm_connector_state *conn_state)
 {
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+
+		intel_dsc_enable(new_crtc_state);
+
+		if (DISPLAY_VER(i915) >= 9)
+			skl_pfit_enable(new_crtc_state);
+		else
+			ilk_pfit_enable(new_crtc_state);
+	}
 
-	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
@@ -3383,7 +3396,22 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	intel_crtc_vblank_on(crtc_state);
+	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+		intel_crtc_vblank_on(new_crtc_state);
+	}
+}
+
+static void intel_enable_ddi(struct intel_atomic_state *state,
+			     struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
+{
+	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
+
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		intel_ddi_enable_hdmi_or_sst(state, encoder, crtc_state, conn_state);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		intel_enable_ddi_hdmi(state, encoder, crtc_state, conn_state);
@@ -3391,7 +3419,6 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
-
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1eccefde9f09..eccc680affad7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -794,7 +794,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	return encoder;
 }
 
-static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
+void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1593,24 +1593,6 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
 }
 
-static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
-					 const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *master_crtc = intel_master_crtc(crtc_state);
-
-	/*
-	 * Enable sequence steps 1-7 on bigjoiner master
-	 */
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_encoders_pre_pll_enable(state, master_crtc);
-
-	if (crtc_state->shared_dpll)
-		intel_enable_shared_dpll(crtc_state);
-
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_encoders_pre_enable(state, master_crtc);
-}
-
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1646,90 +1628,103 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(new_crtc_state);
+	struct intel_crtc *pipe_mask_crtc;
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
-	bool psl_clkgate_wa;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_mask_crtc,
+						 pipe_mask)
+		intel_dmc_enable_pipe(dev_priv, pipe_mask_crtc->pipe);
 
-	if (!new_crtc_state->bigjoiner_pipes) {
-		intel_encoders_pre_pll_enable(state, crtc);
+	intel_encoders_pre_pll_enable(state, crtc);
 
-		if (new_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(new_crtc_state);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_mask_crtc,
+						 pipe_mask) {
+		const struct intel_crtc_state *pipe_mask_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_mask_crtc);
 
-		intel_encoders_pre_enable(state, crtc);
-	} else {
-		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
-	}
+		if (new_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(pipe_mask_crtc_state);
 
-	intel_dsc_enable(new_crtc_state);
+		if (DISPLAY_VER(dev_priv) >= 13)
+			intel_uncompressed_joiner_enable(pipe_mask_crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		intel_uncompressed_joiner_enable(new_crtc_state);
+		intel_set_pipe_src_size(pipe_mask_crtc_state);
+		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+			bdw_set_pipe_misc(pipe_mask_crtc_state);
+	}
 
-	intel_set_pipe_src_size(new_crtc_state);
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipe_misc(new_crtc_state);
+	intel_encoders_pre_enable(state, crtc);
 
-	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
+	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	crtc->active = true;
-
-	/* Display WA #1180: WaDisableScalarClockGating: glk */
-	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
-		new_crtc_state->pch_pfit.enabled;
-	if (psl_clkgate_wa)
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_mask_crtc,
+						 pipe_mask) {
+		const struct intel_crtc_state *pipe_mask_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_mask_crtc);
+		bool psl_clkgate_wa;
+		enum pipe pipe = pipe_mask_crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_pfit_enable(new_crtc_state);
-	else
-		ilk_pfit_enable(new_crtc_state);
+		pipe_mask_crtc->active = true;
 
-	/*
-	 * On ILK+ LUT must be loaded before the pipe is running but with
-	 * clocks enabled
-	 */
-	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
-	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
-	if (DISPLAY_VER(dev_priv) < 9)
-		intel_disable_primary_plane(new_crtc_state);
+		/* Display WA #1180: WaDisableScalarClockGating: glk */
+		psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
+			pipe_mask_crtc_state->pch_pfit.enabled;
+		if (psl_clkgate_wa)
+			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
-	hsw_set_linetime_wm(new_crtc_state);
+		/*
+		 * On ILK+ LUT must be loaded before the pipe is running but with
+		 * clocks enabled
+		 */
+		intel_color_load_luts(pipe_mask_crtc_state);
+		intel_color_commit_noarm(pipe_mask_crtc_state);
+		intel_color_commit_arm(pipe_mask_crtc_state);
+		/* update DSPCNTR to configure gamma/csc for pipe bottom color */
+		if (DISPLAY_VER(dev_priv) < 9)
+			intel_disable_primary_plane(pipe_mask_crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(new_crtc_state);
+		hsw_set_linetime_wm(pipe_mask_crtc_state);
 
-	intel_initial_watermarks(state, crtc);
+		if (DISPLAY_VER(dev_priv) >= 11)
+			icl_set_pipe_chicken(pipe_mask_crtc_state);
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
+		intel_initial_watermarks(state, pipe_mask_crtc);
+	}
 
 	intel_encoders_enable(state, crtc);
 
-	if (psl_clkgate_wa) {
-		intel_crtc_wait_for_next_vblank(crtc);
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
-	}
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_mask_crtc,
+						 pipe_mask) {
+		const struct intel_crtc_state *pipe_mask_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_mask_crtc);
+		bool psl_clkgate_wa;
+		enum pipe pipe = pipe_mask_crtc->pipe, hsw_workaround_pipe;
+
+		/* Display WA #1180: WaDisableScalarClockGating: glk */
+		psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
+			pipe_mask_crtc_state->pch_pfit.enabled;
 
-	/* If we change the relative order between pipe/planes enabling, we need
-	 * to change the workaround. */
-	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
-	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
-		struct intel_crtc *wa_crtc;
+		if (psl_clkgate_wa) {
+			intel_crtc_wait_for_next_vblank(pipe_mask_crtc);
+			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
+		}
+
+		/* If we change the relative order between pipe/planes enabling, we need
+		 * to change the workaround. */
+		hsw_workaround_pipe = pipe_mask_crtc_state->hsw_workaround_pipe;
+		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
+			struct intel_crtc *wa_crtc;
 
-		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+			wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
 
-		intel_crtc_wait_for_next_vblank(wa_crtc);
-		intel_crtc_wait_for_next_vblank(wa_crtc);
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+		}
 	}
 }
 
@@ -6934,11 +6929,13 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state) ||
-		    intel_crtc_is_bigjoiner_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~BIT(pipe);
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+			continue;
+
+		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
@@ -6953,7 +6950,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		modeset_pipes &= ~BIT(pipe);
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+			continue;
+
+		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 631218c954a47..9ace9b20f3b2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -312,6 +312,12 @@ enum phy_fia {
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
 		for_each_if((intel_encoder)->base.crtc == (__crtc))
 
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
+
 #define for_each_old_intel_plane_in_state(__state, plane, old_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
@@ -493,6 +499,7 @@ intel_aux_power_domain(struct intel_digital_port *dig_port);
 void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 				  struct intel_crtc_state *crtc_state);
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
+void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 
 int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
-- 
2.37.3

