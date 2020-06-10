Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503281F5B66
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 20:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E29A6E836;
	Wed, 10 Jun 2020 18:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC206E834
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 18:42:39 +0000 (UTC)
IronPort-SDR: G3VNbechS8O1a38+9cnd2sw0augh6oFXQynZCJ4fgLy/ZEmLthp5edlJO3f5H9f49V3GxFO4Gs
 43z8vktIC7tA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:42:39 -0700
IronPort-SDR: fWYrAuuP18MEcQiCQWhYitWh4aA/DUHb4awXNFJI0PfAvMSMy2ozqkexFaPpMiqV3TLd4QO/Mz
 SCHdppuuZncg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="473530169"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2020 11:42:37 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 00:42:28 +0530
Message-Id: <20200610191232.11620-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 4/8] drm/i915/display: Enable BT2020 for HDR on
 LSPCON devices
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

Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
data for HDR using AVI infoframe. LSPCON firmware expects this and though
SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
which transfers the same to HDMI sink.

v2: Dropped state managed in drm core as per Jani Nikula's suggestion.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 7113c2efdab4..10e2823bf1ae 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -507,6 +507,11 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
 	/* FIXME implement this */
 }
 
+/* HDMI HDR Colorspace Spec Definitions */
+#define NORMAL_COLORIMETRY_MASK		0x3
+#define EXTENDED_COLORIMETRY_MASK	0x7
+#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
+
 void lspcon_set_infoframes(struct intel_encoder *encoder,
 			   bool enable,
 			   const struct intel_crtc_state *crtc_state,
@@ -551,6 +556,19 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 					   HDMI_QUANTIZATION_RANGE_LIMITED :
 					   HDMI_QUANTIZATION_RANGE_FULL);
 
+	/*
+	 * Set BT2020 colorspace if driving HDR data
+	 * ToDo: Make this generic and expose all colorspaces for lspcon
+	 */
+	if (lspcon->active && lspcon->hdr_supported) {
+		frame.avi.colorimetry =
+				HDMI_COLORIMETRY_BT2020_YCC &
+				NORMAL_COLORIMETRY_MASK;
+		frame.avi.extended_colorimetry =
+				(HDMI_COLORIMETRY_BT2020_YCC >> 2) &
+				 EXTENDED_COLORIMETRY_MASK;
+	}
+
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
 		DRM_ERROR("Failed to pack AVI IF\n");
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
