Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDAC6892E9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 09:59:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197C910E200;
	Fri,  3 Feb 2023 08:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D8110E186;
 Fri,  3 Feb 2023 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675414761; x=1706950761;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H9ZpFYxAS+6QYpyAW6xdI1nCCzcJJndbRVFAG1cVA+I=;
 b=ZdpqWl6DTU7WkegTagNQ6QEv4UilAaJ91StbP0fp2nYXj9riQRV7aHy9
 CiTobcghWVhf+Lx4JNS5H6nBJX/e/TPk+pFgLJO6wGWNEviq4eJjLF/CY
 Mhq025monVnt4r/5Y8Pi29MvXq7MpvJEiGjhlsGAvDDZy9PDQFMY1Us6Y
 gpW5hfkpsS/2EQNtSDATPgU8yQY9SlQAqmLuh2ckH6CIHbgNiegcLWcQw
 cpS+TGBywCO7h6blKIBWYckHQc0DoU2e9Z/738vRFodertOjhsixjihbP
 avR08lEzfvR2sTgJ4EL7FWft1nm+HxYZJjGbKHdOUrAK0V+G90/VypYXN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="356038807"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="356038807"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 00:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="615638246"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="615638246"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2023 00:59:18 -0800
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.139.149])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D17EF365DA;
 Fri,  3 Feb 2023 08:59:17 +0000 (GMT)
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 09:59:12 +0100
Message-Id: <20230203085912.1963-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/huc: Add and use HuC oriented print
 macros
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like we did it for GuC, introduce some helper print macros for
HuC to have unified format of messages that also include GT#.

While around improve some messages and use %pe if possible.

v2: update GSC/PXP timeout message

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 44 ++++++++++++++------------
 1 file changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 410905da8e97..72884e21470b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -6,6 +6,7 @@
 #include <linux/types.h>
 
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_print.h"
 #include "intel_guc_reg.h"
 #include "intel_huc.h"
 #include "i915_drv.h"
@@ -13,6 +14,15 @@
 #include <linux/device/bus.h>
 #include <linux/mei_aux.h>
 
+#define huc_printk(_huc, _level, _fmt, ...) \
+	gt_##_level(huc_to_gt(_huc), "HuC: " _fmt, ##__VA_ARGS__)
+#define huc_err(_huc, _fmt, ...)	huc_printk((_huc), err, _fmt, ##__VA_ARGS__)
+#define huc_warn(_huc, _fmt, ...)	huc_printk((_huc), warn, _fmt, ##__VA_ARGS__)
+#define huc_notice(_huc, _fmt, ...)	huc_printk((_huc), notice, _fmt, ##__VA_ARGS__)
+#define huc_info(_huc, _fmt, ...)	huc_printk((_huc), info, _fmt, ##__VA_ARGS__)
+#define huc_dbg(_huc, _fmt, ...)	huc_printk((_huc), dbg, _fmt, ##__VA_ARGS__)
+#define huc_probe_error(_huc, _fmt, ...) huc_printk((_huc), probe_error, _fmt, ##__VA_ARGS__)
+
 /**
  * DOC: HuC
  *
@@ -107,11 +117,9 @@ static enum hrtimer_restart huc_delayed_load_timer_callback(struct hrtimer *hrti
 
 	if (!intel_huc_is_authenticated(huc)) {
 		if (huc->delayed_load.status == INTEL_HUC_WAITING_ON_GSC)
-			drm_notice(&huc_to_gt(huc)->i915->drm,
-				   "timed out waiting for MEI GSC init to load HuC\n");
+			huc_notice(huc, "timed out waiting for MEI GSC\n");
 		else if (huc->delayed_load.status == INTEL_HUC_WAITING_ON_PXP)
-			drm_notice(&huc_to_gt(huc)->i915->drm,
-				   "timed out waiting for MEI PXP init to load HuC\n");
+			huc_notice(huc, "timed out waiting for MEI PXP\n");
 		else
 			MISSING_CASE(huc->delayed_load.status);
 
@@ -174,8 +182,7 @@ static int gsc_notifier(struct notifier_block *nb, unsigned long action, void *d
 
 	case BUS_NOTIFY_DRIVER_NOT_BOUND: /* mei driver fails to be bound */
 	case BUS_NOTIFY_UNBIND_DRIVER: /* mei driver about to be unbound */
-		drm_info(&huc_to_gt(huc)->i915->drm,
-			 "mei driver not bound, disabling HuC load\n");
+		huc_info(huc, "MEI driver not bound, disabling load\n");
 		gsc_init_error(huc);
 		break;
 	}
@@ -193,8 +200,7 @@ void intel_huc_register_gsc_notifier(struct intel_huc *huc, struct bus_type *bus
 	huc->delayed_load.nb.notifier_call = gsc_notifier;
 	ret = bus_register_notifier(bus, &huc->delayed_load.nb);
 	if (ret) {
-		drm_err(&huc_to_gt(huc)->i915->drm,
-			"failed to register GSC notifier\n");
+		huc_err(huc, "failed to register GSC notifier %pe\n", ERR_PTR(ret));
 		huc->delayed_load.nb.notifier_call = NULL;
 		gsc_init_error(huc);
 	}
@@ -306,29 +312,25 @@ static int check_huc_loading_mode(struct intel_huc *huc)
 			      GSC_LOADS_HUC;
 
 	if (fw_needs_gsc != hw_uses_gsc) {
-		drm_err(&gt->i915->drm,
-			"mismatch between HuC FW (%s) and HW (%s) load modes\n",
-			HUC_LOAD_MODE_STRING(fw_needs_gsc),
-			HUC_LOAD_MODE_STRING(hw_uses_gsc));
+		huc_err(huc, "mismatch between FW (%s) and HW (%s) load modes\n",
+			HUC_LOAD_MODE_STRING(fw_needs_gsc), HUC_LOAD_MODE_STRING(hw_uses_gsc));
 		return -ENOEXEC;
 	}
 
 	/* make sure we can access the GSC via the mei driver if we need it */
 	if (!(IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_INTEL_MEI_GSC)) &&
 	    fw_needs_gsc) {
-		drm_info(&gt->i915->drm,
-			 "Can't load HuC due to missing MEI modules\n");
+		huc_info(huc, "can't load due to missing MEI modules\n");
 		return -EIO;
 	}
 
-	drm_dbg(&gt->i915->drm, "GSC loads huc=%s\n", str_yes_no(fw_needs_gsc));
+	huc_dbg(huc, "loaded by GSC = %s\n", str_yes_no(fw_needs_gsc));
 
 	return 0;
 }
 
 int intel_huc_init(struct intel_huc *huc)
 {
-	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
 	int err;
 
 	err = check_huc_loading_mode(huc);
@@ -345,7 +347,7 @@ int intel_huc_init(struct intel_huc *huc)
 
 out:
 	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_INIT_FAIL);
-	drm_info(&i915->drm, "HuC init failed with %d\n", err);
+	huc_info(huc, "initialization failed %pe\n", ERR_PTR(err));
 	return err;
 }
 
@@ -389,13 +391,13 @@ int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
 	delayed_huc_load_complete(huc);
 
 	if (ret) {
-		drm_err(&gt->i915->drm, "HuC: Firmware not verified %d\n", ret);
+		huc_err(huc, "firmware not verified %pe\n", ERR_PTR(ret));
 		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
 		return ret;
 	}
 
 	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
-	drm_info(&gt->i915->drm, "HuC authenticated\n");
+	huc_info(huc, "authenticated!\n");
 	return 0;
 }
 
@@ -430,7 +432,7 @@ int intel_huc_auth(struct intel_huc *huc)
 
 	ret = intel_guc_auth_huc(guc, intel_guc_ggtt_offset(guc, huc->fw.rsa_data));
 	if (ret) {
-		DRM_ERROR("HuC: GuC did not ack Auth request %d\n", ret);
+		huc_err(huc, "authentication by GuC failed %pe\n", ERR_PTR(ret));
 		goto fail;
 	}
 
@@ -442,7 +444,7 @@ int intel_huc_auth(struct intel_huc *huc)
 	return 0;
 
 fail:
-	i915_probe_error(gt->i915, "HuC: Authentication failed %d\n", ret);
+	huc_probe_error(huc, "authentication failed %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
-- 
2.25.1

