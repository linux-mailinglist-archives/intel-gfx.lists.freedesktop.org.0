Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E4914F413
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1076FC0E;
	Fri, 31 Jan 2020 21:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5946FC02;
 Fri, 31 Jan 2020 21:47:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 13:47:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="262691452"
Received: from helsinki.fi.intel.com ([10.237.66.145])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2020 13:47:08 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 23:46:46 +0200
Message-Id: <20200131214701.1085737-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
References: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/18] drm/i915/dp: Add compute routine for DP
 VSC SDP
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It stores computed dp vsc sdp to infoframes.vsc of crtc state.
While computing we'll also fill out the inforames.enable bitmask
appropriately.

The compute routine follows DP 1.4 spec [Table 2-117: VSC SDP Payload for
DB16 through DB18].

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 92 +++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f4dede6253f8..705d36b548b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2372,6 +2372,97 @@ static bool intel_dp_port_has_audio(struct drm_i915_private *dev_priv,
 	return true;
 }
 
+static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc_state,
+					     const struct drm_connector_state *conn_state,
+					     struct intel_dp_vsc_sdp *vsc)
+{
+	/*
+	 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
+	 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
+	 * Colorimetry Format indication.
+	 */
+	vsc->revision = 0x5;
+	vsc->length = 0x13;
+
+	/* DP 1.4a spec, Table 2-120 */
+	switch (crtc_state->output_format) {
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		vsc->colorspace = DP_COLORSPACE_YUV444;
+		break;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		vsc->colorspace = DP_COLORSPACE_YUV420;
+		break;
+	case INTEL_OUTPUT_FORMAT_RGB:
+	default:
+		vsc->colorspace = DP_COLORSPACE_RGB;
+	}
+
+	switch (conn_state->colorspace) {
+	case DRM_MODE_COLORIMETRY_BT709_YCC:
+		vsc->colorimetry = DP_COLORIMETRY_BT709_YCC;
+		break;
+	case DRM_MODE_COLORIMETRY_XVYCC_601:
+		vsc->colorimetry = DP_COLORIMETRY_XVYCC_601;
+		break;
+	case DRM_MODE_COLORIMETRY_XVYCC_709:
+		vsc->colorimetry = DP_COLORIMETRY_XVYCC_709;
+		break;
+	case DRM_MODE_COLORIMETRY_SYCC_601:
+		vsc->colorimetry = DP_COLORIMETRY_SYCC_601;
+		break;
+	case DRM_MODE_COLORIMETRY_OPYCC_601:
+		vsc->colorimetry = DP_COLORIMETRY_OPYCC_601;
+		break;
+	case DRM_MODE_COLORIMETRY_BT2020_CYCC:
+		vsc->colorimetry = DP_COLORIMETRY_BT2020_CYCC;
+		break;
+	case DRM_MODE_COLORIMETRY_BT2020_RGB:
+		vsc->colorimetry = DP_COLORIMETRY_BT2020_RGB;
+		break;
+	case DRM_MODE_COLORIMETRY_BT2020_YCC:
+		vsc->colorimetry = DP_COLORIMETRY_BT2020_YCC;
+		break;
+	case DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65:
+	case DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER:
+		vsc->colorimetry = DP_COLORIMETRY_DCI_P3_RGB;
+		break;
+	default:
+		/*
+		 * RGB->YCBCR color conversion uses the BT.709
+		 * color space.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+			vsc->colorimetry = DP_COLORIMETRY_BT709_YCC;
+		else
+			vsc->colorimetry = DP_COLORIMETRY_DEFAULT;
+		break;
+	}
+
+	vsc->bpc = crtc_state->pipe_bpp / 3;
+	/* all YCbCr are always limited range */
+	vsc->dynamic_range = DP_DYNAMIC_RANGE_CTA;
+	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
+}
+
+static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+				     struct intel_crtc_state *crtc_state,
+				     const struct drm_connector_state *conn_state)
+{
+	struct intel_dp_vsc_sdp *vsc = &crtc_state->infoframes.vsc;
+
+	/* When PSR is enabled, VSC SDP is handled by PSR routine */
+	if (intel_psr_enabled(intel_dp))
+		return;
+
+	if (!intel_dp_needs_vsc_sdp(crtc_state, conn_state))
+		return;
+
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
+	vsc->sdp_type = DP_SDP_VSC;
+	intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
+					 &crtc_state->infoframes.vsc);
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -2477,6 +2568,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_set_clock(encoder, pipe_config);
 
 	intel_psr_compute_config(intel_dp, pipe_config);
+	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 
 	return 0;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
