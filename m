Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E44FA259D9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D72410E4B1;
	Mon,  3 Feb 2025 12:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R5G98pI5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5665110E4B7;
 Mon,  3 Feb 2025 12:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587005; x=1770123005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c1DxM3wG6HuWF2tgu2sbuUdbpI1FWderIHbVL+l1bxU=;
 b=R5G98pI5j6Jf0QChzi0LLKYAqUp7vehyZgE1lyv1+HB2+BaK6iEH2LjN
 jQ8EdhFAqIWbqHJ1OOXi8QdmiM77xPwR19gNVwGhYpmZHwC7rjFxt4In4
 T7gmGEOo5Ql40/ZgVhi0/aYDd3cx90ivDeNh/OnlY5olY192ZyBWQcZdO
 pKe7xiXp6E81m0Xq6aiET2sYGTTWoA3uit7aiyUTIc2/yYMu/L8Xv7Agn
 oD6Znx2n2f589HkUefAciWOGAC+ynF+x0EQClEyXR5ASbkOl/xrwx4p+Z
 TKqH0o9qV0tOPYiSn95//kFy38Fg1iwH3UibOn/8UHXwahk6QfXuJYz87 A==;
X-CSE-ConnectionGUID: hBosQ3GeSeKqz+3MHZVXJQ==
X-CSE-MsgGUID: fGJULpSqSsekt2sX8LKTaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548042"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548042"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:05 -0800
X-CSE-ConnectionGUID: MPnoOUHqRQOdRG/FTe8oxA==
X-CSE-MsgGUID: ivoYucPhTP2bt6bL1f6kFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528898"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:03 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/28] drm/i915/display: Absorb cmrr attributes into vrr struct
Date: Mon,  3 Feb 2025 18:08:20 +0530
Message-ID: <20250203123840.3855874-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Since cmrr is now one of the mode of operation of VRR timing generator,
move its elements in the vrr struct.

Replace cmrr.enable with vrr.mode INTEL_VRRTG_MODE_CMRR and move cmrr_m
and cmrr_n in vrr struct.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++---------
 .../drm/i915/display/intel_display_types.h    |  7 +----
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 26 +++++++++----------
 4 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 053c727d6d7e..3f2c07693ae6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1109,14 +1109,9 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
-}
-
-static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
-				const struct intel_crtc_state *new_crtc_state)
-{
-	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
-		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.cmrr_m != new_crtc_state->vrr.cmrr_m ||
+		old_crtc_state->vrr.cmrr_n != new_crtc_state->vrr.cmrr_n;
 }
 
 static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
@@ -5810,9 +5805,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
-		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
-		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
-		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_LLI(vrr.cmrr_m);
+		PIPE_CONF_CHECK_LLI(vrr.cmrr_n);
 	}
 
 #undef PIPE_CONF_CHECK_X
@@ -7225,8 +7219,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
-		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
-		    cmrr_params_changed(old_crtc_state, new_crtc_state))
+		if (vrr_params_changed(old_crtc_state, new_crtc_state))
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c553274c2af8..338cfd99e5d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1313,14 +1313,9 @@ struct intel_crtc_state {
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
 		enum intel_vrrtg_mode mode;
+		u64 cmrr_n, cmrr_m; /* Content Match Refresh Rate M and N */
 	} vrr;
 
-	/* Content Match Refresh Rate state */
-	struct {
-		bool enable;
-		u64 cmrr_n, cmrr_m;
-	} cmrr;
-
 	/* Stream Splitter for eDP MSO */
 	struct {
 		bool enable;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 476cefd41888..411df92df4a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2836,7 +2836,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->duration_incr_ms = 0;
 	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5c00eef64bfd..dc4923d49c29 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -212,12 +212,12 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 		multiplier_n = 1000;
 	}
 
-	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
-					      multiplier_n);
+	crtc_state->vrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
+					     multiplier_n);
 	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
-				  crtc_state->cmrr.cmrr_n);
+				  crtc_state->vrr.cmrr_n);
 	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
-	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+	crtc_state->vrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr_n);
 
 	return vtotal;
 }
@@ -225,7 +225,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->cmrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
@@ -403,15 +402,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_m));
+			       upper_32_bits(crtc_state->vrr.cmrr_m));
 		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_m));
+			       lower_32_bits(crtc_state->vrr.cmrr_m));
 		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_n));
+			       upper_32_bits(crtc_state->vrr.cmrr_n));
 		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_n));
+			       lower_32_bits(crtc_state->vrr.cmrr_n));
 	}
 
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
@@ -472,7 +471,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
 			       trans_vrr_ctl(crtc_state));
@@ -508,12 +507,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
-		crtc_state->cmrr.enable = true;
 		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
-		crtc_state->cmrr.cmrr_n =
+		crtc_state->vrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
-		crtc_state->cmrr.cmrr_m =
+		crtc_state->vrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
 	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
-- 
2.45.2

