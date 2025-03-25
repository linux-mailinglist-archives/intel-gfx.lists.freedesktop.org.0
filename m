Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C82AA6FC97
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D694010E38F;
	Tue, 25 Mar 2025 12:37:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blwztAgV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2958A10E38F;
 Tue, 25 Mar 2025 12:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906224; x=1774442224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HSxYLolQIA8+5dECnavOSC3x3eJHDMGUsjazpSJ85Lw=;
 b=blwztAgVqkt3feTc1E+/eGSJIvSrMvEQUtLbUuem9z8Kw+FDbzQZHTKM
 QEXMO5J1uxooOJCG3Z808v8L55jA01KMnS8zsSTVr90aZpSNcWWrLmCQV
 mGg3su2D4hB7BEnwu3Jh+LTPBCJ56MY/H8o/JC/7WnF1M2KnS87AaIMud
 BUW+KZsv1wopu48zJQu4/OGYaQ6ina1WsAJz5E7T8p1+iZJy6XLX1QUPK
 fffaJ11SB1FlIQRoYGGab+XEUIOXQeGIxfepBcPtzNnkEmjVk+iIrUu94
 sIa8Qj4vAOp9qmzrZG7cqKba7W7cnw6j4ZVGNOwIacE+ALwk6O809s82V A==;
X-CSE-ConnectionGUID: 3Q0LfeJcTt6prq4st4wimQ==
X-CSE-MsgGUID: 4OxKz0B/S0uBud9gLfBixA==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933234"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933234"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:04 -0700
X-CSE-ConnectionGUID: ver0gYlVTxmWLh00GJ55yQ==
X-CSE-MsgGUID: /EQyOh/2TiOTcKh9BqtU5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274862"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/6] drm/i915/psr: further conversions to struct intel_display
Date: Tue, 25 Mar 2025 14:36:36 +0200
Message-Id: <7d032bd621a56536b4d53c5c415cad624e5dc628.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

intel_psr.c still uses the old platform identification macros. Convert
them and some other stragglers to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 85 +++++++++---------------
 1 file changed, 30 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 708fbcfa9089..c4be3f46511f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -464,8 +464,8 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		if (DISPLAY_VER(display) >= 9) {
 			u32 val;
 
-			val = intel_de_rmw(dev_priv,
-					   PSR_EVENT(dev_priv, cpu_transcoder),
+			val = intel_de_rmw(display,
+					   PSR_EVENT(display, cpu_transcoder),
 					   0, 0);
 
 			psr_event_print(display, val, intel_dp->psr.sel_update_enabled);
@@ -690,7 +690,6 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 aux_clock_divider, aux_ctl;
 	/* write DP_SET_POWER=D0 */
@@ -705,7 +704,7 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 
 	BUILD_BUG_ON(sizeof(aux_msg) > 20);
 	for (i = 0; i < sizeof(aux_msg); i += 4)
-		intel_de_write(dev_priv,
+		intel_de_write(display,
 			       psr_aux_data_reg(display, cpu_transcoder, i >> 2),
 			       intel_dp_aux_pack(&aux_msg[i], sizeof(aux_msg) - i));
 
@@ -840,7 +839,6 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val = 0;
 
 	if (DISPLAY_VER(display) >= 11)
@@ -874,7 +872,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 	 * WA 0479: hsw,bdw
 	 * "Do not skip both TP1 and TP2/TP3"
 	 */
-	if (DISPLAY_VER(dev_priv) < 9 &&
+	if (DISPLAY_VER(display) < 9 &&
 	    connector->panel.vbt.psr.tp1_wakeup_time_us == 0 &&
 	    connector->panel.vbt.psr.tp2_tp3_wakeup_time_us == 0)
 		val |= EDP_PSR_TP2_TP3_TIME_100us;
@@ -910,7 +908,6 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
@@ -920,7 +917,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(display) < 20)
 		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
 
-	if (IS_HASWELL(dev_priv))
+	if (display->platform.haswell)
 		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
 
 	if (intel_dp->psr.link_standby)
@@ -1014,14 +1011,13 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
+	if (DISPLAY_VER(display) < 14 && !display->platform.alderlake_p)
 		val |= EDP_SU_TRACK_ENABLE;
 
 	if (DISPLAY_VER(display) >= 10 && DISPLAY_VER(display) < 13)
@@ -1039,7 +1035,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_E0)) {
+	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -1104,9 +1100,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 static bool
 transcoder_has_psr2(struct intel_display *display, enum transcoder cpu_transcoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
+	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
 		return cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B;
 	else if (DISPLAY_VER(display) >= 12)
 		return cpu_transcoder == TRANSCODER_A;
@@ -1184,10 +1178,9 @@ dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port = dig_port->base.port;
 
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
+	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
 		return pipe <= PIPE_B && port <= PORT_B;
 	else
 		return pipe == PIPE_A && port == PORT_A;
@@ -1198,7 +1191,6 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	u32 exit_scanlines;
@@ -1224,7 +1216,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
+	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
 		return;
 
 	/*
@@ -1265,7 +1257,6 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
@@ -1287,7 +1278,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 	 * For other platforms with SW tracking we can adjust the y coordinates
 	 * to match sink requirement if multiple of 4.
 	 */
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
+	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
 		y_granularity = intel_dp->psr.su_y_granularity;
 	else if (intel_dp->psr.su_y_granularity <= 2)
 		y_granularity = 4;
@@ -1413,7 +1404,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
@@ -1422,20 +1412,20 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
-	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	if (display->platform.jasperlake || display->platform.elkhartlake) {
 		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
 		return false;
 	}
 
 	/* Wa_16011181250 */
-	if (IS_ROCKETLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
-	    IS_DG2(dev_priv)) {
+	if (display->platform.rocketlake || display->platform.alderlake_s ||
+	    display->platform.dg2) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 is defeatured for this platform\n");
 		return false;
 	}
 
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
+	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 not completely functional in this stepping\n");
 		return false;
@@ -1454,7 +1444,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	 * over PSR2.
 	 */
 	if (crtc_state->dsc.compression_enable &&
-	    (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))) {
+	    (DISPLAY_VER(display) < 14 && !display->platform.alderlake_p)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 cannot be enabled since DSC is enabled\n");
 		return false;
@@ -1487,7 +1477,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	/* Wa_16011303918:adl-p */
 	if (crtc_state->vrr.enable &&
-	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
+	    display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
 		return false;
@@ -1828,7 +1818,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask = 0;
 
@@ -1867,7 +1856,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * As a workaround leave LPSP unmasked to prevent PSR entry
 		 * when external displays are active.
 		 */
-		if (DISPLAY_VER(display) >= 8 || IS_HASWELL_ULT(dev_priv))
+		if (DISPLAY_VER(display) >= 8 || display->platform.haswell_ult)
 			mask |= EDP_PSR_DEBUG_MASK_LPSP;
 
 		if (DISPLAY_VER(display) < 20)
@@ -1881,7 +1870,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
 		/* allow PSR with sprite enabled */
-		if (IS_HASWELL(dev_priv))
+		if (display->platform.haswell)
 			mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
 	}
 
@@ -1926,7 +1915,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 */
 		if (!intel_dp->psr.panel_replay_enabled &&
 		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
-		     IS_ALDERLAKE_P(dev_priv)))
+		     display->platform.alderlake_p))
 			intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 				     0, ADLP_1_BASED_X_GRANULARITY);
 
@@ -1937,7 +1926,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
 				     0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
-		else if (IS_ALDERLAKE_P(dev_priv))
+		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
@@ -2105,7 +2094,6 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	lockdep_assert_held(&intel_dp->psr.lock);
@@ -2137,7 +2125,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			intel_de_rmw(display,
 				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
-		else if (IS_ALDERLAKE_P(dev_priv))
+		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 	}
@@ -2315,35 +2303,27 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 
 static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ? 0 :
+	return display->platform.alderlake_p || DISPLAY_VER(display) >= 14 ? 0 :
 		PSR2_MAN_TRK_CTL_ENABLE;
 }
 
 static u32 man_trk_ctl_single_full_frame_bit_get(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
+	return display->platform.alderlake_p || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
 }
 
 static u32 man_trk_ctl_partial_frame_bit_get(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
+	return display->platform.alderlake_p || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
 	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 }
 
 static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
+	return display->platform.alderlake_p || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
@@ -2406,8 +2386,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 				  bool full_update)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 val = man_trk_ctl_enable_bit_get(display);
 
 	/* SF partial frame enable has to be set even on full update */
@@ -2421,7 +2399,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	if (crtc_state->psr2_su_area.y1 == -1)
 		goto exit;
 
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14) {
+	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14) {
 		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(crtc_state->psr2_su_area.y1);
 		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(crtc_state->psr2_su_area.y2 - 1);
 	} else {
@@ -2475,13 +2453,12 @@ static void clip_area_update(struct drm_rect *overlap_damage_area,
 static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	u16 y_alignment;
 
 	/* ADLP aligns the SU region to vdsc slice height in case dsc is enabled */
 	if (crtc_state->dsc.compression_enable &&
-	    (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14))
+	    (display->platform.alderlake_p || DISPLAY_VER(display) >= 14))
 		y_alignment = vdsc_cfg->slice_height;
 	else
 		y_alignment = crtc_state->su_y_granularity;
@@ -2602,12 +2579,11 @@ static void
 intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/* Wa_14014971492 */
 	if (!crtc_state->has_panel_replay &&
 	    ((IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
-	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
+	      display->platform.alderlake_p || display->platform.tigerlake)) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
 
@@ -2808,7 +2784,6 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -2840,7 +2815,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			    new_crtc_state->has_sel_update != psr->sel_update_enabled ||
 			    new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled ||
 			    new_crtc_state->has_panel_replay != psr->panel_replay_enabled ||
-			    (DISPLAY_VER(i915) < 11 && new_crtc_state->wm_level_disabled))
+			    (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled))
 				intel_psr_disable_locked(intel_dp);
 			else if (new_crtc_state->wm_level_disabled)
 				/* Wa_14015648006 */
-- 
2.39.5

