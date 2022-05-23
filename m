Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF00530E84
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 13:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6469E10F1FD;
	Mon, 23 May 2022 11:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4204D10E460
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 11:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653304103; x=1684840103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sSpT4C/FWiADqrf4sCAkdWQnPcz3UnnliQObh4Rntpw=;
 b=HlUD/8G7U9VkP6YV4OLfYSL1CphzaDp+yFEQgBU5JKT0+1URnTth5LhN
 p2E/fEEeHJod0jNUGXkKWxOZGxH7tB3rHBV6vuo6/m0gPN9nyWfRsm5A9
 zsHP14HZskJyL/EdcJd0iWDUgIri5DIOVeaLBj/bBCOUMohA/mxnfeKMz
 Vf797YrDUfYT+tIk1FUF1ymWQRQNH2Lr7vjAD/QnpgWyroHproi8LxRcf
 T+PZ3lyM5USXeeMDUjaSGXuWTE4EembFxjxGOrz1lXnzkcd4jSsJH9x5U
 mPui/a3alsp9DVR0axMnnulqIUlJth604HLRIhE8n01pSVFWbB6fXznWV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="359579397"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="359579397"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="600589642"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:19 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 16:38:39 +0530
Message-Id: <20220523110841.1151431-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523110841.1151431-1-badal.nilawar@intel.com>
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hwmon: Add HWMON power sensor
 support
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
subsystem to display power utilization.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  19 +
 drivers/gpu/drm/i915/Kconfig                  |   1 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/i915_driver.c            |   5 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_hwmon.c             | 410 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h             |  44 ++
 drivers/gpu/drm/i915/i915_reg.h               |  15 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   9 +
 9 files changed, 506 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
new file mode 100644
index 000000000000..c680dd842358
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -0,0 +1,19 @@
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
+Date:		June 2021
+KernelVersion:	5.14
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
+
+		The power controller will throttle the operating frequency
+		if the power averaged over a window (typically seconds)
+		exceeds this limit.
+
+		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default
+Date:		June 2021
+KernelVersion:	5.14
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Card default power limit (default TDP setting).
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 7ae3b7d67fcf..c60cfacd4c47 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -19,6 +19,7 @@ config DRM_I915
 	select DRM_MIPI_DSI
 	select RELAY
 	select IRQ_WORK
+	select HWMON
 	# i915 depends on ACPI_VIDEO when ACPI is enabled
 	# but for select to work, need to select ACPI_VIDEO's dependencies, ick
 	select BACKLIGHT_CLASS_DEVICE if ACPI
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d2b18f03a33c..e1d5912ea879 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -36,6 +36,7 @@ i915-y += i915_driver.o \
 	  i915_drm_client.o \
 	  i915_config.o \
 	  i915_getparam.o \
+	  i915_hwmon.o \
 	  i915_ioctl.o \
 	  i915_irq.o \
 	  i915_mitigations.o \
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b47746152d97..6f678587a771 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -80,6 +80,7 @@
 #include "i915_drm_client.h"
 #include "i915_drv.h"
 #include "i915_getparam.h"
+#include "i915_hwmon.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
 #include "i915_irq.h"
@@ -702,6 +703,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_gt_driver_register(to_gt(dev_priv));
 
+	i915_hwmon_register(dev_priv);
+
 	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
@@ -728,6 +731,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
+	i915_hwmon_unregister(dev_priv);
+
 	intel_gt_driver_unregister(to_gt(dev_priv));
 
 	i915_perf_unregister(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c5fc402d9c50..e16bedba2d84 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -769,6 +769,8 @@ struct drm_i915_private {
 
 	struct i915_perf perf;
 
+	struct i915_hwmon *hwmon;
+
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
 	struct intel_gt gt0;
 
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
new file mode 100644
index 000000000000..b94c11f2517f
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -0,0 +1,410 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+/*
+ * Power-related hwmon entries.
+ */
+
+#include <linux/hwmon.h>
+#include <linux/hwmon-sysfs.h>
+#include <linux/types.h>
+
+#include "i915_drv.h"
+#include "i915_hwmon.h"
+#include "intel_mchbar_regs.h"
+
+/*
+ * SF_* - scale factors for particular quantities according to hwmon spec.
+ * - power  - microwatts
+ */
+#define SF_POWER	1000000
+
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))
+
+static void
+_locked_with_pm_intel_uncore_rmw(struct i915_hwmon_drvdata *ddat,
+				 i915_reg_t reg, u32 clear, u32 set)
+{
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	struct intel_uncore *uncore = ddat->dd_uncore;
+	intel_wakeref_t wakeref;
+
+	mutex_lock(&hwmon->hwmon_lock);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		intel_uncore_rmw(uncore, reg, clear, set);
+
+	mutex_unlock(&hwmon->hwmon_lock);
+}
+
+static u64
+_scale_and_shift(u32 in, u32 scale_factor, int nshift)
+{
+	u64 out = mul_u32_u32(scale_factor, in);
+
+	/* Shift, rounding to nearest */
+	if (nshift > 0)
+		out = (out + (1 << (nshift - 1))) >> nshift;
+	return out;
+}
+
+/*
+ * This function's return type of u64 allows for the case where the scaling
+ * of the field taken from the 32-bit register value might cause a result to
+ * exceed 32 bits.
+ */
+static u64
+_field_read_and_scale(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
+		      u32 field_msk, int field_shift,
+		      int nshift, u32 scale_factor)
+{
+	struct intel_uncore *uncore = ddat->dd_uncore;
+	intel_wakeref_t wakeref;
+	u32 reg_value;
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		reg_value = intel_uncore_read(uncore, rgadr);
+
+	reg_value = (reg_value & field_msk) >> field_shift;
+
+	return _scale_and_shift(reg_value, scale_factor, nshift);
+}
+
+static void
+_field_scale_and_write(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
+		       u32 field_msk, int field_shift,
+		       int nshift, unsigned int scale_factor, long lval)
+{
+	u32 nval;
+	u32 bits_to_clear;
+	u32 bits_to_set;
+
+	/* Computation in 64-bits to avoid overflow. Round to nearest. */
+	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
+
+	bits_to_clear = field_msk;
+	bits_to_set = (nval << field_shift) & field_msk;
+
+	_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
+					 bits_to_clear, bits_to_set);
+}
+
+static ssize_t
+i915_power1_max_default_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	u64 val = 0; /* uapi specifies to keep visible but return 0 if unsupported */
+
+	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku))
+		val = _field_read_and_scale(ddat,
+					    hwmon->rg.pkg_power_sku,
+					    PKG_PKG_TDP,
+					    FIELD_SHIFT(PKG_PKG_TDP),
+					    hwmon->scl_shift_power,
+					    SF_POWER);
+	return sysfs_emit(buf, "%llu\n", val);
+}
+
+static SENSOR_DEVICE_ATTR(power1_max_default, 0444,
+			  i915_power1_max_default_show, NULL, 0);
+
+static struct attribute *hwmon_attributes[] = {
+	&sensor_dev_attr_power1_max_default.dev_attr.attr,
+	NULL
+};
+
+static umode_t hwmon_attributes_visible(struct kobject *kobj,
+					struct attribute *attr, int index)
+{
+	struct device *dev = kobj_to_dev(kobj);
+	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
+	struct drm_i915_private *i915 = ddat->dd_uncore->i915;
+	i915_reg_t rgadr;
+
+	if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
+		return IS_DGFX(i915) ? attr->mode : 0;
+	else
+		return 0;
+
+	if (!i915_mmio_reg_valid(rgadr))
+		return 0;
+
+	return attr->mode;
+}
+
+static const struct attribute_group hwmon_attrgroup = {
+	.attrs = hwmon_attributes,
+	.is_visible = hwmon_attributes_visible,
+};
+
+static const struct attribute_group *hwmon_groups[] = {
+	&hwmon_attrgroup,
+	NULL
+};
+
+/*
+ * HWMON SENSOR TYPE = hwmon_power
+ *  - Sustained Power (power1_max)
+ */
+static const u32 i915_config_power[] = {
+	HWMON_P_MAX,
+	0
+};
+
+static const struct hwmon_channel_info i915_power = {
+	.type = hwmon_power,
+	.config = i915_config_power,
+};
+
+static const struct hwmon_channel_info *i915_info[] = {
+	&i915_power,
+	NULL
+};
+
+static umode_t
+i915_power_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr, int chan)
+{
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	i915_reg_t rgadr;
+
+	switch (attr) {
+	case hwmon_power_max:
+		rgadr = hwmon->rg.pkg_rapl_limit;
+		break;
+	default:
+		return 0;
+	}
+
+	if (!i915_mmio_reg_valid(rgadr))
+		return 0;
+
+	return 0664;
+}
+
+static int
+i915_power_read(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long *val)
+{
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	int ret = 0;
+
+	switch (attr) {
+	case hwmon_power_max:
+		*val = _field_read_and_scale(ddat,
+					     hwmon->rg.pkg_rapl_limit,
+					     PKG_PWR_LIM_1,
+					     FIELD_SHIFT(PKG_PWR_LIM_1),
+					     hwmon->scl_shift_power,
+					     SF_POWER);
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+	}
+
+	return ret;
+}
+
+static int
+i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long val)
+{
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	int ret = 0;
+
+	switch (attr) {
+	case hwmon_power_max:
+		_field_scale_and_write(ddat,
+				       hwmon->rg.pkg_rapl_limit,
+				       PKG_PWR_LIM_1,
+				       FIELD_SHIFT(PKG_PWR_LIM_1),
+				       hwmon->scl_shift_power,
+				       SF_POWER, val);
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+	}
+
+	return ret;
+}
+
+static umode_t
+i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
+		u32 attr, int channel)
+{
+	struct i915_hwmon_drvdata *ddat = (struct i915_hwmon_drvdata *)drvdata;
+
+	switch (type) {
+	case hwmon_power:
+		return i915_power_is_visible(ddat, attr, channel);
+	default:
+		return 0;
+	}
+}
+
+static int
+i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+	  int channel, long *val)
+{
+	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
+
+	switch (type) {
+	case hwmon_power:
+		return i915_power_read(ddat, attr, channel, val);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+i915_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+	   int channel, long val)
+{
+	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
+
+	switch (type) {
+	case hwmon_power:
+		return i915_power_write(ddat, attr, channel, val);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static const struct hwmon_ops i915_hwmon_ops = {
+	.is_visible = i915_is_visible,
+	.read = i915_read,
+	.write = i915_write,
+};
+
+static const struct hwmon_chip_info i915_chip_info = {
+	.ops = &i915_hwmon_ops,
+	.info = i915_info,
+};
+
+static void
+i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
+{
+	struct i915_hwmon *hwmon = i915->hwmon;
+	struct intel_uncore *uncore = &i915->uncore;
+	struct i915_hwmon_drvdata *ddat = &hwmon->ddat;
+	intel_wakeref_t wakeref;
+	u32 val_sku_unit;
+	__le32 le_sku_unit;
+
+	if (IS_DG1(i915) || IS_DG2(i915)) {
+		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
+		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
+		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
+	} else {
+		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
+		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
+		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
+	}
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	/*
+	 * The contents of register hwmon->rg.pkg_power_sku_unit do not change,
+	 * so read it once and store the shift values.
+	 *
+	 * For some platforms, this value is defined as available "for all
+	 * tiles", with the values consistent across all tiles.
+	 * In this case, use the tile 0 value for all.
+	 */
+	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit))
+		val_sku_unit = intel_uncore_read(uncore,
+						 hwmon->rg.pkg_power_sku_unit);
+	else
+		val_sku_unit = 0;
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	le_sku_unit = cpu_to_le32(val_sku_unit);
+	hwmon->scl_shift_power = le32_get_bits(le_sku_unit, PKG_PWR_UNIT);
+
+	/*
+	 * The value of power1_max is reset to the default on reboot, but is
+	 * not reset by a module unload/load sequence.  To allow proper
+	 * functioning after a module reload, the value for power1_max is
+	 * restored to its original value at module unload time in
+	 * i915_hwmon_unregister().
+	 */
+	hwmon->power_max_initial_value =
+		(u32)_field_read_and_scale(ddat,
+					   hwmon->rg.pkg_rapl_limit,
+					   PKG_PWR_LIM_1,
+					   FIELD_SHIFT(PKG_PWR_LIM_1),
+					   hwmon->scl_shift_power, SF_POWER);
+}
+
+void i915_hwmon_register(struct drm_i915_private *i915)
+{
+	struct device *dev = i915->drm.dev;
+	struct i915_hwmon *hwmon;
+	struct device *hwmon_dev;
+	struct i915_hwmon_drvdata *ddat;
+
+	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return;
+
+	i915->hwmon = hwmon;
+
+	mutex_init(&hwmon->hwmon_lock);
+
+	ddat = &hwmon->ddat;
+
+	ddat->dd_hwmon = hwmon;
+	ddat->dd_uncore = &i915->uncore;
+	snprintf(ddat->dd_name, sizeof(ddat->dd_name), "i915");
+
+	i915_hwmon_get_preregistration_info(i915);
+
+	/*  hwmon_dev points to device hwmon<i> */
+	hwmon_dev = hwmon_device_register_with_info(dev, ddat->dd_name,
+						    ddat,
+						    &i915_chip_info,
+						    hwmon_groups);
+
+	if (IS_ERR(hwmon_dev)) {
+		mutex_destroy(&hwmon->hwmon_lock);
+		i915->hwmon = NULL;
+		kfree(hwmon);
+		return;
+	}
+
+	ddat->dd_hwmon_dev = hwmon_dev;
+}
+
+void i915_hwmon_unregister(struct drm_i915_private *i915)
+{
+	struct i915_hwmon *hwmon;
+	struct i915_hwmon_drvdata *ddat;
+
+	hwmon = fetch_and_zero(&i915->hwmon);
+	if (!hwmon)
+		return;
+
+	ddat = &hwmon->ddat;
+
+	if (hwmon->power_max_initial_value) {
+		/* Restore power1_max. */
+		_field_scale_and_write(ddat, hwmon->rg.pkg_rapl_limit,
+				       PKG_PWR_LIM_1,
+				       FIELD_SHIFT(PKG_PWR_LIM_1),
+				       hwmon->scl_shift_power,
+				       SF_POWER,
+				       hwmon->power_max_initial_value);
+	}
+
+	if (ddat->dd_hwmon_dev)
+		hwmon_device_unregister(ddat->dd_hwmon_dev);
+
+	mutex_destroy(&hwmon->hwmon_lock);
+
+	kfree(hwmon);
+}
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
new file mode 100644
index 000000000000..396b758aefce
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: MIT */
+
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#ifndef __INTEL_HWMON_H__
+#define __INTEL_HWMON_H__
+
+#include <linux/types.h>
+#include <linux/mutex.h>
+#include <linux/device.h>
+#include "i915_reg.h"
+
+struct drm_i915_private;
+
+struct i915_hwmon_reg {
+	i915_reg_t pkg_power_sku_unit;
+	i915_reg_t pkg_power_sku;
+	i915_reg_t pkg_rapl_limit;
+};
+
+struct i915_hwmon_drvdata {
+	struct i915_hwmon *dd_hwmon;
+	struct intel_uncore *dd_uncore;
+	struct device *dd_hwmon_dev;
+	char dd_name[12];
+};
+
+struct i915_hwmon {
+	struct i915_hwmon_drvdata ddat;
+
+	struct mutex hwmon_lock;	/* counter overflow logic and rmw */
+
+	struct i915_hwmon_reg rg;
+
+	u32 power_max_initial_value;
+
+	int scl_shift_power;
+};
+
+void i915_hwmon_register(struct drm_i915_private *i915);
+void i915_hwmon_unregister(struct drm_i915_private *i915);
+#endif
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d8579ab9384c..1c570c706ff8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1866,6 +1866,21 @@
 #define   POWER_LIMIT_4_MASK		REG_BIT(9)
 #define   POWER_LIMIT_1_MASK		REG_BIT(11)
 #define   POWER_LIMIT_2_MASK		REG_BIT(12)
+/*
+ * *_PACKAGE_POWER_SKU - SKU power and timing parameters.
+ * Used herein as a 64-bit register.
+ * These masks are defined using GENMASK_ULL as REG_GENMASK is limited to u32
+ * and as GENMASK is "long" and therefore 32-bits on a 32-bit system.
+ * PKG_PKG_TDP, PKG_MIN_PWR, and PKG_MAX_PWR are scaled in the same way as
+ * PKG_PWR_LIM_*, above.
+ * PKG_MAX_WIN has sub-fields for x and y, and has the value: is 1.x * 2^y.
+ */
+#define   PKG_PKG_TDP			GENMASK_ULL(14, 0)
+#define   PKG_MIN_PWR			GENMASK_ULL(30, 16)
+#define   PKG_MAX_PWR			GENMASK_ULL(46, 32)
+#define   PKG_MAX_WIN			GENMASK_ULL(54, 48)
+#define     PKG_MAX_WIN_Y		GENMASK_ULL(54, 53)
+#define     PKG_MAX_WIN_X		GENMASK_ULL(52, 48)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 2aad2f0cc8db..247561d7974c 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -191,11 +191,20 @@
 
 #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
+#define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
+#define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
 #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
 #define   RP1_CAP_MASK				REG_GENMASK(15, 8)
 #define   RPN_CAP_MASK				REG_GENMASK(23, 16)
 
+#define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
+#define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
+#define   PKG_PWR_LIM_1_EN			REG_BIT(15)
+#define   PKG_PWR_LIM_1_TIME			REG_GENMASK(23, 17)
+
 /* snb MCH registers for priority tuning */
 #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
 #define   SSKPD_NEW_WM0_MASK_HSW		REG_GENMASK64(63, 56)
-- 
2.25.1

