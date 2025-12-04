Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D20DCA3494
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F5110E922;
	Thu,  4 Dec 2025 10:48:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcqW4nDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173ED10E91F;
 Thu,  4 Dec 2025 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845281; x=1796381281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qty9f/J0oJTU6h3ov5Ej3qlaBzohrFwSm7p2MNbiy5M=;
 b=kcqW4nDCaXDLyKxJGqQxMSkLbyLHE3DkeYkxBd3DI1Dg59oeXg/zJMgn
 3oesrpKLKfb83c6tTeDHXzmXi4uAxfBDL8f+eCwMyi+YeldtrIUhl1zSS
 2jACW3352fuPn/wUjYRHa7/2dxEtMfd1bTi+p0IFe2IdJSkgDtpGYYKIW
 UkpsXf/wuHu6nYDauhPwiGqyCqq6B/9WmHy0wN9ynXkr2Imwn1brLz+YR
 /xus5FKQ64Kd1S/qRN7zP3leXyC6fCAQboury+1grxHMoKkQgAbUT7tIJ
 dNy6gzLXdxy4I6zUvkF92P3Yfj0dC5Zgdtw5AFnuA1MqHFr60TUGi5xS4 Q==;
X-CSE-ConnectionGUID: Qyt9HVZ9QHaNBOos3+Tkhg==
X-CSE-MsgGUID: BGV6OY8aQWG5wJ1gsHIFHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66901798"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66901798"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:48:01 -0800
X-CSE-ConnectionGUID: nKNmQqPlRROC/TrYaQC0wg==
X-CSE-MsgGUID: NA7jXTTXTp2S11hT2DtX5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194018715"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:47:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH v3 2/8] drm/i915/psr: Use SU granularity information available
 in intel_connector
Date: Thu,  4 Dec 2025 12:47:27 +0200
Message-ID: <20251204104733.1106145-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204104733.1106145-1-jouni.hogander@intel.com>
References: <20251204104733.1106145-1-jouni.hogander@intel.com>
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
supporting both PSR and Panel Replay. As panel is informing own
granularities for PSR and Panel Replay they could be different. Let's use
own granularities for PSR and Panel Replay instead of having only one set
for both. This is done by having intel_connector::psr_caps and
panel_replay_caps both containing granularity information.

Also remove complexity of sharing granularity read between PSR and Panel
Replay.

v3:
  - use cpu_to_le16 for default value
v2:
  - use __le16 for two byte values in dpcd
  - use sizeof instead of hardcoded size in reading dpcd
  - drop unnecessarily passing intel_dp pointer

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_psr.c | 151 +++++++++++------------
 drivers/gpu/drm/i915/display/intel_psr.h |   2 +-
 3 files changed, 74 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7df0e5e13688d..dcceb0ae2a56d 100644
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
@@ -6074,7 +6074,7 @@ intel_dp_detect(struct drm_connector *_connector,
 		connector->base.epoch_counter++;
 
 	if (!intel_dp_is_edp(intel_dp))
-		intel_psr_init_dpcd(intel_dp);
+		intel_psr_init_dpcd(intel_dp, connector);
 
 	intel_dp_detect_dsc_caps(intel_dp, connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 15ef3b6caad6e..417a6cd2fca9d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -494,82 +494,37 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
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
-	u16 w;
+	__le16 w;
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
-		w = 4;
+		w = cpu_to_le16(4);
 		y = 4;
 		goto exit;
 	}
 
-	r = drm_dp_dpcd_read(&intel_dp->aux,
-			     intel_dp_get_su_x_granularity_offset(intel_dp),
-			     &w, 2);
-	if (r != 2)
+	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, sizeof(w));
+	if (r != sizeof(w))
 		drm_dbg_kms(display->drm,
 			    "Unable to read selective update x granularity\n");
 	/*
 	 * Spec says that if the value read is 0 the default granularity should
 	 * be used instead.
 	 */
-	if (r != 2 || w == 0)
-		w = 4;
+	if (r != sizeof(w) || w == 0)
+		w = cpu_to_le16(4);
 
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
+	connector->dp.psr_caps.su_w_granularity = le16_to_cpu(w);
+	connector->dp.psr_caps.su_y_granularity = y;
 }
 
 static enum intel_panel_replay_dsc_support
@@ -621,7 +576,32 @@ static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_supp
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
+	w = le16_to_cpu(*(__le16 *)&intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)]) ? : 4;
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
@@ -657,9 +637,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
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
@@ -669,7 +652,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
 }
 
-static void _psr_init_dpcd(struct intel_dp *intel_dp)
+static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
@@ -722,17 +705,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
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
-
-	_panel_replay_init_dpcd(intel_dp);
+	_psr_init_dpcd(intel_dp, connector);
 
-	if (intel_dp->psr.sink_psr2_support ||
-	    intel_dp->psr.sink_panel_replay_su_support)
-		intel_dp_get_su_granularity(intel_dp);
+	_panel_replay_init_dpcd(intel_dp, connector);
 }
 
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
@@ -1304,25 +1286,32 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
-static bool psr2_granularity_check(struct intel_dp *intel_dp,
-				   struct intel_crtc_state *crtc_state)
+static bool psr2_granularity_check(struct intel_crtc_state *crtc_state,
+				   struct intel_connector *connector)
 {
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_display *display = to_intel_display(intel_dp);
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
@@ -1330,11 +1319,11 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
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
@@ -1621,9 +1610,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
-					  struct intel_crtc_state *crtc_state)
+static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
+					  struct drm_connector_state *conn_state)
 {
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (HAS_PSR2_SEL_FETCH(display) &&
@@ -1671,7 +1662,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!psr2_granularity_check(intel_dp, crtc_state)) {
+	if (!psr2_granularity_check(crtc_state, connector)) {
 		drm_dbg_kms(display->drm,
 			    "Selective update not enabled, SU granularity not compatible\n");
 		goto unsupported;
@@ -1866,7 +1857,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(crtc_state, conn_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 024ee4c309852..b41dc4d44ff29 100644
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

