Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB0B77CE16
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 16:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6F610E252;
	Tue, 15 Aug 2023 14:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EBC10E252
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 14:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692109780; x=1723645780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OcB9vsEvrdwqgiGWe2+OntbZ9HmWCUrRQWtZEUaVsvs=;
 b=BbX8+M9+c7Y26/a+R+ydHVMHB/eVHzGpLgLVvWBSqQeM6224oQTDvVt5
 XWm4JlcqZktXBHesjz7Iq2apyCBCzmcR9tpFytSkPFMIkwG7TfKvzMcv1
 vPWsCMyNrh6KtdgFnYgiouYgefo6wtlpaLwaxnCvM9YyCwJmBTGsty0Au
 6T0pyXctseYj8gcjooyyWR0dJ9dFBJcWYHf5n1X9chRz9x/yWSA9ZuTrL
 TRyswc36Pt7xg+/fQEOrLhYK0JTYFlRg8CIH3EADo0eALZxGCRbfeYKZt
 5kbGwe7seZG6h+Etj3GRI2KdqzwvmNLuCsAzN9ulSx5KrrT1ArSbIBpK7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376021533"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="376021533"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799210059"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="799210059"
Received: from emurares-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:29:19 +0300
Message-Id: <20230815142921.404127-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815142921.404127-1-vinod.govindapillai@intel.com>
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: combine has_audio
 check for DP and DP-MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Combine has_audio check for both DP and DP-MST into a single
function.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 18 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 +--------------
 3 files changed, 13 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 12bd2f322e62..97a14afbcfe8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2170,16 +2170,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
 }
 
-static bool intel_dp_has_audio(struct intel_encoder *encoder,
-			       const struct drm_connector_state *conn_state)
+bool intel_dp_has_audio(struct intel_encoder *encoder,
+			const struct drm_connector_state *conn_state,
+			struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 
-	if (!intel_dp_port_has_audio(i915, encoder->port))
+	if (!intel_dp->is_mst && !intel_dp_port_has_audio(i915, encoder->port))
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
@@ -2240,9 +2241,8 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 
-	pipe_config->sdp_split_enable =
-		intel_dp_has_audio(encoder, conn_state) &&
-		intel_dp_is_uhbr(pipe_config);
+	pipe_config->sdp_split_enable = pipe_config->has_audio &&
+					intel_dp_is_uhbr(pipe_config);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
 		    connector->base.id, connector->name,
@@ -2265,7 +2265,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_pch_encoder = true;
 
 	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
+		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 22099de3ca45..e7b515b685ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -69,6 +69,9 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
+bool intel_dp_has_audio(struct intel_encoder *encoder,
+			const struct drm_connector_state *conn_state,
+			struct intel_dp *intel_dp);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..8881cfd41ee7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -290,19 +290,6 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
-static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
-{
-	const struct intel_digital_connector_state *intel_conn_state =
-		to_intel_digital_connector_state(conn_state);
-	struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
-
-	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return connector->base.display_info.has_audio;
-	else
-		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
-}
-
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -323,7 +310,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->has_pch_encoder = false;
 
 	pipe_config->has_audio =
-		intel_dp_mst_has_audio(conn_state) &&
+		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	/*
-- 
2.34.1

