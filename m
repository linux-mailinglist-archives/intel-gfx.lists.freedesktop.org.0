Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC4314FE22
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 16:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7976EAE6;
	Sun,  2 Feb 2020 15:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CA26EAE4;
 Sun,  2 Feb 2020 15:50:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 07:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,394,1574150400"; d="scan'208";a="430899940"
Received: from jghithan-mobl.amr.corp.intel.com (HELO
 helsinki.ger.corp.intel.com) ([10.251.88.23])
 by fmsmga006.fm.intel.com with ESMTP; 02 Feb 2020 07:50:01 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Feb 2020 17:49:37 +0200
Message-Id: <20200202154938.1129610-18-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
References: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/18] drm/i915/dp: Add compute routine for
 DP PSR VSC SDP
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

In order to use a common VSC SDP Colorimetry calculating code on PSR,
it adds a compute routine for PSR VSC SDP.
As PSR routine can not use infoframes.vsc of crtc state, it also adds new
writing of DP SDPs (Secondary Data Packet) for PSR.
PSR routine has its own scenario and timings of writing a VSC SDP.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 53 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  7 ++++
 2 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 02a6d57e8f7f..02da6ce3cc25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2463,6 +2463,42 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &crtc_state->infoframes.vsc);
 }
 
+void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct drm_connector_state *conn_state,
+				  struct intel_dp_vsc_sdp *vsc)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	vsc->sdp_type = DP_SDP_VSC;
+
+	if (dev_priv->psr.psr2_enabled) {
+		if (dev_priv->psr.colorimetry_support &&
+		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
+			/* [PSR2, +Colorimetry] */
+			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
+							 vsc);
+		} else {
+			/*
+			 * [PSR2, -Colorimetry]
+			 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
+			 * 3D stereo + PSR/PSR2 + Y-coordinate.
+			 */
+			vsc->revision = 0x4;
+			vsc->length = 0xe;
+		}
+	} else {
+		/*
+		 * [PSR1]
+		 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
+		 * VSC SDP supporting 3D stereo + PSR (applies to eDP v1.3 or
+		 * higher).
+		 */
+		vsc->revision = 0x2;
+		vsc->length = 0x8;
+	}
+}
+
 static void
 intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_crtc_state *crtc_state,
 					    const struct drm_connector_state *conn_state)
@@ -4889,6 +4925,23 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 	intel_dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
 }
 
+void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    struct intel_dp_vsc_sdp *vsc)
+{
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct dp_sdp sdp = {};
+	ssize_t len;
+
+	len = intel_dp_vsc_sdp_pack(vsc, &sdp, sizeof(sdp));
+
+	if (WARN_ON(len < 0))
+		return;
+
+	intel_dig_port->write_infoframe(encoder, crtc_state, DP_SDP_VSC,
+					&sdp, len);
+}
+
 void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			     bool enable,
 			     const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6d8003eb59f6..fb63e9a2ee78 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -112,6 +112,13 @@ int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_max_data_rate(int max_link_clock, int max_lanes);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
+void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct drm_connector_state *conn_state,
+				  struct intel_dp_vsc_sdp *vsc);
+void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    struct intel_dp_vsc_sdp *vsc);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
