Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE53389E084
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 18:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CFB112D4F;
	Tue,  9 Apr 2024 16:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ppm/i0gr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D6A112D4F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 16:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712680518; x=1744216518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uow8pukgEBHAANxbnf1BlxOATGeTH2ZZCcNBEtkQeA4=;
 b=Ppm/i0grUOQWLEpXlXa29kw8WJcyv41s/YItApnxgiTjSbqhA/dnHidS
 T+8iW1L97nkBihOARC4/m8o1vR0fo+hTdDdf33Ic1cTNITVLfDLkTAkWH
 caj7/XzohPfkOZgwgTbUHePs7Ghote597QQaUe9PFleSLr9nFvrL93Enf
 qs7DX95uKuw84uecErB/+pkuEjOwctYP7lbmknmO2MmBdtddYkbMR5trk
 jLUU9pOpTHhV4mJFwg8N4QpRpfwwXhtujyjfFEd53tODB7vFOamiHOf1W
 AmIZHcDWXLTUcBmUli/luRgqhWCL04OUB3kEjRHMZkdtv0EC0uHUaaQ3s g==;
X-CSE-ConnectionGUID: wDCUlhH9RCi1wpuFus2PWA==
X-CSE-MsgGUID: ynIrXc90TKeGKO2ctTsOZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18570863"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="18570863"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 09:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827792685"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="827792685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Apr 2024 09:35:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Apr 2024 19:35:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Manasi Navare <navaremanasi@chromium.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 4/6] drm/i915: Handle joined pipes inside hsw_crtc_enable()
Date: Tue,  9 Apr 2024 19:35:00 +0300
Message-ID: <20240409163502.29633-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

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
    - Call intel_crtc_update_active_timings for slave pipes as well
[v5: vsyrjala: Use the name 'pipe_crtc' for the per-pipe crtc pointer
               Use consistent style and naming
	       Protect macro arguments properly
               Drop superfluous changes to the modeset sequence,
	       this now follows the old non-joiner sequence 100%
	       apart from just looping in places]

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Manasi Navare <navaremanasi@chromium.org> #v4?
Co-developed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c | 188 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h |   6 +
 3 files changed, 116 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index deaed9ff3f95..3255d4e375af 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3363,10 +3363,10 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *pipe_crtc;
 
-	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
@@ -3375,7 +3375,13 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	intel_crtc_vblank_on(crtc_state);
+	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_on(pipe_crtc_state);
+	}
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		intel_enable_ddi_hdmi(state, encoder, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b944248598b3..0c53f9c0a76f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1595,24 +1595,6 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
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
@@ -1649,85 +1631,106 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
-	enum pipe hsw_workaround_pipe;
+	struct intel_crtc *pipe_crtc;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state))
+		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
 
-	if (!new_crtc_state->bigjoiner_pipes) {
-		intel_encoders_pre_pll_enable(state, crtc);
+	intel_encoders_pre_pll_enable(state, crtc);
 
-		if (new_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(new_crtc_state);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-		intel_encoders_pre_enable(state, crtc);
-	} else {
-		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
+		if (pipe_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(pipe_crtc_state);
 	}
 
-	intel_dsc_enable(new_crtc_state);
+	intel_encoders_pre_enable(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		intel_uncompressed_joiner_enable(new_crtc_state);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-	intel_set_pipe_src_size(new_crtc_state);
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipe_misc(new_crtc_state);
+		intel_dsc_enable(pipe_crtc_state);
 
-	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
+		if (DISPLAY_VER(dev_priv) >= 13)
+			intel_uncompressed_joiner_enable(pipe_crtc_state);
+
+		intel_set_pipe_src_size(pipe_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+			bdw_set_pipe_misc(pipe_crtc_state);
+	}
+
+	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	crtc->active = true;
-
-	if (glk_need_scaler_clock_gating_wa(new_crtc_state))
-		glk_pipe_scaler_clock_gating_wa(crtc, true);
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_pfit_enable(new_crtc_state);
-	else
-		ilk_pfit_enable(new_crtc_state);
-
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
-
-	hsw_set_linetime_wm(new_crtc_state);
-
-	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(new_crtc_state);
-
-	intel_initial_watermarks(state, crtc);
-
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
-
-	intel_encoders_enable(state, crtc);
-
-	if (glk_need_scaler_clock_gating_wa(new_crtc_state)) {
-		intel_crtc_wait_for_next_vblank(crtc);
-		glk_pipe_scaler_clock_gating_wa(crtc, false);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		pipe_crtc->active = true;
+
+		if (glk_need_scaler_clock_gating_wa(pipe_crtc_state))
+			glk_pipe_scaler_clock_gating_wa(pipe_crtc, true);
+
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_pfit_enable(pipe_crtc_state);
+		else
+			ilk_pfit_enable(pipe_crtc_state);
+
+		/*
+		 * On ILK+ LUT must be loaded before the pipe is running but with
+		 * clocks enabled
+		 */
+		intel_color_load_luts(pipe_crtc_state);
+		intel_color_commit_noarm(pipe_crtc_state);
+		intel_color_commit_arm(pipe_crtc_state);
+		/* update DSPCNTR to configure gamma/csc for pipe bottom color */
+		if (DISPLAY_VER(dev_priv) < 9)
+			intel_disable_primary_plane(pipe_crtc_state);
+
+		hsw_set_linetime_wm(pipe_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 11)
+			icl_set_pipe_chicken(pipe_crtc_state);
+
+		intel_initial_watermarks(state, pipe_crtc);
 	}
 
-	/* If we change the relative order between pipe/planes enabling, we need
-	 * to change the workaround. */
-	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
-	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
-		struct intel_crtc *wa_crtc;
+	intel_encoders_enable(state, crtc);
 
-		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+		enum pipe hsw_workaround_pipe;
 
-		intel_crtc_wait_for_next_vblank(wa_crtc);
-		intel_crtc_wait_for_next_vblank(wa_crtc);
+		if (glk_need_scaler_clock_gating_wa(pipe_crtc_state)) {
+			intel_crtc_wait_for_next_vblank(pipe_crtc);
+			glk_pipe_scaler_clock_gating_wa(pipe_crtc, false);
+		}
+
+		/*
+		 * If we change the relative order between pipe/planes
+		 * enabling, we need to change the workaround.
+		 */
+		hsw_workaround_pipe = pipe_crtc_state->hsw_workaround_pipe;
+		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
+			struct intel_crtc *wa_crtc =
+				intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+		}
 	}
 }
 
@@ -6738,18 +6741,22 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *pipe_crtc;
 
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	/* VRR will be enable later, if required */
-	intel_crtc_update_active_timings(new_crtc_state, false);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		/* VRR will be enable later, if required */
+		intel_crtc_update_active_timings(pipe_crtc_state, false);
+	}
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		return;
-
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -7054,12 +7061,14 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+			continue;
+
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state) ||
-		    intel_crtc_is_bigjoiner_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~BIT(pipe);
+		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
@@ -7074,7 +7083,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
index 898b11663377..56d1c0e3e62c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -280,6 +280,12 @@ enum phy_fia {
 			    base.head)					\
 		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
 
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse((intel_crtc),				\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))
+
 #define for_each_intel_encoder(dev, intel_encoder)		\
 	list_for_each_entry(intel_encoder,			\
 			    &(dev)->mode_config.encoder_list,	\
-- 
2.43.2

