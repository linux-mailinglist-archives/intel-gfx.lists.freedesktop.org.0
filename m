Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C40C3EB12F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB5D6E558;
	Fri, 13 Aug 2021 07:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8126E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509523"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509523"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727794"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:19 +0530
Message-Id: <20210813070121.48530-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Implement readout for AVI
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swati Sharma <swati2.sharma@intel.com>

In this patch readout for AVI infoframes enclosed in GMP
DIP is implemented.

v2:
-Added new case for AVI infoframe in intel_dp_read_sdp, and a call
to test AVI infoframe during ddi_get_config (Gwan-gyeong Mun).
-Used AVI infoframe unpack only to avoid parsing the header twice
(Ankit).
-Added new infoframes_enabled function for DP with HDMI2.1 as branched
device (Ankit).

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  4 +
 drivers/gpu/drm/i915/display/intel_dp.c  | 98 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h  |  3 +
 3 files changed, 104 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d8162951b78f..7c0c689d4ce2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3576,6 +3576,9 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
 			pipe_config->infoframes.enable |=
 				intel_lspcon_infoframes_enabled(encoder, pipe_config);
+		else if (intel_dp_is_hdmi_2_1_sink(&dig_port->dp))
+			pipe_config->infoframes.enable |=
+			intel_dp_hdmi_21_infoframes_enabled(encoder, pipe_config);
 		else
 			pipe_config->infoframes.enable |=
 				intel_hdmi_infoframes_enabled(encoder, pipe_config);
@@ -3677,6 +3680,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
+	intel_read_dp_sdp(encoder, pipe_config, HDMI_INFOFRAME_TYPE_AVI);
 
 	intel_psr_get_config(encoder, pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2990a9e78a9d..66595931e548 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1676,7 +1676,7 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 	return max_frl_rate;
 }
 
-static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
+bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
 {
 	if (drm_dp_is_branch(intel_dp->dpcd) &&
 	    intel_dp->has_hdmi_sink &&
@@ -3044,6 +3044,44 @@ intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infofr
 	return ret;
 }
 
+static int
+intel_dp_avi_infoframe_sdp_unpack(struct hdmi_avi_infoframe *frame,
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
+	ret = hdmi_avi_infoframe_unpack_only(frame, &sdp->db[2],
+					     HDMI_AVI_INFOFRAME_SIZE);
+
+	return ret;
+}
+
 static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_dp_vsc_sdp *vsc)
@@ -3095,19 +3133,59 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 			    "Failed to unpack DP HDR Metadata Infoframe SDP\n");
 }
 
+static void intel_read_dp_avi_infoframe_sdp(struct intel_encoder *encoder,
+					    struct intel_crtc_state *crtc_state,
+					    struct hdmi_avi_infoframe *frame)
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
+	struct intel_dp *intel_dp;
+
+	if (!intel_encoder_is_dig_port(encoder))
+		return;
+
+	intel_dp = enc_to_intel_dp(encoder);
+
 	switch (type) {
 	case DP_SDP_VSC:
 		intel_read_dp_vsc_sdp(encoder, crtc_state,
 				      &crtc_state->infoframes.vsc);
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		if (intel_dp_is_hdmi_2_1_sink(intel_dp))
+			break;
 		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
 							 &crtc_state->infoframes.drm.drm);
 		break;
+	case HDMI_INFOFRAME_TYPE_AVI:
+		if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
+			break;
+		intel_read_dp_avi_infoframe_sdp(encoder, crtc_state,
+						&crtc_state->infoframes.avi.avi);
+		break;
 	default:
 		MISSING_CASE(type);
 		break;
@@ -5525,3 +5603,21 @@ void intel_dp_mst_resume(struct drm_i915_private *dev_priv)
 		}
 	}
 }
+
+u32 intel_dp_hdmi_21_infoframes_enabled(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u32 val, ret = 0;
+
+	/*
+	 * For HDMI2.1 connected via PCON, AVI infoframes are sent via
+	 * GMP SDP packets.
+	 */
+	val = dig_port->infoframes_enabled(encoder, crtc_state);
+
+	if (val & VIDEO_DIP_ENABLE_GMP_HSW)
+		ret |= intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 680631b5b437..d1ad4c3488f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -128,5 +128,8 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp);
 void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 void intel_dp_phy_test(struct intel_encoder *encoder);
+bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
+u32 intel_dp_hdmi_21_infoframes_enabled(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.25.1

