Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C602973595
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 12:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E193910E785;
	Tue, 10 Sep 2024 10:53:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQWUHJ/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E3C10E785
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 10:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725965598; x=1757501598;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gbcfxi3fuUsEpZHDWLOHwSlVL/+BWL9bYFuN88fUQxM=;
 b=LQWUHJ/gED4doyyjLgJS43LyWoXeOssy+40Sj0vBcvjtdwP1/znVYZf/
 a5naTQKPEsfWEyAie17gCzgWIR5uMVmGVyM+vPRsuZOL4rCcvHKHU1ZTM
 EcMxI0BdIZ0XFt4jDraPbiwl5Ptgfar9FLivy/saP03ZUiB0WcoAx0KVF
 Zez1ISz9J7la0IwR2ptPpqcE9Do33+H/tK8dYTvmoNPH1DOGNeEwrUDFk
 qmP8dqoWCKyj2b/Zobh2saN2LHpKmqGiHXlB0quRH3RHnzheYbz9IHB1R
 qWjRfkLcK7w81OKSf7xYRnEXqUoFOU0ic9g81BDrBu01GFY0NLLrQk1GU A==;
X-CSE-ConnectionGUID: xq3MgGj7R1m9aBRs+M8sNw==
X-CSE-MsgGUID: 2YOg5lNlRz6VgtEy6VIrNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35275070"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="35275070"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:53:18 -0700
X-CSE-ConnectionGUID: n4dJATNFSr2HuNbjet4s6Q==
X-CSE-MsgGUID: VNgLbFf+Q2uNhrgOqRJHCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="67746274"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa008.jf.intel.com with ESMTP; 10 Sep 2024 03:53:14 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, linux@roeck-us.net,
 andi.shyti@linux.intel.com, andriy.shevchenko@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 ashutosh.dixit@intel.com, karthik.poosa@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3] drm/i915/hwmon: expose package temperature
Date: Tue, 10 Sep 2024 16:22:42 +0530
Message-Id: <20240910105242.3357276-1-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add hwmon support for temp1_input attribute, which will expose package
temperature in millidegree Celsius. With this in place we can monitor
package temperature using lm-sensors tool.

$ sensors
i915-pci-0300
Adapter: PCI adapter
in0:         990.00 mV
fan1:        1260 RPM
temp1:        +45.0°C
power1:           N/A  (max =  35.00 W)
energy1:      12.62 kJ

v2: Use switch case (Anshuman)
v3: Comment adjustment (Riana)

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
Signed-off-by: Raag Jadav <raag.jadav@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
 drivers/gpu/drm/i915/i915_hwmon.c             | 40 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
 3 files changed, 52 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index be4141a7522f..a885e5316d02 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
 Description:	RO. Fan speed of device in RPM.
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
+Date:		November 2024
+KernelVersion:	6.12
+Contact:	intel-gfx@lists.freedesktop.org
+Description:	RO. GPU package temperature in millidegree Celsius.
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 17d30f6b84b0..7dfe1784153f 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -7,6 +7,7 @@
 #include <linux/hwmon-sysfs.h>
 #include <linux/jiffies.h>
 #include <linux/types.h>
+#include <linux/units.h>
 
 #include "i915_drv.h"
 #include "i915_hwmon.h"
@@ -32,6 +33,7 @@
 
 struct hwm_reg {
 	i915_reg_t gt_perf_status;
+	i915_reg_t pkg_temp;
 	i915_reg_t pkg_power_sku_unit;
 	i915_reg_t pkg_power_sku;
 	i915_reg_t pkg_rapl_limit;
@@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
 };
 
 static const struct hwmon_channel_info * const hwm_info[] = {
+	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
 	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
 	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
@@ -310,6 +313,37 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
 				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
 }
 
+static umode_t
+hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+
+	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
+		return 0444;
+
+	return 0;
+}
+
+static int
+hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	intel_wakeref_t wakeref;
+	u32 reg_val;
+
+	switch (attr) {
+	case hwmon_temp_input:
+		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
+			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
+
+		/* HW register value is in degrees Celsius, convert to millidegrees. */
+		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static umode_t
 hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 {
@@ -692,6 +726,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
 
 	switch (type) {
+	case hwmon_temp:
+		return hwm_temp_is_visible(ddat, attr);
 	case hwmon_in:
 		return hwm_in_is_visible(ddat, attr);
 	case hwmon_power:
@@ -714,6 +750,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
 
 	switch (type) {
+	case hwmon_temp:
+		return hwm_temp_read(ddat, attr, val);
 	case hwmon_in:
 		return hwm_in_read(ddat, attr, val);
 	case hwmon_power:
@@ -810,6 +848,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 	hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
 
 	if (IS_DG1(i915) || IS_DG2(i915)) {
+		hwmon->rg.pkg_temp = PCU_PACKAGE_TEMPERATURE;
 		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
 		hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
@@ -817,6 +856,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 		hwmon->rg.fan_speed = PCU_PWM_FAN_SPEED;
 	} else {
+		hwmon->rg.pkg_temp = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 73900c098d59..dc2477179c3e 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -207,6 +207,10 @@
 #define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
 
 #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
+
+#define PCU_PACKAGE_TEMPERATURE			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5978)
+#define   TEMP_MASK				REG_GENMASK(7, 0)
+
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
 #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
-- 
2.34.1

