Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D605A11D4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 15:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3B410E29E;
	Thu, 25 Aug 2022 13:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44F810E2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 13:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661433572; x=1692969572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kDZ/CsJnR5Mp1MXH1MfReT7B5hirM4PpfP1onAo/Zb0=;
 b=HMb8j+TbsbTVTjHpmRAx84zzzIjLPp/FyojOJEj0LY2dUsuOB0CyCOXy
 uxKFAa9vrZPP4q+3WS2xDyXvQxhtexG4brHpL3WMzDyaZb51JKbN/1FfY
 +xsJlc7nx6WpppA6udLc18qXdTG9YDU8GtT1MO+JmV32PoIIGXbtzIdAu
 gr/kknbbh/aKl8/seUe5mfNJzpTVDAF2avP8dFd9eLG7Un49NktHF+iAA
 P9YGEQWmWkJQI6iCXGS9EKzgzH9pCJPlPvimsT5X6UfB4Utj08FCgFjBf
 ivI3d5Vzm7ZX/6KdkFxTZcQ0Q2kG5ZCZgsXFlMR1lSw2H7LPZdeHYcPMG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380526068"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="380526068"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="670974980"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:30 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 18:51:18 +0530
Message-Id: <20220825132118.784407-8-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220825132118.784407-1-badal.nilawar@intel.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/hwmon: Extend power/energy for
 XEHPSDV
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
Cc: linux-hwmon@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Extend hwmon power/energy for XEHPSDV especially per gt level energy
usage.

v2: Update to latest HWMON spec (Ashutosh)

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |   7 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
 drivers/gpu/drm/i915/i915_hwmon.c             | 120 +++++++++++++++++-
 3 files changed, 128 insertions(+), 4 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 34668f6c2dc4..e69bc43d4c9e 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -65,6 +65,11 @@ What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
 Date:		June 2022
 KernelVersion:	5.19
 Contact:	dri-devel@lists.freedesktop.org
-Description:	RO. Energy input of device in microjoules.
+Description:	RO. Energy input of device or gt in microjoules.
+
+		For i915 device level hwmon devices (name "i915") this
+		reflects energy input for the entire device. For gt level
+		hwmon devices (name "i915_gtN") this reflects energy input
+		for the gt.
 
 		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 5d4fbda4d326..b7b343cec2da 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1579,4 +1579,9 @@
 
 #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
 
+#define GT0_PACKAGE_ENERGY_STATUS		_MMIO(0x250004)
+#define GT0_PACKAGE_RAPL_LIMIT			_MMIO(0x250008)
+#define GT0_PACKAGE_POWER_SKU_UNIT		_MMIO(0x250068)
+#define GT0_PLATFORM_ENERGY_STATUS		_MMIO(0x25006c)
+
 #endif /* __INTEL_GT_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index b8ac52f07681..76d73216c54e 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -12,6 +12,7 @@
 #include "i915_reg.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
 
 /*
@@ -21,7 +22,7 @@
  * - curr   - milliamperes
  * - energy - microjoules
  */
-#define SF_TIME            1000
+#define SF_TIME		1000
 #define SF_POWER	1000000
 #define SF_CURR		1000
 #define SF_ENERGY	1000000
@@ -37,6 +38,7 @@ struct hwm_reg {
 	i915_reg_t pkg_power_sku;
 	i915_reg_t pkg_rapl_limit;
 	i915_reg_t energy_status_all;
+	i915_reg_t energy_status_tile;
 };
 
 struct hwm_energy_info {
@@ -50,10 +52,12 @@ struct hwm_drvdata {
 	struct device *hwmon_dev;
 	struct hwm_energy_info ei;		/*  Energy info for energy1_input */
 	char name[12];
+	int gt_n;
 };
 
 struct i915_hwmon {
 	struct hwm_drvdata ddat;
+	struct hwm_drvdata ddat_gt[I915_MAX_GT];
 	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
 	struct hwm_reg rg;
 	int scl_shift_power;
@@ -148,7 +152,10 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
 	i915_reg_t rgaddr;
 	u32 reg_val;
 
-	rgaddr = hwmon->rg.energy_status_all;
+	if (ddat->gt_n >= 0)
+		rgaddr = hwmon->rg.energy_status_tile;
+	else
+		rgaddr = hwmon->rg.energy_status_all;
 
 	if (!i915_mmio_reg_valid(rgaddr))
 		return -EOPNOTSUPP;
@@ -296,6 +303,11 @@ static const struct hwmon_channel_info *hwm_info[] = {
 	NULL
 };
 
+static const struct hwmon_channel_info *hwm_gt_info[] = {
+	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
+	NULL
+};
+
 /* I1 is exposed as power_crit or as curr_crit depending on bit 31 */
 static int hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)
 {
@@ -428,7 +440,10 @@ hwm_energy_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 
 	switch (attr) {
 	case hwmon_energy_input:
-		rgaddr = hwmon->rg.energy_status_all;
+		if (ddat->gt_n >= 0)
+			rgaddr = hwmon->rg.energy_status_tile;
+		else
+			rgaddr = hwmon->rg.energy_status_all;
 		return i915_mmio_reg_valid(rgaddr) ? 0444 : 0;
 	default:
 		return 0;
@@ -563,6 +578,44 @@ static const struct hwmon_chip_info hwm_chip_info = {
 	.info = hwm_info,
 };
 
+static umode_t
+hwm_gt_is_visible(const void *drvdata, enum hwmon_sensor_types type,
+		  u32 attr, int channel)
+{
+	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
+
+	switch (type) {
+	case hwmon_energy:
+		return hwm_energy_is_visible(ddat, attr);
+	default:
+		return 0;
+	}
+}
+
+static int
+hwm_gt_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+	    int channel, long *val)
+{
+	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
+
+	switch (type) {
+	case hwmon_energy:
+		return hwm_energy_read(ddat, attr, val);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static const struct hwmon_ops hwm_gt_ops = {
+	.is_visible = hwm_gt_is_visible,
+	.read = hwm_gt_read,
+};
+
+static const struct hwmon_chip_info hwm_gt_chip_info = {
+	.ops = &hwm_gt_ops,
+	.info = hwm_gt_info,
+};
+
 static void
 hwm_get_preregistration_info(struct drm_i915_private *i915)
 {
@@ -571,7 +624,9 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 	struct hwm_drvdata *ddat = &hwmon->ddat;
 	intel_wakeref_t wakeref;
 	u32 val_sku_unit;
+	struct intel_gt *gt;
 	long energy;
+	int i;
 
 	if (IS_DG1(i915) || IS_DG2(i915)) {
 		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
@@ -579,12 +634,21 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
 		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
+	} else if (IS_XEHPSDV(i915)) {
+		hwmon->rg.pkg_power_sku_unit = GT0_PACKAGE_POWER_SKU_UNIT;
+		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
+		hwmon->rg.pkg_rapl_limit = GT0_PACKAGE_RAPL_LIMIT;
+		hwmon->rg.energy_status_all = GT0_PLATFORM_ENERGY_STATUS;
+		hwmon->rg.energy_status_tile = GT0_PACKAGE_ENERGY_STATUS;
+		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
 	} else {
 		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
 		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 	}
 
 	with_intel_runtime_pm(uncore->rpm, wakeref) {
@@ -614,6 +678,10 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 	 */
 	if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
 		hwm_energy(ddat, &energy);
+	if (i915_mmio_reg_valid(hwmon->rg.energy_status_tile)) {
+		for_each_gt(gt, i915, i)
+			hwm_energy(&hwmon->ddat_gt[i], &energy);
+	}
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
@@ -622,6 +690,10 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	struct i915_hwmon *hwmon;
 	struct device *hwmon_dev;
 	struct hwm_drvdata *ddat;
+	struct hwm_drvdata *ddat_gt;
+	struct intel_gt *gt;
+	const char *ddname;
+	int i;
 
 	/* hwmon is available only for dGfx */
 	if (!IS_DGFX(i915))
@@ -638,6 +710,16 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	ddat->hwmon = hwmon;
 	ddat->uncore = &i915->uncore;
 	snprintf(ddat->name, sizeof(ddat->name), "i915");
+	ddat->gt_n = -1;
+
+	for_each_gt(gt, i915, i) {
+		ddat_gt = hwmon->ddat_gt + i;
+
+		ddat_gt->hwmon = hwmon;
+		ddat_gt->uncore = gt->uncore;
+		snprintf(ddat_gt->name, sizeof(ddat_gt->name), "i915_gt%u", i);
+		ddat_gt->gt_n = i;
+	}
 
 	hwm_get_preregistration_info(i915);
 
@@ -654,18 +736,50 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	}
 
 	ddat->hwmon_dev = hwmon_dev;
+
+	for_each_gt(gt, i915, i) {
+		ddat_gt = hwmon->ddat_gt + i;
+		/*
+		 * Create per-gt directories only if a per-gt attribute is
+		 * visible. Currently this is only energy
+		 */
+		if (!hwm_gt_is_visible(ddat_gt, hwmon_energy, hwmon_energy_input, 0))
+			continue;
+
+		ddname = ddat_gt->name;
+		hwmon_dev = hwmon_device_register_with_info(dev, ddname,
+							    ddat_gt,
+							    &hwm_gt_chip_info,
+							    NULL);
+		if (!IS_ERR(hwmon_dev))
+			ddat_gt->hwmon_dev = hwmon_dev;
+	}
 }
 
 void i915_hwmon_unregister(struct drm_i915_private *i915)
 {
 	struct i915_hwmon *hwmon;
 	struct hwm_drvdata *ddat;
+	struct intel_gt *gt;
+	int i;
 
 	hwmon = fetch_and_zero(&i915->hwmon);
 	if (!hwmon)
 		return;
 
 	ddat = &hwmon->ddat;
+
+	for_each_gt(gt, i915, i) {
+		struct hwm_drvdata *ddat_gt;
+
+		ddat_gt = hwmon->ddat_gt + i;
+
+		if (ddat_gt->hwmon_dev) {
+			hwmon_device_unregister(ddat_gt->hwmon_dev);
+			ddat_gt->hwmon_dev = NULL;
+		}
+	}
+
 	if (ddat->hwmon_dev)
 		hwmon_device_unregister(ddat->hwmon_dev);
 
-- 
2.25.1

