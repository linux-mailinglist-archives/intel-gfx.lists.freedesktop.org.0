Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C65655525F8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 22:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C3B10E50F;
	Mon, 20 Jun 2022 20:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432BB10E50F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 20:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655758029; x=1687294029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HDmo7oG5UPLJRAlW40rts+cDQmS0+J0NXy4Frz1F8DY=;
 b=DuzQKzUN+Y5QusOCpxhRhp5i5Xjhusp01eSfq/oGD3PhnFYpcNklq1Li
 BCF3E2YAD5l4KBG79jsZwvHjDwEUR3cZEy4AERevOqNYMjKA/IyoNLEiI
 PCbixYyMiUJT6Wkw+ZX+VE13YM+wgzpfBBM5H0Y/LVpq2YLt6xXz2Xlnu
 qEr+eE9oCHcElcNfUixyqiPROlLNCV0GAwzKQx/JeYmWH6ZYsSJ09lRqM
 jes70Uzeu1S5EoUGJfhlGLswbAj/kUx8cj2hS5eyQi9bQcbzzdh5AaYrt
 bDeLsMENwMVmxY2Qh6/xbBbtIRmUIToLFIy9SRy0OuWKERusjM9zDmnCW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259792761"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="259792761"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 13:47:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="620226979"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 13:47:06 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jun 2022 02:16:49 +0530
Message-Id: <20220620204649.894703-5-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620204649.894703-1-badal.nilawar@intel.com>
References: <20220620204649.894703-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/hwmon: Add HWMON energy support
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

As part of the System Managemenent Interface (SMI), use the HWMON
subsystem to display energy utilization

v2:
  - Updated the date and kernel version in feature description

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  16 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 174 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_hwmon.h             |   1 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   2 +
 4 files changed, 185 insertions(+), 8 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 945f472dd4a2..2e87d7422b73 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -25,3 +25,19 @@ Contact:	dri-devel@lists.freedesktop.org
 Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
+Date:		June 2022
+KernelVersion:	5.19
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Energy input of device in microjoules.
+
+		The returned textual representation is an unsigned integer
+		number that can be stored in 64-bits.  Warning: The hardware
+		register is 32-bits wide and can overflow by wrapping around.
+		A single wrap-around between calls to read this value can
+		be detected and will be accounted for in the returned value.
+		At a power consumption of 1 watt, the 32-bit hardware register
+		would wrap-around approximately every 3 days.
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 75935a55f573..77d68f17316a 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -19,8 +19,10 @@
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
  * - power  - microwatts
+ * - energy - microjoules
  */
 #define SF_POWER	1000000
+#define SF_ENERGY	1000000
 
 #define FIELD_SHIFT(__mask)				    \
 	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
@@ -32,12 +34,20 @@ struct i915_hwmon_reg {
 	i915_reg_t pkg_power_sku_unit;
 	i915_reg_t pkg_power_sku;
 	i915_reg_t pkg_rapl_limit;
+	i915_reg_t energy_status_all;
+	i915_reg_t energy_status_tile;
+};
+
+struct i915_energy_info {
+	u32 energy_counter_overflow;
+	u32 energy_counter_prev;
 };
 
 struct i915_hwmon_drvdata {
 	struct i915_hwmon *hwmon;
 	struct intel_uncore *uncore;
 	struct device *hwmon_dev;
+	struct i915_energy_info ei;	/*  Energy info for energy1_input */
 	char name[12];
 };
 
@@ -51,6 +61,7 @@ struct i915_hwmon {
 	u32 power_max_initial_value;
 
 	int scl_shift_power;
+	int scl_shift_energy;
 };
 
 static void
@@ -121,6 +132,136 @@ _field_scale_and_write(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
 					 bits_to_clear, bits_to_set);
 }
 
+/*
+ * _i915_energy1_input_sub - A custom function to obtain energy1_input.
+ * Use a custom function instead of the usual hwmon helpers in order to
+ * guarantee 64-bits of result to user-space.
+ * Units are microjoules.
+ *
+ * The underlying hardware register is 32-bits and is subject to overflow.
+ * This function compensates for overflow of the 32-bit register by detecting
+ * wrap-around and incrementing an overflow counter.
+ * This only works if the register is sampled often enough to avoid
+ * missing an instance of overflow - achieved either by repeated
+ * queries through the API, or via a possible timer (future - TBD) that
+ * ensures values are read often enough to catch all overflows.
+ *
+ * How long before overflow?  For example, with an example scaling bit
+ * shift of 14 bits (see register *PACKAGE_POWER_SKU_UNIT) and a power draw of
+ * 1000 watts, the 32-bit counter will overflow in approximately 4.36 minutes.
+ *
+ * Examples:
+ *    1 watt:  (2^32 >> 14) /    1 W / (60 * 60 * 24) secs/day -> 3 days
+ * 1000 watts: (2^32 >> 14) / 1000 W / 60             secs/min -> 4.36 minutes
+ */
+static int
+_i915_energy1_input_sub(struct i915_hwmon_drvdata *ddat, u64 *energy)
+{
+	struct intel_uncore *uncore = ddat->uncore;
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	struct i915_energy_info *pei = &ddat->ei;
+	int nshift = hwmon->scl_shift_energy;
+	intel_wakeref_t wakeref;
+	u32 reg_value;
+	u64 vlo;
+	u64 vhi;
+	i915_reg_t rgaddr;
+
+	rgaddr = hwmon->rg.energy_status_all;
+
+	if (!i915_mmio_reg_valid(rgaddr))
+		return -EOPNOTSUPP;
+
+	mutex_lock(&hwmon->hwmon_lock);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		reg_value = intel_uncore_read(uncore, rgaddr);
+
+	/*
+	 * The u32 register concatenated with the u32 overflow counter
+	 * gives an effective energy counter size of 64-bits.  However, the
+	 * computations below are done modulo 2^96 to avoid overflow during
+	 * scaling in the conversion to microjoules.
+	 *
+	 * The low-order 64-bits of the resulting quantity are returned to
+	 * the caller in units of microjoules, encoded into a decimal string.
+	 *
+	 * For a power of 1000 watts, 64 bits in units of microjoules will
+	 * overflow after 584 years.
+	 */
+
+	if (pei->energy_counter_prev > reg_value)
+		pei->energy_counter_overflow++;
+
+	pei->energy_counter_prev = reg_value;
+
+	/*
+	 * 64-bit variables vlo and vhi are used for the scaling process.
+	 * The 96-bit counter value is composed from the two 64-bit variables
+	 * vhi and vlo thusly:  counter == vhi << 32 + vlo .
+	 * The 32-bits of overlap between the two variables is convenient for
+	 * handling overflows out of vlo.
+	 */
+
+	vlo = reg_value;
+	vhi = pei->energy_counter_overflow;
+
+	mutex_unlock(&hwmon->hwmon_lock);
+
+	vlo = SF_ENERGY * vlo;
+
+	/* Prepare to round to nearest */
+	if (nshift > 0)
+		vlo += 1 << (nshift - 1);
+
+	/*
+	 * Anything in the upper-32 bits of vlo gets added into vhi here,
+	 * and then cleared from vlo.
+	 */
+	vhi = (SF_ENERGY * vhi) + (vlo >> 32);
+	vlo &= 0xffffffffULL;
+
+	/*
+	 * Apply the right shift.
+	 * - vlo shifted by itself.
+	 * - vlo receiving what's shifted out of vhi.
+	 * - vhi shifted by itself
+	 */
+	vlo = vlo >> nshift;
+	vlo |= (vhi << (32 - nshift)) & 0xffffffffULL;
+	vhi = vhi >> nshift;
+
+	/* Combined to get a 64-bit result in vlo. */
+	vlo |= (vhi << 32);
+
+	*energy = vlo;
+
+	return 0;
+}
+
+static ssize_t
+i915_energy1_input_show(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
+	ssize_t ret = 0;
+	u64 energy;
+
+	if (!_i915_energy1_input_sub(ddat, &energy))
+		ret = sysfs_emit(buf, "%llu\n", energy);
+
+	return ret;
+}
+
+int
+i915_energy_status_get(struct drm_i915_private *i915, u64 *energy)
+{
+	struct i915_hwmon *hwmon = i915->hwmon;
+	struct i915_hwmon_drvdata *ddat = &hwmon->ddat;
+
+	return _i915_energy1_input_sub(ddat, energy);
+}
+
 static ssize_t
 i915_power1_max_default_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
@@ -141,9 +282,12 @@ i915_power1_max_default_show(struct device *dev, struct device_attribute *attr,
 
 static SENSOR_DEVICE_ATTR(power1_max_default, 0444,
 			  i915_power1_max_default_show, NULL, 0);
+static SENSOR_DEVICE_ATTR(energy1_input, 0444,
+			  i915_energy1_input_show, NULL, 0);
 
 static struct attribute *hwmon_attributes[] = {
 	&sensor_dev_attr_power1_max_default.dev_attr.attr,
+	&sensor_dev_attr_energy1_input.dev_attr.attr,
 	NULL
 };
 
@@ -153,17 +297,15 @@ static umode_t hwmon_attributes_visible(struct kobject *kobj,
 	struct device *dev = kobj_to_dev(kobj);
 	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
 	struct drm_i915_private *i915 = ddat->uncore->i915;
-	i915_reg_t rgadr;
+	struct i915_hwmon *hwmon = ddat->hwmon;
 
-	if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
+	if (attr == &sensor_dev_attr_energy1_input.dev_attr.attr)
+		return i915_mmio_reg_valid(hwmon->rg.energy_status_all) ?
+						attr->mode : 0;
+	else if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
 		return IS_DGFX(i915) ? attr->mode : 0;
 	else
 		return 0;
-
-	if (!i915_mmio_reg_valid(rgadr))
-		return 0;
-
-	return attr->mode;
 }
 
 static const struct attribute_group hwmon_attrgroup = {
@@ -356,6 +498,8 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 {
 	struct i915_hwmon *hwmon = i915->hwmon;
 	struct intel_uncore *uncore = &i915->uncore;
+	struct i915_hwmon_drvdata *ddat = &hwmon->ddat;
+	struct i915_energy_info *pei;
 	intel_wakeref_t wakeref;
 	u32 val_sku_unit;
 
@@ -364,11 +508,15 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
+		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 	} else {
 		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 	}
 
 
@@ -387,8 +535,18 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 		} else
 			val_sku_unit = 0;
 
-		hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
+		pei = &ddat->ei;
+		pei->energy_counter_overflow = 0;
+
+		if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
+			pei->energy_counter_prev =
+				intel_uncore_read(uncore, hwmon->rg.energy_status_all);
+		else
+			pei->energy_counter_prev = 0;
 	}
+
+	hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
+	hwmon->scl_shift_energy = REG_FIELD_GET(PKG_ENERGY_UNIT, val_sku_unit);
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 1e7e2516a981..5a15c84e4721 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -18,4 +18,5 @@ struct i915_hwmon;
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
 
+int i915_energy_status_get(struct drm_i915_private *i915, u64 *energy);
 #endif /* __I915_HWMON_H__ */
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index a3eccdee0ca4..3f2fc62ebb68 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -193,7 +193,9 @@
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
 #define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
 #define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_ENERGY_UNIT                      REG_GENMASK(12, 8)
 #define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+#define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
 
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
 #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
-- 
2.25.1

