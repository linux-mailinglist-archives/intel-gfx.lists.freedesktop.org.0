Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FAB28FB84
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21EC36E216;
	Thu, 15 Oct 2020 23:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5AE6E223
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:09 +0000 (UTC)
IronPort-SDR: CT4bxU8+Kkp6lO+5qb9qnIRb70XpRul1BkDG/V0xaWHhjSEz0rnZrvxnJ+b/Um4fcnTLgbbTGo
 GRiUIOWTEnRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010289"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010289"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:09 -0700
IronPort-SDR: 4YHnOE+pNE2KEK4cf7bADZUH6cGzBc8QJU562MucjfPTAgutoYUJAlEyHyxK3bNU+CBYk2IBRI
 XQJWOGRsUz7w==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450335"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:07 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:51 +0530
Message-Id: <20201015234902.7134-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 01/12] drm/i915/display: Add HDR Capability
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

v3: Deferred HDR detection from lspcon_init (Ville)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.h   |  1 +
 3 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0b5df8e44966..537144ed1494 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1418,6 +1418,7 @@ struct intel_lspcon {
 	bool active;
 	enum drm_lspcon_mode mode;
 	enum lspcon_vendor vendor;
+	bool hdr_supported;
 };
 
 struct intel_digital_port {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index ee95fc353a56..093329cbb3bd 100644
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
 
+void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
+{
+	struct intel_digital_port *dig_port =
+		container_of(lspcon, struct intel_digital_port, lspcon);
+	struct drm_device *dev = dig_port->base.base.dev;
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
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 0851ea30831a..a54b97cd3d64 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -15,6 +15,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_lspcon;
 
+void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
