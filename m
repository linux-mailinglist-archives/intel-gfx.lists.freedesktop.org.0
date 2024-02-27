Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152518688A7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 06:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEDC10E86B;
	Tue, 27 Feb 2024 05:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K7zvwPUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07FC310E86B;
 Tue, 27 Feb 2024 05:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709012047; x=1740548047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pPF/FZgz2kTjwOrq01AMdjdlxcZpN84lsZbp71GjNmI=;
 b=K7zvwPUJUk0e8z8wam0xoDnDa4FfKtLWytstrZN42+04RLEG8L9hwNFD
 qs0AEXz9Sua4q4cPNYlepzbBbbqsGfhFtuSQ/NKcN5ngXCzJsyVAn4jfp
 wR7gdfoM4Dxv2yr2EG0oeShF2660I4KFRz3xQZ4HFbUgtJ85YI//OI5lC
 nmiv9xe+eLfl+E3OACKK3wrJjks0ULUPNqzwjgnzX6Vu3JADE6AtLTiGg
 EZZlybOaKYJCQIT6EUit+kyveiY7sfx9OHEaohmgobYiHT+FBvFDpmqrM
 0OHo0wKSbKaFZze/ilmrkeQqzVl+KEVnBgN+32TrBPimRKkh0ixv96j42 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3182902"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3182902"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 21:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6857598"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 26 Feb 2024 21:34:05 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [PATCH 3/4] drm/xe: Use gsc_proxy_init_done to check proxy status
Date: Tue, 27 Feb 2024 11:02:03 +0530
Message-ID: <20240227053204.1748920-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227053204.1748920-1-suraj.kandpal@intel.com>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 30 +++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c        |  4 ++--
 drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
 3 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 5d1d0054b578..0de06e0373ef 100644
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
@@ -14,7 +20,29 @@ bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 
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
2.43.2

