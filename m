Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AEABD7406
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 06:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F88610E535;
	Tue, 14 Oct 2025 04:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSTyyVs7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C04F310E535;
 Tue, 14 Oct 2025 04:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760416190; x=1791952190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JN9JleY2UvshfWfBWq04jukuIfgn1iEbiGBG/hVK76Q=;
 b=WSTyyVs7F/PErieuZboBMiom5k8zzGb+ab7jlWpYwJ4bxNEpXh0nwwNu
 suKn3LGaTjzRZcwgoSA6PKd7so46tk+2nwM1x0Smm9xulM6yRZIHuXnCu
 djUZUDL4w1uElWPPZUKTUwN+g+1NuwS4V/2QR6gc4VDDlgZXC2fRUCAXv
 9yfLBT/3eSRGxOYA6TuvRFiBetVCJX/ZKUblqifhpeJynknf7+8jcprD8
 TuFoa+BJa2bcejVgSPaNjruxabY5b/GE2w6FP8Y5A5LUGEOma2BbK0Hdi
 pbZ2DExOhwK1oGjjdH9dEMYC5GqKJ50DYVNkitPsSpp1w+87iayjxnUry w==;
X-CSE-ConnectionGUID: Jz9I27q+T7i4hkMA5779JA==
X-CSE-MsgGUID: 7stRV7nFSzeY0noNwLt1LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="88029787"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="88029787"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:50 -0700
X-CSE-ConnectionGUID: oei4MbOXT/yixNxHAgIdiA==
X-CSE-MsgGUID: b1QrQdoyS6aVWUIUuEmRzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="212399834"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/8] drm/i915/psr: Consider SCL lines when validating vblank
 for wake latency
Date: Tue, 14 Oct 2025 09:46:25 +0530
Message-ID: <20251014041628.1291117-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
References: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
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

v2: While calling alpm_config_valid() for selective_update use false flag
    instead of has_panel_replay. (Jouni)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 102 ++++++++++++++---------
 1 file changed, 61 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2131473cead6..28efa4410c2a 100644
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
+	if (!alpm_config_valid(intel_dp, crtc_state, false, true, false))
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

