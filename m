Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D6D1D2E06
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 13:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DD66E31D;
	Thu, 14 May 2020 11:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915276E31D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 11:18:03 +0000 (UTC)
IronPort-SDR: 77b/qFHNEyIvm4xPuXEaqMJqcZpYRf8Ym7wJxs+j13xntp5eFGAYzprSB66gv1SvR+0jW3SNwr
 /GXhqOeh/0DA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 04:18:02 -0700
IronPort-SDR: Y1849xcLb9dTBokPns/JQ2uxeAcSP66FYom5glcw83BXxGgGaFHDakp7T/MuRz2NEPwhIsFYed
 yEB01QfMStnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="410036305"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga004.jf.intel.com with ESMTP; 14 May 2020 04:18:02 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 16:44:49 +0530
Message-Id: <20200514111449.10189-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm:i915:display: add checks for Gen9
 devices with hdr capability
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

this patch adds hdr capabilities checks for Gen9 devices with
lspcon support.
This patch is dependent on patch series
https://patchwork.kernel.org/cover/11192807/

Signed-off-by: Vipin Anand <vipin.anand@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 5cede4f07f22..0bae46077c21 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -116,6 +116,10 @@ static bool lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 	if (lspcon->vendor == LSPCON_VENDOR_MCA)
 		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
 				       &hdr_caps, 1);
+	else if (lspcon->vendor == LSPCON_VENDOR_PARADE) {
+		lspcon->hdr_supported = true;
+		return true;
+	}
 	else
 		return false;
 
@@ -474,7 +478,8 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 	 * Todo: Add support for Parade later
 	 */
 	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
-	    lspcon->vendor != LSPCON_VENDOR_MCA)
+	    (lspcon->vendor != LSPCON_VENDOR_MCA ||
+	     lspcon->vendor != LSPCON_VENDOR_PARADE))
 		return;
 
 	if (lspcon->vendor == LSPCON_VENDOR_MCA) {
@@ -646,7 +651,9 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 		return false;
 	}
 
-	if (lspcon->vendor == LSPCON_VENDOR_MCA && lspcon->hdr_supported)
+	if ((lspcon->vendor == LSPCON_VENDOR_MCA ||
+	     lspcon->vendor == LSPCON_VENDOR_PARADE) &&
+	     lspcon->hdr_supported)
 		drm_object_attach_property(&connector->base,
 					   connector->dev->mode_config.hdr_output_metadata_property,
 					   0);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
