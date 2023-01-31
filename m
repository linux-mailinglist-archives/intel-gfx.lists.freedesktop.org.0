Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D058682580
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03FD10E338;
	Tue, 31 Jan 2023 07:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19AFF10E337
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675149832; x=1706685832;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X0hI0j+pewPJHwZzVEw9eaopVQCv9EhB2HTl/RDwmHE=;
 b=NesflRdNMywIV2EbWqNKnDt987zldUloE16FJbfd6LCPYbg2zKfC6TRk
 7Lei6RWjBJO/4LWko4OZBXd+yOLkmIQVhqNyb8/LuWteH7prlUyUxDDvU
 4RliqAoh2Zr8jXqubSO+N92hgnO8naU+omPqJIGmCMvGi1pgYYGpKSpnu
 Ii3FDGUmOkn624AwwU9eQ/qY32J7Q7SHfzIlNiZ9wA4ZDC+6Ry25YD7+V
 LYHYEBodmoFoNwxMeYO379Pq8z56hAMcNOlm+RDkhQmFbPQ0VHjwDuMKH
 VyKl/r4UicQ7RHC8UYCzpn50FvukEptHCtPVe/JzjhDyezofOTrzcw1pm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307428166"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="307428166"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696724832"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696724832"
Received: from sujaritha-z170x-ud5.fm.intel.com ([10.1.27.182])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 23:23:46 -0800
From: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 22:25:50 -0800
Message-Id: <20230131062550.11901-1-sujaritha.sundaresan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Add sysfs RAPL PL1 interface
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

Adding sysfs attribute rapl_pl1_freq_mhz. This shows the RAPL PL1
FREQUENCY LIMIT.

Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  4 ++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.c         | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h         |  1 +
 4 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7fa18a3b3957..1c78fc89a37a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1656,6 +1656,10 @@
 #define GT0_PACKAGE_POWER_SKU_UNIT		_MMIO(0x250068)
 #define GT0_PLATFORM_ENERGY_STATUS		_MMIO(0x25006c)
 
+#define XEHPSDV_RAPL_PL1_FREQ_LIMIT		_MMIO(0x250070)
+#define MTL_RAPL_PL1_FREQ_LIMIT		_MMIO(0x281070)
+#define   RAPL_PL1_FREQ_LIMIT_MASK		REG_GENMASK(15, 0)
+
 /*
  * Standalone Media's non-engine GT registers are located at their regular GT
  * offsets plus 0x380000.  This extra offset is stored inside the intel_uncore
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 28f27091cd3b..0b52962e2856 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -451,6 +451,16 @@ static ssize_t punit_req_freq_mhz_show(struct kobject *kobj,
 	return sysfs_emit(buff, "%u\n", preq);
 }
 
+static ssize_t rapl_pl1_freq_mhz_show(struct kobject *kobj,
+				      struct kobj_attribute *attr,
+				      char *buff)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	u32 rapl_pl1 = intel_rps_read_rapl_pl1(&gt->rps);
+
+	return sysfs_emit(buff, "%u\n", rapl_pl1);
+}
+
 struct intel_gt_bool_throttle_attr {
 	struct attribute attr;
 	ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
@@ -480,6 +490,7 @@ struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
 }
 
 INTEL_GT_ATTR_RO(punit_req_freq_mhz);
+INTEL_GT_ATTR_RO(rapl_pl1_freq_mhz);
 static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_status, GT0_PERF_LIMIT_REASONS_MASK);
 static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl1, POWER_LIMIT_1_MASK);
 static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl2, POWER_LIMIT_2_MASK);
@@ -744,6 +755,10 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 	if (ret)
 		gt_warn(gt, "failed to create punit_req_freq_mhz sysfs (%pe)", ERR_PTR(ret));
 
+	ret = sysfs_create_file(kobj, &attr_rapl_pl1_freq_mhz.attr);
+	if (ret)
+		gt_warn(gt, "failed to create rapl_pl1_freq_mhz sysfs (%pe)", ERR_PTR(ret));
+
 	if (i915_mmio_reg_valid(intel_gt_perf_limit_reasons_reg(gt))) {
 		ret = sysfs_create_files(kobj, throttle_reason_attrs);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index f5d7b5126433..f66d6f47f2cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2202,6 +2202,24 @@ u32 intel_rps_get_max_frequency(struct intel_rps *rps)
 		return intel_gpu_freq(rps, rps->max_freq_softlimit);
 }
 
+u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	u32 rapl_pl1;
+	u32 rapl;
+
+	if (IS_METEORLAKE(i915))
+		rapl_pl1 = intel_uncore_read(rps_to_gt(rps)->uncore, MTL_RAPL_PL1_FREQ_LIMIT);
+	else if (IS_XEHPSDV(i915))
+		rapl_pl1  = intel_uncore_read(rps_to_gt(rps)->uncore, XEHPSDV_RAPL_PL1_FREQ_LIMIT);
+
+
+	if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
+		rapl = REG_FIELD_GET(RAPL_PL1_FREQ_LIMIT_MASK, rapl_pl1);
+
+	return rapl;
+}
+
 /**
  * intel_rps_get_max_raw_freq - returns the max frequency in some raw format.
  * @rps: the intel_rps structure
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index c622962c6bef..c37d297c9d82 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -51,6 +51,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
+u32 intel_rps_read_rapl_pl1(struct intel_rps *rps);
 u32 intel_rps_read_rpstat(struct intel_rps *rps);
 u32 intel_rps_read_rpstat_fw(struct intel_rps *rps);
 void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
-- 
2.34.1

