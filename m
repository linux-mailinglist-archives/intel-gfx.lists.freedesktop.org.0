Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2155EB44E8C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112A010EB27;
	Fri,  5 Sep 2025 07:01:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECeR/wSv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3704810EB26;
 Fri,  5 Sep 2025 07:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757055689; x=1788591689;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9LYBsBGFOu+Gjj3Ya9uz+p72Msg3n4s+Gixm/mrZVb0=;
 b=ECeR/wSv7w0+945unSb2lqVb25E7LuIZHF12PxuIGlK8IRD/izDmxNHu
 Ei0STbvY+9vuSuugLezIWA8Tz3g9B4kGSIhMfeVYpWAlwZDGF+X2Omy+D
 lYnrI9bfPXnOjmjWzan6w6NXubHoUITzMb6WVi0zVR7LzH1P7HJ5ZJaaO
 GX6sgdl4nDHLq9gDn9HfXuxEdmqqUqSgaHousHaNKBqDzOiOK2I+EZ7q9
 0OuBYJYJV2+0IzGD/5rsm0cr7xyMDEWYxPquZk1wGz9jySKawOno9xkUQ
 LiAEBshXt6/V2S79oef+OjDwzPpYOwgqwfVjryXMd1OgmIG3asp92fWX9 w==;
X-CSE-ConnectionGUID: lRMXUQ7TROKZqV4pTYtvHw==
X-CSE-MsgGUID: QU7qJ1ZNR9Cdr3ZGsJXr7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="70781483"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="70781483"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:01:29 -0700
X-CSE-ConnectionGUID: keiyj2xOQjWpZpNcNhN9XA==
X-CSE-MsgGUID: PnIy9P42R4a8Rm+ZXippYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="171666298"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.225])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:01:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/alpm: Compute ALPM parameters into
 crtc_state->alpm_parameters
Date: Fri,  5 Sep 2025 10:01:14 +0300
Message-ID: <20250905070114.2635531-1-jouni.hogander@intel.com>
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
there. Copy needed parts of crtc_state->alpm_parameters into
intel_dp->alpm.alpm_parameters (io_wake_lines and fast_wake_lines) when
they are configured into HW.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 38 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_alpm.h     |  2 +-
 .../drm/i915/display/intel_display_types.h    | 16 +++++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++++-----
 4 files changed, 43 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index ed7a7ed486b5..bbc4fa2e084e 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -133,7 +133,7 @@ static int _lnl_compute_aux_less_wake_time(const struct intel_crtc_state *crtc_s
 
 static int
 _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state)
+				  struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int aux_less_wake_time, aux_less_wake_lines, silence_period,
@@ -157,15 +157,15 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (display->params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
-	intel_dp->alpm_parameters.silence_period_sym_clocks = silence_period;
-	intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
+	crtc_state->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
+	crtc_state->alpm_parameters.silence_period_sym_clocks = silence_period;
+	crtc_state->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
 	return true;
 }
 
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
-				     const struct intel_crtc_state *crtc_state)
+				     struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int check_entry_lines;
@@ -186,7 +186,7 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (display->params.psr_safest_params)
 		check_entry_lines = 15;
 
-	intel_dp->alpm_parameters.check_entry_lines = check_entry_lines;
+	crtc_state->alpm_parameters.check_entry_lines = check_entry_lines;
 
 	return true;
 }
@@ -217,7 +217,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 }
 
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
-			       const struct intel_crtc_state *crtc_state)
+			       struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
@@ -255,8 +255,8 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
+	crtc_state->alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
+	crtc_state->alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -306,9 +306,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		    adjusted_mode->crtc_vdisplay - context_latency;
 	first_sdp_position = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vsync_start;
 	if (intel_alpm_aux_less_wake_supported(intel_dp))
-		waketime_in_lines = intel_dp->alpm_parameters.io_wake_lines;
+		waketime_in_lines = crtc_state->alpm_parameters.io_wake_lines;
 	else
-		waketime_in_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
+		waketime_in_lines = crtc_state->alpm_parameters.aux_less_wake_lines;
 
 	crtc_state->has_lobf = (context_latency + guardband) >
 		(first_sdp_position + waketime_in_lines);
@@ -334,7 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
-			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
+			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_parameters.aux_less_wake_lines);
 
 		if (intel_dp->as_sdp_supported) {
 			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
@@ -352,7 +352,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 
 	} else {
 		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
-			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
+			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(crtc_state->alpm_parameters.fast_wake_lines);
 	}
 
 	if (crtc_state->has_lobf) {
@@ -360,7 +360,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
 	}
 
-	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
+	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state->alpm_parameters.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 	mutex_unlock(&intel_dp->alpm_parameters.lock);
@@ -371,6 +371,8 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
 	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
+	intel_dp->alpm_parameters.io_wake_lines = crtc_state->alpm_parameters.io_wake_lines;
+	intel_dp->alpm_parameters.fast_wake_lines = crtc_state->alpm_parameters.fast_wake_lines;
 }
 
 void intel_alpm_port_configure(struct intel_dp *intel_dp,
@@ -388,14 +390,14 @@ void intel_alpm_port_configure(struct intel_dp *intel_dp,
 			PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			PORT_ALPM_CTL_SILENCE_PERIOD(
-				intel_dp->alpm_parameters.silence_period_sym_clocks);
+				crtc_state->alpm_parameters.silence_period_sym_clocks);
 		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(LFPS_CYCLE_COUNT) |
 			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				crtc_state->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				crtc_state->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
-				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms);
+				crtc_state->alpm_parameters.lfps_half_cycle_num_of_syms);
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
index fd9d2527889b..1fc778067397 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1339,6 +1339,17 @@ struct intel_crtc_state {
 
 	/* LOBF flag */
 	bool has_lobf;
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
+	} alpm_parameters;
 };
 
 enum intel_pipe_crc_source {
@@ -1847,11 +1858,6 @@ struct intel_dp {
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
index 22433fe2ee14..dd6df3154508 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -953,15 +953,16 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
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
+	return psr2_block_count_lines(intel_dp->alpm_parameters.io_wake_lines,
+				      intel_dp->alpm_parameters.fast_wake_lines) / 4;
 }
 
 static u8 frames_before_su_entry(struct intel_dp *intel_dp)
@@ -1367,11 +1368,12 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 	int wake_lines;
 
 	if (aux_less)
-		wake_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
+		wake_lines = crtc_state->alpm_parameters.aux_less_wake_lines;
 	else
 		wake_lines = DISPLAY_VER(display) < 20 ?
-			psr2_block_count_lines(intel_dp) :
-			intel_dp->alpm_parameters.io_wake_lines;
+			psr2_block_count_lines(crtc_state->alpm_parameters.io_wake_lines,
+					       crtc_state->alpm_parameters.fast_wake_lines) :
+			crtc_state->alpm_parameters.io_wake_lines;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		vblank -= 1;
@@ -1384,7 +1386,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 }
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
-			      const struct intel_crtc_state *crtc_state,
+			      struct intel_crtc_state *crtc_state,
 			      bool aux_less)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1589,7 +1591,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
 static bool
 _panel_replay_compute_config(struct intel_dp *intel_dp,
-			     const struct intel_crtc_state *crtc_state,
+			     struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-- 
2.43.0

