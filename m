Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2885E82CB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 21:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF74C10E8BA;
	Fri, 23 Sep 2022 19:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A558310E8BA;
 Fri, 23 Sep 2022 19:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663962877; x=1695498877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hLY52pvSWCfPpT3llqmF10hkG9N0tupKKgrFqvxaPdA=;
 b=aiWUsP5UZXjdYENl4cc67RwZ/q3qAnniE1cGpvw0TEoBJ9qfGFybEYvg
 yDUOQfDfRNjJDikfpK/Rif0DDeOYapYBQN4aG1ndDXh01vusOw4QEDhLa
 H8e6vafMbLfEqW0KSgHca/byz2Ol1GOG8sywZfc+CIAVoRbKHFEB59d6U
 IEKce42gUTvbwNwrc590i+UEhXkY0DThvQ0peDwPD5wd4hFcqe86vRocC
 5LAm4oNW5qJ3wEDGigC6tAUP/H39ksBGRSM9M9r+DpEjpi/Fm5LoZhf5u
 2iQhOxHoiNxk3fhi7qRHT/fJw+1tf87WIojArE62cH+ipuMWlXboRywfh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="298281548"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="298281548"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 12:54:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="709424376"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 12:54:12 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 24 Sep 2022 01:26:39 +0530
Message-Id: <20220923195643.2376927-4-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923195643.2376927-1-badal.nilawar@intel.com>
References: <20220923195643.2376927-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/hwmon: Power PL1 limit and TDP
 setting
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
Cc: linux-hwmon@vger.kernel.org, andi.shyti@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Use i915 HWMON to display/modify dGfx power PL1 limit and TDP setting.

v2:
  - Fix review comments (Ashutosh)
  - Do not restore power1_max upon module unload/load sequence
    because on production systems modules are always loaded
    and not unloaded/reloaded (Ashutosh)
  - Fix review comments (Jani)
  - Remove endianness conversion (Ashutosh)
v3: Add power1_rated_max (Ashutosh)
v4:
  - Use macro HWMON_CHANNEL_INFO to define power channel (Guenter)
  - Update the date and kernel version in Documentation (Badal)
v5: Use hwm_ prefix for static functions (Ashutosh)
v6: Fix review comments (Ashutosh)
v7:
  - Define PCU_PACKAGE_POWER_SKU for DG1,DG2 and move
    PKG_PKG_TDP to intel_mchbar_regs.h (Anshuman)
  - KernelVersion: 6.2, Date: February 2023 in doc (Tvrtko)

Cc: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  20 +++
 drivers/gpu/drm/i915/i915_hwmon.c             | 158 +++++++++++++++++-
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |  12 ++
 3 files changed, 188 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index cd9554c1a4f8..16e697b1db3d 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
 Description:	RO. Current Voltage in millivolt.
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
+Date:		February 2023
+KernelVersion:	6.2
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
+
+		The power controller will throttle the operating frequency
+		if the power averaged over a window (typically seconds)
+		exceeds this limit.
+
+		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_rated_max
+Date:		February 2023
+KernelVersion:	6.2
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Card default power limit (default TDP setting).
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 7b6de7b9c8b1..5d2e68217e8c 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -16,11 +16,16 @@
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
  * - voltage  - millivolts
+ * - power  - microwatts
  */
 #define SF_VOLTAGE	1000
+#define SF_POWER	1000000
 
 struct hwm_reg {
 	i915_reg_t gt_perf_status;
+	i915_reg_t pkg_power_sku_unit;
+	i915_reg_t pkg_power_sku;
+	i915_reg_t pkg_rapl_limit;
 };
 
 struct hwm_drvdata {
@@ -34,10 +39,68 @@ struct i915_hwmon {
 	struct hwm_drvdata ddat;
 	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
 	struct hwm_reg rg;
+	int scl_shift_power;
 };
 
+static void
+hwm_locked_with_pm_intel_uncore_rmw(struct hwm_drvdata *ddat,
+				    i915_reg_t reg, u32 clear, u32 set)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	struct intel_uncore *uncore = ddat->uncore;
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
+/*
+ * This function's return type of u64 allows for the case where the scaling
+ * of the field taken from the 32-bit register value might cause a result to
+ * exceed 32 bits.
+ */
+static u64
+hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
+			 u32 field_msk, int nshift, u32 scale_factor)
+{
+	struct intel_uncore *uncore = ddat->uncore;
+	intel_wakeref_t wakeref;
+	u32 reg_value;
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		reg_value = intel_uncore_read(uncore, rgadr);
+
+	reg_value = REG_FIELD_GET(field_msk, reg_value);
+
+	return mul_u64_u32_shr(reg_value, scale_factor, nshift);
+}
+
+static void
+hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
+			  u32 field_msk, int nshift,
+			  unsigned int scale_factor, long lval)
+{
+	u32 nval;
+	u32 bits_to_clear;
+	u32 bits_to_set;
+
+	/* Computation in 64-bits to avoid overflow. Round to nearest. */
+	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
+
+	bits_to_clear = field_msk;
+	bits_to_set = FIELD_PREP(field_msk, nval);
+
+	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
+					    bits_to_clear, bits_to_set);
+}
+
 static const struct hwmon_channel_info *hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
+	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX),
 	NULL
 };
 
@@ -71,6 +134,64 @@ hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+static umode_t
+hwm_power_is_visible(const struct hwm_drvdata *ddat, u32 attr, int chan)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+
+	switch (attr) {
+	case hwmon_power_max:
+		return i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit) ? 0664 : 0;
+	case hwmon_power_rated_max:
+		return i915_mmio_reg_valid(hwmon->rg.pkg_power_sku) ? 0444 : 0;
+	default:
+		return 0;
+	}
+}
+
+static int
+hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+
+	switch (attr) {
+	case hwmon_power_max:
+		*val = hwm_field_read_and_scale(ddat,
+						hwmon->rg.pkg_rapl_limit,
+						PKG_PWR_LIM_1,
+						hwmon->scl_shift_power,
+						SF_POWER);
+		return 0;
+	case hwmon_power_rated_max:
+		*val = hwm_field_read_and_scale(ddat,
+						hwmon->rg.pkg_power_sku,
+						PKG_PKG_TDP,
+						hwmon->scl_shift_power,
+						SF_POWER);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+
+	switch (attr) {
+	case hwmon_power_max:
+		hwm_field_scale_and_write(ddat,
+					  hwmon->rg.pkg_rapl_limit,
+					  PKG_PWR_LIM_1,
+					  hwmon->scl_shift_power,
+					  SF_POWER, val);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static umode_t
 hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	       u32 attr, int channel)
@@ -80,6 +201,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	switch (type) {
 	case hwmon_in:
 		return hwm_in_is_visible(ddat, attr);
+	case hwmon_power:
+		return hwm_power_is_visible(ddat, attr, channel);
 	default:
 		return 0;
 	}
@@ -94,6 +217,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	switch (type) {
 	case hwmon_in:
 		return hwm_in_read(ddat, attr, val);
+	case hwmon_power:
+		return hwm_power_read(ddat, attr, channel, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -103,7 +228,11 @@ static int
 hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	  int channel, long val)
 {
+	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
+
 	switch (type) {
+	case hwmon_power:
+		return hwm_power_write(ddat, attr, channel, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -124,11 +253,36 @@ static void
 hwm_get_preregistration_info(struct drm_i915_private *i915)
 {
 	struct i915_hwmon *hwmon = i915->hwmon;
+	struct intel_uncore *uncore = &i915->uncore;
+	intel_wakeref_t wakeref;
+	u32 val_sku_unit;
 
-	if (IS_DG1(i915) || IS_DG2(i915))
+	if (IS_DG1(i915) || IS_DG2(i915)) {
 		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
-	else
+		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
+		hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
+		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
+	} else {
 		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
+		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
+		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
+		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
+	}
+
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		/*
+		 * The contents of register hwmon->rg.pkg_power_sku_unit do not change,
+		 * so read it once and store the shift values.
+		 */
+		if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit)) {
+			val_sku_unit = intel_uncore_read(uncore,
+							 hwmon->rg.pkg_power_sku_unit);
+		} else {
+			val_sku_unit = 0;
+		}
+
+		hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
+	}
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index ffc702b79579..d7e2e4711792 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -189,6 +189,16 @@
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
 #define  DG1_QCLK_REFERENCE			REG_BIT(10)
 
+/*
+ * *_PACKAGE_POWER_SKU - SKU power and timing parameters.
+ */
+#define PCU_PACKAGE_POWER_SKU			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5930)
+#define   PKG_PKG_TDP				GENMASK_ULL(14, 0)
+
+#define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
+#define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+
 #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
@@ -198,6 +208,8 @@
 
 #define GEN10_FREQ_INFO_REC			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5ef0)
 #define   RPE_MASK				REG_GENMASK(15, 8)
+#define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
+#define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
 
 /* snb MCH registers for priority tuning */
 #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-- 
2.25.1

