Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF201950E6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628F96E980;
	Fri, 27 Mar 2020 06:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB87A6E97F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 06:12:31 +0000 (UTC)
IronPort-SDR: t4zwLkNYA0f6XuXRIJdPmOlkaBlsFIcu5A7i8OvX1ekmOrwmv5waKNHzcIofohsrLnP1Ats047
 6y3ykeawlkKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 23:12:31 -0700
IronPort-SDR: RR2UTEODCR2LDbm+KY9MmPr6b1Vp97xHSk/G6A04E3/yV9/Go/g1B3Q5VjXyAKx9c0HMc9NfI9
 Un6SxYhfBA9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="420987135"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 23:12:30 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:41:04 +0530
Message-Id: <20200327061110.17371-2-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327061110.17371-1-vipin.anand@intel.com>
References: <20200327061110.17371-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915/display: Add HDR Capability
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

From: Uma Shankar <uma.shankar@intel.com>

LSPCON firmware exposes HDR capability through LPCON_CAPABILITIES
DPCD register. LSPCON implementations capable of supporting
HDR set HDR_CAPABILITY bit in LSPCON_CAPABILITIES to 1. This patch
reads the same, detects the HDR capability and adds this to
intel_lspcon struct.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 888ea8a170d1..2f281da6d253 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1333,6 +1333,7 @@ struct intel_lspcon {
 	bool active;
 	enum drm_lspcon_mode mode;
 	enum lspcon_vendor vendor;
+	bool hdr_supported;
 };
 
 struct intel_digital_port {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index d807c5648c87..2e41ae483a23 100644
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
@@ -104,6 +106,31 @@ static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 	return true;
 }
 
+static bool lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
+{
+	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	u8 hdr_caps;
+	int ret;
+
+	/* Enable HDR for MCA based LSPCON devices */
+	if (lspcon->vendor == LSPCON_VENDOR_MCA)
+		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
+				       &hdr_caps, 1);
+	else
+		return false;
+
+	if (ret < 0) {
+		DRM_DEBUG_KMS("hdr capability detection failed\n");
+		lspcon->hdr_supported = false;
+		return false;
+	} else if (hdr_caps & 0x1) {
+		DRM_DEBUG_KMS("lspcon capable of HDR\n");
+		lspcon->hdr_supported = true;
+	}
+
+	return true;
+}
+
 static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 {
 	enum drm_lspcon_mode current_mode;
@@ -581,6 +608,11 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 		return false;
 	}
 
+	if (!lspcon_detect_hdr_capability(lspcon)) {
+		DRM_ERROR("LSPCON hdr detection failed\n");
+		return false;
+	}
+
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	DRM_DEBUG_KMS("Success: LSPCON init\n");
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
