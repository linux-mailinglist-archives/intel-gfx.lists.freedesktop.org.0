Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81226284BAB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEFF6E486;
	Tue,  6 Oct 2020 12:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265F36E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:13 +0000 (UTC)
IronPort-SDR: OJ/4zE1Rz+0jWrRFNLBCf4YwcbZ7527WEFpiUf/nzwiSxxU8qxjeeps+07q8IyQLxtyIwiru4+
 015DKmog1XVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851687"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851687"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:12 -0700
IronPort-SDR: tHA2YTCkcGw20MlhBazlW3S8xwLo69ZlESzULzZiXyG/D1SSEfHMGH8Pg52XEwfJA9f+X9Go03
 T9oxMhjg+3Tg==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333636"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:45 +0530
Message-Id: <20201006130654.331-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006130654.331-1-uma.shankar@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 01/10] drm/i915/display: Add HDR Capability
 detection for LSPCON
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

LSPCON firmware exposes HDR capability through LPCON_CAPABILITIES
DPCD register. LSPCON implementations capable of supporting
HDR set HDR_CAPABILITY bit in LSPCON_CAPABILITIES to 1. This patch
reads the same, detects the HDR capability and adds this to
intel_lspcon struct.

v2: Addressed Jani Nikula's review comment and fixed the HDR
    capability detection logic

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 30 +++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d5dc18cb8c39..fb8cfc0981d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1398,6 +1398,7 @@ struct intel_lspcon {
 	bool active;
 	enum drm_lspcon_mode mode;
 	enum lspcon_vendor vendor;
+	bool hdr_supported;
 };
 
 struct intel_digital_port {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index ee95fc353a56..f92962195698 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -35,6 +35,8 @@
 #define LSPCON_VENDOR_PARADE_OUI 0x001CF8
 #define LSPCON_VENDOR_MCA_OUI 0x0060AD
 
+#define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
+
 /* AUX addresses to write MCA AVI IF */
 #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
 #define LSPCON_MCA_AVI_IF_CTRL 0x5DF
@@ -104,6 +106,32 @@ static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 	return true;
 }
 
+static void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
+{
+	struct intel_digital_port *intel_dig_port =
+		container_of(lspcon, struct intel_digital_port, lspcon);
+	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	u8 hdr_caps;
+	int ret;
+
+	/* Enable HDR for MCA based LSPCON devices */
+	if (lspcon->vendor == LSPCON_VENDOR_MCA)
+		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
+				       &hdr_caps, 1);
+	else
+		return;
+
+	if (ret < 0) {
+		drm_dbg_kms(dev, "hdr capability detection failed\n");
+		lspcon->hdr_supported = false;
+		return;
+	} else if (hdr_caps & 0x1) {
+		drm_dbg_kms(dev, "lspcon capable of HDR\n");
+		lspcon->hdr_supported = true;
+	}
+}
+
 static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 {
 	enum drm_lspcon_mode current_mode;
@@ -554,6 +582,8 @@ static bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 	}
 
+	lspcon_detect_hdr_capability(lspcon);
+
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	DRM_DEBUG_KMS("Success: LSPCON init\n");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
