Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F2326966E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE22E6E588;
	Mon, 14 Sep 2020 20:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94C66E588
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:25:07 +0000 (UTC)
IronPort-SDR: pnxMGhfLQmg/Sb0GNK3uriccuS4h3YqCkW+zGuTTY5+6qMyZNDn3czMprV0XrWhETaeGT33Wxo
 3AByNvxQw7tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223340791"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="223340791"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:07 -0700
IronPort-SDR: PC9f0xwgADYYkw71e7REpQ5sWPvqOp07JI1ot0UCFv/VpNYVRjIg7+Qx0J7ll5h9tsx3x094iG
 xl2BqctwS9qQ==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="306307133"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:05 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 02:30:41 +0530
Message-Id: <20200914210047.11972-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200914210047.11972-1-uma.shankar@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 05/11] drm/i915/display: Enable HDR for Parade
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
Cc: Vipin Anand <vipin.anand@intel.com>
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
index b0ca494f1110..60863b825cc5 100644
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
