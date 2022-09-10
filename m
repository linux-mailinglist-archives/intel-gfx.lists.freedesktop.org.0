Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FA55B46DB
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 16:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FF210E1E4;
	Sat, 10 Sep 2022 14:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B80D10E1E5
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Sep 2022 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662820728; x=1694356728;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ztMEq+w2Jh7VdjXNBHJ2ux5oObyIv93Oz3TDcAYRdAM=;
 b=VzmEBa6LwRLHXMRbXatXp8rfb9hAncxe1VoBMxMmBL7VOlWhN6XHCVjV
 zAOWde3g6aiq25TlrePUB6zjA4gCloXJE72uFIO3Vj6HXaxjEOjkK381l
 4UuNrXQ1fT8SmWwCR1geQVcOjOOd286lcwushzUpnZAL6Mg82cYiStAOL
 tvgJDQ8GMuOYl2zzp7db1o+OksMR8B4KdM/ovVnhQA28MIw7J7ig+RcaU
 PzFKZUHZ0VUzCTG9rxgF68aBDYdDJlDBXi7kG+PvwnsPcG+wjCUYsAw0K
 3bT3SjwQWoZgVGiS90g2OGCJbx5PPzhrp6sW/IwiAujmbrLIN+i2u9WDN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10466"; a="295231747"
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="295231747"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="566685279"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Sep 2022 07:38:43 -0700
Message-Id: <20220910143844.1755324-3-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: PERF_LIMIT_REASONS changes
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt.h            | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h               | 1 +
 5 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b59fb03ed274..46929afa18c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -229,6 +229,12 @@ static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
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
index 2ee582e287c8..e0365d556248 100644
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
index 58b0ed9dddd5..38e895ad4b59 100644
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

