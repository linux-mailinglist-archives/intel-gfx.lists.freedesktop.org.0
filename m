Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C472C78BA3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA4D10E85A;
	Fri, 21 Nov 2025 11:17:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGqIpuqy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717AF10E85B;
 Fri, 21 Nov 2025 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723842; x=1795259842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RwcHM8+6BpLm+TENBOuYkjtdVKuto6K6cJErET28cNw=;
 b=JGqIpuqyI46KvfgF77rAydyv9tG7iiLB8NbVuwBXG1xwxVspkf0VzUmc
 A3ZskYgbzyq9jX3aptkAP7gdtKxCBKe6Q0/wYGkMeaUobSQBKx8UR2w99
 ULfhr0zUCVGje1BdLe8xP8UZr3E+rPLZ9wIL+j+rpPquDwuHPcNdebQzF
 U1HwVlDDrxBu4TH/b+mlN4ugZ+FykuRG/+tKEg12qQYvSzTMs5QuDyM8a
 n1Wi5j8BNj79Vfu0EpWECV+QpP1OMSEAm58jfAWS/GLu3gIHpfGVfmbj4
 fiHvwTsunZtnhlpclHAK/QzhS4gv4a/uU3Iq0iKHsa3lz2JgoWcFspdL0 w==;
X-CSE-ConnectionGUID: ySJyndKPTdKHMvFBez0b0g==
X-CSE-MsgGUID: xCDSZbPyRvCg83gRNlS8pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845533"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845533"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:22 -0800
X-CSE-ConnectionGUID: mNxA4JQIR6CP2kKn5BFjtw==
X-CSE-MsgGUID: 49tlAlzXTT+xswi3h5zVaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196802004"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:20 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 7/8] drm/i915/psr: Move sink PSR and Panel Replay booleans to
 intel_connector
Date: Fri, 21 Nov 2025 13:16:54 +0200
Message-ID: <20251121111655.164830-8-jouni.hogander@intel.com>
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
related data into intel_connector. Move sink support booleans as well
into intel_connector. Generally this is more correct place for this data so
move PSR versions as well.

Still sink_support and sink_panel_replay_support are kept to keep CAN_PSR
and CAN_PANEL_REPLAY macros.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 44 +++++++++++--------
 3 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e1d47496ea4de..04d21333130f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -572,6 +572,8 @@ struct intel_connector {
 		} dsc_branch_caps;
 
 		struct {
+			bool support;
+			bool su_support;
 			enum intel_panel_replay_dsc_support dsc_support;
 
 			u16 su_w_granularity;
@@ -579,6 +581,9 @@ struct intel_connector {
 		} panel_replay_caps;
 
 		struct {
+			bool support;
+			bool su_support;
+
 			u16 su_w_granularity;
 			u16 su_y_granularity;
 		} psr_caps;
@@ -1729,7 +1734,6 @@ struct intel_psr {
 	bool active;
 	struct work_struct work;
 	unsigned int busy_frontbuffer_bits;
-	bool sink_psr2_support;
 	bool link_standby;
 	bool sel_update_enabled;
 	bool psr2_sel_fetch_enabled;
@@ -1745,7 +1749,6 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
-	bool sink_panel_replay_su_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d32f476c288c1..2452302937c73 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6052,10 +6052,12 @@ intel_dp_detect(struct drm_connector *_connector,
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
 		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
-		intel_dp->psr.sink_panel_replay_su_support = false;
+		connector->dp.panel_replay_caps.support = false;
+		connector->dp.panel_replay_caps.su_support = false;
 		connector->dp.panel_replay_caps.dsc_support =
 			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
+
 		intel_dp_mst_disconnect(intel_dp);
 
 		intel_dp_tunnel_disconnect(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4bae39f745ea0..e6268d692f89d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -635,11 +635,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		}
 	}
 
+	connector->dp.panel_replay_caps.support = true;
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_SU_SUPPORT) {
-		intel_dp->psr.sink_panel_replay_su_support = true;
+		connector->dp.panel_replay_caps.su_support = true;
 
 		_panel_replay_compute_su_granularity(intel_dp, connector);
 	}
@@ -648,7 +649,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 
 	drm_dbg_kms(display->drm,
 		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
-		    intel_dp->psr.sink_panel_replay_su_support ?
+		    connector->dp.panel_replay_caps.su_support ?
 		    "selective_update " : "",
 		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 }
@@ -681,7 +682,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 		return;
 	}
 
+	connector->dp.psr_caps.support = true;
 	intel_dp->psr.sink_support = true;
+
 	intel_dp->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
@@ -701,13 +704,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req &&
+		connector->dp.psr_caps.su_support = y_req &&
 			intel_alpm_aux_wake_supported(intel_dp);
 		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
-			    intel_dp->psr.sink_psr2_support ? "" : "not ");
+			    connector->dp.psr_caps.su_support ? "" : "not ");
 	}
 
-	if (intel_dp->psr.sink_psr2_support)
+	if (connector->dp.psr_caps.su_support)
 		_psr_compute_su_granularity(intel_dp, connector);
 }
 
@@ -1522,14 +1525,16 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
 }
 
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
-				    struct intel_crtc_state *crtc_state)
+				    struct intel_crtc_state *crtc_state,
+				    struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
 
-	if (!intel_dp->psr.sink_psr2_support || display->params.enable_psr == 1)
+	if (!connector->dp.psr_caps.su_support || display->params.enable_psr == 1)
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
@@ -1642,7 +1647,8 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
+	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state,
+								      conn_state))
 		goto unsupported;
 
 	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
@@ -1655,7 +1661,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		if (DISPLAY_VER(display) < 14)
 			goto unsupported;
 
-		if (!intel_dp->psr.sink_panel_replay_su_support)
+		if (!connector->dp.panel_replay_caps.su_support)
 			goto unsupported;
 
 		if (intel_dsc_enabled_on_link(crtc_state) &&
@@ -1744,6 +1750,9 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!connector->dp.panel_replay_caps.support)
+		return false;
+
 	if (!panel_replay_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "Panel Replay disabled by flag\n");
 		return false;
@@ -4128,22 +4137,19 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	seq_printf(m, "Source PSR/PanelReplay status: %s [0x%08x]\n", status, val);
 }
 
-static void intel_psr_sink_capability(struct intel_dp *intel_dp,
-				      struct intel_connector *connector,
+static void intel_psr_sink_capability(struct intel_connector *connector,
 				      struct seq_file *m)
 {
-	struct intel_psr *psr = &intel_dp->psr;
-
 	seq_printf(m, "Sink support: PSR = %s",
-		   str_yes_no(psr->sink_support));
+		   str_yes_no(connector->dp.psr_caps.support));
 
-	if (psr->sink_support)
+	if (connector->dp.psr_caps.support)
 		seq_printf(m, " [0x%02x]", connector->dp.psr_dpcd[0]);
 	if (connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
 		seq_printf(m, " (Early Transport)");
-	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(connector->dp.panel_replay_caps.support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
-		   str_yes_no(psr->sink_panel_replay_su_support));
+		   str_yes_no(connector->dp.panel_replay_caps.su_support));
 	seq_printf(m, ", Panel Replay DSC support = %s",
 		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
@@ -4194,9 +4200,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
 	bool enabled;
 	u32 val, psr2_ctl;
 
-	intel_psr_sink_capability(intel_dp, connector, m);
+	intel_psr_sink_capability(connector, m);
 
-	if (!(psr->sink_support || psr->sink_panel_replay_support))
+	if (!(connector->dp.psr_caps.support || connector->dp.panel_replay_caps.support))
 		return 0;
 
 	wakeref = intel_display_rpm_get(display);
-- 
2.43.0

