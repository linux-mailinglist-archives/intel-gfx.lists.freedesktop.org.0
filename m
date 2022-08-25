Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A255A11D5
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 15:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5373D10E2E1;
	Thu, 25 Aug 2022 13:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65D710E29E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661433563; x=1692969563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xAQUtKoyYgpKgX8zGwTDmPEmEnQxbYO0CamNg9gtP/M=;
 b=KKuiE75AEIf48m7mt4Jx9+QKFrTirZ/5mAjqtsr/CWY5X/2Y33Irb0/+
 VqZ3VQBceJBJD3TQ7Cg+KCGHdOV7O1tFiX2QCIZXropQwJk/i5z91Cs87
 1eVBdtlMnxm/Ugj+mnCpE0+Z228vv3kHkWG36ekIYr4TtrHutuDV/mgOd
 2g3pAu4RcpG1FMjbtwtRlMoSnDGnoGis9AESy6z0RNxskzk9+TEn29dsb
 OUEJUcoQnTAv3TAHASCZgivQM1mYvabbCDENoOUDWO4GX/WcWUOQOcoCS
 9jQqcmGlyZl3pf2WKJAht80g4wE5KsqWs4u6TeE4FGh3EH3ltq94NrPsG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380526039"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="380526039"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="670974929"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:20 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 18:51:14 +0530
Message-Id: <20220825132118.784407-4-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220825132118.784407-1-badal.nilawar@intel.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
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
Cc: linux-hwmon@vger.kernel.org
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

Cc: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  20 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 175 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  16 ++
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   6 +
 4 files changed, 215 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 24c4b7477d51..9a2d10edfce8 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
 Description:	RO. Current Voltage in millivolt.
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
+Date:		June 2022
+KernelVersion:	5.19
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
+Date:		June 2022
+KernelVersion:	5.19
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Card default power limit (default TDP setting).
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 2192d0fd4c66..922463da65bf 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -13,8 +13,22 @@
 #include "intel_mchbar_regs.h"
 #include "gt/intel_gt_regs.h"
 
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
 struct hwm_reg {
 	i915_reg_t gt_perf_status;
+	i915_reg_t pkg_power_sku_unit;
+	i915_reg_t pkg_power_sku;
+	i915_reg_t pkg_rapl_limit;
 };
 
 struct hwm_drvdata {
@@ -28,10 +42,69 @@ struct i915_hwmon {
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
+			 u32 field_msk, int field_shift,
+			 int nshift, u32 scale_factor)
+{
+	struct intel_uncore *uncore = ddat->uncore;
+	intel_wakeref_t wakeref;
+	u32 reg_value;
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		reg_value = intel_uncore_read(uncore, rgadr);
+
+	reg_value = (reg_value & field_msk) >> field_shift;
+
+	return mul_u64_u32_shr(reg_value, scale_factor, nshift);
+}
+
+static void
+hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
+			  u32 field_msk, int field_shift,
+			  int nshift, unsigned int scale_factor, long lval)
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
+	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
+					    bits_to_clear, bits_to_set);
+}
+
 static const struct hwmon_channel_info *hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
+	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX),
 	NULL
 };
 
@@ -65,6 +138,67 @@ hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val)
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
+						FIELD_SHIFT(PKG_PWR_LIM_1),
+						hwmon->scl_shift_power,
+						SF_POWER);
+		return 0;
+	case hwmon_power_rated_max:
+		*val = hwm_field_read_and_scale(ddat,
+						hwmon->rg.pkg_power_sku,
+						PKG_PKG_TDP,
+						FIELD_SHIFT(PKG_PKG_TDP),
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
+					  FIELD_SHIFT(PKG_PWR_LIM_1),
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
@@ -74,6 +208,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	switch (type) {
 	case hwmon_in:
 		return hwm_in_is_visible(ddat, attr);
+	case hwmon_power:
+		return hwm_power_is_visible(ddat, attr, channel);
 	default:
 		return 0;
 	}
@@ -88,6 +224,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	switch (type) {
 	case hwmon_in:
 		return hwm_in_read(ddat, attr, val);
+	case hwmon_power:
+		return hwm_power_read(ddat, attr, channel, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -97,7 +235,11 @@ static int
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
@@ -118,11 +260,40 @@ static void
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
+		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
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
+		 *
+		 * For some platforms, this value is defined as available "for all
+		 * tiles", with the values consistent across all tiles.
+		 * In this case, use the tile 0 value for all.
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
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e3aa684cf1b..fd13411a28d9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1866,6 +1866,22 @@
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
+
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
 #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index ffc702b79579..b74df11977c6 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -189,6 +189,10 @@
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
 #define  DG1_QCLK_REFERENCE			REG_BIT(10)
 
+#define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
+#define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
+#define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
+
 #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
 #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
 #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
@@ -198,6 +202,8 @@
 
 #define GEN10_FREQ_INFO_REC			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5ef0)
 #define   RPE_MASK				REG_GENMASK(15, 8)
+#define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
+#define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
 
 /* snb MCH registers for priority tuning */
 #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-- 
2.25.1

