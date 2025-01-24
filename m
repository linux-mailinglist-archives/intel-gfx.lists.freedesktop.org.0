Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D7A1B88D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2660410E9A8;
	Fri, 24 Jan 2025 15:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crm9lUnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D36410E9A3;
 Fri, 24 Jan 2025 15:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731533; x=1769267533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CV33btlTZDPu3QMLW+cLR2bXqPq8zQ0PtM8NU+vSMIg=;
 b=crm9lUnc8Ndr6FLPPVoiAXmPxFHAd7vc1rYl6nz6q8XldzY71g2mzKsi
 9un9TleKINGLEbqKdzNr3gcQqSR9mTX9yZIHU5g9CUjF8f83u4UzwOK1N
 inefO/AkuoVVkvZarI7sDRA5V1MNstth2xq8rM9yxSU8+1lzrLWzmOac/
 fRWWjn8I++puuIUfHCD63xn8ChRjEqHpYz99e9IlJTy65vPjGa7VMzBk0
 9sLq0hI4U2UxkcQd7zsOFw9Vn1jkaNcBPHEwYh015pGLqxX4bzlilejOY
 PuJIG6V5HWpVPz3PasL1WSCCBg1DgWeIyHPrNjpSXHFs6cIZd01U87SkV A==;
X-CSE-ConnectionGUID: 1YpQvWuzSgSWN9lxtHYI7A==
X-CSE-MsgGUID: laIEbse+Su2/LHNHKl6nxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177414"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177414"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:12 -0800
X-CSE-ConnectionGUID: s97k9mPdQSWuN6RicfVaUA==
X-CSE-MsgGUID: NxQUasMdSQ2bXK2Rj+3M/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221310"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:10 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/35] drm/i915/display: Absorb cmrr attributes into vrr struct
Date: Fri, 24 Jan 2025 20:30:01 +0530
Message-ID: <20250124150020.2271747-17-ankit.k.nautiyal@intel.com>
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
index f0d0fd2ffa5c..6ae634ea23c5 100644
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
index 6f61bec0b840..c25e363ac5b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2836,7 +2836,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->duration_incr_ms = 0;
 	as_sdp->vtotal = crtc_state->vrr.vmin;
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b23b603e512b..a29ca9d64e4a 100644
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
@@ -242,7 +242,6 @@ void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->cmrr.enable = true;
 	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
@@ -411,15 +410,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
@@ -480,7 +479,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
 			       trans_vrr_ctl(crtc_state));
@@ -516,12 +515,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

