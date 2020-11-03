Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EA22A48A5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990636ECBE;
	Tue,  3 Nov 2020 14:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5296ECB9
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:54:16 +0000 (UTC)
IronPort-SDR: hNIFlrp+/2Uzz9OkbvTw6vNnAq6suH+GsEs3I1FP3/zJF0h/N+xGVqkktvVzEg+axktI7m07o0
 RH6EnRVbwJCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230690800"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230690800"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:16 -0800
IronPort-SDR: vs6H/qjsuvH0Cgd/M2gzFhsjxs0wTduEQVf7EV4NYrgoLdeQCvC1EEnS3vH3gUH5n+Y7bfWTcg
 cLDF8T0OZ4GQ==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470824284"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:14 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:58:24 +0530
Message-Id: <20201103152834.12727-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v9 02/12] drm/i915/display: Enable HDR on gen9 devices
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

v4: Addressed Ville's review comments, removed redundant wrapper
and checks, passed arguments instead of hardcodings.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   |  8 +++---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 31 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  4 +++
 3 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f90838bc74fb..8e4b820b715a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -518,10 +518,10 @@ static u32 vlv_infoframes_enabled(struct intel_encoder *encoder,
 		      VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
 }
 
-static void hsw_write_infoframe(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state,
-				unsigned int type,
-				const void *frame, ssize_t len)
+void hsw_write_infoframe(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 unsigned int type,
+			 const void *frame, ssize_t len)
 {
 	const u32 *data = frame;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 076b21885a30..46565ae555b1 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -446,27 +446,32 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    unsigned int type,
 			    const void *frame, ssize_t len)
 {
-	bool ret;
+	bool ret = true;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
 
-	/* LSPCON only needs AVI IF */
-	if (type != HDMI_INFOFRAME_TYPE_AVI)
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
+		drm_dbg_kms(encoder->base.dev, "Update HDR metadata for lspcon\n");
+		/* It uses the legacy hsw implementation for the same */
+		hsw_write_infoframe(encoder, crtc_state, type, frame, len);
+		break;
+	default:
 		return;
-
-	if (lspcon->vendor == LSPCON_VENDOR_MCA)
-		ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
-						      frame, len);
-	else
-		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
-							 frame, len);
+	}
 
 	if (!ret) {
-		DRM_ERROR("Failed to write AVI infoframes\n");
+		DRM_ERROR("Failed to write infoframes\n");
 		return;
 	}
-
-	DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
 }
 
 void lspcon_read_infoframe(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index a19b3564c635..98043ba50dd4 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -32,5 +32,9 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 			   const struct drm_connector_state *conn_state);
 u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
+void hsw_write_infoframe(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 unsigned int type,
+			 const void *frame, ssize_t len);
 
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
