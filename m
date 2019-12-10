Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 569E9118D61
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 17:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EEE6E13A;
	Tue, 10 Dec 2019 16:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 16:17:18 UTC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F343A6E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 16:17:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 08:10:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="220245338"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2019 08:10:10 -0800
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 21:43:19 +0530
Message-Id: <1575994399-15799-1-git-send-email-gaurav.k.singh@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH] drm/i915: Add DPCD quirk for AUO PSR2 panel
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently on AUO PSR2 panel on Gen9 chromebook, we are observing
below issues:
(i) The display will show garbage after pressing sign
out icon in log in screen when wallpaper is one of Solid colors
& PSR2 is enabled
(ii) The characters of display is not clear when switch
OS mode to dev mode.

Before this patch, on this panel, we set idle frame count to 6
that is number of idle frames before entering PSR2 deep sleep
and the number of frames to enter into Selective update we set
to 1.

On this AUO panel, we suspect there is some DP synchronization
latency needed, due to which we are facing the above issues.

With current TCON of the AUO panel, DPCD reg
DP_SYNCHRONIZATION_LATENCY_IN_SINK (0x2009) offset is giving a
value of 0x0.

This patch sets idle frame count to 9 and frame count for selective
update to 9, after which we are not seeing the above mentioned issues.

Ideally this value needs to be corrected in TCON of the panel
since this value comes from DPCD reg 0x2009 offset and i915 driver
uses it. Working with AUO panel vendor to get this fixed in the
panel TCON. In the meantime fixing this as DPCD quirk in the kernel.

Signed-off-by: Gaurav K Singh <gaurav.k.singh@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c          | 3 +++
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 include/drm/drm_dp_helper.h              | 9 +++++++++
 3 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 2c7870aef469..96eaeef814d3 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1155,6 +1155,9 @@ struct dpcd_quirk {
 	{ OUI(0x00, 0x10, 0xfa), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_NO_PSR) },
 	/* CH7511 seems to leave SINK_COUNT zeroed */
 	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
+	/* AUO PSR2 panels need some more DP synchronization latency */
+	{ OUI(0x00, 0x1c, 0xf8), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY) },
+
 };
 
 #undef OUI
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 16e9ff47d519..1023b08ad093 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -296,6 +296,12 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	dev_priv->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
+	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY)) {
+		DRM_DEBUG_KMS("AUO PSR2 panel need more synchronization latency\n");
+		if (dev_priv->psr.sink_sync_latency == 0)
+			dev_priv->psr.sink_sync_latency = 8;
+	}
+
 	dev_priv->psr.dp = intel_dp;
 
 	if (INTEL_GEN(dev_priv) >= 9 &&
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 8f8f3632e697..6018b79f2d61 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1522,6 +1522,15 @@ enum drm_dp_quirk {
 	 * The driver should ignore SINK_COUNT during detection.
 	 */
 	DP_DPCD_QUIRK_NO_SINK_COUNT,
+	/**
+	 * @DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY
+	 *
+	 * The Helios AUO PSR2 panel requires more number of frames on PSR exit,
+	 * to synchronize to the Source device-provided timing. Currently DPCD
+	 * 0x2009 offset in TCON has the value of 0. Increasing this value to 8
+	 * till this gets fixed in TCON of the panel.
+	 */
+	DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY,
 };
 
 /**
-- 
1.9.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
