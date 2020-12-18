Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950A52DE0EE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 11:25:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86A86E0B8;
	Fri, 18 Dec 2020 10:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F416E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 10:25:53 +0000 (UTC)
IronPort-SDR: anIyBbXJ+du4lJ4FtVGjZzO6J9XH4l09XZnD4wW6kX4+JDYhUScdIYuCT07v8g6lazn72R7P8v
 Q4QK73ob9r1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172848375"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="172848375"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:25:53 -0800
IronPort-SDR: e7pFX9TItxOtLUvO6JHsTXx6lRgiWgwFZxOp/lZlvblXd2xUOwkcRUAdJ4QjhPhZOA9hCmIQYN
 d+yUgUuNKDnA==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340335061"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 02:25:50 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:03:36 +0530
Message-Id: <20201218103337.31068-3-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218103337.31068-1-swati2.sharma@intel.com>
References: <20201218103337.31068-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC][PATCH 2/3] drm/i915: Sending AVI infoframe
 through GMP DIP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP does not support sending AVI info frame to panel. So we need to
send AVI info frame to HDMI through some other DIP.

When DP-to-HDMI protocol converter is present GMP DIP will be used
to send AVI infoframe instead of static HDR infoframes.

While VESA spec indicates support within PCON to built AVI IF, it
gives better control with source sending the infoframe by itself as
per HDMI/CTA spec. Minimum of version 3 need to be used for VIC >= 128
(i.e. for 8k mode as an example).

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++++------
 1 file changed, 100 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a776e7f809b4..d96e69dd2197 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2779,6 +2779,22 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static void
+intel_dp_compute_avi_infoframe_sdp(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (!intel_hdmi_compute_avi_infoframe(encoder, crtc_state, conn_state)) {
+		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
+		return;
+	}
+
+	crtc_state->infoframes.enable |=
+		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
+}
+
 static void
 intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 			     struct intel_crtc_state *pipe_config,
@@ -2807,6 +2823,38 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 			       constant_n, pipe_config->fec_enable);
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
@@ -2894,7 +2942,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
@@ -4043,28 +4097,6 @@ static int intel_dp_pcon_set_frl_mask(int max_frl)
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
 #define PCON_EXTENDED_TRAIN_MODE (1 > 0)
@@ -4136,16 +4168,6 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
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
@@ -5470,12 +5492,51 @@ intel_dp_hdr_metadata_infoframe_sdp_pack(const struct hdmi_drm_infoframe *drm_in
 	return sizeof(struct dp_sdp_header) + 2 + HDMI_DRM_INFOFRAME_SIZE;
 }
 
+static ssize_t
+intel_dp_avi_infoframe_sdp_pack(const union hdmi_infoframe *frame,
+				struct dp_sdp *sdp, size_t size)
+{
+	size_t length = sizeof(struct dp_sdp);
+	const int infoframe_size = HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE;
+	unsigned char buf[HDMI_INFOFRAME_HEADER_SIZE + HDMI_DRM_INFOFRAME_SIZE];
+	ssize_t len;
+
+	if (size < length)
+		return -ENOSPC;
+
+	memset(sdp, 0, size);
+
+	len = hdmi_infoframe_pack_only(frame, buf, sizeof(buf));
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
+	sdp->sdp_header.HB1 = frame->avi.type;
+	sdp->sdp_header.HB2 = 0x1D;
+	sdp->sdp_header.HB3 = (0x13 << 2);
+	sdp->db[0] = frame->avi.version;
+	sdp->db[1] = frame->avi.length;
+
+	BUILD_BUG_ON(sizeof(sdp->db) < HDMI_DRM_INFOFRAME_SIZE + 2);
+	memcpy(&sdp->db[2], &buf, HDMI_DRM_INFOFRAME_SIZE);
+
+	return sizeof(struct dp_sdp_header) + 2 + HDMI_DRM_INFOFRAME_SIZE;
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
 
@@ -5489,8 +5550,12 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 					    sizeof(sdp));
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		len = intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state->infoframes.drm.drm,
-							       &sdp, sizeof(sdp));
+		if (intel_dp_is_hdmi_2_1_sink(intel_dp))
+			len = intel_dp_avi_infoframe_sdp_pack(&crtc_state->infoframes.avi, &sdp,
+							      sizeof(sdp));
+		else
+			len = intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state->infoframes.drm.drm,
+								       &sdp, sizeof(sdp));
 		break;
 	default:
 		MISSING_CASE(type);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
