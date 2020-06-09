Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7859D1F2E24
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 02:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8436E9CE;
	Tue,  9 Jun 2020 00:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0264C6E9CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 00:40:25 +0000 (UTC)
IronPort-SDR: d4yLTzf3vmdehGaqKR6lrBiqDNzWCj6ro0EevIstcS84LujHMtj9we9IPAvLCac458oBC0C9hq
 lt7dYMNbaygQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 17:40:25 -0700
IronPort-SDR: MMh0w6TJqbfbho1MwHqAQy0kDbGe5J+RMS6GboBPAcsTB31sPkuPsQ6dofP9xusfYf4n0tgfBM
 eSvDYKlHq+gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,490,1583222400"; d="scan'208";a="472789455"
Received: from jvle-desk2.sc.intel.com ([10.3.62.164])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jun 2020 17:40:25 -0700
From: Jason Le <jason.v.le@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 17:37:29 -0700
Message-Id: <20200609003729.28437-1-jason.v.le@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2] Disabling FBC when PSR2 SU update enabled
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

---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 52bc7483adb5..1505d93c6685 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1419,9 +1419,9 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
 		    i915_modparams.enable_fbc);
 
-	if (i915_modparams.enable_psr) {
-               i915_modparams.enable_fbc = 0;
-                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");
+	if (i915_modparams.enable_psr && dev_priv->psr.sink_psr2_support) {
+		i915_modparams.enable_fbc = 0;
+		DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");
 	}
 
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
