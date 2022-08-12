Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F35914E3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 19:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B8D1123F6;
	Fri, 12 Aug 2022 17:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DD518AAA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 17:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660325741; x=1691861741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U96rohAE8GbfrBbUW4EG6rKIKdBx5xj0IIZACmow8L4=;
 b=DD1+0TqjmU6aLXLrYYIAP3tfLzJuuhchBwcvjijo8Q48v1IYSjObn4b1
 Ndj0nPXPT94gzVlhEyNBuOEI7j6hQjlTq4Gh61wFjGfQBVahB4umro0+x
 DotEi/I+B6b116gCLkUM7JCu0QXaZhbvFm43aPlBH4E0WHoPmu3UQH7VZ
 4jI+PxhKKACFKQ1y+p073Uy8M9LTEOA7CXL1GHMKyF7IpusSjmrZGa46f
 SPYusq9YDh32Bt0JjFnxxAy2qZvt08Lje+O36wYI9xU/cfZoEfXYmLggx
 S/JEwg3vrEyUKDy0SM+xwEO6rUZbkZQfKNo44VsmwFoRIbR41coWbedVi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292440089"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292440089"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 10:35:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="665904288"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 10:35:39 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Aug 2022 23:07:12 +0530
Message-Id: <20220812173715.2398586-5-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812173715.2398586-1-badal.nilawar@intel.com>
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/hwmon: Show device level energy
 usage
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
Cc: linux-hwmon@vger.kernel.org, linux@roeck-us.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Use i915 HWMON to display device level energy input.

v2:
  - Updated the date and kernel version in feature description

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |   8 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 119 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_hwmon.h             |   1 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   2 +
 4 files changed, 128 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 9a2d10edfce8..03d71c6869d3 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -25,3 +25,11 @@ Contact:	dri-devel@lists.freedesktop.org
 Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
+Date:		June 2022
+KernelVersion:	5.19
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Energy input of device in microjoules.
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 2ce5bf94b220..416c77c89609 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -15,8 +15,10 @@
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
  * - power  - microwatts
+ * - energy - microjoules
  */
 #define SF_POWER	1000000
+#define SF_ENERGY	1000000
 
 #define FIELD_SHIFT(__mask)				    \
 	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
@@ -28,12 +30,19 @@ struct hwm_reg {
 	i915_reg_t pkg_power_sku_unit;
 	i915_reg_t pkg_power_sku;
 	i915_reg_t pkg_rapl_limit;
+	i915_reg_t energy_status_all;
+};
+
+struct hwm_energy_info {
+	u32 reg_val_prev;
+	long accum_energy;			/* Accumulated energy for energy1_input */
 };
 
 struct hwm_drvdata {
 	struct i915_hwmon *hwmon;
 	struct intel_uncore *uncore;
 	struct device *hwmon_dev;
+	struct hwm_energy_info ei;		/*  Energy info for energy1_input */
 	char name[12];
 };
 
@@ -43,6 +52,7 @@ struct i915_hwmon {
 	struct hwm_reg rg;
 	u32 power_max_initial_value;
 	int scl_shift_power;
+	int scl_shift_energy;
 };
 
 static void
@@ -102,9 +112,72 @@ hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
 					    bits_to_clear, bits_to_set);
 }
 
+/*
+ * hwm_energy - Obtain energy value
+ *
+ * The underlying energy hardware register is 32-bits and is subject to
+ * overflow. How long before overflow? For example, with an example
+ * scaling bit shift of 14 bits (see register *PACKAGE_POWER_SKU_UNIT) and
+ * a power draw of 1000 watts, the 32-bit counter will overflow in
+ * approximately 4.36 minutes.
+ *
+ * Examples:
+ *    1 watt:  (2^32 >> 14) /    1 W / (60 * 60 * 24) secs/day -> 3 days
+ * 1000 watts: (2^32 >> 14) / 1000 W / 60             secs/min -> 4.36 minutes
+ *
+ * The function significantly increases overflow duration (from 4.36
+ * minutes) by accumulating the energy register into a 'long' as allowed by
+ * the hwmon API. Using x86_64 128 bit arithmetic (see mul_u64_u32_shr()),
+ * a 'long' of 63 bits, SF_ENERGY of 1e6 (~20 bits) and
+ * hwmon->scl_shift_energy of 14 bits we have 57 (63 - 20 + 14) bits before
+ * energy1_input overflows. This at 1000 W is an overflow duration of 278 years.
+ */
+static int
+hwm_energy(struct hwm_drvdata *ddat, long *energy)
+{
+	struct intel_uncore *uncore = ddat->uncore;
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	struct hwm_energy_info *ei = &ddat->ei;
+	intel_wakeref_t wakeref;
+	i915_reg_t rgaddr;
+	u32 reg_val;
+
+	rgaddr = hwmon->rg.energy_status_all;
+
+	if (!i915_mmio_reg_valid(rgaddr))
+		return -EOPNOTSUPP;
+
+	mutex_lock(&hwmon->hwmon_lock);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		reg_val = intel_uncore_read(uncore, rgaddr);
+
+	if (reg_val >= ei->reg_val_prev)
+		ei->accum_energy += reg_val - ei->reg_val_prev;
+	else
+		ei->accum_energy += UINT_MAX - ei->reg_val_prev + reg_val;
+	ei->reg_val_prev = reg_val;
+
+	*energy = mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
+				  hwmon->scl_shift_energy);
+	mutex_unlock(&hwmon->hwmon_lock);
+
+	return 0;
+}
+
+int
+i915_hwmon_energy_status_get(struct drm_i915_private *i915, long *energy)
+{
+	struct i915_hwmon *hwmon = i915->hwmon;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
+
+	return hwm_energy(ddat, energy);
+}
+
 static const struct hwmon_channel_info *hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
 	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX),
+	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
 	NULL
 };
 
@@ -199,6 +272,32 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
 	}
 }
 
+static umode_t
+hwm_energy_is_visible(const struct hwm_drvdata *ddat, u32 attr)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	i915_reg_t rgaddr;
+
+	switch (attr) {
+	case hwmon_energy_input:
+		rgaddr = hwmon->rg.energy_status_all;
+		return i915_mmio_reg_valid(rgaddr) ? 0444 : 0;
+	default:
+		return 0;
+	}
+}
+
+static int
+hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
+{
+	switch (attr) {
+	case hwmon_energy_input:
+		return hwm_energy(ddat, val);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static umode_t
 hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	       u32 attr, int channel)
@@ -210,6 +309,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 		return hwm_in_is_visible(ddat, attr);
 	case hwmon_power:
 		return hwm_power_is_visible(ddat, attr, channel);
+	case hwmon_energy:
+		return hwm_energy_is_visible(ddat, attr);
 	default:
 		return 0;
 	}
@@ -226,6 +327,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 		return hwm_in_read(ddat, attr, val);
 	case hwmon_power:
 		return hwm_power_read(ddat, attr, channel, val);
+	case hwmon_energy:
+		return hwm_energy_read(ddat, attr, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -261,19 +364,23 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 {
 	struct i915_hwmon *hwmon = i915->hwmon;
 	struct intel_uncore *uncore = &i915->uncore;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
 	intel_wakeref_t wakeref;
 	u32 val_sku_unit;
+	long energy;
 
 	if (IS_DG1(i915) || IS_DG2(i915)) {
 		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
 		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
+		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
 	} else {
 		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
+		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
 	}
 
 	with_intel_runtime_pm(uncore->rpm, wakeref) {
@@ -291,9 +398,17 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		} else {
 			val_sku_unit = 0;
 		}
-
-		hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
 	}
+
+	hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
+	hwmon->scl_shift_energy = REG_FIELD_GET(PKG_ENERGY_UNIT, val_sku_unit);
+
+	/*
+	 * Initialize 'struct hwm_energy_info', i.e. set fields to the
+	 * first value of the energy register read
+	 */
+	if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
+		hwm_energy(ddat, &energy);
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 921ae76099d3..d5d7f4a0bf4e 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -17,4 +17,5 @@ struct drm_i915_private;
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
 
+int i915_hwmon_energy_status_get(struct drm_i915_private *i915, long *energy);
 #endif /* __I915_HWMON_H__ */
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 4ba5f30b7901..18fcfc39ca2f 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -191,7 +191,9 @@
 
 #define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
 #define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_ENERGY_UNIT                      REG_GENMASK(12, 8)
 #define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+#define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
 
 #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
-- 
2.25.1

