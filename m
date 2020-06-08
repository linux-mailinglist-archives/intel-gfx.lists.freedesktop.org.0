Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788461F1325
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 08:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB14F6E46F;
	Mon,  8 Jun 2020 06:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6696E46F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 06:59:32 +0000 (UTC)
IronPort-SDR: hIAN/VwNNf7he2r4hyyfri3oTTqAHQ3x6it8BOaPIERxxGCm6aodFBMja1Roj7skAdRgrVKxW1
 mHV9c0OAhe6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 23:59:32 -0700
IronPort-SDR: F5JuewcPAFnzzjawWZHM8jlKzCWAE9yaSZ28MMdo6IhqhDxixKAP6tePTUoZR2H1Xe3IWHk3xH
 JXmFIEWOHpWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="305726538"
Received: from jvle-desk2.sc.intel.com ([10.3.62.164])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2020 23:59:32 -0700
From: Jason Le <jason.v.le@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:56:35 -0700
Message-Id: <20200608065635.11652-1-jason.v.le@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC features
 concurently.
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
Cc: Jason Le <jason.v.le@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Issue: Enble both PSR and FBC caused some fickers on some eDP panels (eg. Panel GIS
13.5" QHD Glare NE135FBM-N41/NC135GFL02).  Disbling either PSR or FBC
will solve this flicker issue.

Both PSR and FBC features save power when render is not busy. When PSR is
active, saving power achieved  by source turning off source transmitter and main link,
putting memory on self-refresh mode. Therefore with PSR enabled,
FBC role is minimized since PSR power saving already covers most what
FBC does.  Disabling FBC in case to avoid conflict between PSR and FBC
which causes display anomaly in some scenarios.

Tests:
Booted system with PSR enabled, verified FBC disabled.
Disabled PSR with disabled (i915.enable_psr=0), verified FBC enabled.
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1c26673acb2d..52bc7483adb5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1419,6 +1419,12 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
 		    i915_modparams.enable_fbc);
 
+	if (i915_modparams.enable_psr) {
+               i915_modparams.enable_fbc = 0;
+                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");
+	}
+
+
 	if (!HAS_FBC(dev_priv)) {
 		fbc->no_fbc_reason = "unsupported by this chipset";
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b7a2c102648a..25accfdd5ad3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1439,8 +1439,10 @@ void intel_psr_init(struct drm_i915_private *dev_priv)
 	if (!HAS_PSR(dev_priv))
 		return;
 
-	if (!dev_priv->psr.sink_support)
+	if (!dev_priv->psr.sink_support) {
+		i915_modparams.enable_psr = 0;
 		return;
+	}
 
 	if (IS_HASWELL(dev_priv))
 		/*
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
