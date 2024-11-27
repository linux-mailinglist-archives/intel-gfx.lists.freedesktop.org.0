Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7039DA2D2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583FB10E9F9;
	Wed, 27 Nov 2024 07:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXTVF8hF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D1010E9F8;
 Wed, 27 Nov 2024 07:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691344; x=1764227344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7TzsCELLKFEjUTF9B8XYRiI1VzuFBLvfSxvT0oWUT2k=;
 b=UXTVF8hFFHI8P7AFHYbnbxgsgNDbQPu84QIJtSqvtwfBj2TLhyKVWoXt
 I8yLas+JByJUZGFeufCQzKZubxQiHbscfRZWiXWrKFJMRnhiRU58IZyvB
 Gsv8BlZC3UaqtfiEmZpwBjAsj5VwnZpVQW4S/6U45BCrdIYEhq5XN9cao
 gailPiz/j0b4MXhefcK4MEtB/wU3Ox8DHYWFrmylWChIZD5wKExItl422
 7Qc0cQJ9oENGXcO2vqsd/ym7Ky4ZGwah2E8fc2R4K1lhFRl/LgD4Il3w4
 zwFC8cqvr5YmdgupP5HBzVgzD/97pXxobh4kp/8DUeGPAIgVnQ0Z675Ii w==;
X-CSE-ConnectionGUID: FQNasD7yRt6AkCqBv5T0VA==
X-CSE-MsgGUID: jTeFb3dhR42Li7MleuodBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667887"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667887"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:04 -0800
X-CSE-ConnectionGUID: o6hgZhcBR0WKdg1KQzR2fA==
X-CSE-MsgGUID: UOpgEvbeTaK2Txy43XzTQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270384"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:02 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 5/7] drm/i915/display: Remove vrr.enable and instead check
 vrr.mode != NONE
Date: Wed, 27 Nov 2024 12:41:34 +0530
Message-ID: <20241127071136.1017190-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

Since we now have vrr.mode to track the mode in which the VRR timing
generator is running, we no longer need member vrr.enable.

Replace the check for vrr.enable and use a helper to check
vrr.mode != NONE.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 13 ++++++------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  5 +++--
 drivers/gpu/drm/i915/display/intel_vrr.c      | 21 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 ++-
 11 files changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..bc9e761a3d1a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -297,7 +297,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 				  drm_eld_size(pipe_config->eld));
 
 	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrrtg_is_enabled(pipe_config)),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7d37ddd9ad12..0158e204fe87 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -76,6 +76,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -2240,7 +2241,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aae29eab07d1..2b8be8786c05 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1130,8 +1130,8 @@ static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
-		(new_crtc_state->vrr.enable &&
+	return is_enabling(vrr.mode, old_crtc_state, new_crtc_state) ||
+		(intel_vrrtg_is_enabled(new_crtc_state) &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
@@ -1147,8 +1147,8 @@ bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
-		(old_crtc_state->vrr.enable &&
+	return is_disabling(vrr.mode, old_crtc_state, new_crtc_state) ||
+		(intel_vrrtg_is_enabled(old_crtc_state) &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
@@ -5760,7 +5760,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
 
 	if (!fastset) {
-		PIPE_CONF_CHECK_BOOL(vrr.enable);
 		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
@@ -7246,7 +7245,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_enabling(state, crtc) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
+						 intel_vrrtg_is_enabled(new_crtc_state));
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
@@ -7662,7 +7661,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	/* FIXME deal with everything */
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
-		!new_crtc_state->vrr.enable &&
+		!intel_vrrtg_is_enabled(new_crtc_state) &&
 		!new_crtc_state->do_async_flip &&
 		!new_crtc_state->has_psr &&
 		!new_crtc_state->scaler_state.scaler_users &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dbf6402e58f9..fa84a6ff9cdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1288,7 +1288,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 053a9a4182e7..734b70799ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2807,7 +2807,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrrtg_is_enabled(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
@@ -2906,7 +2906,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (pipe_config->vrr.enable)
+	if (intel_vrrtg_is_enabled(pipe_config))
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b7b44399adaa..13a0136efd0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -106,7 +106,7 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 		return false;
 
 	/* VRR will have been disabled during intel_pre_plane_update() */
-	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
+	return intel_vrrtg_is_enabled(old_crtc_state) && !intel_crtc_vrr_disabling(state, crtc);
 }
 
 static const struct intel_crtc_state *
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2c8668b1ebae..cbec57e785d7 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,6 +30,7 @@
 #include "intel_pmdemand.h"
 #include "intel_tc.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
@@ -855,7 +856,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			crtc_state->inherited = true;
 
 			intel_crtc_update_active_timings(crtc_state,
-							 crtc_state->vrr.enable);
+							 intel_vrrtg_is_enabled(crtc_state));
 
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 15b70a1127d4..d25995edf3a5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -1479,7 +1480,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Wa_16011303918:adl-p */
-	if (crtc_state->vrr.enable &&
+	if (intel_vrrtg_is_enabled(crtc_state) &&
 	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
@@ -1684,7 +1685,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	/*
 	 * Currently PSR/PR doesn't work reliably with VRR enabled.
 	 */
-	if (crtc_state->vrr.enable)
+	if (intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index f1723ad8fd23..562fff4c524c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -164,7 +164,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
@@ -225,11 +224,15 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
-	crtc_state->vrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.mode != INTEL_VRRTG_MODE_NONE;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -273,7 +276,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else
 		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (intel_dp->as_sdp_supported && intel_vrrtg_is_enabled(crtc_state)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
@@ -360,7 +363,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -372,7 +375,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -383,7 +386,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -410,7 +413,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(old_crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
@@ -434,8 +437,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
 		crtc_state->cmrr.enable = true;
 		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
@@ -466,7 +467,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable) {
+	if (intel_vrrtg_is_enabled(crtc_state)) {
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
 		if (HAS_AS_SDP(display)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index b3b45c675020..e2e6693c7496 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -28,5 +28,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
+bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..cfb516318354 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -23,6 +23,7 @@
 #include "intel_fb.h"
 #include "intel_fixed.h"
 #include "intel_pcode.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
@@ -2916,7 +2917,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 
 		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
-		    !new_crtc_state->vrr.enable)
+		    !intel_vrrtg_is_enabled(new_crtc_state))
 			enable_dpkgc = true;
 	}
 
-- 
2.45.2

