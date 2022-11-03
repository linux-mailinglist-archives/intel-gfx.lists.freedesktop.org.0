Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4A5617DF5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 14:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FE910E297;
	Thu,  3 Nov 2022 13:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E26610E297
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667482349; x=1699018349;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ih9LYoZayMPUrMHhaqekewZBtENE7tkh7XXlMybYHLw=;
 b=BRHUkQDmDBUa/EL+bazphstHZRv21fCSgb/4RLuYy07VDKWMKFZ14frz
 6AkMgbIVtE68Rn3mo4R4lODoohhpmPSKnpmA2eWCESTDTlwMMyFiaPO0y
 4Yn/nkqAnr9zBpw5+b5D7TqAhfY7R0etnOUCFQ00KxfMwGw9u2xPVEcGl
 BP6UNEkDv9hKkK4uAiSNNcwi3LGzo2Rax+jtgNitmTxYZk+FcO5PTqZWK
 GZBPdgWdor0Xojd6SYra7lruIqCOIswI0TSmGWGpd+JQ183e+KqtzEgPt
 meTitbaLuVsZpScC829YrawA0tXxiPlIPnPKQSsWnY7ba0UP6uzpxU4BI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="395986412"
X-IronPort-AV: E=Sophos;i="5.96,235,1665471600"; d="scan'208";a="395986412"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 06:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="667967839"
X-IronPort-AV: E=Sophos;i="5.96,235,1665471600"; d="scan'208";a="667967839"
Received: from sujaritha-z170x-ud5.fm.intel.com ([10.1.27.182])
 by orsmga001.jf.intel.com with ESMTP; 03 Nov 2022 06:32:28 -0700
From: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Nov 2022 05:37:23 -0700
Message-Id: <20221103123723.18063-1-sujaritha.sundaresan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1] drm/i915/gt: Add sysfs RAPL PL1 interface
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

Adding the rapl_pl1_freq_mhz sysfs attribute.

Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 20 ++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.c         | 44 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h         |  3 ++
 drivers/gpu/drm/i915/i915_reg.h             |  4 ++
 4 files changed, 71 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 904160952369..e7f00ec252f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -496,6 +496,17 @@ static DEVICE_ATTR_RO(vlv_rpe_freq_mhz);
 static const struct attribute * const gen6_rps_attrs[] = GEN6_RPS_ATTR;
 static const struct attribute * const gen6_gt_attrs[]  = GEN6_GT_ATTR;
 
+static ssize_t rapl_pl1_freq_mhz_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buff)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
+	u32 rapl_pl1 = intel_rps_read_rapl_pl1_frequency(&gt->rps);
+
+	return sysfs_emit(buff, "%u\n", rapl_pl1);
+}
+
+
 static ssize_t punit_req_freq_mhz_show(struct device *dev,
 				       struct device_attribute *attr,
 				       char *buff)
@@ -534,6 +545,7 @@ struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
 	.mask = mask__, \
 }
 
+static DEVICE_ATTR_RO(rapl_pl1_freq_mhz);
 static DEVICE_ATTR_RO(punit_req_freq_mhz);
 static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_status, GT0_PERF_LIMIT_REASONS_MASK);
 static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl1, POWER_LIMIT_1_MASK);
@@ -790,12 +802,20 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 	if (!is_object_gt(kobj))
 		return;
 
+	ret = sysfs_create_file(kobj, &dev_attr_rapl_pl1_freq_mhz.attr);
+	if (ret)
+		drm_warn(&gt->i915->drm,
+			"failed to create gt%u rapl_pl1_freq_mhz sysfs(%pe)",
+			gt->info.id, ERR_PTR(ret));
+
+
 	ret = sysfs_create_file(kobj, &dev_attr_punit_req_freq_mhz.attr);
 	if (ret)
 		drm_warn(&gt->i915->drm,
 			 "failed to create gt%u punit_req_freq_mhz sysfs (%pe)",
 			 gt->info.id, ERR_PTR(ret));
 
+
 	if (i915_mmio_reg_valid(intel_gt_perf_limit_reasons_reg(gt))) {
 		ret = sysfs_create_files(kobj, throttle_reason_attrs);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 17b40b625e31..0e89b941e3be 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
@@ -2422,6 +2423,49 @@ bool rps_read_mask_mmio(struct intel_rps *rps,
 	return rps_read_mmio(rps, reg32) & mask;
 }
 
+u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	i915_reg_t rgadr;
+	u32 rapl_pl1;
+
+	if (IS_METEORLAKE(i915)) {
+		rgadr = MTL_RAPL_PL1_FREQ_LIMIT;
+	} else if (IS_XEHPSDV(i915)) {
+		rgadr = XEHPSDV_RAPL_PL1_FREQ_LIMIT;
+	} else {
+		MISSING_CASE(GRAPHICS_VER(i915));
+		rgadr = INVALID_MMIO_REG;
+	}
+
+	if (!i915_mmio_reg_valid(rgadr))
+		rapl_pl1 = 0;
+	else
+		rapl_pl1 = rps_read_mmio(rps, rgadr);
+
+	return rapl_pl1;
+}
+
+u32 intel_rps_get_rapl(struct intel_rps *rps, u32 rapl_pl1)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	u32 rapl = 0;
+
+	if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
+		rapl = rapl_pl1 & RAPL_PL1_FREQ_LIMIT_MASK;
+	else
+		MISSING_CASE(GRAPHICS_VER(i915));
+
+	return rapl;
+}
+
+u32 intel_rps_read_rapl_pl1_frequency(struct intel_rps *rps)
+{
+	u32 rapl_freq = intel_rps_get_rapl(rps, intel_rps_read_rapl_pl1(rps));
+
+	return (rapl_freq >> 8) * GT_FREQUENCY_MULTIPLIER;
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 4509dfdc52e0..4adc6aaedba0 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -34,6 +34,7 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
 int intel_gpu_freq(struct intel_rps *rps, int val);
 int intel_freq_opcode(struct intel_rps *rps, int val);
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat1);
+u32 intel_rps_get_rapl(struct intel_rps *rps, u32 rapl_pl1);
 u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
 u32 intel_rps_get_requested_frequency(struct intel_rps *rps);
 u32 intel_rps_get_min_frequency(struct intel_rps *rps);
@@ -47,6 +48,8 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
+u32 intel_rps_read_rapl_pl1(struct intel_rps *rps);
+u32 intel_rps_read_rapl_pl1_frequency(struct intel_rps *rps);
 void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
 void intel_rps_raise_unslice(struct intel_rps *rps);
 void intel_rps_lower_unslice(struct intel_rps *rps);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5003a5ffbc6a..68ff98e27b8d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1818,6 +1818,10 @@
 #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
 #define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
 
+#define XEHPSDV_RAPL_PL1_FREQ_LIMIT	_MMIO(0x250070)
+#define MTL_RAPL_PL1_FREQ_LIMIT	_MMIO(0x281070)
+#define RAPL_PL1_FREQ_LIMIT_MASK	0xffff
+
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
 #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
-- 
2.34.1

