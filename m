Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C25C9EB69
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA86310E77D;
	Wed,  3 Dec 2025 10:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="drsSr0m6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DDF10E778;
 Wed,  3 Dec 2025 10:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757922; x=1796293922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cVOJ3gpTCArZy4ysFOEZaaLxP9t8wx0gZYw5sKCLKmI=;
 b=drsSr0m6A8ErzAyzXv8X9qg8eJOgdwyH3emOgVj5EJqPsWiUad/ut47I
 7ef5DzC64ePzytq3AjdV+MFPxrZKZnyTH1kwEtgZcNMuJ/gnc3kmxyjpB
 j8Ktxr2cgL+TAwjhS84cT+/Fh6sElGejMf/G9oZhHlBnfHrC62MQKx+2J
 fKkwgvsiQ11jR0ELa9sBM0zUoC5/dgKKhoC+gUlkHmcweVZgznKj9mWEb
 vbct7HAMg4sLwQUV2/lxBCb+UzevGwL9ISlVKgFtNsNnDZI6UFfefclvQ
 cS53Ib8FlUC6/6yiSsBCtxgEkxvd9g2Z7HsPH+EQIfnAKjQJVKVLCgFW+ Q==;
X-CSE-ConnectionGUID: ErQ+Q9jcS8aNYEZbr9Npcg==
X-CSE-MsgGUID: tziAhfVATgS7szgKBdM8DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912127"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912127"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:32:02 -0800
X-CSE-ConnectionGUID: dw4d7hW1QXCtdzSscOsqyQ==
X-CSE-MsgGUID: UOvfMG/YQ7iAZtA+K4Izbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657431"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:32:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/8] drm/i915/psr: Move sink PSR and Panel Replay booleans
 to intel_connector
Date: Wed,  3 Dec 2025 12:31:33 +0200
Message-ID: <20251203103134.1054430-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203103134.1054430-1-jouni.hogander@intel.com>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
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
and CAN_PANEL_REPLAY macros. Plan is to keep them that way as they are
widely used from patch where connector is not available.

Later we might want to clear intel_dp->psr.sink_panel_replay_support if any
of the devices in branch is not supporting Panel Replay (mst).

v2:
  - commit message updated
  - Extra w/s removed

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 44 +++++++++++--------
 3 files changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b5641698db695..fb1c8b2d3979f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -572,6 +572,8 @@ struct intel_connector {
 			u8 dpcd[DP_PANEL_REPLAY_CAP_SIZE];
 #define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
 
+			bool support;
+			bool su_support;
 			enum intel_panel_replay_dsc_support dsc_support;
 
 			u16 su_w_granularity;
@@ -581,6 +583,9 @@ struct intel_connector {
 		struct {
 			u8 dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
 
+			bool support;
+			bool su_support;
+
 			u16 su_w_granularity;
 			u16 su_y_granularity;
 		} psr_caps;
@@ -1731,7 +1736,6 @@ struct intel_psr {
 	bool active;
 	struct work_struct work;
 	unsigned int busy_frontbuffer_bits;
-	bool sink_psr2_support;
 	bool link_standby;
 	bool sel_update_enabled;
 	bool psr2_sel_fetch_enabled;
@@ -1747,7 +1751,6 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
-	bool sink_panel_replay_su_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8c5ddf0b09d25..4419954867455 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6058,7 +6058,8 @@ intel_dp_detect(struct drm_connector *_connector,
 		memset(connector->dp.panel_replay_caps.dpcd, 0,
 		       sizeof(connector->dp.panel_replay_caps.dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
-		intel_dp->psr.sink_panel_replay_su_support = false;
+		connector->dp.panel_replay_caps.support = false;
+		connector->dp.panel_replay_caps.su_support = false;
 		connector->dp.panel_replay_caps.dsc_support =
 			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1d3864405c850..c01e06f9cf643 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -634,11 +634,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		}
 	}
 
+	connector->dp.panel_replay_caps.support = true;
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_SU_SUPPORT) {
-		intel_dp->psr.sink_panel_replay_su_support = true;
+		connector->dp.panel_replay_caps.su_support = true;
 
 		_panel_replay_compute_su_granularity(connector);
 	}
@@ -647,7 +648,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 
 	drm_dbg_kms(display->drm,
 		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
-		    intel_dp->psr.sink_panel_replay_su_support ?
+		    connector->dp.panel_replay_caps.su_support ?
 		    "selective_update " : "",
 		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 }
@@ -680,7 +681,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 		return;
 	}
 
+	connector->dp.psr_caps.support = true;
 	intel_dp->psr.sink_support = true;
+
 	intel_dp->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
@@ -700,13 +703,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
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
 
@@ -1514,14 +1517,16 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
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
@@ -1634,7 +1639,8 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
 		goto unsupported;
 	}
 
-	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
+	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state,
+								      conn_state))
 		goto unsupported;
 
 	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
@@ -1647,7 +1653,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
 		if (DISPLAY_VER(display) < 14)
 			goto unsupported;
 
-		if (!intel_dp->psr.sink_panel_replay_su_support)
+		if (!connector->dp.panel_replay_caps.su_support)
 			goto unsupported;
 
 		if (intel_dsc_enabled_on_link(crtc_state) &&
@@ -1736,6 +1742,9 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!connector->dp.panel_replay_caps.support)
+		return false;
+
 	if (!panel_replay_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "Panel Replay disabled by flag\n");
 		return false;
@@ -4117,22 +4126,19 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
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
 		seq_printf(m, " [0x%02x]", connector->dp.psr_caps.dpcd[0]);
 	if (connector->dp.psr_caps.dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
 		seq_printf(m, " (Early Transport)");
-	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(connector->dp.panel_replay_caps.support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
-		   str_yes_no(psr->sink_panel_replay_su_support));
+		   str_yes_no(connector->dp.panel_replay_caps.su_support));
 	seq_printf(m, ", Panel Replay DSC support = %s",
 		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 	if (connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
@@ -4183,9 +4189,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
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

