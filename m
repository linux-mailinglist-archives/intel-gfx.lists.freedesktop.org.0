Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2A530E86
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 13:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3483D10E460;
	Mon, 23 May 2022 11:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D5F10F21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 11:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653304104; x=1684840104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MHtJmkRpMQD+vIHVdihUBvInVnf7tqKJ9VQAVJPmlIA=;
 b=egRm/tQrFMx2jgaed5gwICFpg5MeEmswaxN17ioR+Vv/GgjXfNi9jGme
 UWFCnW8OtrqmAvOpnNl349qlNNJMl/bec2xaaZcPMjBFJ7/llnhvvwDlO
 9RVsDZn/yOR3DPLBOLNtGdk2sVpjEa25Op3MgkRo9DpxIkbd9+LaVVcJv
 6h1tRKdA61o7O2uFam05vmItEzP5PGK53/7QQhCU31s3Mmixg7coVs4w9
 k40xOrL7rfjG5sH6RRCl748KJHnm45kEgF53Z2KBWzsF9g9QO0R19j1hX
 nGezKv1GGHDu/vaHjdarpTDQ5+29p6MCvRn78uM0Fmg4oz7GrN01Rp78v A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="359579409"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="359579409"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="600589649"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:22 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 16:38:40 +0530
Message-Id: <20220523110841.1151431-3-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523110841.1151431-1-badal.nilawar@intel.com>
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Add HWMON energy support
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

From: Dale B Stimson <dale.b.stimson@intel.com>

As part of the System Managemenent Interface (SMI), use the HWMON
subsystem to display energy utilization

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  16 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 155 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_hwmon.h             |  11 ++
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   2 +
 4 files changed, 183 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index c680dd842358..7574421c326f 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -1,3 +1,19 @@
+What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
+Date:		June 2021
+KernelVersion:	5.14
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
+
 What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
 Date:		June 2021
 KernelVersion:	5.14
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index b94c11f2517f..b35c4de73f30 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -18,8 +18,10 @@
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
  * - power  - microwatts
+ * - energy - microjoules
  */
 #define SF_POWER	1000000
+#define SF_ENERGY	1000000
 
 #define FIELD_SHIFT(__mask)				    \
 	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
@@ -94,6 +96,136 @@ _field_scale_and_write(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
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
+	struct intel_uncore *uncore = ddat->dd_uncore;
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	struct i915_energy_info *pei = &ddat->dd_ei;
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
@@ -114,9 +246,12 @@ i915_power1_max_default_show(struct device *dev, struct device_attribute *attr,
 
 static SENSOR_DEVICE_ATTR(power1_max_default, 0444,
 			  i915_power1_max_default_show, NULL, 0);
+static SENSOR_DEVICE_ATTR(energy1_input, 0444,
+			  i915_energy1_input_show, NULL, 0);
 
 static struct attribute *hwmon_attributes[] = {
 	&sensor_dev_attr_power1_max_default.dev_attr.attr,
+	&sensor_dev_attr_energy1_input.dev_attr.attr,
 	NULL
 };
 
@@ -126,9 +261,12 @@ static umode_t hwmon_attributes_visible(struct kobject *kobj,
 	struct device *dev = kobj_to_dev(kobj);
 	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
 	struct drm_i915_private *i915 = ddat->dd_uncore->i915;
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
 	i915_reg_t rgadr;
 
-	if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
+	if (attr == &sensor_dev_attr_energy1_input.dev_attr.attr)
+		rgadr = hwmon->rg.energy_status_all;
+	else if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
 		return IS_DGFX(i915) ? attr->mode : 0;
 	else
 		return 0;
@@ -291,6 +429,7 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 	struct i915_hwmon *hwmon = i915->hwmon;
 	struct intel_uncore *uncore = &i915->uncore;
 	struct i915_hwmon_drvdata *ddat = &hwmon->ddat;
+	struct i915_energy_info *pei;
 	intel_wakeref_t wakeref;
 	u32 val_sku_unit;
 	__le32 le_sku_unit;
@@ -299,10 +438,14 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
+		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 	} else {
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
 	}
 
 	wakeref = intel_runtime_pm_get(uncore->rpm);
@@ -321,10 +464,20 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 	else
 		val_sku_unit = 0;
 
+	pei = &ddat->dd_ei;
+	pei->energy_counter_overflow = 0;
+
+	if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
+		pei->energy_counter_prev =
+			intel_uncore_read(uncore, hwmon->rg.energy_status_all);
+	else
+		pei->energy_counter_prev = 0;
+
 	intel_runtime_pm_put(uncore->rpm, wakeref);
 
 	le_sku_unit = cpu_to_le32(val_sku_unit);
 	hwmon->scl_shift_power = le32_get_bits(le_sku_unit, PKG_PWR_UNIT);
+	hwmon->scl_shift_energy = le32_get_bits(le_sku_unit, PKG_ENERGY_UNIT);
 
 	/*
 	 * The value of power1_max is reset to the default on reboot, but is
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 396b758aefce..1c70a7056be7 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -18,12 +18,20 @@ struct i915_hwmon_reg {
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
 	struct i915_hwmon *dd_hwmon;
 	struct intel_uncore *dd_uncore;
 	struct device *dd_hwmon_dev;
+	struct i915_energy_info dd_ei;	/*  Energy info for energy1_input */
 	char dd_name[12];
 };
 
@@ -37,8 +45,11 @@ struct i915_hwmon {
 	u32 power_max_initial_value;
 
 	int scl_shift_power;
+	int scl_shift_energy;
 };
 
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+
+int i915_energy_status_get(struct drm_i915_private *i915, u64 *energy);
 #endif
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 247561d7974c..d6dc6bc95627 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -193,7 +193,9 @@
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
 #define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
 #define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_ENERGY_UNIT			REG_GENMASK(12, 8)
 #define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+#define PCU_PACKAGE_ENERGY_STATUS		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
 
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
 #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
-- 
2.25.1

