Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EE7BA9430
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 15:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6937210E417;
	Mon, 29 Sep 2025 13:00:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gl23bGBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFFB10E417;
 Mon, 29 Sep 2025 13:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759150831; x=1790686831;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2SPq3hhNxWXiToFH4Ef2u7yuDE+l9ym+GNIndFMpXPc=;
 b=Gl23bGBHS6Fjx5V56DXMvIsU2dSfI6J/LhA32rpH6Z8/taItNCXJZ0fp
 9SbOnq0eCE4CorHeoARrrOx8jfa94w6Ir/MyL2I2obME6fu+7mmqysstN
 1h7KiLwsBYok4wXYqPhi1p/AVnBmzlpGYJ+xYeXif26odRxakWEvUKAYc
 c4JE1A1x5nou2mdOY2D+nXVrMnOp1dAQjBLT1+X5uBcyJyCnMo4ePCZoQ
 Qk/QEyBozKAaGYAlq2DKOizoMdon7dEzszd46QF7EfRRJKZFUIidlJhuj
 iGkN+nlHG1b4b/Cwr61kgxHQ6ByJ3n1hJlAnc0DwWwNRawsWSpWiPtIMB A==;
X-CSE-ConnectionGUID: ofa6v4TnQtWFUM24Na7vQQ==
X-CSE-MsgGUID: uZH6/4F5Q82BQEJsCSkcKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="78812043"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="78812043"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:00:30 -0700
X-CSE-ConnectionGUID: iHFM06jEQBO/sLrdrXTR3w==
X-CSE-MsgGUID: iEvuWF6eQz+NS51l4FAUSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178612518"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.161])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:00:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/alpm: Compute ALPM parameters into
 crtc_state->alpm_state
Date: Mon, 29 Sep 2025 16:00:02 +0300
Message-ID: <20250929130003.28365-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently ALPM parameters are computed directly into
intel_dp->alpm_parameters. This is a problem when compute config ends up to
not using the computed state.

Fix this by adding ALPM parameters into intel_crtc_state and compute into
there. Copy needed parameters (io_wake_lines and fast_wake_lines) from
crtc_state->alpm_state into intel_dp->alpm.alpm_parameters (io_wake_lines
and fast_wake_lines) when they are configured into HW.

v2:
  - store io/fast wake lines into intel_dp->dp instead of
    intel_dp->alpm_parameters and do it in intel_psr_enable_locked
  - rename crtc_state->alpm_parameters -> crtc_state->alpm_state
  - clarify commit message

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 36 +++++++++----------
 drivers/gpu/drm/i915/display/intel_alpm.h     |  2 +-
 .../drm/i915/display/intel_display_types.h    | 21 +++++++----
 drivers/gpu/drm/i915/display/intel_psr.c      | 36 ++++++++++---------
 4 files changed, 53 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 749119cc0b28..9f4a9d8b4dec 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -122,7 +122,7 @@ static int _lnl_compute_aux_less_wake_time(const struct intel_crtc_state *crtc_s
 
 static int
 _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state)
+				  struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int aux_less_wake_time, aux_less_wake_lines, silence_period,
@@ -144,15 +144,15 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (display->params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
-	intel_dp->alpm_parameters.silence_period_sym_clocks = silence_period;
-	intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
+	crtc_state->alpm_state.aux_less_wake_lines = aux_less_wake_lines;
+	crtc_state->alpm_state.silence_period_sym_clocks = silence_period;
+	crtc_state->alpm_state.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
 	return true;
 }
 
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
-				     const struct intel_crtc_state *crtc_state)
+				     struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int check_entry_lines;
@@ -173,7 +173,7 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (display->params.psr_safest_params)
 		check_entry_lines = 15;
 
-	intel_dp->alpm_parameters.check_entry_lines = check_entry_lines;
+	crtc_state->alpm_state.check_entry_lines = check_entry_lines;
 
 	return true;
 }
@@ -204,7 +204,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 }
 
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
-			       const struct intel_crtc_state *crtc_state)
+			       struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
@@ -242,8 +242,8 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
+	crtc_state->alpm_state.io_wake_lines = max(io_wake_lines, 7);
+	crtc_state->alpm_state.fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -293,9 +293,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		    adjusted_mode->crtc_vdisplay - context_latency;
 	first_sdp_position = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vsync_start;
 	if (intel_alpm_aux_less_wake_supported(intel_dp))
-		waketime_in_lines = intel_dp->alpm_parameters.io_wake_lines;
+		waketime_in_lines = crtc_state->alpm_state.io_wake_lines;
 	else
-		waketime_in_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
+		waketime_in_lines = crtc_state->alpm_state.aux_less_wake_lines;
 
 	crtc_state->has_lobf = (context_latency + guardband) >
 		(first_sdp_position + waketime_in_lines);
@@ -321,7 +321,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
-			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
+			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
 
 		if (intel_dp->as_sdp_supported) {
 			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
@@ -339,7 +339,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 
 	} else {
 		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
-			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
+			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(crtc_state->alpm_state.fast_wake_lines);
 	}
 
 	if (crtc_state->has_lobf) {
@@ -347,7 +347,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
 	}
 
-	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
+	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state->alpm_state.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 	mutex_unlock(&intel_dp->alpm_parameters.lock);
@@ -375,14 +375,14 @@ void intel_alpm_port_configure(struct intel_dp *intel_dp,
 			PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			PORT_ALPM_CTL_SILENCE_PERIOD(
-				intel_dp->alpm_parameters.silence_period_sym_clocks);
+				crtc_state->alpm_state.silence_period_sym_clocks);
 		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(LFPS_CYCLE_COUNT) |
 			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				crtc_state->alpm_state.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				crtc_state->alpm_state.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms);
+				crtc_state->alpm_state.lfps_half_cycle_num_of_syms);
 	}
 
 	intel_de_write(display, PORT_ALPM_CTL(port), alpm_ctl_val);
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index a861c20b5d79..53599b464dea 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -17,7 +17,7 @@ struct intel_crtc;
 
 void intel_alpm_init(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
-			       const struct intel_crtc_state *crtc_state);
+			       struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 029c47743f8b..57879cc5546e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1344,6 +1344,17 @@ struct intel_crtc_state {
 
 	/* W2 window or 'set context latency' lines */
 	u16 set_context_latency;
+
+	struct {
+		u8 io_wake_lines;
+		u8 fast_wake_lines;
+
+		/* LNL and beyond */
+		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
+		u8 silence_period_sym_clocks;
+		u8 lfps_half_cycle_num_of_syms;
+	} alpm_state;
 };
 
 enum intel_pipe_crc_source {
@@ -1688,6 +1699,9 @@ struct intel_psr {
 	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
 
+	u8 io_wake_lines;
+	u8 fast_wake_lines;
+
 	bool link_ok;
 	bool pkg_c_latency_used;
 
@@ -1847,16 +1861,9 @@ struct intel_dp {
 	bool colorimetry_support;
 
 	struct {
-		u8 io_wake_lines;
-		u8 fast_wake_lines;
 		enum transcoder transcoder;
 		struct mutex lock;
 
-		/* LNL and beyond */
-		u8 check_entry_lines;
-		u8 aux_less_wake_lines;
-		u8 silence_period_sym_clocks;
-		u8 lfps_half_cycle_num_of_syms;
 		bool lobf_disable_debug;
 		bool sink_alpm_error;
 	} alpm_parameters;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f7115969b4c5..2131473cead6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -956,15 +956,16 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 	return val;
 }
 
-static int psr2_block_count_lines(struct intel_dp *intel_dp)
+static int
+psr2_block_count_lines(u8 io_wake_lines, u8 fast_wake_lines)
 {
-	return intel_dp->alpm_parameters.io_wake_lines < 9 &&
-		intel_dp->alpm_parameters.fast_wake_lines < 9 ? 8 : 12;
+	return io_wake_lines < 9 && fast_wake_lines < 9 ? 8 : 12;
 }
 
 static int psr2_block_count(struct intel_dp *intel_dp)
 {
-	return psr2_block_count_lines(intel_dp) / 4;
+	return psr2_block_count_lines(intel_dp->psr.io_wake_lines,
+				      intel_dp->psr.fast_wake_lines) / 4;
 }
 
 static u8 frames_before_su_entry(struct intel_dp *intel_dp)
@@ -1059,20 +1060,20 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 */
 		int tmp;
 
-		tmp = map[intel_dp->alpm_parameters.io_wake_lines -
+		tmp = map[intel_dp->psr.io_wake_lines -
 			  TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(tmp + TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES);
 
-		tmp = map[intel_dp->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
+		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
 	} else if (DISPLAY_VER(display) >= 20) {
-		val |= LNL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
+		val |= LNL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
 	} else if (DISPLAY_VER(display) >= 12) {
-		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
-		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
+		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
 	} else if (DISPLAY_VER(display) >= 9) {
-		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
-		val |= EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
+		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
+		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
 	}
 
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
@@ -1370,11 +1371,12 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 	int wake_lines;
 
 	if (aux_less)
-		wake_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
+		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
 	else
 		wake_lines = DISPLAY_VER(display) < 20 ?
-			psr2_block_count_lines(intel_dp) :
-			intel_dp->alpm_parameters.io_wake_lines;
+			psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+					       crtc_state->alpm_state.fast_wake_lines) :
+			crtc_state->alpm_state.io_wake_lines;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		vblank -= 1;
@@ -1387,7 +1389,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 }
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
-			      const struct intel_crtc_state *crtc_state,
+			      struct intel_crtc_state *crtc_state,
 			      bool aux_less)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1592,7 +1594,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
 static bool
 _panel_replay_compute_config(struct intel_dp *intel_dp,
-			     const struct intel_crtc_state *crtc_state,
+			     struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -2022,6 +2024,8 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		crtc_state->req_psr2_sdp_prior_scanline;
 	intel_dp->psr.active_non_psr_pipes = crtc_state->active_non_psr_pipes;
 	intel_dp->psr.pkg_c_latency_used = crtc_state->pkg_c_latency_used;
+	intel_dp->psr.io_wake_lines = crtc_state->alpm_state.io_wake_lines;
+	intel_dp->psr.fast_wake_lines = crtc_state->alpm_state.fast_wake_lines;
 
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
-- 
2.43.0

