Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BCE2036C5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207AB6E5A1;
	Mon, 22 Jun 2020 12:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FA26E58E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:24 +0000 (UTC)
IronPort-SDR: qujzOG63WgRPEiXllUOgo4eCoCMFWWTKjMGfRp8MGdctSYoPDilygF48eo2XVvv2cLgjp3X+LX
 N4kq7+X6VgxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="228402398"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="228402398"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:23 -0700
IronPort-SDR: 59eeTTHucofpZ5VDHB6Pyr5NkcM6howcZ6Tx3BUjnuujoC3yvSQbolH3xOx3ciECJLL4k1cgz6
 V96veyY124OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832596"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:21 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:24 +0530
Message-Id: <20200622130029.28667-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
References: <20200622130029.28667-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 05/10] drm/i915/display: Enable HDR for Parade
 based lspcon
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
Cc: jani.nikula@intel.com, Vipin Anand <vipin.anand@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable HDR for LSPCON based on Parade along with MCA.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vipin Anand <vipin.anand@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 10e2823bf1ae..9034ce6f20b9 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -36,6 +36,7 @@
 #define LSPCON_VENDOR_MCA_OUI 0x0060AD
 
 #define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
+#define DPCD_PARADE_LSPCON_HDR_STATUS	0x00511
 
 /* AUX addresses to write MCA AVI IF */
 #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
@@ -112,16 +113,20 @@ static void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 		container_of(lspcon, struct intel_digital_port, lspcon);
 	struct drm_device *dev = intel_dig_port->base.base.dev;
 	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	u32 lspcon_hdr_status_reg;
 	u8 hdr_caps;
 	int ret;
 
-	/* Enable HDR for MCA based LSPCON devices */
 	if (lspcon->vendor == LSPCON_VENDOR_MCA)
-		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
-				       &hdr_caps, 1);
+		lspcon_hdr_status_reg = DPCD_MCA_LSPCON_HDR_STATUS;
+	else if (lspcon->vendor == LSPCON_VENDOR_PARADE)
+		lspcon_hdr_status_reg = DPCD_PARADE_LSPCON_HDR_STATUS;
 	else
 		return;
 
+	ret = drm_dp_dpcd_read(&dp->aux, lspcon_hdr_status_reg,
+			       &hdr_caps, 1);
+
 	if (ret < 0) {
 		drm_dbg_kms(dev, "hdr capability detection failed\n");
 		lspcon->hdr_supported = false;
@@ -465,14 +470,6 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
 
-	/*
-	 * Supporting HDR on MCA LSPCON
-	 * Todo: Add support for Parade later
-	 */
-	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
-	    lspcon->vendor != LSPCON_VENDOR_MCA)
-		return;
-
 	switch (type) {
 	case HDMI_INFOFRAME_TYPE_AVI:
 		if (lspcon->vendor == LSPCON_VENDOR_MCA)
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
