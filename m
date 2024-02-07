Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3690C84C9B7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 12:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B03910F061;
	Wed,  7 Feb 2024 11:37:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvRlFs9n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493B510F030;
 Wed,  7 Feb 2024 11:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707305873; x=1738841873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lMalCb33Hmv3iEZ8LlBuxtAWa7dWijs9KN0oH+RQ6vo=;
 b=BvRlFs9nmyD8jfUCyX7mQstVpBODOgIWBVIzrtqEcDt3RmCjMdwI9qaR
 xwlt74PVntQEoSROcDkR5X0VZykF0Kezok402oI0JbnUkFs3ZVD7v7JtO
 nvLwjrRATv9/b29NQRuNmRF9jIGF0ZcEqQDFq9/ySFaipls4UUp5rpbM3
 JBJVply8h5i919HEqAAPk2pI0PYWhXnX52jb/g2ahcoWrNJbcs4zHLlut
 mOMKJthS5QTxyDsAfzJgXNRWgPe6XPSKUlV5tleJq+ACGiUJZ6PNh8zu5
 zcKLg14IQsQq0F9MmsRcbzSsNfH4MicOKBwa/wWy2k2NwVwUaXra+0Bk+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12056210"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="12056210"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:37:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1306499"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 07 Feb 2024 03:37:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/4] drm/xe: Use gsc_proxy_init_done to check proxy status
Date: Wed,  7 Feb 2024 17:05:30 +0530
Message-Id: <20240207113531.1265801-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240207113531.1265801-1-suraj.kandpal@intel.com>
References: <20240207113531.1265801-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Expose gsc_proxy_init_done so that we can check if gsc proxy has
been initialized or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 25 ++++++++++++++++++++++--
 drivers/gpu/drm/xe/xe_gsc_proxy.c        |  2 +-
 drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
 3 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 0f11a39333e2..ca17dfbc3fe9 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -5,15 +5,36 @@
 
 #include "i915_drv.h"
 #include "intel_hdcp_gsc.h"
+#include "xe_gt.h"
+#include "xe_gsc_proxy.h"
+#include "xe_pm.h"
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 {
 	return true;
 }
 
-bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
+bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 {
-	return false;
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+	struct xe_gt *gt = tile->media_gt;
+	int ret = true;
+
+	xe_pm_runtime_get(xe);
+	ret = xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC);
+	if (ret) {
+		drm_dbg_kms(&xe->drm, "failed to get forcewake to disable GSC interrupts\n");
+		return false;
+	}
+
+	if (!gsc_proxy_init_done(&gt->uc.gsc))
+		ret = false;
+
+	if (!ret)
+		xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);
+	xe_pm_runtime_get(xe);
+
+	return ret;
 }
 
 int intel_hdcp_gsc_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
index 309ef80e3b95..f37f18a36209 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
@@ -66,7 +66,7 @@ static inline struct xe_device *kdev_to_xe(struct device *kdev)
 	return dev_get_drvdata(kdev);
 }
 
-static bool gsc_proxy_init_done(struct xe_gsc *gsc)
+bool gsc_proxy_init_done(struct xe_gsc *gsc)
 {
 	struct xe_gt *gt = gsc_to_gt(gsc);
 	u32 fwsts1 = xe_mmio_read32(gt, HECI_FWSTS1(MTL_GSC_HECI1_BASE));
diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.h b/drivers/gpu/drm/xe/xe_gsc_proxy.h
index 908f9441f093..10de5359fbb8 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.h
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.h
@@ -11,6 +11,7 @@
 struct xe_gsc;
 
 int xe_gsc_proxy_init(struct xe_gsc *gsc);
+bool gsc_proxy_init_done(struct xe_gsc *gsc);
 void xe_gsc_proxy_remove(struct xe_gsc *gsc);
 int xe_gsc_proxy_start(struct xe_gsc *gsc);
 
-- 
2.25.1

