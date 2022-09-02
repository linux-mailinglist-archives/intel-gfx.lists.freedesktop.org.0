Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E045ABB6C
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127F510E93A;
	Fri,  2 Sep 2022 23:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5163410E949
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 23:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662162789; x=1693698789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWrAWPV+AJw8HXPmk02itqZ1sKwRL49YL0atpvvKAyY=;
 b=WJx7izQPy/H8aiuDaMMK2phRCa0UVRKpkBC/ez7hPRsCB3QDeC8ERxMw
 RfyQsnOhanxpDoLVUHDJ3FliqzYE97FWnXrnBDI2iNxGJFNqggU2lWBT1
 1ytbRyscYeBWjheHngPK5E3Es/LRjHbF5+FWMVBtsvIxmapnnXmRnQiqJ
 o26DCyK2iI8lOlJAX/Z9SMFul3JZkYKkYn3DZTnIt7Zlmm7LDzy5hvrpr
 g6SE5wf7ajuIuH9xJzJ3e8bm4M1UeL8uj2tVMP2zAQt9iwNFXs5jMBrT1
 fOg9aUjOGxG5e7H9IZaGXxNye7QggYxx83v8lujv+p9SvoMuhy70yNpPd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279125067"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="279125067"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="564135559"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:53:01 -0700
Message-Id: <20220902235302.1112388-6-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/mtl: PERF_LIMIT_REASONS changes
 for MTL
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

PERF_LIMIT_REASONS register for MTL media gt is different now.

Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h            | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h               | 1 +
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index c9a359f35d0f..7286d47113ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -9,6 +9,7 @@
 #include "intel_engine_types.h"
 #include "intel_gt_types.h"
 #include "intel_reset.h"
+#include "i915_reg.h"
 
 struct drm_i915_private;
 struct drm_printer;
@@ -86,6 +87,13 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
 }
 
+static inline
+i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt)
+{
+	return gt->type == GT_MEDIA ?
+		MTL_MEDIA_PERF_LIMIT_REASONS : GT0_PERF_LIMIT_REASONS;
+}
+
 int intel_gt_probe_all(struct drm_i915_private *i915);
 int intel_gt_tiles_init(struct drm_i915_private *i915);
 void intel_gt_release_all(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 5c95cba5e5df..fe0091f953c1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -661,7 +661,7 @@ static int perf_limit_reasons_get(void *data, u64 *val)
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
+		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 
 	return 0;
 }
@@ -673,7 +673,7 @@ static int perf_limit_reasons_clear(void *data, u64 val)
 
 	/* Clear the upper 16 log bits, the lower 16 status bits are read-only */
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
+		intel_uncore_rmw(gt->uncore, intel_gt_perf_limit_reasons_reg(gt),
 				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index e066cc33d9f2..54deae45d81f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -510,7 +510,7 @@ struct intel_gt_bool_throttle_attr {
 	struct attribute attr;
 	ssize_t (*show)(struct device *dev, struct device_attribute *attr,
 			char *buf);
-	i915_reg_t reg32;
+	i915_reg_t (*reg32)(struct intel_gt *gt);
 	u32 mask;
 };
 
@@ -521,7 +521,7 @@ static ssize_t throttle_reason_bool_show(struct device *dev,
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
 	struct intel_gt_bool_throttle_attr *t_attr =
 				(struct intel_gt_bool_throttle_attr *) attr;
-	bool val = rps_read_mask_mmio(&gt->rps, t_attr->reg32, t_attr->mask);
+	bool val = rps_read_mask_mmio(&gt->rps, t_attr->reg32(gt), t_attr->mask);
 
 	return sysfs_emit(buff, "%u\n", val);
 }
@@ -530,7 +530,7 @@ static ssize_t throttle_reason_bool_show(struct device *dev,
 struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
 	.attr = { .name = __stringify(sysfs_func__), .mode = 0444 }, \
 	.show = throttle_reason_bool_show, \
-	.reg32 = GT0_PERF_LIMIT_REASONS, \
+	.reg32 = intel_gt_perf_limit_reasons_reg, \
 	.mask = mask__, \
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 10126995e1f6..06d555321651 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1803,6 +1803,7 @@
 #define   POWER_LIMIT_1_MASK		REG_BIT(11)
 #define   POWER_LIMIT_2_MASK		REG_BIT(12)
 #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
+#define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
-- 
2.34.1

