Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 179DD2CBFC6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 15:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FFE6EA6D;
	Wed,  2 Dec 2020 14:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195526EA55;
 Wed,  2 Dec 2020 14:31:38 +0000 (UTC)
IronPort-SDR: auJ/2VK4cuwYRcE1PeiDqJOd65f2Z2ewCQF/0Ze2x2wEWqO6l1RwKs1LkCqsWTEfdKFawxefXQ
 RVmMmRNNA3lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="257733919"
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="257733919"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 06:31:17 -0800
IronPort-SDR: 5SFiBf85iGL7hmWwiM018qmp3SmOpdFcJhYUN71wEaJQI+KIpK4pDgAiMm0Akn3Jy2drwLEFVK
 VWcVrC6VJMyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="373191714"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by orsmga007.jf.intel.com with ESMTP; 02 Dec 2020 06:31:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 19:54:05 +0530
Message-Id: <20201202142405.14951-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202142405.14951-1-ankit.k.nautiyal@intel.com>
References: <20201202142405.14951-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v3 13/13] drm/i915/display: Configure PCON for
 DSC1.1 to DSC1.2 encoding
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When a source supporting DSC1.1 is connected to DSC1.2 HDMI2.1 sink
via DP HDMI2.1 PCON, the PCON can be configured to decode the
DSC1.1 compressed stream and encode to DSC1.2. It then sends the
DSC1.2 compressed stream to the HDMI2.1 sink.

This patch configures the PCON for DSC1.1 to DSC1.2 encoding, based
on the PCON's DSC encoder capablities and HDMI2.1 sink's DSC decoder
capabilities.

v2: Addressed review comments from Uma Shankar:
-fixed the error in packing pps parameter values
-added check for pcon in the pcon related function
-appended display in commit message

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c  | 117 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h  |   2 +
 3 files changed, 118 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1c2fdaa4f81a..c2bc18ee5641 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3652,6 +3652,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
 
 	intel_dp_check_frl_training(intel_dp, crtc_state);
+	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
 
 	/*
 	 * 7.i Follow DisplayPort specification training sequence (see notes for
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e3da73499e5a..87a335084056 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4035,9 +4035,21 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct drm_connector *connector = &intel_connector->base;
+	int max_frl_rate;
+	int max_lanes, rate_per_lane;
+	int max_dsc_lanes, dsc_rate_per_lane;
 
-	return (connector->display_info.hdmi.max_frl_rate_per_lane *
-		connector->display_info.hdmi.max_lanes);
+	max_lanes = connector->display_info.hdmi.max_lanes;
+	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
+	max_frl_rate = max_lanes * rate_per_lane;
+
+	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
+		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
+		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
+		max_frl_rate = min(max_frl_rate, max_dsc_lanes * dsc_rate_per_lane);
+	}
+
+	return max_frl_rate;
 }
 
 static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
@@ -4167,6 +4179,105 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp,
 	}
 }
 
+static int
+intel_dp_pcon_dsc_enc_slice_height(const struct intel_crtc_state *crtc_state)
+{
+
+	int vactive = crtc_state->hw.adjusted_mode.vdisplay;
+
+	return intel_hdmi_dsc_get_slice_height(vactive);
+}
+
+static int
+intel_dp_pcon_dsc_enc_slices(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	int hdmi_throughput = connector->display_info.hdmi.dsc_cap.clk_per_slice;
+	int hdmi_max_slices = connector->display_info.hdmi.dsc_cap.max_slices;
+	int pcon_max_slices = drm_dp_pcon_dsc_max_slices(intel_dp->pcon_dsc_dpcd);
+	int pcon_max_slice_width = drm_dp_pcon_dsc_max_slice_width(intel_dp->pcon_dsc_dpcd);
+
+
+	return intel_hdmi_dsc_get_num_slices(crtc_state, pcon_max_slices,
+					     pcon_max_slice_width,
+					     hdmi_max_slices, hdmi_throughput);
+}
+
+static int
+intel_dp_pcon_dsc_enc_bpp(struct intel_dp *intel_dp,
+			  const struct intel_crtc_state *crtc_state,
+			  int num_slices, int slice_width)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	int output_format = crtc_state->output_format;
+	bool hdmi_all_bpp = connector->display_info.hdmi.dsc_cap.all_bpp;
+	int pcon_fractional_bpp = drm_dp_pcon_dsc_bpp_incr(intel_dp->pcon_dsc_dpcd);
+	int hdmi_max_chunk_bytes =
+		connector->display_info.hdmi.dsc_cap.total_chunk_kbytes * 1024;
+
+	return intel_hdmi_dsc_get_bpp(pcon_fractional_bpp, slice_width,
+				      num_slices, output_format, hdmi_all_bpp,
+				      hdmi_max_chunk_bytes);
+}
+
+void
+intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)
+{
+	u8 pps_param[6];
+	int slice_height;
+	int slice_width;
+	int num_slices;
+	int bits_per_pixel;
+	int ret;
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_connector *connector;
+	bool hdmi_is_dsc_1_2;
+
+	if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
+		return;
+
+	if (!intel_connector)
+		return;
+	connector = &intel_connector->base;
+	hdmi_is_dsc_1_2 = connector->display_info.hdmi.dsc_cap.v_1p2;
+
+	if (!drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) ||
+	    !hdmi_is_dsc_1_2)
+		return;
+
+	slice_height = intel_dp_pcon_dsc_enc_slice_height(crtc_state);
+	if (!slice_height)
+		return;
+
+	num_slices = intel_dp_pcon_dsc_enc_slices(intel_dp, crtc_state);
+	if (!num_slices)
+		return;
+
+	slice_width = DIV_ROUND_UP(crtc_state->hw.adjusted_mode.hdisplay,
+				   num_slices);
+
+	bits_per_pixel = intel_dp_pcon_dsc_enc_bpp(intel_dp, crtc_state,
+						  num_slices, slice_width);
+	if (!bits_per_pixel)
+		return;
+
+	pps_param[0] = slice_height & 0xFF;
+	pps_param[1] = slice_height >> 8;
+	pps_param[2] = slice_width & 0xFF;
+	pps_param[3] = slice_width >> 8;
+	pps_param[4] = bits_per_pixel & 0xFF;
+	pps_param[5] = (bits_per_pixel >> 8) & 0x3;
+
+	ret = drm_dp_pcon_pps_override_param(&intel_dp->aux, pps_param);
+	if (ret < 0)
+		drm_dbg_kms(&i915->drm, "Failed to set pcon DSC\n");
+}
+
 static void
 g4x_set_link_train(struct intel_dp *intel_dp,
 		   const struct intel_crtc_state *crtc_state,
@@ -4298,6 +4409,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 	intel_dp_configure_protocol_converter(intel_dp);
 	intel_dp_check_frl_training(intel_dp, pipe_config);
+	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
 	intel_dp_start_link_train(intel_dp, pipe_config);
 	intel_dp_stop_link_train(intel_dp, pipe_config);
 
@@ -6257,6 +6369,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 			continue;
 
 		intel_dp_check_frl_training(intel_dp, crtc_state);
+		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
 		intel_dp_start_link_train(intel_dp, crtc_state);
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b4a14646caea..9bba920b8197 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -146,5 +146,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 
 void intel_dp_check_frl_training(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
+void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
