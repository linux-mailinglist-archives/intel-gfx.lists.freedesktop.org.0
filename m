Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2AFC78B9A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753A510E858;
	Fri, 21 Nov 2025 11:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ko1sSLpW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380F110E851;
 Fri, 21 Nov 2025 11:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723837; x=1795259837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+cKB6ViQmUeIu4l/YcSyHM+bpS1xCNDAzRn/IPFK3CI=;
 b=ko1sSLpWnUQrRJjRq4JV1BvDdEk6g6mo8jwACHuhyIhwVWBlQibz4F6P
 wtdI9Jm8ttRYrtelFLk4O+us5d5BUNvbQirVAr8JAIGJQUqAN6PfnrykJ
 7clO2Fcn50jOsi6IMBlmteJCDQAMMLGJN+IJk0N1VCAO50ZU8Vil+82oH
 0PM6jpss70YZXkCOR3sqbLdjpEG+0qzJ6jASoaDyCKulO3aHt5h34oGkL
 EoSknbJr82d/xUJ2lqQZIuNgu+ETcjbFAbgFrfOxLRIR5+Q7ajwrhcy6d
 ejWVt32JkGPy8A7lrAqKkG+/TT/QoKOMmMg9Iy8xCxDE60j8TG2vlUHxA w==;
X-CSE-ConnectionGUID: BV+qjwsrQeqUWUio8M0Gfg==
X-CSE-MsgGUID: 2ovs4hJIQEinb4AUeURAIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845526"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845526"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:17 -0800
X-CSE-ConnectionGUID: wwnle3fvRSCC3JOvhJjuvg==
X-CSE-MsgGUID: ZAdnpMmRRk+z7MrhMaqNQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801990"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:15 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/8] drm/i915/psr: Move pr_dpcd and psr_dpcd to intel_connector
Date: Fri, 21 Nov 2025 13:16:51 +0200
Message-ID: <20251121111655.164830-5-jouni.hogander@intel.com>
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

As a preparation for MST Panel Replay we need to move Panel Replay sink
related data into intel_connector. Move pr_dpcd as well into
intel_connector. Generally this is more correct place for this data so move
psr_dpcd as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 85 ++++++++++---------
 2 files changed, 49 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d8a222689a35b..8587d2c527f72 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -548,6 +548,9 @@ struct intel_connector {
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
 		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
+		u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
+		u8 pr_dpcd[DP_PANEL_REPLAY_CAP_SIZE];
+#define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
@@ -1768,9 +1771,6 @@ struct intel_dp {
 	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
-	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
-	u8 pr_dpcd[DP_PANEL_REPLAY_CAP_SIZE];
-#define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
 
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d2ba39423826..b488be8c917dc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -506,7 +506,7 @@ static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
 	 * If sink don't have specific granularity requirements set legacy
 	 * ones.
 	 */
-	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
+	if (!(connector->dp.psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
 		/* As PSR2 HW sends full lines, we do not care about x granularity */
 		w = 4;
 		y = 4;
@@ -539,12 +539,12 @@ static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
 }
 
 static enum intel_panel_replay_dsc_support
-compute_pr_dsc_support(struct intel_dp *intel_dp)
+compute_pr_dsc_support(struct intel_connector *connector)
 {
 	u8 pr_dsc_mode;
 	u8 val;
 
-	val = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
+	val = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
 	pr_dsc_mode = REG_FIELD_GET8(DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK, val);
 
 	switch (pr_dsc_mode) {
@@ -582,7 +582,7 @@ static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
 	u16 w;
 	u8 y;
 
-	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+	if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
 	       DP_PANEL_REPLAY_SU_GRANULARITY_REQUIRED)) {
 		w = 4;
 		y = 4;
@@ -593,9 +593,9 @@ static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
 	 * Spec says that if the value read is 0 the default granularity should
 	 * be used instead.
 	 */
-	w = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;
+	w = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;
 
-	y = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
+	y = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
 
 exit:
 	connector->dp.panel_replay_caps.su_w_granularity = w;
@@ -612,11 +612,11 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		return;
 
 	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
-				    &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
+				    &connector->dp.pr_dpcd, sizeof(connector->dp.pr_dpcd));
 	if (ret < 0)
 		return;
 
-	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+	if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	      DP_PANEL_REPLAY_SUPPORT))
 		return;
 
@@ -627,7 +627,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 			return;
 		}
 
-		if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+		if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 		      DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
 			drm_dbg_kms(display->drm,
 				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
@@ -637,14 +637,14 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 
 	intel_dp->psr.sink_panel_replay_support = true;
 
-	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_SU_SUPPORT) {
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
 		_panel_replay_compute_su_granularity(intel_dp, connector);
 	}
 
-	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
+	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(connector);
 
 	drm_dbg_kms(display->drm,
 		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
@@ -658,16 +658,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
 
-	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
-				    sizeof(intel_dp->psr_dpcd));
+	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, connector->dp.psr_dpcd,
+				    sizeof(connector->dp.psr_dpcd));
 	if (ret < 0)
 		return;
 
-	if (!intel_dp->psr_dpcd[0])
+	if (!connector->dp.psr_dpcd[0])
 		return;
 
 	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
-		    intel_dp->psr_dpcd[0]);
+		    connector->dp.psr_dpcd[0]);
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PSR)) {
 		drm_dbg_kms(display->drm,
@@ -686,8 +686,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 		intel_dp_get_sink_sync_latency(intel_dp);
 
 	if (DISPLAY_VER(display) >= 9 &&
-	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
-		bool y_req = intel_dp->psr_dpcd[1] &
+	    connector->dp.psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
+		bool y_req = connector->dp.psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
 
 		/*
@@ -755,7 +755,8 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
-static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay)
+static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, struct intel_connector *connector,
+				    bool panel_replay)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -764,9 +765,9 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 		return false;
 
 	return panel_replay ?
-		intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+		connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 		DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
+		connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
@@ -1369,16 +1370,18 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 }
 
 static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
+					struct drm_connector_state *conn_state,
 					const struct drm_display_mode *adjusted_mode)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	int psr_setup_time = drm_dp_psr_setup_time(connector->dp.psr_dpcd);
 	int entry_setup_frames = 0;
 
 	if (psr_setup_time < 0) {
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
-			    intel_dp->psr_dpcd[1]);
+			    connector->dp.psr_dpcd[1]);
 		return -ETIME;
 	}
 
@@ -1623,6 +1626,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 
 	if (HAS_PSR2_SEL_FETCH(display) &&
 	    !intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
@@ -1676,7 +1680,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 	}
 
 	crtc_state->enable_psr2_su_region_et =
-		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+		psr2_su_region_et_valid(intel_dp, connector, crtc_state->has_panel_replay);
 
 	return true;
 
@@ -1686,7 +1690,8 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 }
 
 static bool _psr_compute_config(struct intel_dp *intel_dp,
-				struct intel_crtc_state *crtc_state)
+				struct intel_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
@@ -1701,7 +1706,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->vrr.enable)
 		return false;
 
-	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, adjusted_mode);
+	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, conn_state, adjusted_mode);
 
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
@@ -1715,15 +1720,15 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_connector *connector)
 {
-	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+	return (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
 		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
 }
 
-static bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+static bool compute_disable_as_sdp_when_pr_active(struct intel_connector *connector)
 {
-	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+	return !(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
 		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
 }
 
@@ -1758,8 +1763,8 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(intel_dp);
-	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(intel_dp);
+	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
+	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -1873,7 +1878,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
-		_psr_compute_config(intel_dp, crtc_state);
+		_psr_compute_config(intel_dp, crtc_state, conn_state);
 
 	if (!crtc_state->has_psr)
 		return;
@@ -4123,6 +4128,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 }
 
 static void intel_psr_sink_capability(struct intel_dp *intel_dp,
+				      struct intel_connector *connector,
 				      struct seq_file *m)
 {
 	struct intel_psr *psr = &intel_dp->psr;
@@ -4131,15 +4137,15 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 		   str_yes_no(psr->sink_support));
 
 	if (psr->sink_support)
-		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	if (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
+		seq_printf(m, " [0x%02x]", connector->dp.psr_dpcd[0]);
+	if (connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
 		seq_printf(m, " (Early Transport)");
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
 	seq_printf(m, ", Panel Replay DSC support = %s",
 		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
-	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
 	seq_printf(m, "\n");
@@ -4177,7 +4183,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 		seq_printf(m, "  %s\n", psr->no_psr_reason);
 }
 
-static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
+static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
+			    struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -4186,7 +4193,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	bool enabled;
 	u32 val, psr2_ctl;
 
-	intel_psr_sink_capability(intel_dp, m);
+	intel_psr_sink_capability(intel_dp, connector, m);
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -4302,7 +4309,7 @@ static int i915_edp_psr_status_show(struct seq_file *m, void *data)
 	if (!intel_dp)
 		return -ENODEV;
 
-	return intel_psr_status(m, intel_dp);
+	return intel_psr_status(m, intel_dp, intel_dp->attached_connector);
 }
 DEFINE_SHOW_ATTRIBUTE(i915_edp_psr_status);
 
@@ -4436,7 +4443,7 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = m->private;
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
-	return intel_psr_status(m, intel_dp);
+	return intel_psr_status(m, intel_dp, connector);
 }
 DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 
-- 
2.43.0

