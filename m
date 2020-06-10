Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E91F5B69
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 20:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69506E839;
	Wed, 10 Jun 2020 18:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EC66E839
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 18:42:45 +0000 (UTC)
IronPort-SDR: jGOcrGXRDAIczzWbN5kCmkVzcOF2tw6apGRE0cxJTNdA8IT+UPDD5qNnZ0dzLbQg92m63F0l3n
 wP1KtVDwuz5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:42:45 -0700
IronPort-SDR: PeMT+8mrR7RXsKYAuBFeGVic8JByFwgbuunW7gRV74KUEEFg7iioFCRyj7k2zYA8trZGMl0RWF
 zm3aPuDciVrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="473530201"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2020 11:42:43 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 00:42:31 +0530
Message-Id: <20200610191232.11620-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 7/8] drm/i915/display: Implement DRM infoframe read
 for LSPCON
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

Implement Read back of HDR metadata infoframes i.e Dynamic Range
and Mastering Infoframe for LSPCON devices.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c |  6 +++++-
 drivers/gpu/drm/i915/display/intel_lspcon.h |  4 ++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 53103ef72a58..786378442dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -600,6 +600,16 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
 	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
 }
 
+void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       unsigned int type,
+			       void *frame, ssize_t len)
+{
+	drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");
+	/* It uses the legacy hsw implementation for the same */
+	hsw_read_infoframe(encoder, crtc_state, type, frame, len);
+}
+
 static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 0ebe9a700291..8d1bd2da1e73 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -501,7 +501,11 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
 			   unsigned int type,
 			   void *frame, ssize_t len)
 {
-	/* FIXME implement this */
+	/* FIXME implement for AVI Infoframe as well */
+	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA)
+		lspcon_drm_read_infoframe(encoder, crtc_state,
+					  HDMI_PACKET_TYPE_GAMUT_METADATA,
+					  frame, VIDEO_DIP_DATA_SIZE);
 }
 
 /* HDMI HDR Colorspace Spec Definitions */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index b2051f236223..68d2d835bd86 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -38,4 +38,8 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				unsigned int type,
 				const void *frame, ssize_t len);
+void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       unsigned int type,
+			       void *frame, ssize_t len);
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
