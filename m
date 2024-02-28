Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910AF86A81A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 06:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD00110E080;
	Wed, 28 Feb 2024 05:50:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJWq0vdh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF5710E080;
 Wed, 28 Feb 2024 05:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709099405; x=1740635405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F1gcPwwvbwhwBSaq8lEaKkfqPYuSaf4+fG4vqy/dAIw=;
 b=bJWq0vdhkvelHyGkQUsCHHmcSE7A61P1OKnGqUC1XBMxz+B34aVlZyHx
 4LazQf5ai83NrBq4Dq2/rsvgGVLpiN47viZAij6OrIsVTmFFaIeNXV6Ol
 8hE2x1ZnwUPCwxkZQmuyZ7yPNOfKRD1eHSEXoMVzYzx+Az0mGbt0O0YSE
 LL05doqgLIURUBnMPu/aJL+yWOcSbe0snMxpceRX+fBilpHZic3nNNJ4q
 HWJehgE2lBVYKZPRwHmW4F60SA8rc/B+/RCP0MTmkj8udG4r3ZkJ+15Hd
 QvGA5topdMHCskF5QW4wiRaS/QvHUzUhbgYXqeLPpHxOaRnBy30ohQMie A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3643323"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3643323"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 21:50:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="38345786"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 27 Feb 2024 21:50:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [PATCH 3/4] drm/xe: Use gsc_proxy_init_done to check proxy status
Date: Wed, 28 Feb 2024 11:17:14 +0530
Message-ID: <20240228054713.1783819-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227053204.1748920-4-suraj.kandpal@intel.com>
References: <20240227053204.1748920-4-suraj.kandpal@intel.com>
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

--v2
-Check if GSC FW is enabled before taking forcewake ref [Daniele]

--v3
-Directly call forcewake get function inside if condition

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 29 +++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c        |  4 ++--
 drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
 3 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 5d1d0054b578..3af5a86db3aa 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,8 +4,14 @@
  */
 
 #include <drm/drm_print.h>
+
 #include "intel_hdcp_gsc.h"
 #include "xe_device_types.h"
+#include "xe_device.h"
+#include "xe_gt.h"
+#include "xe_gsc_proxy.h"
+#include "xe_pm.h"
+#include "xe_uc_fw.h"
 
 bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 {
@@ -14,7 +20,28 @@ bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 
 bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 {
-	return false;
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+	struct xe_gt *gt = tile->media_gt;
+	bool ret = true;
+
+	if (!xe_uc_fw_is_enabled(&gt->uc.gsc.fw))
+		return false;
+
+	xe_pm_runtime_get(xe);
+	if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC)) {
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
2.43.2

