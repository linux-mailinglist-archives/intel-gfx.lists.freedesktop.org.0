Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074A0C78B94
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F69610E852;
	Fri, 21 Nov 2025 11:17:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INv9G6xE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8803810E097;
 Fri, 21 Nov 2025 11:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723833; x=1795259833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BgzZaqN8fS+MotRIF1uOP/AaGEr294OjqYW3LQVk46c=;
 b=INv9G6xEtz17qH536jJdT5m5N961D8aKtMBXQCx6r2ETryuXVW142NW1
 vs3HGRs4xFESe1TiFm0RFSDy8XvDUC8oXzaeRTFhVytWTOPsxuURdGcXx
 n9TDNgVh1cHkHaBKODTwfEk+BvbW8CLUPwKUNN7uUGbst1KOZBvU0SP8I
 tbwWD7IP2IhD6Su/xCZyYqj/tZ8yUKurZYvLDPvTSRYv8rffMwgl4OEug
 d3FOww7viIIZQ7xDhgLWG5g42/IJUmeFuSFLaLA3X6kVYXIFS0Ggy8VfS
 U5ssaRu1U0eDd2nTTZxmKg5CWi4CUXgZj8OEzzvs+GGzR4WqnFiEz6ZTm w==;
X-CSE-ConnectionGUID: r+282Q0PQwecZXrOWM4dHg==
X-CSE-MsgGUID: ReuYGcJkSomZHAATZWsu3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845518"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845518"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:13 -0800
X-CSE-ConnectionGUID: 2+30ZbjbQ0GC/cvqHanKFg==
X-CSE-MsgGUID: BlB0yvb8Suy5XgTDJs0d4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801983"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:11 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/8] drm/i915/psr: Use SU granularity information available in
 intel_connector
Date: Fri, 21 Nov 2025 13:16:49 +0200
Message-ID: <20251121111655.164830-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121111655.164830-1-jouni.hogander@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
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

Currently we are storing only one set of granularity information for panels
supporting both PSR and Panel Replay. It might be that in practice they are
always the same. As panel is informing own granularities for PSR and Panel
Replay let's use these instead of having only one set for both. This is
done by having intel_connector::psr_caps and panel_replay_caps both
containing granularity information.

This patch is also removing complexity of sharing granularity read between
PSR and Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_psr.c | 139 +++++++++++------------
 drivers/gpu/drm/i915/display/intel_psr.h |   2 +-
 3 files changed, 69 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48e..62808cd35f5f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4562,7 +4562,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
 	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
 	 */
-	intel_psr_init_dpcd(intel_dp);
+	intel_psr_init_dpcd(intel_dp, connector);
 
 	intel_edp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
@@ -6075,7 +6075,7 @@ intel_dp_detect(struct drm_connector *_connector,
 		connector->base.epoch_counter++;
 
 	if (!intel_dp_is_edp(intel_dp))
-		intel_psr_init_dpcd(intel_dp);
+		intel_psr_init_dpcd(intel_dp, connector);
 
 	intel_dp_detect_dsc_caps(intel_dp, connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 00ac652809cca..4c5883bed612b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -494,69 +494,26 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 	return val;
 }
 
-static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
-{
-	u8 su_capability = 0;
-
-	if (intel_dp->psr.sink_panel_replay_su_support) {
-		if (drm_dp_dpcd_read_byte(&intel_dp->aux,
-					  DP_PANEL_REPLAY_CAP_CAPABILITY,
-					  &su_capability) < 0)
-			return 0;
-	} else {
-		su_capability = intel_dp->psr_dpcd[1];
-	}
-
-	return su_capability;
-}
-
-static unsigned int
-intel_dp_get_su_x_granularity_offset(struct intel_dp *intel_dp)
-{
-	return intel_dp->psr.sink_panel_replay_su_support ?
-		DP_PANEL_REPLAY_CAP_X_GRANULARITY :
-		DP_PSR2_SU_X_GRANULARITY;
-}
-
-static unsigned int
-intel_dp_get_su_y_granularity_offset(struct intel_dp *intel_dp)
-{
-	return intel_dp->psr.sink_panel_replay_su_support ?
-		DP_PANEL_REPLAY_CAP_Y_GRANULARITY :
-		DP_PSR2_SU_Y_GRANULARITY;
-}
-
-/*
- * Note: Bits related to granularity are same in panel replay and psr
- * registers. Rely on PSR definitions on these "common" bits.
- */
-static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
+static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
+					struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	ssize_t r;
 	u16 w;
 	u8 y;
 
-	/*
-	 * TODO: Do we need to take into account panel supporting both PSR and
-	 * Panel replay?
-	 */
-
 	/*
 	 * If sink don't have specific granularity requirements set legacy
 	 * ones.
 	 */
-	if (!(intel_dp_get_su_capability(intel_dp) &
-	      DP_PSR2_SU_GRANULARITY_REQUIRED)) {
+	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
 		/* As PSR2 HW sends full lines, we do not care about x granularity */
 		w = 4;
 		y = 4;
 		goto exit;
 	}
 
-	r = drm_dp_dpcd_read(&intel_dp->aux,
-			     intel_dp_get_su_x_granularity_offset(intel_dp),
-			     &w, 2);
+	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, 2);
 	if (r != 2)
 		drm_dbg_kms(display->drm,
 			    "Unable to read selective update x granularity\n");
@@ -567,9 +524,7 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	if (r != 2 || w == 0)
 		w = 4;
 
-	r = drm_dp_dpcd_read(&intel_dp->aux,
-			     intel_dp_get_su_y_granularity_offset(intel_dp),
-			     &y, 1);
+	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_Y_GRANULARITY, &y, 1);
 	if (r != 1) {
 		drm_dbg_kms(display->drm,
 			    "Unable to read selective update y granularity\n");
@@ -579,8 +534,8 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 		y = 1;
 
 exit:
-	intel_dp->psr.su_w_granularity = w;
-	intel_dp->psr.su_y_granularity = y;
+	connector->dp.psr_caps.su_w_granularity = w;
+	connector->dp.psr_caps.su_y_granularity = y;
 }
 
 static enum intel_panel_replay_dsc_support
@@ -621,7 +576,33 @@ static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_supp
 	};
 }
 
-static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
+static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
+						 struct intel_connector *connector)
+{
+	u16 w;
+	u8 y;
+
+	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+	       DP_PANEL_REPLAY_SU_GRANULARITY_REQUIRED)) {
+		w = 4;
+		y = 4;
+		goto exit;
+	}
+
+	/*
+	 * Spec says that if the value read is 0 the default granularity should
+	 * be used instead.
+	 */
+	w = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;
+
+	y = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
+
+exit:
+	connector->dp.panel_replay_caps.su_w_granularity = w;
+	connector->dp.panel_replay_caps.su_y_granularity = y;
+}
+
+static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
@@ -657,9 +638,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
-	    DP_PANEL_REPLAY_SU_SUPPORT)
+	    DP_PANEL_REPLAY_SU_SUPPORT) {
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
+		_panel_replay_compute_su_granularity(intel_dp, connector);
+	}
+
 	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
 
 	drm_dbg_kms(display->drm,
@@ -669,7 +653,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
 }
 
-static void _psr_init_dpcd(struct intel_dp *intel_dp)
+static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
@@ -722,17 +706,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
+
+	if (intel_dp->psr.sink_psr2_support)
+		_psr_compute_su_granularity(intel_dp, connector);
 }
 
-void intel_psr_init_dpcd(struct intel_dp *intel_dp)
+void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
-	_psr_init_dpcd(intel_dp);
+	_psr_init_dpcd(intel_dp, connector);
 
-	_panel_replay_init_dpcd(intel_dp);
-
-	if (intel_dp->psr.sink_psr2_support ||
-	    intel_dp->psr.sink_panel_replay_su_support)
-		intel_dp_get_su_granularity(intel_dp);
+	_panel_replay_init_dpcd(intel_dp, connector);
 }
 
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
@@ -1311,24 +1294,32 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 }
 
 static bool psr2_granularity_check(struct intel_dp *intel_dp,
-				   struct intel_crtc_state *crtc_state)
+				   struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	u16 y_granularity = 0;
+	u16 sink_y_granularity = crtc_state->has_panel_replay ?
+		connector->dp.panel_replay_caps.su_y_granularity :
+		connector->dp.psr_caps.su_y_granularity;
+	u16 sink_w_granularity =  crtc_state->has_panel_replay ?
+		connector->dp.panel_replay_caps.su_w_granularity :
+		connector->dp.psr_caps.su_w_granularity;
 
 	/* PSR2 HW only send full lines so we only need to validate the width */
-	if (crtc_hdisplay % intel_dp->psr.su_w_granularity)
+	if (crtc_hdisplay % sink_w_granularity)
 		return false;
 
-	if (crtc_vdisplay % intel_dp->psr.su_y_granularity)
+	if (crtc_vdisplay % sink_y_granularity)
 		return false;
 
 	/* HW tracking is only aligned to 4 lines */
 	if (!crtc_state->enable_psr2_sel_fetch)
-		return intel_dp->psr.su_y_granularity == 4;
+		return sink_y_granularity == 4;
 
 	/*
 	 * adl_p and mtl platforms have 1 line granularity.
@@ -1336,11 +1327,11 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 	 * to match sink requirement if multiple of 4.
 	 */
 	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
-		y_granularity = intel_dp->psr.su_y_granularity;
-	else if (intel_dp->psr.su_y_granularity <= 2)
+		y_granularity = sink_y_granularity;
+	else if (sink_y_granularity <= 2)
 		y_granularity = 4;
-	else if ((intel_dp->psr.su_y_granularity % 4) == 0)
-		y_granularity = intel_dp->psr.su_y_granularity;
+	else if ((sink_y_granularity % 4) == 0)
+		y_granularity = sink_y_granularity;
 
 	if (y_granularity == 0 || crtc_vdisplay % y_granularity)
 		return false;
@@ -1628,7 +1619,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 }
 
 static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
-					  struct intel_crtc_state *crtc_state)
+					  struct intel_crtc_state *crtc_state,
+					  struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1677,7 +1669,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!psr2_granularity_check(intel_dp, crtc_state)) {
+	if (!psr2_granularity_check(intel_dp, crtc_state, conn_state)) {
 		drm_dbg_kms(display->drm,
 			    "Selective update not enabled, SU granularity not compatible\n");
 		goto unsupported;
@@ -1872,7 +1864,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state,
+								   conn_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 620b359288326..688ca3e73cdda 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -28,7 +28,7 @@ struct intel_plane_state;
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
-void intel_psr_init_dpcd(struct intel_dp *intel_dp);
+void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector);
 void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.43.0

