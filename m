Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9426F284BAF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B776E48B;
	Tue,  6 Oct 2020 12:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0D46E48E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:19 +0000 (UTC)
IronPort-SDR: nxKYYzMz4lZQyFnEItMp9vPr3Ak4MvlGe25MqonQSFe3l3ssSAQRtI0fjQLdtNc9zCdtiP4mv9
 qVzXk7IVSLew==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851714"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851714"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:19 -0700
IronPort-SDR: 4PUQ7lh7DSNkQEF71mYcCtgHuKKc0r7gVllGHVYOM/0nuVOwkgzEORqZZEFmnYCIhIzroA1Wxc
 pJeyN0oPGXmQ==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333668"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:17 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:49 +0530
Message-Id: <20201006130654.331-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006130654.331-1-uma.shankar@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 05/10] drm/i915/display: Enable HDR for Parade
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

v2: Added a helper for status reg as suggested by Ville.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vipin Anand <vipin.anand@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9ffa36797daf..7ae01f2a8596 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -36,6 +36,7 @@
 #define LSPCON_VENDOR_MCA_OUI 0x0060AD
 
 #define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
+#define DPCD_PARADE_LSPCON_HDR_STATUS	0x00511
 
 /* AUX addresses to write MCA AVI IF */
 #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
@@ -106,21 +107,28 @@ static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 	return true;
 }
 
+static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
+{
+	if (lspcon->vendor == LSPCON_VENDOR_MCA)
+		return DPCD_MCA_LSPCON_HDR_STATUS;
+	else
+		return DPCD_PARADE_LSPCON_HDR_STATUS;
+}
+
 static void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 {
 	struct intel_digital_port *intel_dig_port =
 		container_of(lspcon, struct intel_digital_port, lspcon);
 	struct drm_device *dev = intel_dig_port->base.base.dev;
 	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	u32 lspcon_hdr_status_reg;
 	u8 hdr_caps;
 	int ret;
 
-	/* Enable HDR for MCA based LSPCON devices */
-	if (lspcon->vendor == LSPCON_VENDOR_MCA)
-		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
-				       &hdr_caps, 1);
-	else
-		return;
+	lspcon_hdr_status_reg = get_hdr_status_reg(lspcon);
+
+	ret = drm_dp_dpcd_read(&dp->aux, lspcon_hdr_status_reg,
+			       &hdr_caps, 1);
 
 	if (ret < 0) {
 		drm_dbg_kms(dev, "hdr capability detection failed\n");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
