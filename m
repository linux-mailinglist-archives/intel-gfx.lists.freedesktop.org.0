Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB056EA99C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCF710EE0D;
	Fri, 21 Apr 2023 11:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E99210EE01
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077692; x=1713613692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UoO7QppN6rhL5yHgdWU9Do12pxo0usvLcUphhQt6vL8=;
 b=YNqnudC330JO+uUlT8mNE5Bl4AFoTiU3DAP6ulDqiK7kXwbPSws9Gndg
 IYIrYGzaQ12kFnsu5RnXQYiTnluhQAU6YuyUAuwOxyj9V9JrE2HzIogEc
 pB8szqO7cwGwvSBiLvCpSnyxbFowLCOtWLAIbEKyrV2+xI0Xz1shf9JSI
 Iu0bS2eu1qlxVJlexOgKCWAN+VAIHYxC1S7N3mls9v1f4ZTk+PsLbaPUy
 wktDejAzrXcd42H71Oa3v66SnDq7ogNlHRGmwB7dHHqAG9t9Z12/tS5B9
 MBVpVOvYqVKxpGwyKf+tzHzNrhFBzP0a8kuwqU9otmsaZf8IaR+R8xfOT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326304820"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="326304820"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694942673"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="694942673"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:42 +0300
Message-Id: <bdf6435c98ebc3c89785ca8227b14b23f16cea95.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/dp: stop caching has_hdmi_sink
 in struct intel_dp
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

Use the information stored in display info. Add intel_dp_has_hdmi_sink()
helper to access it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +++---
 .../drm/i915/display/intel_display_types.h    |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 4 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 29e4bfab4635..9b462dd8bb14 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2800,7 +2800,7 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 
 		/* FIXME precompute everything properly */
 		/* FIXME how do we turn infoframes off again? */
-		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
+		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
 			dig_port->set_infoframes(encoder,
 						 crtc_state->has_infoframe,
 						 crtc_state, conn_state);
@@ -3109,7 +3109,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 	intel_edp_backlight_on(crtc_state, conn_state);
 
-	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
+	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
@@ -3736,7 +3736,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    pipe_config->fec_enable);
 		}
 
-		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
+		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
 			pipe_config->infoframes.enable |=
 				intel_lspcon_infoframes_enabled(encoder, pipe_config);
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9c9b771cbcbd..17681a8e745c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1669,7 +1669,6 @@ struct intel_dp {
 	u8 lane_count;
 	u8 sink_count;
 	bool link_trained;
-	bool has_hdmi_sink;
 	bool reset_link_params;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cda69861b00a..1708277547f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1201,6 +1201,13 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 	}
 }
 
+bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	return connector->base.display_info.is_hdmi;
+}
+
 static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *pipe_config)
 {
@@ -1265,7 +1272,7 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 
 	for (; bpc >= 8; bpc -= 2) {
 		if (intel_hdmi_bpc_possible(crtc_state, bpc,
-					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
+					    intel_dp_has_hdmi_sink(intel_dp), ycbcr420_output) &&
 		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
 					      respect_downstream_limits) == MODE_OK)
 			return bpc;
@@ -2646,7 +2653,7 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
 {
 	if (drm_dp_is_branch(intel_dp->dpcd) &&
-	    intel_dp->has_hdmi_sink &&
+	    intel_dp_has_hdmi_sink(intel_dp) &&
 	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
 		return true;
 
@@ -2812,13 +2819,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 	if (!drm_dp_is_branch(intel_dp->dpcd))
 		return;
 
-	tmp = intel_dp->has_hdmi_sink ?
-		DP_HDMI_DVI_OUTPUT_CONFIG : 0;
+	tmp = intel_dp_has_hdmi_sink(intel_dp) ? DP_HDMI_DVI_OUTPUT_CONFIG : 0;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_0, tmp) != 1)
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
-			    str_enable_disable(intel_dp->has_hdmi_sink));
+			    str_enable_disable(intel_dp_has_hdmi_sink(intel_dp)));
 
 	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
 		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
@@ -4711,9 +4717,6 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
 
 	/* FIXME: Get rid of drm_edid_raw() */
 	edid = drm_edid_raw(drm_edid);
-	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
-		intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
-	}
 
 	drm_dp_cec_set_edid(&intel_dp->aux, edid);
 }
@@ -4727,8 +4730,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 	drm_edid_free(connector->detect_edid);
 	connector->detect_edid = NULL;
 
-	intel_dp->has_hdmi_sink = false;
-
 	intel_dp->dfp.max_bpc = 0;
 	intel_dp->dfp.max_dotclock = 0;
 	intel_dp->dfp.min_tmds_clock = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329..803b0822c661 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -62,6 +62,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
+bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
-- 
2.39.2

