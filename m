Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6A8BC83B9
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200D910E98F;
	Thu,  9 Oct 2025 09:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2epAzRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD1F10E996;
 Thu,  9 Oct 2025 09:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001267; x=1791537267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4HOWx10YZnJAqem0kiFUmR7rw4Mjj/wp0d55/y8+huE=;
 b=I2epAzRONhSSNXSxc6+NVJgOSKC7x9wqGOsc9Bdc9Io6koRazL1t7oUJ
 KY9cOVxu9AjPxIWA7Pr3OMgC9Zj2A4UpcUCbXMKda2YybhCUIv1sTYoJZ
 K8W9hoy6SYyhabQ0X5o9hGAefdyKPqmWtaMzjjPBRy57+ZY+AQEPVujIt
 E3lOCfcSTIvnM26QltUzH2oVYEZj1komc7wlXf2Cz/251uTFIk7Efk4Dw
 S82mEhufYoVFr5Kk6CPqvOzfI3kWBQdYhhVrmBnjmuoJ1A6VCuRsdlFqU
 Lhb8q3I3PX1UoBXgc8dSYpQDiF+94A0mhkClOgZbgCckjQF8oNKovLhc+ g==;
X-CSE-ConnectionGUID: AiNGdOR0RuCCP/Jxzwxg+w==
X-CSE-MsgGUID: Tc+SmvebRrWD0iRWKKff4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123491"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123491"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:27 -0700
X-CSE-ConnectionGUID: 3oDngPYnTyyJc025mDEQrg==
X-CSE-MsgGUID: BW60SeMYSnCNBL0mGplfRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918059"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/8] drm/i915/psr: Consider SCL lines when validating vblank
 for wake latency
Date: Thu,  9 Oct 2025 14:30:58 +0530
Message-ID: <20251009090102.850344-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

Panel Replay and PSR2 selective update require sufficient vblank duration
to accommodate wake latencies. However, the current
wake_lines_fit_into_vblank() logic does not account for the minimum
Set Context Latency (SCL) lines.

Separate out _intel_psr_min_set_context_latency() to compute the minimum
SCL requirement based on platform and feature usage.

The alpm_config_valid() helper is updated to pass the necessary context for
determining whether Panel Replay or PSR2 selective update is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 102 ++++++++++++++---------
 1 file changed, 61 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2131473cead6..212bd244beed 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1361,14 +1361,64 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 	return entry_setup_frames;
 }
 
+static
+int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state,
+				       bool needs_panel_replay,
+				       bool needs_sel_update)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->has_psr)
+		return 0;
+
+	/* Wa_14015401596 */
+	if (intel_vrr_possible(crtc_state) && IS_DISPLAY_VER(display, 13, 14))
+		return 1;
+
+	/* Rest is for SRD_STATUS needed on LunarLake and onwards */
+	if (DISPLAY_VER(display) < 20)
+		return 0;
+
+	/*
+	 * Comment on SRD_STATUS register in Bspec for LunarLake and onwards:
+	 *
+	 * To deterministically capture the transition of the state machine
+	 * going from SRDOFFACK to IDLE, the delayed V. Blank should be at least
+	 * one line after the non-delayed V. Blank.
+	 *
+	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
+	 * VRR TG: TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[ VRR Vmax ]
+	 * - TRANS_VTOTAL[ Vertical Active ])
+	 *
+	 * SRD_STATUS is used only by PSR1 on PantherLake.
+	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
+	 */
+
+	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
+					   needs_sel_update))
+		return 0;
+	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
+					       intel_crtc_has_type(crtc_state,
+								   INTEL_OUTPUT_EDP)))
+		return 0;
+	else
+		return 1;
+}
+
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
-				       bool aux_less)
+				       bool aux_less,
+				       bool needs_sel_update,
+				       bool needs_panel_replay)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines;
+	int scl = _intel_psr_min_set_context_latency(crtc_state,
+						     needs_sel_update,
+						     needs_panel_replay);
+	vblank -= scl;
 
 	if (aux_less)
 		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
@@ -1390,7 +1440,9 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
-			      bool aux_less)
+			      bool aux_less,
+			      bool needs_sel_update,
+			      bool needs_panel_replay)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1400,7 +1452,8 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less)) {
+	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less,
+					needs_sel_update, needs_panel_replay)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2/Panel Replay not enabled, too short vblank time\n");
 		return false;
@@ -1492,7 +1545,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!alpm_config_valid(intel_dp, crtc_state, false))
+	if (!alpm_config_valid(intel_dp, crtc_state, false, true, crtc_state->has_panel_replay))
 		return false;
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
@@ -1643,7 +1696,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!alpm_config_valid(intel_dp, crtc_state, true))
+	if (!alpm_config_valid(intel_dp, crtc_state, true, false, true))
 		return false;
 
 	return true;
@@ -2371,43 +2424,10 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
  */
 int intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (!crtc_state->has_psr)
-		return 0;
-
-	/* Wa_14015401596 */
-	if (intel_vrr_possible(crtc_state) && IS_DISPLAY_VER(display, 13, 14))
-		return 1;
-
-	/* Rest is for SRD_STATUS needed on LunarLake and onwards */
-	if (DISPLAY_VER(display) < 20)
-		return 0;
 
-	/*
-	 * Comment on SRD_STATUS register in Bspec for LunarLake and onwards:
-	 *
-	 * To deterministically capture the transition of the state machine
-	 * going from SRDOFFACK to IDLE, the delayed V. Blank should be at least
-	 * one line after the non-delayed V. Blank.
-	 *
-	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
-	 * VRR TG: TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[ VRR Vmax ]
-	 * - TRANS_VTOTAL[ Vertical Active ])
-	 *
-	 * SRD_STATUS is used only by PSR1 on PantherLake.
-	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
-	 */
-
-	if (DISPLAY_VER(display) >= 30 && (crtc_state->has_panel_replay ||
-					   crtc_state->has_sel_update))
-		return 0;
-	else if (DISPLAY_VER(display) < 30 && (crtc_state->has_sel_update ||
-					       intel_crtc_has_type(crtc_state,
-								   INTEL_OUTPUT_EDP)))
-		return 0;
-	else
-		return 1;
+	return _intel_psr_min_set_context_latency(crtc_state,
+						  crtc_state->has_panel_replay,
+						  crtc_state->has_sel_update);
 }
 
 static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
-- 
2.45.2

