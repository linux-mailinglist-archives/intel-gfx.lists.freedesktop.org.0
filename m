Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C61939FB4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5FF10E577;
	Tue, 23 Jul 2024 11:22:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KbEQhKI3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C39A10E57B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733717; x=1753269717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pBeeglo8AqdAtTf8iMeYXHtwA4aGKKhVHJG/MxxCA80=;
 b=KbEQhKI3Kz+EqRjKNmSfzoHXAfM7DD2FmO/JJ/RL80Du58hXjd4dnTMx
 zg1yBJoyKVrkzBwCFPhE3pwFe8A9WgcbJhfVinQMYvq5btyoyWs7CwOY6
 PmX/LBaobiyd+jZv0FdAnFutioTVBJPZwux6PlqwTOBXIi9SiaGhc38Bw
 2EaywCcvb5KCrAdnlkGLHXqYavVaUW/lYgYNNWMcr5mtBWSPcBYzhjZ93
 IwxQ5vdO9HBRiBcV0XWaUJTUdOGCph/hZmsGZJn2GUf5DBYM02XhRFDG7
 C6JmvBx4vGbuK8GBLwWwVUZFH8GgKd77P5/XkLaVFATh0qCuMYsmHuCzn g==;
X-CSE-ConnectionGUID: Pw9UE60rSEyHnZkqxJq85Q==
X-CSE-MsgGUID: 3Uc2ROI1SmKAMSLIdhrjqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="18965155"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="18965155"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:57 -0700
X-CSE-ConnectionGUID: 6G/NpyI0TGGmUCl0CokfFA==
X-CSE-MsgGUID: tk+zA/FKTjuKyOJTUJ4CAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52814812"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:55 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 8/9] drm/i915/gt: Allow the user to change the CCS mode
 through sysfs
Date: Tue, 23 Jul 2024 13:20:45 +0200
Message-ID: <20240723112046.123938-9-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
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

Create the 'ccs_mode' file under

/sys/class/drm/cardX/gt/gt0/ccs_mode

This file allows the user to read and set the current CCS mode.

 - Reading: The user can read the current CCS mode, which can be
   1, 2, or 4. This value is derived from the current engine
   mask.

 - Writing: The user can set the CCS mode to 1, 2, or 4,
   depending on the desired number of exposed engines and the
   required load balancing.

The interface will return -EBUSY if other clients are connected
to i915, or -EINVAL if an invalid value is set.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 108 ++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 0d733b3e8df3..7773a04981a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -4,10 +4,27 @@
  */
 
 #include "i915_drv.h"
+#include "intel_engine_user.h"
 #include "intel_gt_ccs_mode.h"
+#include "intel_gt_pm.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_gt_sysfs.h"
+#include "i915_perf.h"
+#include "sysfs_engines.h"
+
+static void engine_update_mask(struct intel_gt *gt, u32 ccs_mode)
+{
+	unsigned long ccs_mask = gt->ccs.cslice_mask;
+	struct intel_gt_info *info = &gt->info;
+	int i;
+
+	/* Mask off all the CCS engines */
+	info->engine_mask &= ~GENMASK(CCS3, CCS0);
+
+	for_each_set_bit(i, &ccs_mask, I915_MAX_CCS)
+		info->engine_mask |= BIT(_CCS(i));
+}
 
 void intel_gt_ccs_mode_init(struct intel_gt *gt)
 {
@@ -148,6 +165,86 @@ static ssize_t num_cslices_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(num_cslices);
 
+static ssize_t ccs_mode_show(struct device *dev,
+			     struct device_attribute *attr, char *buff)
+{
+	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
+	u32 ccs_mode;
+
+	ccs_mode = hweight32(CCS_MASK(gt));
+
+	return sysfs_emit(buff, "%u\n", ccs_mode);
+}
+
+static ssize_t ccs_mode_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buff, size_t count)
+{
+	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
+	int num_cslices = hweight32(gt->ccs.cslice_mask);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
+	ssize_t ret;
+	u32 val;
+
+	/*
+	 * We don't want to change the CCS
+	 * mode while someone is using the GT
+	 */
+	if (intel_gt_pm_is_awake(gt))
+		return -EBUSY;
+
+	ret = kstrtou32(buff, 0, &val);
+	if (ret)
+		return ret;
+
+	/*
+	 * As of now possible values to be set are 1, 2, 4,
+	 * up to the maximum number of available slices
+	 */
+	if ((!val) || (val > num_cslices) || (num_cslices % val))
+		return -EINVAL;
+
+	/*
+	 * Nothing to do if the requested setting
+	 * is the same as the current one
+	 */
+	if (val == hweight32(CCS_MASK(gt)))
+		return count;
+
+	/* Recreate engine exposure */
+	intel_engines_remove_sysfs(gt->i915);
+
+	mutex_lock(&gt->ccs.mutex);
+	intel_gt_apply_ccs_mode(gt, val - 1);
+	mutex_unlock(&gt->ccs.mutex);
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	i915_perf_fini(gt->i915);
+	intel_engines_release(gt);
+	intel_engines_free(gt);
+
+	mutex_lock(&gt->ccs.mutex);
+	engine_update_mask(gt, val);
+	mutex_unlock(&gt->ccs.mutex);
+
+	intel_engines_init_mmio(gt);
+	i915_perf_init(gt->i915);
+	intel_engines_init(gt);
+
+	gt->i915->uabi_engines = RB_ROOT;
+	intel_engines_driver_register(gt->i915);
+
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
+	intel_engines_add_sysfs(gt->i915);
+
+	return count;
+}
+static DEVICE_ATTR_RW(ccs_mode);
+
 void intel_gt_sysfs_ccs_init(struct intel_gt *gt)
 {
 	int err;
@@ -155,4 +252,15 @@ void intel_gt_sysfs_ccs_init(struct intel_gt *gt)
 	err = sysfs_create_file(&gt->sysfs_gt, &dev_attr_num_cslices.attr);
 	if (err)
 		gt_dbg(gt, "failed to create sysfs num_cslices files\n");
+
+	/*
+	 * Do not create the ccs_mode file for non DG2 platforms
+	 * because they don't need it as they have only one CCS engine
+	 */
+	if (!IS_DG2(gt->i915))
+		return;
+
+	err = sysfs_create_file(&gt->sysfs_gt, &dev_attr_ccs_mode.attr);
+	if (err)
+		gt_dbg(gt, "failed to create sysfs ccs_mode files\n");
 }
-- 
2.45.2

