Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EB3C846DE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 11:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E256189A1E;
	Tue, 25 Nov 2025 10:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qey0Jlyc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5B089A1E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 10:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764066005; x=1795602005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yNBIgOBUOBIPISj8718OBAb/v+uW2tU9rDv0MBmYncQ=;
 b=Qey0JlycNufwOBQmHQAD7srX4DV5xR6AkoXLCf7UOcA7fKVFa0gZLO5h
 0Xrj9s1iH9deyAf46pNBbuXI1he1fVw4Bns0y7EObyzjUNikobx8hv61/
 OvF772qJIqAHviET9u83gtzOKjtYVp0fMcd2R02VcpfbimJu9rNQ9R2o1
 IG7E38qidddn3xyNGv1h6iKiChXVAaLbqZ3sabuhcqIvMfgdWEOwiCb8T
 o3yhg6oUrb3VPbymCpsaGf5BquzFJU2TSNfUWJ8+2h9BtIgvpjvE/cYn8
 6SbuFXW+2vKuRhjuuDxs9ERzLLVHrOUUmXLtSuOVaPZs8nlyTlWpQIDyj Q==;
X-CSE-ConnectionGUID: 7wUDUPumRCa/bF71wPtnDg==
X-CSE-MsgGUID: 6ZAj6uGHRSGYiaOll92kkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65080608"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="65080608"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:20:05 -0800
X-CSE-ConnectionGUID: F7kj0mvzR8aP0S1iUhP4Ig==
X-CSE-MsgGUID: 7Jg7hExRQhWtCeIzunXmtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="193032562"
Received: from naresh-nuc8i7beh.iind.intel.com (HELO
 nkumarg-desk.iind.intel.com) ([10.190.216.171])
 by fmviesa009.fm.intel.com with ESMTP; 25 Nov 2025 02:20:03 -0800
From: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: naresh.kumar.g@intel.com,
	Michal.Wajdeczko@intel.com
Subject: [V6 PATCH] Due to SLA agreement between PF and VFs,
 multi CCS mode can't be enabled when VFs are already enabled.
 Similarly, enabling VFs must be blocked when multi CCS mode enabled.
Date: Tue, 25 Nov 2025 15:43:46 +0530
Message-ID: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
X-Mailer: git-send-email 2.43.0
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

v2:
- function xe_device_is_vf_enabled has been refactored to
  xe_sriov_pf_has_vfs_enabled and moved to xe_sriov_pf_helper.h.
- The code now distinctly checks for SR-IOV VF mode and
  SR-IOV PF with VFs enabled.
- Log messages have been updated to explicitly state the current mode.
- The function xe_multi_ccs_mode_enabled is moved to xe_device.h

v3: Described missed arg documentation for xe_sriov_pf_has_vfs_enabled

v4:
- sysfs interface for CCS mode is not initialized
  when operating in SRIOV VF Mode.
- xe_sriov_pf_has_vfs_enabled() check is sufficient while CCS mode
  enablement.
- remove unnecessary comments as flow is self explanatory.

v5:(review comments from Michal)
- Add xe device level CCS mode block with mutex lock and CCS mode state
- necessesary functions to manage ccs mode state to provide strict mutual
  exclusive support b/w CCS mode & SRIOV VF enabling

v6:
- Re modeled implementation based on lockdown the PF using custom guard
  supported functions by Michal

Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_ccs_mode.c | 47 ++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
index 50fffc9ebf62..495bf517a6d3 100644
--- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
+++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
@@ -13,6 +13,7 @@
 #include "xe_gt_sysfs.h"
 #include "xe_mmio.h"
 #include "xe_sriov.h"
+#include "xe_sriov_pf_helpers.h"
 
 static void __xe_gt_apply_ccs_mode(struct xe_gt *gt, u32 num_engines)
 {
@@ -108,6 +109,30 @@ ccs_mode_show(struct device *kdev,
 	return sysfs_emit(buf, "%u\n", gt->ccs_mode);
 }
 
+static int xe_gt_prepare_ccs_mode_enabling(struct xe_device *xe,
+					   struct xe_gt *gt)
+{
+	/*
+	 * The arm guard is only activated during CCS mode enabling,
+	 * and this shuould happen when CCS mode is in default mode.
+	 * lockdown arm guard ensures there is no VFS enabling
+	 * as CCS mode enabling in progress/enabled.
+	 */
+	if (!(gt->ccs_mode > 1))
+		return xe_sriov_pf_arm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
+					     true, NULL);
+	return 0;
+}
+
+static void xe_gt_finish_ccs_mode_enabling(struct xe_device *xe,
+					   struct xe_gt *gt)
+{
+	/* disarm the guard, if CCS mode is reverted to default */
+	if (!(gt->ccs_mode > 1))
+		xe_sriov_pf_disarm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
+					 true, NULL);
+}
+
 static ssize_t
 ccs_mode_store(struct device *kdev, struct device_attribute *attr,
 	       const char *buff, size_t count)
@@ -117,15 +142,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
 	u32 num_engines, num_slices;
 	int ret;
 
-	if (IS_SRIOV(xe)) {
-		xe_gt_dbg(gt, "Can't change compute mode when running as %s\n",
-			  xe_sriov_mode_to_string(xe_device_sriov_mode(xe)));
-		return -EOPNOTSUPP;
-	}
+	ret = xe_gt_prepare_ccs_mode_enabling(xe, gt);
+	if (ret)
+		return ret;
 
 	ret = kstrtou32(buff, 0, &num_engines);
 	if (ret)
-		return ret;
+		goto err;
 
 	/*
 	 * Ensure number of engines specified is valid and there is an
@@ -135,7 +158,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
 	if (!num_engines || num_engines > num_slices || num_slices % num_engines) {
 		xe_gt_dbg(gt, "Invalid compute config, %d engines %d slices\n",
 			  num_engines, num_slices);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err;
 	}
 
 	/* CCS mode can only be updated when there are no drm clients */
@@ -143,7 +167,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
 	if (!list_empty(&xe->drm.filelist)) {
 		mutex_unlock(&xe->drm.filelist_mutex);
 		xe_gt_dbg(gt, "Rejecting compute mode change as there are active drm clients\n");
-		return -EBUSY;
+		ret = -EBUSY;
+		goto err;
 	}
 
 	if (gt->ccs_mode != num_engines) {
@@ -155,7 +180,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
 
 	mutex_unlock(&xe->drm.filelist_mutex);
 
+	xe_gt_finish_ccs_mode_enabling(xe, gt);
+
 	return count;
+err:
+	xe_gt_finish_ccs_mode_enabling(xe, gt);
+
+	return ret;
 }
 
 static DEVICE_ATTR_RW(ccs_mode);
-- 
2.43.0

