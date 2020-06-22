Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80D320406D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 21:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E106E84A;
	Mon, 22 Jun 2020 19:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BDA6E156
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 19:30:27 +0000 (UTC)
IronPort-SDR: Woza0A71im17JGF/1+lyjPq7p8GvhlE4NJzqBa7Ii9T2y+d3Xo+yzgQ8Cdq92tp1+d4cAO/psF
 Olj9puVY5kCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132287960"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="132287960"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 12:30:27 -0700
IronPort-SDR: +XXAsNZbahprfbRb/yndICmSROC11NvoIa51ibZstvV4L5pIT/+GWCmBdTiO2xzsuQK4TLwhXF
 1+CeNsRkF4Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="292949017"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 12:30:25 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 01:30:34 +0530
Message-Id: <20200622200038.14034-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622200038.14034-1-uma.shankar@intel.com>
References: <20200622200038.14034-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 07/11] drm/i915/display: Implement DRM infoframe
 read for LSPCON
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

Implement Read back of HDR metadata infoframes i.e Dynamic Range
and Mastering Infoframe for LSPCON devices.

v2: Added proper bitmask of enabled infoframes as per Ville's
recommendation.

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
index 0f19eb6c5a6d..58ebcd198d9e 100644
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
