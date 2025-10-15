Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2FBDE07B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BC010E773;
	Wed, 15 Oct 2025 10:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEiexwFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C967B10E772;
 Wed, 15 Oct 2025 10:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524551; x=1792060551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZNiEljsVmLz1//BX0Xx3mJjxui/Ebp+RD4bqjgyR1To=;
 b=oEiexwFka3d7xe8w6KfryjJ9sNWHALACbh6hMoczbwSLLXYImOZ/ObVh
 X+64CZ5WwgYdJ7+z3Ir/0fG+aWsp8ob7QXSoEpy8rzpPuExhdN9Q95eVH
 1RmkUqnKfSIRSc+Mcokjj8EYReXBCbeyyVAkIH2HqAbInivukeLMJnB3+
 YwK7WsIt7j97LKNBD7ZEuz88qO67QMp2yP5/Z6OyA/SIuCUl5ySbC/+Ba
 EUWtvXdzd3r9+s+xTF9la5elGENjew4W7GJsIkTcVirvDlFqx0SjelMtu
 /s7tepjLHVu/cVKRJIPbGecJsrWaoBB5kooDFWrTq7XrYuTRfts4wgIqD w==;
X-CSE-ConnectionGUID: AfBUzuxPRn+ZdEwTd30EIA==
X-CSE-MsgGUID: B29QJsd8TPe0TPUXvDgXXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262605"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262605"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:51 -0700
X-CSE-ConnectionGUID: X/LlMGUUQyCAKkkHySB5Gg==
X-CSE-MsgGUID: iakoCvSNTkmmbdml2y9QcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842529"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/6] [NOT FOR REVIEW] drm/i915/vrr: prep patches for guardband
 optimization squashed
Date: Wed, 15 Oct 2025 15:52:36 +0530
Message-ID: <20251015102241.1797828-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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

This is a squashed patch based on the preparatory series for guardband
optimization. It contains all the changes in the v7 of the series:
'Preparatory patches for guardband optimization' [1]

This handles few cases which will need changes when guardband will no
longer be matched to vblank length.
- Fix the vblank_start evaluation.
- Fix PSR wake latency checks wrt to guradband.

NOTE: This patch is not meant for review. Any review related to this
patch should be done on the original series. In order not to diverge
the discussion from the main series.

[1] https://patchwork.freedesktop.org/series/155661/#rev7

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 +
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 244 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  29 ++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 236 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..94c593bbedf4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4560,6 +4560,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
 
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_dp_compute_config_late(encoder, crtc_state, conn_state);
+
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec2..65a7da694ef6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2410,11 +2410,11 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	ret = intel_crtc_compute_set_context_latency(state, crtc);
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
 
-	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	ret = intel_crtc_compute_set_context_latency(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2431,6 +2431,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (crtc_state->has_pch_encoder)
 		return ilk_fdi_compute_config(crtc, crtc_state);
 
+	intel_vrr_compute_guardband(crtc_state);
+
 	return 0;
 }
 
@@ -4722,8 +4724,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_vrr_compute_config_late(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
@@ -4958,9 +4958,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * and optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a723e846321f..e481ff4c4959 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6979,3 +6979,12 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_compute_config_late(intel_dp, crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b379443e0211..0d9573ca44cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2131473cead6..703e5f6af04c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1361,14 +1361,78 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
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
+static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
+					int vblank,
+					int wake_lines)
+{
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		vblank -= 1;
+
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (vblank < wake_lines)
+		return false;
+
+	return true;
+}
+
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
-				       bool aux_less)
+				       bool aux_less,
+				       bool needs_panel_replay,
+				       bool needs_sel_update)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines;
+	int scl = _intel_psr_min_set_context_latency(crtc_state,
+						     needs_panel_replay,
+						     needs_sel_update);
+	vblank -= scl;
 
 	if (aux_less)
 		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
@@ -1378,19 +1442,23 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 					       crtc_state->alpm_state.fast_wake_lines) :
 			crtc_state->alpm_state.io_wake_lines;
 
-	if (crtc_state->req_psr2_sdp_prior_scanline)
-		vblank -= 1;
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (vblank < wake_lines)
-		return false;
-
-	return true;
+	/*
+	 * Guardband has not been computed yet, so we conservatively check if the
+	 * full vblank duration is sufficient to accommodate wake line requirements
+	 * for PSR features like Panel Replay and Selective Update.
+	 *
+	 * Once the actual guardband is available, a more accurate validation is
+	 * performed in intel_psr_compute_config_late(), and PSR features are
+	 * disabled if wake lines exceed the available guardband.
+	 */
+	return _wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines);
 }
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
-			      bool aux_less)
+			      bool aux_less,
+			      bool needs_panel_replay,
+			      bool needs_sel_update)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1400,7 +1468,8 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less)) {
+	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less,
+					needs_panel_replay, needs_sel_update)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2/Panel Replay not enabled, too short vblank time\n");
 		return false;
@@ -1492,7 +1561,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!alpm_config_valid(intel_dp, crtc_state, false))
+	if (!alpm_config_valid(intel_dp, crtc_state, false, false, true))
 		return false;
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
@@ -1643,7 +1712,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!alpm_config_valid(intel_dp, crtc_state, true))
+	if (!alpm_config_valid(intel_dp, crtc_state, true, true, false))
 		return false;
 
 	return true;
@@ -1658,15 +1727,40 @@ static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
 		!crtc_state->has_sel_update);
 }
 
+static
+void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct intel_crtc *crtc;
+	u8 active_pipes = 0;
+
+	/* Wa_16025596647 */
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	/* Not needed by Panel Replay  */
+	if (crtc_state->has_panel_replay)
+		return;
+
+	/* We ignore possible secondary PSR/Panel Replay capable eDP */
+	for_each_intel_crtc(display->drm, crtc)
+		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
+
+	active_pipes = intel_calc_active_pipes(state, active_pipes);
+
+	crtc_state->active_non_psr_pipes = active_pipes &
+		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
-	struct intel_crtc *crtc;
-	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
@@ -1707,31 +1801,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
-
-	/* Wa_18037818876 */
-	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
-		crtc_state->has_psr = false;
-		drm_dbg_kms(display->drm,
-			    "PSR disabled to workaround PSR FSM hang issue\n");
-	}
-
-	/* Rest is for Wa_16025596647 */
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
-		return;
-
-	/* Not needed by Panel Replay  */
-	if (crtc_state->has_panel_replay)
-		return;
-
-	/* We ignore possible secondary PSR/Panel Replay capable eDP */
-	for_each_intel_crtc(display->drm, crtc)
-		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
-
-	active_pipes = intel_calc_active_pipes(state, active_pipes);
-
-	crtc_state->active_non_psr_pipes = active_pipes &
-		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -2371,43 +2440,10 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
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
-
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
@@ -4326,3 +4362,57 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int vblank = intel_crtc_vblank_length(crtc_state);
+	int wake_lines;
+
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state))
+		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	else if (intel_psr_needs_alpm(intel_dp, crtc_state))
+		wake_lines = DISPLAY_VER(display) < 20 ?
+			     psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						    crtc_state->alpm_state.fast_wake_lines) :
+			     crtc_state->alpm_state.io_wake_lines;
+	else
+		wake_lines = 0;
+
+	/*
+	 * Disable the PSR features if wake lines exceed the available vblank.
+	 * Though SCL is computed based on these PSR features, it is not reset
+	 * even if the PSR features are disabled to avoid changing vblank start
+	 * at this stage.
+	 */
+	if (wake_lines && !_wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Adjusting PSR/PR mode: vblank too short for wake lines = %d\n",
+			    wake_lines);
+
+		if (crtc_state->has_panel_replay) {
+			crtc_state->has_panel_replay = false;
+			/*
+			 * #TODO : Add fall back to PSR/PSR2
+			 * Since panel replay cannot be supported, we can fall back to PSR/PSR2.
+			 * This will require calling compute_config for psr and psr2 with check for
+			 * actual guardband instead of vblank_length.
+			 */
+			crtc_state->has_psr = false;
+		}
+
+		crtc_state->has_sel_update = false;
+		crtc_state->enable_psr2_su_region_et = false;
+		crtc_state->enable_psr2_sel_fetch = false;
+	}
+
+	/* Wa_18037818876 */
+	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
+		crtc_state->has_psr = false;
+		drm_dbg_kms(display->drm,
+			    "PSR disabled to workaround PSR FSM hang issue\n");
+	}
+
+	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9147996d6c9e..b17ce312dc37 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -83,5 +83,7 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 0b7fcc05e64c..2fc0c1c0bb87 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 
 	return scanline;
 }
+
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc_state->vrr.enable)
+		return crtc_state->vrr.guardband;
+	else
+		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..98d04cacd65f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -48,4 +48,6 @@ const struct intel_crtc_state *
 intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VBLANK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 190c51be5cbc..1cfcc31bd899 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -394,10 +394,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_start);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_start);
 		crtc_state->vrr.vsync_end =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_end);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
 }
 
@@ -433,10 +433,11 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -444,6 +445,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
 					intel_vrr_max_guardband(crtc_state));
 
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		adjusted_mode->crtc_vblank_start  =
+			adjusted_mode->crtc_vtotal - crtc_state->vrr.guardband;
+		pipe_mode->crtc_vblank_start =
+			adjusted_mode->crtc_vblank_start;
+	}
+
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
@@ -821,6 +829,19 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	 */
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	/*
+	 * For platforms that always use the VRR timing generator, we overwrite
+	 * crtc_vblank_start with vtotal - guardband to reflect the delayed
+	 * vblank start. This works for both default and optimized guardband values.
+	 * On other platforms, we keep the original value from
+	 * intel_get_transcoder_timings() and apply adjustments only in VRR-specific
+	 * paths as needed.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_state->hw.adjusted_mode.crtc_vblank_start =
+			crtc_state->hw.adjusted_mode.crtc_vtotal -
+			crtc_state->vrr.guardband;
 }
 
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 7317f8730089..bc9044621635 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..06e5e6c77d2e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
@@ -2241,7 +2242,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 		scaler_prefill_latency(crtc_state) +
 		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
-		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+		intel_crtc_vblank_length(crtc_state);
 }
 
 static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

