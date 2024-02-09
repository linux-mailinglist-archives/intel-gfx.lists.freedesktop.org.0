Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CC284F318
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA8E10F304;
	Fri,  9 Feb 2024 10:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AX3iv/Hi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C1910F303;
 Fri,  9 Feb 2024 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473797; x=1739009797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6kn5U46M6wAhOKG1zvqKXU2q9c+oKBcv+zwiarUsE8=;
 b=AX3iv/HicxgSwSC7MMs+K1ov6hHOPxN9Os3fKnILItX7rDiw+S0kZ7B3
 2GCCRKB7CJ75d0P+5DqZ0ATXSVEFFakP98fturr06Dsy8GTTbjStytY+4
 K1+h0hsPnCuN380Q+bC+YcuPr5qTvyE1XOjRS19ZV+vpgpBSqqzD9HhO4
 2wceTDFeblRvlJlaloFSIvvUxC4w2IScMf4x0AuII12n+1waqupK23+zt
 QlsJxsSYkc6lLVxjLBPUPOMDUUUhYaAo1Xc4kEewVR5jtoOnUPABmMWlf
 NIpEkIeaPkg1lhnTwlJALX8etTXuj1Gh1wsQtwI4Qj3+L9d2DFKX2YU2u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1307439"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1307439"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:16:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2244088"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:16:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/5] drm/xe: Use gsc_proxy_init_done to check proxy status
Date: Fri,  9 Feb 2024 15:44:10 +0530
Message-Id: <20240209101412.1326176-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209101412.1326176-1-suraj.kandpal@intel.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 25 +++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c        |  4 ++--
 drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 5d1d0054b578..425db3532ce5 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,8 +4,12 @@
  */
 
 #include <drm/drm_print.h>
+
 #include "intel_hdcp_gsc.h"
 #include "xe_device_types.h"
+#include "xe_gt.h"
+#include "xe_gsc_proxy.h"
+#include "xe_pm.h"
 
 bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 {
@@ -14,7 +18,26 @@ bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 
 bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 {
-	return false;
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+	struct xe_gt *gt = tile->media_gt;
+	bool ret = true;
+
+	xe_pm_runtime_get(xe);
+	ret = xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC);
+	if (ret) {
+		drm_dbg_kms(&xe->drm,
+			    "failed to get forcewake to check proxy status\n");
+		ret = false;
+		goto out;
+	}
+
+	if (!xe_gsc_proxy_init_done(&gt->uc.gsc))
+		ret = false;
+
+	xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);
+out:
+	xe_pm_runtime_put(xe);
+	return ret;
 }
 
 int intel_hdcp_gsc_init(struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
index 309ef80e3b95..1ced6b4d4946 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
@@ -66,7 +66,7 @@ static inline struct xe_device *kdev_to_xe(struct device *kdev)
 	return dev_get_drvdata(kdev);
 }
 
-static bool gsc_proxy_init_done(struct xe_gsc *gsc)
+bool xe_gsc_proxy_init_done(struct xe_gsc *gsc)
 {
 	struct xe_gt *gt = gsc_to_gt(gsc);
 	u32 fwsts1 = xe_mmio_read32(gt, HECI_FWSTS1(MTL_GSC_HECI1_BASE));
@@ -528,7 +528,7 @@ int xe_gsc_proxy_start(struct xe_gsc *gsc)
 	if (err)
 		return err;
 
-	if (!gsc_proxy_init_done(gsc)) {
+	if (!xe_gsc_proxy_init_done(gsc)) {
 		xe_gt_err(gsc_to_gt(gsc), "GSC FW reports proxy init not completed\n");
 		return -EIO;
 	}
diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.h b/drivers/gpu/drm/xe/xe_gsc_proxy.h
index 908f9441f093..c511ade6b863 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.h
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.h
@@ -11,6 +11,7 @@
 struct xe_gsc;
 
 int xe_gsc_proxy_init(struct xe_gsc *gsc);
+bool xe_gsc_proxy_init_done(struct xe_gsc *gsc);
 void xe_gsc_proxy_remove(struct xe_gsc *gsc);
 int xe_gsc_proxy_start(struct xe_gsc *gsc);
 
-- 
2.25.1

