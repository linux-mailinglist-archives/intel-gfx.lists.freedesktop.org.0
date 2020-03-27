Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3A1950E9
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D229F6E982;
	Fri, 27 Mar 2020 06:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537936E982
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 06:12:36 +0000 (UTC)
IronPort-SDR: RwHW+oDgL8axC/RQeK0YXAJJmIipzs4FQqNeHBRqctMCHZsCGMQSasYy9TD5GPuG3sxSexzeBy
 bKJOc0lKvZ/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 23:12:36 -0700
IronPort-SDR: bsHvCoTKfcnYTuAHTEBMuu07Wen244elEfikyMm9aiH+D1jDvQU2npIgVgGKW3vEvMjUfwcIoe
 cfYbYTxMnRRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="420987146"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 23:12:35 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:41:08 +0530
Message-Id: <20200327061110.17371-6-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327061110.17371-1-vipin.anand@intel.com>
References: <20200327061110.17371-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/display: Enable BT2020 for HDR
 on LSPCON devices
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

Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
data for HDR using AVI infoframe. LSPCON firmware expects this and though
SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
which transfers the same to HDMI sink.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 4d8027493f2c..5cede4f07f22 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -506,6 +506,11 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
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
@@ -550,6 +555,19 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 					   HDMI_QUANTIZATION_RANGE_LIMITED :
 					   HDMI_QUANTIZATION_RANGE_FULL);
 
+	/*
+	 * Set BT2020 colorspace if driving HDR data
+	 * ToDo: Make this generic and expose all colorspaces for lspcon
+	 */
+	if (lspcon->active && conn_state->hdr_metadata_changed) {
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
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
