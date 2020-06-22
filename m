Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BA52036C0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC9D6E503;
	Mon, 22 Jun 2020 12:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089E96E503
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:18 +0000 (UTC)
IronPort-SDR: CB71/3yn8D465tN4cKK3YkogkUq8LtuBK9t7y5uPr6rtrNHHPD7Q8tQQ0Z9m/F+gtUfqoNb7Mr
 jQ9JnQ/9uaRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="228402387"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="228402387"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:17 -0700
IronPort-SDR: cj3Xfg/OBECCvKIQHOM0K4JArq4kLISGlkBsiD/9dc7cP2tCmhC7MOOwio2tr/si1C+RR0Wv7Y
 CwKhBg95MM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832559"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:21 +0530
Message-Id: <20200622130029.28667-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
References: <20200622130029.28667-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 02/10] drm/i915/display: Enable HDR on gen9 devices
 with MCA Lspcon
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

Gen9 hardware supports HDMI2.0 through LSPCON chips.
Extending HDR support for MCA LSPCON based GEN9 devices.

SOC will drive LSPCON as DP and send HDR metadata as standard
DP SDP packets. LSPCON will be set to operate in PCON mode,
will receive the metadata and create Dynamic Range and
Mastering Infoframe (DRM packets) and send it to HDR capable
HDMI sink devices.

v2: Re-used hsw infoframe write implementation for HDR metadata
for LSPCON as per Ville's suggestion.

v3: Addressed Jani Nikula's review comments.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c | 37 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  5 ++-
 3 files changed, 40 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a31a98d26882..53103ef72a58 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -590,6 +590,16 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 	return val & mask;
 }
 
+void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,
+				unsigned int type,
+				const void *frame, ssize_t len)
+{
+	drm_dbg_kms(encoder->base.dev, "Update HDR metadata for lspcon\n");
+	/* It uses the legacy hsw implementation for the same */
+	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
+}
+
 static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 70bd564cae46..95d29c379076 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -461,27 +461,42 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    unsigned int type,
 			    const void *frame, ssize_t len)
 {
-	bool ret;
+	bool ret = true;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
 
-	/* LSPCON only needs AVI IF */
-	if (type != HDMI_INFOFRAME_TYPE_AVI)
+	/*
+	 * Supporting HDR on MCA LSPCON
+	 * Todo: Add support for Parade later
+	 */
+	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
+	    lspcon->vendor != LSPCON_VENDOR_MCA)
 		return;
 
-	if (lspcon->vendor == LSPCON_VENDOR_MCA)
-		ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
-						      frame, len);
-	else
-		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
-							 frame, len);
+	switch (type) {
+	case HDMI_INFOFRAME_TYPE_AVI:
+		if (lspcon->vendor == LSPCON_VENDOR_MCA)
+			ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
+							      frame, len);
+		else
+			ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
+								 frame, len);
+		break;
+	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		lspcon_drm_write_infoframe(encoder, crtc_state,
+					   HDMI_PACKET_TYPE_GAMUT_METADATA,
+					   frame, VIDEO_DIP_DATA_SIZE);
+		break;
+	default:
+		return;
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
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
