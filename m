Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B941950E8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8AC36E97F;
	Fri, 27 Mar 2020 06:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429CB6E97F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 06:12:33 +0000 (UTC)
IronPort-SDR: Tjd8wWUmCnOUypuoVELBM6dXrfQTLPJjpVVywkdiAcvycJE2Feq0AXKFLmGLwlJ8oQQFs64PqW
 ToqCgmS/3lLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 23:12:33 -0700
IronPort-SDR: keLmMs9d0gg4h8NHEHsB+dUimxUFg2SlKzMpvGk1qylqj90OnOL6v/ysoQ0prXkJBieokLuFn2
 JM7iBdVWZBrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="420987139"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 23:12:31 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:41:05 +0530
Message-Id: <20200327061110.17371-3-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327061110.17371-1-vipin.anand@intel.com>
References: <20200327061110.17371-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/display: Enable HDR on gen9
 devices with MCA Lspcon
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Uma Shankar <uma.shankar@intel.com>

Gen9 hardware supports HDMI2.0 through LSPCON chips.
Extending HDR support for MCA LSPCON based GEN9 devices.

SOC will drive LSPCON as DP and send HDR metadata as standard
DP SDP packets. LSPCON will be set to operate in PCON mode,
will receive the metadata and create Dynamic Range and
Mastering Infoframe (DRM packets) and send it to HDR capable
HDMI sink devices.

v2: Re-used hsw infoframe write implementation for HDR metadata
for LSPCON as per Ville's suggestion.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c | 35 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  5 ++-
 3 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93ac0f296852..9ae2f88cc925 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -577,6 +577,16 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 	return val & mask;
 }
 
+void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
+	const struct intel_crtc_state *crtc_state,
+	unsigned int type,
+	const void *frame, ssize_t len)
+{
+	DRM_DEBUG_KMS("Update HDR metadata for lspcon\n");
+	/* It uses the legacy hsw implementation for the same */
+	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
+}
+
 static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 2e41ae483a23..c5ddabf903d6 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -460,27 +460,42 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    unsigned int type,
 			    const void *frame, ssize_t len)
 {
-	bool ret;
+	bool ret = true;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
 
 	/* LSPCON only needs AVI IF */
-	if (type != HDMI_INFOFRAME_TYPE_AVI)
+	if (!(type == HDMI_INFOFRAME_TYPE_AVI ||
+	      type == HDMI_PACKET_TYPE_GAMUT_METADATA))
 		return;
 
-	if (lspcon->vendor == LSPCON_VENDOR_MCA)
-		ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
-						      frame, len);
-	else
-		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
-							 frame, len);
+	/*
+	 * Supporting HDR on MCA LSPCON
+	 * Todo: Add support for Parade later
+	 */
+	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
+	    lspcon->vendor != LSPCON_VENDOR_MCA)
+		return;
+
+	if (lspcon->vendor == LSPCON_VENDOR_MCA) {
+		if (type == HDMI_INFOFRAME_TYPE_AVI)
+			ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
+							      frame, len);
+		else if (type == HDMI_PACKET_TYPE_GAMUT_METADATA)
+			lspcon_drm_write_infoframe(encoder, crtc_state,
+						   HDMI_PACKET_TYPE_GAMUT_METADATA,
+						   frame, VIDEO_DIP_DATA_SIZE);
+	} else {
+		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux, frame,
+							 len);
+	}
 
 	if (!ret) {
-		DRM_ERROR("Failed to write AVI infoframes\n");
+		DRM_ERROR("Failed to write infoframes\n");
 		return;
 	}
 
-	DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
+	DRM_DEBUG_DRIVER("Infoframes updated successfully\n");
 }
 
 void lspcon_read_infoframe(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 37cfddf8a9c5..b2051f236223 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -34,5 +34,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
 void lspcon_ycbcr420_config(struct drm_connector *connector,
 			    struct intel_crtc_state *crtc_state);
-
+void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,
+				unsigned int type,
+				const void *frame, ssize_t len);
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
