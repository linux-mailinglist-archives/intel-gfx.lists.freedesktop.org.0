Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B59780AF2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9C810E4F9;
	Fri, 18 Aug 2023 11:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F3F10E4F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357616; x=1723893616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkIezMQ6i0py9+goHFmub85pRJwg50GE9JgNOjaftBQ=;
 b=m/8ZN5HolHDO3tBiROEla1591yzUYfIJi8AgRELFd0IK/qAzY3mvZ1gz
 cWudByqYrmLdSQiCSjCHzqeJSYvgEpV5W9lO3bVDsnja9ZDbHPMfnkbTB
 170EA+nFfIdayDcuGmxjHhHbQz92nbNN+9ogF5wmlLGR9BI1jTMwcJehi
 jRYYeKWENYYoJDfAIFnzDOG2LA4FPCXhDcZjq+0UYp7C3AC1vHQQO/XqD
 RaFa6ftPc1TFXLKTlDSklf1XQKVKD2EJbP1v7r8B3294WhIIgCCyOVMgT
 Adr7Hc1B7726F2EbqbkFDoyGuYCMKaqhkVMQPk3kiYC7NCf7N1QS++PMR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370538222"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370538222"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728579597"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728579597"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:14 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:19:50 +0300
Message-Id: <20230818111950.128992-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230818111950.128992-1-vinod.govindapillai@intel.com>
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915/display: configure SDP split
 for DP-MST
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

Extend the SDP split audio config for DP-MST

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++-----------------
 3 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ee9b9e05c26..c1364b164df7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2234,7 +2234,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
-static void
+void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 22099de3ca45..62aacc89c45d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -65,6 +65,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
+void intel_dp_audio_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..1645e9c1392e 100644
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
@@ -322,10 +309,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	pipe_config->has_audio =
-		intel_dp_mst_has_audio(conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	/*
 	 * for MST we always configure max link bw - the spec doesn't
 	 * seem to suggest we should do otherwise.
@@ -388,6 +371,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
 	return 0;
@@ -792,6 +777,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG);
 
+	intel_audio_sdp_split_update(pipe_config);
+
 	intel_enable_transcoder(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
-- 
2.34.1

