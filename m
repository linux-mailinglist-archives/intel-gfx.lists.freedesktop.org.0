Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD52C9EB66
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B578F10E75A;
	Wed,  3 Dec 2025 10:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vc86+zyy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE2910E77D;
 Wed,  3 Dec 2025 10:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757920; x=1796293920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tmwGRpdz/lB9eVbgy29bgn1B6xBMV7ybsAmCmN2dOBs=;
 b=Vc86+zyyYEaN+mExOWl9I4nSg856vfhHBDYZSkte0XT3VUqT60LIRkA3
 9JngUUZFBaoMw72IQcPFZoBxTbCA+qsY5Ber24acxLkeYPVXb0rg76YLy
 y5ZRn849PMuk6je1/DvTJKo5JVTUoTuOXqC9BYjktF42aO5PSirHRkKyT
 XUNNzspfqLiBXn+ZTxFVkwM+vTmY+YP/pwke1cF3gK+6w4oamy+oleKHZ
 cW/rOq2NITw4yfG0UtzO5bGEFqt/LMpjhHOsqR39OBw4vB2KWR6JWssoA
 y/i6ese+hUGkRAtOw8c9t3A9RIn7Txp1ePWY4GmePYL6qef1bEw0luYKh w==;
X-CSE-ConnectionGUID: +zny9Pi1RmWrDECHXoUpkw==
X-CSE-MsgGUID: DQxs4kgnS4m5DuiEcL3bqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912126"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912126"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:32:00 -0800
X-CSE-ConnectionGUID: NZmq6rHhTM+aM9gkuYFwlA==
X-CSE-MsgGUID: xM5v64PQTCurjvpBMtR8Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657411"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/8] drm/i915/psr: Move Panel Replay DSC sink support data
 to intel_connector
Date: Wed,  3 Dec 2025 12:31:32 +0200
Message-ID: <20251203103134.1054430-7-jouni.hogander@intel.com>
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
related data into intel_connector. Move Panel Replay DSC sink support data
as well into intel_connector.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   | 15 ++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++--------
 3 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 659bd62f0ad18..b5641698db695 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -509,6 +509,12 @@ struct intel_hdcp {
 	bool force_hdcp14;
 };
 
+enum intel_panel_replay_dsc_support {
+	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
+	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
+	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
+};
+
 struct intel_connector {
 	struct drm_connector base;
 	/*
@@ -566,6 +572,8 @@ struct intel_connector {
 			u8 dpcd[DP_PANEL_REPLAY_CAP_SIZE];
 #define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
 
+			enum intel_panel_replay_dsc_support dsc_support;
+
 			u16 su_w_granularity;
 			u16 su_y_granularity;
 		} panel_replay_caps;
@@ -969,12 +977,6 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
-enum intel_panel_replay_dsc_support {
-	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
-	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
-	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
-};
-
 struct scaler_filter_coeff {
 	u16 sign;
 	u16 exp;
@@ -1746,7 +1748,6 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool sink_panel_replay_su_support;
-	enum intel_panel_replay_dsc_support sink_panel_replay_dsc_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3838835e7e7eb..8c5ddf0b09d25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6059,7 +6059,7 @@ intel_dp_detect(struct drm_connector *_connector,
 		       sizeof(connector->dp.panel_replay_caps.dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
-		intel_dp->psr.sink_panel_replay_dsc_support =
+		connector->dp.panel_replay_caps.dsc_support =
 			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
 		intel_dp_mst_disconnect(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5fc2279cb8b7f..1d3864405c850 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -643,13 +643,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		_panel_replay_compute_su_granularity(connector);
 	}
 
-	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(connector);
+	connector->dp.panel_replay_caps.dsc_support = compute_pr_dsc_support(connector);
 
 	drm_dbg_kms(display->drm,
 		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
 		    intel_dp->psr.sink_panel_replay_su_support ?
 		    "selective_update " : "",
-		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
+		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
@@ -1651,7 +1651,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
 			goto unsupported;
 
 		if (intel_dsc_enabled_on_link(crtc_state) &&
-		    intel_dp->psr.sink_panel_replay_dsc_support !=
+		    connector->dp.panel_replay_caps.dsc_support !=
 		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
 			drm_dbg_kms(display->drm,
 				    "Selective update with Panel Replay not enabled because it's not supported with DSC\n");
@@ -1748,7 +1748,7 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
 	}
 
 	if (intel_dsc_enabled_on_link(crtc_state) &&
-	    intel_dp->psr.sink_panel_replay_dsc_support ==
+	    connector->dp.panel_replay_caps.dsc_support ==
 	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
 		drm_dbg_kms(display->drm,
 			    "Panel Replay not enabled because it's not supported with DSC\n");
@@ -1833,6 +1833,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!psr_global_enabled(intel_dp)) {
@@ -1864,9 +1865,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/* Only used for state verification. */
-	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
-	crtc_state->has_panel_replay = _panel_replay_compute_config(crtc_state,
-								    conn_state);
+	crtc_state->panel_replay_dsc_support = connector->dp.panel_replay_caps.dsc_support;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(crtc_state, conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state, conn_state);
@@ -4134,7 +4134,7 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
 	seq_printf(m, ", Panel Replay DSC support = %s",
-		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
+		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 	if (connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
-- 
2.43.0

