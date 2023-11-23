Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 887E47F610E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 15:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB5710E75D;
	Thu, 23 Nov 2023 14:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4053710E75B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 14:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700748482; x=1732284482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+1JxASOo6XIkHqzuQjgSbz6lTmvsY8Oj71QgARGQgvY=;
 b=kzqugS/4GEfvDS6enT62fO/cfNQWBTffpz0kQ5mRMO6xLXmf1ntgLSgM
 1FJH2xNzD/cS1mHkxOnawmQJaIfAOuecUVL24FyFlSR615NgkQv7GbLyC
 mnujwNy2oSvoyLTJRQoj/SgDP6PQcRg1C/yhJyUc0Lq7jYkKrJNScvpyZ
 wKJau9FBdpYYDwcS1akpglYSk+O+EIQoL8a51YEWQjQfKdYrF9On74HYB
 B7NHfCpOHfiypELp44C1WV+t6ID1mRcW/X0N9jC4PYXu1cnHgfQraURUo
 mmAhvvPdjgBBeu5lojWr5gFlpUtHKWDpSVyOsQn/2PR5UbxrDxRGnssfg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5418537"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; 
   d="scan'208";a="5418537"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 06:08:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767213097"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="767213097"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 23 Nov 2023 06:07:59 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 19:32:44 +0530
Message-Id: <20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display/:Compute and enable
 daptive Sync SDP
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

Add necessary functions and register definitions to enable
and compute AS SDP data. The new `intel_dp_compute_as_sdp`
function computes AS SDP values based on the display
configuration, ensuring proper handling of Variable Refresh
Rate (VRR).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 +++++++++--
 drivers/gpu/drm/i915/i915_reg.h           |  6 ++++++
 3 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 39624746d612..b3eb2d342a99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2629,6 +2629,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &crtc_state->infoframes.vsc);
 }
 
+static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
+				    struct intel_crtc_state *crtc_state,
+				     const struct drm_connector_state *conn_state)
+{
+	struct drm_dp_as_sdp *async = &crtc_state->infoframes.async;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	int vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+
+	if (intel_vrr_is_in_range(connector, vrefresh))
+		return;
+
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+	async->sdp_type = DP_SDP_ADAPTIVE_SYNC;
+	async->length = 0x9;
+	async->vmin = crtc_state->vrr.vmin;
+	async->vmax = crtc_state->vrr.vmax;
+	async->target_rr = 0;
+	async->operation_mode = 0x0;
+}
+
 void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state,
@@ -2965,6 +2985,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ab18cfc19c0a..abea359985ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -136,6 +136,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
 		return VIDEO_DIP_ENABLE_GMP_HSW;
 	case DP_SDP_VSC:
 		return VIDEO_DIP_ENABLE_VSC_HSW;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ENABLE_AS_HSW;
 	case DP_SDP_PPS:
 		return VDIP_ENABLE_PPS;
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -163,6 +165,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
+	case DP_SDP_ADAPTIVE_SYNC:
+		return HSW_TVIDEO_DIP_ASYNC_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
 		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -185,6 +189,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	switch (type) {
 	case DP_SDP_VSC:
 		return VIDEO_DIP_VSC_DATA_SIZE;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ASYNC_DATA_SIZE;
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
@@ -555,7 +561,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
-		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
+		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
+		VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
@@ -1209,7 +1216,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
-		 VIDEO_DIP_ENABLE_DRM_GLK);
+		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (!enable) {
 		intel_de_write(dev_priv, reg, val);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..81d64c428693 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2312,6 +2312,7 @@
  * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
  * of the infoframe structure specified by CEA-861. */
 #define   VIDEO_DIP_DATA_SIZE	32
+#define   VIDEO_DIP_ASYNC_DATA_SIZE	32
 #define   VIDEO_DIP_GMP_DATA_SIZE	36
 #define   VIDEO_DIP_VSC_DATA_SIZE	36
 #define   VIDEO_DIP_PPS_DATA_SIZE	132
@@ -2344,6 +2345,7 @@
 #define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
 #define   VSC_DIP_SW_HEA_DATA		(3 << 25)
 #define   VDIP_ENABLE_PPS		(1 << 24)
+#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)
 #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
 #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
 #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 << 12)
@@ -5038,6 +5040,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
 #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484
 #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
 #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
 #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
@@ -5052,6 +5055,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
 #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
 #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
 #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
 #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
 #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
@@ -5078,6 +5082,8 @@
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_ASYNC_DATA(trans, i)	_MMIO_TRANS2(trans,\
+							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
-- 
2.25.1

