Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA052DE0EF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 11:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C596E0C9;
	Fri, 18 Dec 2020 10:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C15E6E0B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 10:25:56 +0000 (UTC)
IronPort-SDR: 5bEU3HvJO+t7XxcDVkT/1iUaWORmQz+L20n/7xVs7vatdKEcuUh+dF97aeg83riQy9ciNndKuM
 GfJOXAuzyy3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172848379"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="172848379"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:25:56 -0800
IronPort-SDR: h+jbYPIE04OrvWp7o9TwyEZ7p2/WTHA2xFM+QJ0djfYLkXq78Dpvef+CRzVJDnlnidcKh3jFwL
 Dy3Aa92xeuIA==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340335072"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 02:25:53 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:03:37 +0530
Message-Id: <20201218103337.31068-4-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218103337.31068-1-swati2.sharma@intel.com>
References: <20201218103337.31068-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC][PATCH 3/3] drm/i915: Implement readout for AVI
 infoframe SDP
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

In this patch readout for AVI infoframes enclosed in GMP
DIP is implemented.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 74 ++++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d96e69dd2197..4821c96991f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5738,6 +5738,44 @@ intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infofr
 	return ret;
 }
 
+static int
+intel_dp_avi_infoframe_sdp_unpack(union hdmi_infoframe *frame,
+				  const void *buffer, size_t size)
+{
+	int ret;
+
+	const struct dp_sdp *sdp = buffer;
+
+	if (size < sizeof(struct dp_sdp))
+		return -EINVAL;
+
+	if (sdp->sdp_header.HB0 != 0)
+		return -EINVAL;
+
+	if (sdp->sdp_header.HB1 != HDMI_INFOFRAME_TYPE_AVI)
+		return -EINVAL;
+
+	if (sdp->sdp_header.HB2 != 0x1D)
+		return -EINVAL;
+
+	if ((sdp->sdp_header.HB3 & 0x3) != 0)
+		return -EINVAL;
+
+	if (((sdp->sdp_header.HB3 >> 2) & 0x3f) != 0x13)
+		return -EINVAL;
+
+	if (sdp->db[0] != 2)
+		return -EINVAL;
+
+	if (sdp->db[1] != HDMI_AVI_INFOFRAME_SIZE)
+		return -EINVAL;
+
+	ret = hdmi_infoframe_unpack(frame, &sdp->db[2],
+				    HDMI_DRM_INFOFRAME_SIZE);
+
+	return ret;
+}
+
 static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_dp_vsc_sdp *vsc)
@@ -5790,10 +5828,37 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 			    "Failed to unpack DP HDR Metadata Infoframe SDP\n");
 }
 
+static void intel_read_dp_avi_infoframe_sdp(struct intel_encoder *encoder,
+					    struct intel_crtc_state *crtc_state,
+					    union hdmi_infoframe *frame)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	unsigned int type = HDMI_PACKET_TYPE_GAMUT_METADATA;
+	struct dp_sdp sdp = {};
+	int ret;
+
+	if ((crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(type)) == 0)
+		return;
+
+	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
+				 sizeof(sdp));
+
+	ret = intel_dp_avi_infoframe_sdp_unpack(frame, &sdp,
+						sizeof(sdp));
+
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to unpack DP AVI Infoframe SDP\n");
+}
+
 void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type)
 {
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
 	if (encoder->type != INTEL_OUTPUT_DDI)
 		return;
 
@@ -5803,8 +5868,13 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 				      &crtc_state->infoframes.vsc);
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
-							 &crtc_state->infoframes.drm.drm);
+		if (intel_dp_is_hdmi_2_1_sink(intel_dp)) {
+		    intel_read_dp_avi_infoframe_sdp(encoder, crtc_state,
+						    &crtc_state->infoframes.avi);
+		} else {
+		    intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
+							     &crtc_state->infoframes.drm.drm);
+		}
 		break;
 	default:
 		MISSING_CASE(type);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
