Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5465D9C3A7D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC3E10E44D;
	Mon, 11 Nov 2024 09:10:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XaSupzWN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5564210E451;
 Mon, 11 Nov 2024 09:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316204; x=1762852204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=okMWQnvxmwj2rKmVlNNKy0NaF29rVkF1ksfRtLfDRbw=;
 b=XaSupzWNh7QS4v7lcAT+NkmLCA+ooZkZVkH5QufoLGt/7T99A3O2hWjT
 fLcdeUim4tP5bAauGLTafQ78/3e/mJle6pc9VOBe9uYbBD1TUyRynkej/
 OfAqPFcoLQxoDdoOOpWD2P9BCdATV8LRXf94GV7lohKOXGOBmq+mxCkHz
 F39ewcsGqzh2pnDYREaLdz9FEh+roc5kJyZMbg+lgnbPwASSQoQBwb8IE
 4ZkhOsUVB3IpFpJcKDd8iSVI69y7YpHEdnwnR65WiJ1UWFyOxHYlOjQqD
 FudxOYEG69a3pZwNZOFOq3lrFdKGPVIBPOXiiu5y+3ffNxDj/xA/36Ivs Q==;
X-CSE-ConnectionGUID: 8BpDalaSTdm/8UpGmfkXgw==
X-CSE-MsgGUID: 2l/TrJlgSwuluVBO7NCVmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052328"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052328"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:03 -0800
X-CSE-ConnectionGUID: mhF1DUNBSC+857GvnVNADg==
X-CSE-MsgGUID: JZHnhciQR8aS3VWFi2H/Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762575"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:01 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/23] drm/i915/vrr: Rename vrr.enable to vrr.tg_enable
Date: Mon, 11 Nov 2024 14:42:03 +0530
Message-ID: <20241111091221.2992818-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

vrr.enable field is actually used to track if vrr timing generator is
used or not. Rename the field to reflect the same.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c   | 14 +++++++-------
 .../gpu/drm/i915/display/intel_display_types.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c        |  4 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c       |  2 +-
 .../gpu/drm/i915/display/intel_modeset_setup.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c       | 18 +++++++++---------
 drivers/gpu/drm/i915/display/skl_watermark.c   |  2 +-
 10 files changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..e2ce417b1990 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -296,8 +296,8 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-		   str_yes_no(pipe_config->vrr.enable),
+	drm_printf(&p, "vrr_tg: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+		   str_yes_no(pipe_config->vrr.tg_enable),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 769bd1f26db2..3c0640efde21 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2230,7 +2230,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.tg_enable)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1a933bdb16a2..05afcf6b21bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1129,8 +1129,8 @@ static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
-		(new_crtc_state->vrr.enable &&
+	return is_enabling(vrr.tg_enable, old_crtc_state, new_crtc_state) ||
+		(new_crtc_state->vrr.tg_enable &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
@@ -1146,8 +1146,8 @@ bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
-		(old_crtc_state->vrr.enable &&
+	return is_disabling(vrr.tg_enable, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->vrr.tg_enable &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
@@ -5751,7 +5751,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
 
 	if (!fastset) {
-		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.tg_enable);
 		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
@@ -7237,7 +7237,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_enabling(state, crtc) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
+						 new_crtc_state->vrr.tg_enable);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
@@ -7653,7 +7653,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	/* FIXME deal with everything */
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
-		!new_crtc_state->vrr.enable &&
+		!new_crtc_state->vrr.tg_enable &&
 		!new_crtc_state->do_async_flip &&
 		!new_crtc_state->has_psr &&
 		!new_crtc_state->scaler_state.scaler_users &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a1b67e76d91c..48a12007bce1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1288,7 +1288,8 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool tg_enable; /* Timing generator enable */
+		bool in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b918363df16..eed92f83d429 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2799,7 +2799,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.tg_enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
@@ -2898,7 +2898,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (pipe_config->vrr.enable)
+	if (pipe_config->vrr.tg_enable)
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b7b44399adaa..02ee00735a52 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -106,7 +106,7 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 		return false;
 
 	/* VRR will have been disabled during intel_pre_plane_update() */
-	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
+	return old_crtc_state->vrr.tg_enable && !intel_crtc_vrr_disabling(state, crtc);
 }
 
 static const struct intel_crtc_state *
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2c8668b1ebae..0efeed4d89e1 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -855,7 +855,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			crtc_state->inherited = true;
 
 			intel_crtc_update_active_timings(crtc_state,
-							 crtc_state->vrr.enable);
+							 crtc_state->vrr.tg_enable);
 
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ed5b4d110fba..bf005daa7bb2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1479,7 +1479,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Wa_16011303918:adl-p */
-	if (crtc_state->vrr.enable &&
+	if (crtc_state->vrr.tg_enable &&
 	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
@@ -1675,7 +1675,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	/*
 	 * Currently PSR/PR doesn't work reliably with VRR enabled.
 	 */
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.tg_enable)
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 02160aacd8ee..23c3b555279b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -164,7 +164,7 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->vrr.enable = true;
+	crtc_state->vrr.tg_enable = true;
 	crtc_state->cmrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
@@ -225,7 +225,7 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
-	crtc_state->vrr.enable = true;
+	crtc_state->vrr.tg_enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
@@ -273,7 +273,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else
 		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (intel_dp->as_sdp_supported && crtc_state->vrr.tg_enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
@@ -360,7 +360,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.tg_enable)
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -372,7 +372,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.tg_enable)
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -383,7 +383,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.tg_enable)
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -410,7 +410,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!old_crtc_state->vrr.tg_enable)
 		return;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
@@ -434,7 +434,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	crtc_state->vrr.tg_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
 		crtc_state->cmrr.enable = true;
@@ -466,7 +466,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable) {
+	if (crtc_state->vrr.tg_enable) {
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
 		if (HAS_AS_SDP(display)) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..92274c916d70 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2909,7 +2909,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 
 		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
-		    !new_crtc_state->vrr.enable)
+		    !new_crtc_state->vrr.tg_enable)
 			enable_dpkgc = true;
 	}
 
-- 
2.45.2

