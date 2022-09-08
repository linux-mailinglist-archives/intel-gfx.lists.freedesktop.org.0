Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8788D5B1401
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F92F10E958;
	Thu,  8 Sep 2022 05:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F0310E958
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614626; x=1694150626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2zsGOfF6GTq3MT4oDwXA+A/4/JVb5YIykwiU/6A098=;
 b=i2yqXg4Wun0RCfNEn98AFrAdE9g8AqaxynZdh2JSkJ8WBRXqbGS5nBk+
 oJpVaVywABZsFXsCYTNz+gFI6154w6STkkOw/IWeZGqw2ftTINhr77SF/
 vgCNVc8d8TZvzp6KznMKudMtTjennhTmXNk6UL/dQcnZj/LP/dYR5xaN5
 scVDEfYhZ5Z8LhlWJ1YDpccFhGWnEawwBk5wt90ejCDqEVYRZDLl3JU1j
 DEk9MAyCkgOIYR15vOhKK405N1uQI6TbteoI9xoFer94RDYNbOID/AWnx
 O4oGauqd9SVxeuimwv/mVbopRw8mrAsOd/TmkDDZ5uBBee5jZ2nhYYBBB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="383365334"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="383365334"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:23:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="683091518"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:23:41 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:23:38 -0700
Message-Id: <33dce2f6fd36cbaa570265997a5b2f4034fb6688.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/mtl: PERF_LIMIT_REASONS changes
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

v2: Avoid static inline for intel_gt_perf_limit_reasons_reg() (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt.h            | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h               | 1 +
 5 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 070068524a19..602d711d3c9e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -224,6 +224,12 @@ static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
 	GEN6_RING_FAULT_REG_POSTING_READ(engine);
 }
 
+i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt)
+{
+	return gt->type == GT_MEDIA ?
+		MTL_MEDIA_PERF_LIMIT_REASONS : GT0_PERF_LIMIT_REASONS;
+}
+
 void
 intel_gt_clear_error_registers(struct intel_gt *gt,
 			       intel_engine_mask_t engine_mask)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index c9a359f35d0f..b6509d3e8804 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -60,6 +60,7 @@ void intel_gt_driver_late_release_all(struct drm_i915_private *i915);
 int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
 
 void intel_gt_check_and_clear_faults(struct intel_gt *gt);
+i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt);
 void intel_gt_clear_error_registers(struct intel_gt *gt,
 				    intel_engine_mask_t engine_mask);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index a009cf69103a..68310881a793 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -661,7 +661,7 @@ static int perf_limit_reasons_get(void *data, u64 *val)
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
+		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 
 	return 0;
 }
@@ -677,7 +677,7 @@ static int perf_limit_reasons_clear(void *data, u64 val)
 	 * "status" bits except that the "log" bits remain set until cleared.
 	 */
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
index 9492f8f43b25..10a89d869b00 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1803,6 +1803,7 @@
 #define   POWER_LIMIT_1_MASK		REG_BIT(10)
 #define   POWER_LIMIT_2_MASK		REG_BIT(11)
 #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
+#define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
-- 
2.34.1

