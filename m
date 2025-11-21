Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE78C78BA6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEDA10E85C;
	Fri, 21 Nov 2025 11:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkiJiXcL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A542B10E856;
 Fri, 21 Nov 2025 11:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723840; x=1795259840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AGdyzY3axaW9wjgkavMvmdglFdOZTmTCmNXmVxi3FRc=;
 b=WkiJiXcLsDPzhx+kk1yXBPUKEajfiUiwJzg4J34U0HXrxSolCHPWPbST
 zg+QlR+6BeVutrWayP5x1Etwk4ss2YcRaiBUp1v+0KzmAGnZAC7AwF5pV
 qFBKCNkPuH9dE/yG0as4w+GQPjzE7YXqUDbC8izlU0OeNRgLnW0LkSw9o
 kRsppnIas+2mQIcdy3QZcSlf3b5MBE92e9USY2WIlASbMOBd43SPdDYgZ
 jzS6w0a2k0TrhArXdHvQEZHno0wwZEAEi7ovp4EudqAn/zTfGFWajE39n
 BO5siq3Na1eS82qCHp7fOkxhUNANWwe86SF11WO7t7WzpCPmIqdcewPxz w==;
X-CSE-ConnectionGUID: 2roYv2fFTdiiXPYtqg1FNA==
X-CSE-MsgGUID: BEzGKtCsSvGT/D37fer5GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845528"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845528"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:20 -0800
X-CSE-ConnectionGUID: aFxLD3klTuqJ8ZyEjPuPPQ==
X-CSE-MsgGUID: 1UddusaaTeaEXAr2aBwTXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801998"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:19 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/8] drm/i915/psr: Move Panel Replay DSC sink support data to
 intel_connector
Date: Fri, 21 Nov 2025 13:16:53 +0200
Message-ID: <20251121111655.164830-7-jouni.hogander@intel.com>
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
related data into intel_connector. Move Panel Replay DSC sink support data
as well into intel_connector.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    | 15 ++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c          | 13 +++++++------
 3 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8587d2c527f72..e1d47496ea4de 100644
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
 		} dsc_branch_caps;
 
 		struct {
+			enum intel_panel_replay_dsc_support dsc_support;
+
 			u16 su_w_granularity;
 			u16 su_y_granularity;
 		} panel_replay_caps;
@@ -967,12 +975,6 @@ struct intel_csc_matrix {
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
@@ -1744,7 +1746,6 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool sink_panel_replay_su_support;
-	enum intel_panel_replay_dsc_support sink_panel_replay_dsc_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7195c408d93ab..d32f476c288c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6053,7 +6053,7 @@ intel_dp_detect(struct drm_connector *_connector,
 		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
-		intel_dp->psr.sink_panel_replay_dsc_support =
+		connector->dp.panel_replay_caps.dsc_support =
 			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
 		intel_dp_mst_disconnect(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b488be8c917dc..4bae39f745ea0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -644,13 +644,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		_panel_replay_compute_su_granularity(intel_dp, connector);
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
@@ -1659,7 +1659,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 			goto unsupported;
 
 		if (intel_dsc_enabled_on_link(crtc_state) &&
-		    intel_dp->psr.sink_panel_replay_dsc_support !=
+		    connector->dp.panel_replay_caps.dsc_support !=
 		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
 			drm_dbg_kms(display->drm,
 				    "Selective update with Panel Replay not enabled because it's not supported with DSC\n");
@@ -1756,7 +1756,7 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
 	}
 
 	if (intel_dsc_enabled_on_link(crtc_state) &&
-	    intel_dp->psr.sink_panel_replay_dsc_support ==
+	    connector->dp.panel_replay_caps.dsc_support ==
 	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
 		drm_dbg_kms(display->drm,
 			    "Panel Replay not enabled because it's not supported with DSC\n");
@@ -1841,6 +1841,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!psr_global_enabled(intel_dp)) {
@@ -1872,7 +1873,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/* Only used for state verification. */
-	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
+	crtc_state->panel_replay_dsc_support = connector->dp.panel_replay_caps.dsc_support;
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
 								    crtc_state,
 								    conn_state);
@@ -4144,7 +4145,7 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
 	seq_printf(m, ", Panel Replay DSC support = %s",
-		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
+		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
 	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
-- 
2.43.0

