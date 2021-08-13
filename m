Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5923EB12C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984046E544;
	Fri, 13 Aug 2021 07:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470036E544
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509497"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509497"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727774"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:17 +0530
Message-Id: <20210813070121.48530-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Sending AVI infoframe through
 GMP DIP
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

From: Swati Sharma <swati2.sharma@intel.com>

DP does not support sending AVI info frame to panel. So we need to
send AVI info frame to HDMI through some other DIP.

When DP-to-HDMI protocol converter is present GMP DIP will be used
to send AVI infoframe instead of static HDR infoframes.

While VESA spec indicates support within PCON to built AVI IF, it
gives better control with source sending the infoframe by itself as
per HDMI/CTA spec. Minimum of version 3 need to be used for VIC >= 128
(i.e. for 8k mode as an example).

v2:
-Added the case for AVI infoframe type in intel_write_sdp (Gwan-gyeong Mun)
-Used the type AVI infoframe instead of GMP in crtc_state, and only used
type GMP while writing infoframe (Gwan-gyeong Mun).
-Avoided writing the AVI infoframe Header twice in sdp packet (Ankit).
-Corrected the buffer size for AVI infoframe packing (Ankit).

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 142 ++++++++++++++++++------
 1 file changed, 109 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75d4ebc66941..2990a9e78a9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1603,6 +1603,17 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static void
+intel_dp_compute_avi_infoframe_sdp(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (!intel_hdmi_compute_avi_infoframe(encoder, crtc_state, conn_state))
+		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
+}
+
 static void
 intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 			     struct intel_crtc_state *pipe_config,
@@ -1643,6 +1654,38 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 		pipe_config->dp_m2_n2.gmch_m *= pipe_config->splitter.link_count;
 }
 
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	int max_frl_rate;
+	int max_lanes, rate_per_lane;
+	int max_dsc_lanes, dsc_rate_per_lane;
+
+	max_lanes = connector->display_info.hdmi.max_lanes;
+	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
+	max_frl_rate = max_lanes * rate_per_lane;
+
+	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
+		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
+		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
+		if (max_dsc_lanes && dsc_rate_per_lane)
+			max_frl_rate = min(max_frl_rate, max_dsc_lanes * dsc_rate_per_lane);
+	}
+
+	return max_frl_rate;
+}
+
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
+{
+	if (drm_dp_is_branch(intel_dp->dpcd) &&
+	    intel_dp->has_hdmi_sink &&
+	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
+		return true;
+
+	return false;
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -1754,7 +1797,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_drrs_compute_config(intel_dp, pipe_config, output_bpp,
 				     constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
-	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
+
+	if (intel_dp_is_hdmi_2_1_sink(intel_dp)) {
+		pipe_config->has_infoframe = true;
+		intel_dp_compute_avi_infoframe_sdp(encoder, pipe_config, conn_state);
+	} else {
+		intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
+	}
 
 	return 0;
 }
@@ -2016,28 +2065,6 @@ static int intel_dp_pcon_set_frl_mask(int max_frl)
 	return 0;
 }
 
-static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
-{
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_connector *connector = &intel_connector->base;
-	int max_frl_rate;
-	int max_lanes, rate_per_lane;
-	int max_dsc_lanes, dsc_rate_per_lane;
-
-	max_lanes = connector->display_info.hdmi.max_lanes;
-	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
-	max_frl_rate = max_lanes * rate_per_lane;
-
-	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
-		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
-		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
-		if (max_dsc_lanes && dsc_rate_per_lane)
-			max_frl_rate = min(max_frl_rate, max_dsc_lanes * dsc_rate_per_lane);
-	}
-
-	return max_frl_rate;
-}
-
 static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 {
 #define TIMEOUT_FRL_READY_MS 500
@@ -2108,16 +2135,6 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	return 0;
 }
 
-static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
-{
-	if (drm_dp_is_branch(intel_dp->dpcd) &&
-	    intel_dp->has_hdmi_sink &&
-	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
-		return true;
-
-	return false;
-}
-
 void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -2771,12 +2788,60 @@ intel_dp_hdr_metadata_infoframe_sdp_pack(const struct hdmi_drm_infoframe *drm_in
 	return sizeof(struct dp_sdp_header) + 2 + HDMI_DRM_INFOFRAME_SIZE;
 }
 
+static ssize_t
+intel_dp_avi_infoframe_sdp_pack(const struct hdmi_avi_infoframe *avi_infoframe,
+				struct dp_sdp *sdp, size_t size)
+{
+	size_t length = sizeof(struct dp_sdp);
+	const int infoframe_size = HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE;
+	unsigned char buf[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
+	ssize_t len;
+
+	if (size < length)
+		return -ENOSPC;
+
+	memset(sdp, 0, size);
+
+	len = hdmi_avi_infoframe_pack_only(avi_infoframe, buf, sizeof(buf));
+	if (len < 0) {
+		DRM_DEBUG_KMS("buffer size is smaller than avi infoframe\n");
+		return -ENOSPC;
+	}
+
+	if (len != infoframe_size) {
+		DRM_DEBUG_KMS("wrong avi infoframe size\n");
+		return -ENOSPC;
+	}
+
+	sdp->sdp_header.HB0 = 0;
+	sdp->sdp_header.HB1 = avi_infoframe->type;
+	sdp->sdp_header.HB2 = 0x1D;
+	sdp->sdp_header.HB3 = (0x13 << 2);
+	sdp->db[0] = avi_infoframe->version;
+	sdp->db[1] = avi_infoframe->length;
+
+	BUILD_BUG_ON(sizeof(sdp->db) < HDMI_AVI_INFOFRAME_SIZE + 2);
+	memcpy(&sdp->db[2], &buf[HDMI_INFOFRAME_HEADER_SIZE], HDMI_AVI_INFOFRAME_SIZE);
+
+	 /*
+	  * Size of DP infoframe sdp packet for AVI Infoframe consists of
+	  * - DP SDP Header(struct dp_sdp_header): 4 bytes
+	  * - Two Data Blocks: 2 bytes
+	  * CTA Header Byte2 (INFOFRAME Version Number)
+	  * CTA Header Byte3 (Length of INFOFRAME)
+	  * HDMI_AVI_INFOFRAME_SIZE: 13 bytes
+	  */
+
+	return sizeof(struct dp_sdp_header) + 2 + HDMI_AVI_INFOFRAME_SIZE;
+}
+
 static void intel_write_dp_sdp(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       unsigned int type)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct dp_sdp sdp = {};
 	ssize_t len;
 
@@ -2790,9 +2855,19 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 					    sizeof(sdp));
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		if (intel_dp_is_hdmi_2_1_sink(intel_dp))
+			break;
 		len = intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state->infoframes.drm.drm,
 							       &sdp, sizeof(sdp));
 		break;
+	case HDMI_INFOFRAME_TYPE_AVI:
+		if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
+			break;
+		len = intel_dp_avi_infoframe_sdp_pack(&crtc_state->infoframes.avi.avi, &sdp,
+						      sizeof(sdp));
+		/* SDP DIP type GMP to be used for AVI Infoframe */
+		type = HDMI_PACKET_TYPE_GAMUT_METADATA;
+		break;
 	default:
 		MISSING_CASE(type);
 		return;
@@ -2850,6 +2925,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
 
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
+	intel_write_dp_sdp(encoder, crtc_state, HDMI_INFOFRAME_TYPE_AVI);
 }
 
 static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
-- 
2.25.1

