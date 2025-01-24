Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B05DA1B88C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9AE610E9A3;
	Fri, 24 Jan 2025 15:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SnejYHcV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2169110E99E;
 Fri, 24 Jan 2025 15:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731530; x=1769267530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=syKAsF9jGB68BoDvQ6SEBS4HrGxIb7J+oamaojIIjaM=;
 b=SnejYHcVrqm4kxSHifwtzXOZrQtNo7jXCOl+LJyf5Bb76emqVFFsCvk8
 boiaugq4eox4xwVko/D0osjPbwrRT3Z8EmnTNJNjiWXSvBoq073W2blQK
 ZyM5rmFiWCXDfjHJnV1jpuJUs4ZXZXNn3Q8D1tq9lsb8zv1Ahv4HwMLTl
 w0ffhjrX8KZQUdd9JoHB1CNvSe6Szk6hamkEKas99lM9FXkpv+8m9iT92
 /ncnvKYDNzQEh9XUdB7wY06RpPBmS6xtB9q1x4i3KQc6RitTsaoCi/H9t
 /WraDC8hhFtKqrXyUtpHhvZMob0V50BUnHWrnGmTMwExv8ywLbqn/REnC Q==;
X-CSE-ConnectionGUID: vTNaE6cwT16fvY6bFCPNOA==
X-CSE-MsgGUID: cj2Y46wwQ1yO4i1jJDWy6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177410"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177410"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:10 -0800
X-CSE-ConnectionGUID: yhift/yDRNeszoMOlQ/taQ==
X-CSE-MsgGUID: pz240rJpSiO+UK4GJbJVcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221295"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:08 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/35] drm/i915/display: Remove vrr.enable and instead check
 vrr.mode != NONE
Date: Fri, 24 Jan 2025 20:30:00 +0530
Message-ID: <20250124150020.2271747-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  5 +++--
 drivers/gpu/drm/i915/display/intel_vrr.c      | 19 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 ++-
 11 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 73579d942ffc..34d200a17ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -293,7 +293,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
 	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d\n",
-		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrrtg_is_enabled(pipe_config)),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dc319f37b1be..d48a3108f363 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -77,6 +77,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -2280,7 +2281,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 861929aea4b9..f0d0fd2ffa5c 100644
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
@@ -5802,7 +5802,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
 
 	if (!fastset) {
-		PIPE_CONF_CHECK_BOOL(vrr.enable);
 		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
@@ -7280,7 +7279,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_enabling(state, crtc) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
+						 intel_vrrtg_is_enabled(new_crtc_state));
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3195c9f33028..c553274c2af8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1308,7 +1308,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1ff62e0421b2..6f61bec0b840 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2924,7 +2924,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (pipe_config->vrr.enable)
+	if (intel_vrrtg_is_enabled(pipe_config))
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f2812c23972..ccb01e3ab35a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -106,7 +106,7 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 		return false;
 
 	/* VRR will have been disabled during intel_pre_plane_update() */
-	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
+	return intel_vrrtg_is_enabled(old_crtc_state) && !intel_crtc_vrr_disabling(state, crtc);
 }
 
 static int dsb_vblank_delay(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9a2bea19f17b..c8d68c62b176 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,6 +30,7 @@
 #include "intel_pmdemand.h"
 #include "intel_tc.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
@@ -858,7 +859,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			crtc_state->inherited = true;
 
 			intel_crtc_update_active_timings(crtc_state,
-							 crtc_state->vrr.enable);
+							 intel_vrrtg_is_enabled(crtc_state));
 
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2bdb6c9c2283..dcbdcdea8a0e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -1484,7 +1485,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Wa_16011303918:adl-p */
-	if (crtc_state->vrr.enable &&
+	if (intel_vrrtg_is_enabled(crtc_state) &&
 	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
@@ -1689,7 +1690,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	/*
 	 * Currently PSR/PR doesn't work reliably with VRR enabled.
 	 */
-	if (crtc_state->vrr.enable)
+	if (intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 49ff4d91af95..b23b603e512b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -242,7 +242,6 @@ void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
@@ -261,7 +260,6 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
-	crtc_state->vrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
@@ -295,6 +293,11 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.mode != INTEL_VRRTG_MODE_NONE;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -441,7 +444,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	if (dsb)
@@ -460,7 +463,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -471,7 +474,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -492,7 +495,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!intel_vrrtg_is_enabled(old_crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
@@ -512,8 +515,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
 		crtc_state->cmrr.enable = true;
 		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
@@ -554,6 +555,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	if (crtc_state->vrr.enable)
+	if (intel_vrrtg_is_enabled(crtc_state))
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 899cbf40f880..8d53aab3590d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -33,5 +33,6 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 45fe4aaeb450..baeaa2114a61 100644
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
@@ -3012,7 +3013,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!new_crtc_state->vrr.enable ||
+		if (!intel_vrrtg_is_enabled(new_crtc_state) ||
 		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
 			fixed_refresh_rate = true;
-- 
2.45.2

