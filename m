Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 849D55A11D2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 15:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D71D10E33C;
	Thu, 25 Aug 2022 13:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1D810E2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 13:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661433571; x=1692969571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MCs4UDdZt1av1s66Ssm8haJZfkuNgPaCItHh/WR5258=;
 b=AG1rPObNiri28w9jRgs6hJ/AEcKWNyUS3nw309hXwYKc65uL9kW4zllN
 3fD4/LihyEq0HXmJH+dr2skhgcVSMnAtToYGCu/iNxBJ3J2TRFmuXDx2G
 TjgpActkJKB9VT/R61InnVE4umSxdbR+LNMWEt2ykmPdXrQzAB1eISacZ
 XNUoPpG5XreJOVhV3pIM8zX2WHMlvBhtjW1qor39CpKdveqh9HpVtXhY+
 JwZ/2kNtLJUCMYn65GFrUJRaan3SouBQwp1jXrCxenQ8VGBDJONnxXEj6
 fznAEjerbmbF+39tWxatOmKoWYN5VhELac66uVyU6jPvRxyporvBQbfFO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380526056"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="380526056"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="670974963"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 06:19:28 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 18:51:17 +0530
Message-Id: <20220825132118.784407-7-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220825132118.784407-1-badal.nilawar@intel.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/hwmon: Expose power1_max_interval
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

From: Ashutosh Dixit <ashutosh.dixit@intel.com>

Expose power1_max_interval, that is the tau corresponding to PL1. Some bit
manipulation is needed because of the format of PKG_PWR_LIM_1_TIME in
GT0_PACKAGE_RAPL_LIMIT register (1.x * power(2,y)).

v2: Update date and kernel version in Documentation (Badal)
v3: Cleaned up hwm_power1_max_interval_store() (Badal)

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |   9 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 114 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +-
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   4 +
 4 files changed, 128 insertions(+), 3 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index bb1101757154..34668f6c2dc4 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -26,6 +26,15 @@ Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
 
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_interval
+Date:		June 2022
+KernelVersion:	5.19
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RW. Sustained power limit interval (Tau in PL1/Tau) in
+		milliseconds over which sustained power is averaged.
+
+		Only supported for particular Intel i915 graphics platforms.
+
 What:		/sys/devices/.../hwmon/hwmon<i>/power1_crit
 Date:		June 2022
 KernelVersion:	5.19
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index e476c8a9351b..b8ac52f07681 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -16,10 +16,12 @@
 
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
+ * - time   - milliseconds
  * - power  - microwatts
  * - curr   - milliamperes
  * - energy - microjoules
  */
+#define SF_TIME            1000
 #define SF_POWER	1000000
 #define SF_CURR		1000
 #define SF_ENERGY	1000000
@@ -56,6 +58,7 @@ struct i915_hwmon {
 	struct hwm_reg rg;
 	int scl_shift_power;
 	int scl_shift_energy;
+	int scl_shift_time;
 };
 
 static void
@@ -177,6 +180,114 @@ i915_hwmon_energy_status_get(struct drm_i915_private *i915, long *energy)
 	return hwm_energy(ddat, energy);
 }
 
+static ssize_t
+hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	intel_wakeref_t wakeref;
+	u32 r, x, y, x_w = 2; /* 2 bits */
+	u64 tau4, out;
+
+	with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
+		r = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_rapl_limit);
+
+	x = REG_FIELD_GET(PKG_PWR_LIM_1_TIME_X, r);
+	y = REG_FIELD_GET(PKG_PWR_LIM_1_TIME_Y, r);
+	/*
+	 * tau = 1.x * power(2,y), x = bits(23:22), y = bits(21:17)
+	 *     = (4 | x) << (y - 2)
+	 * where (y - 2) ensures a 1.x fixed point representation of 1.x
+	 * However because y can be < 2, we compute
+	 *     tau4 = (4 | x) << y
+	 * but add 2 when doing the final right shift to account for units
+	 */
+	tau4 = ((1 << x_w) | x) << y;
+	/* val in hwmon interface units (millisec) */
+	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
+
+	return sysfs_emit(buf, "%llu\n", out);
+}
+
+static ssize_t
+hwm_power1_max_interval_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buf, size_t count)
+{
+	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	long val, max_win, ret;
+	u32 x, y, rxy, x_w = 2; /* 2 bits */
+	u64 tau4, r;
+
+#define PKG_MAX_WIN_DEFAULT 0x12ull
+
+	ret = kstrtoul(buf, 0, &val);
+	if (ret)
+		return ret;
+
+	/*
+	 * val must be < max in hwmon interface units. The steps below are
+	 * explained in i915_power1_max_interval_show()
+	 */
+	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
+	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
+	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
+	tau4 = ((1 << x_w) | x) << y;
+	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
+
+	if (val > max_win)
+		return -EINVAL;
+
+	/* val in hw units */
+	val = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_time, SF_TIME);
+	/* Convert to 1.x * power(2,y) */
+	if (!val)
+		return -EINVAL;
+	y = ilog2(val);
+	/* x = (val - (1 << y)) >> (y - 2); */
+	x = (val - (1ul << y)) << x_w >> y;
+
+	rxy = REG_FIELD_PREP(PKG_PWR_LIM_1_TIME_X, x) | REG_FIELD_PREP(PKG_PWR_LIM_1_TIME_Y, y);
+
+	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
+					    PKG_PWR_LIM_1_TIME, rxy);
+	return count;
+}
+
+static SENSOR_DEVICE_ATTR(power1_max_interval, 0664,
+			  hwm_power1_max_interval_show,
+			  hwm_power1_max_interval_store, 0);
+
+static struct attribute *hwm_attributes[] = {
+	&sensor_dev_attr_power1_max_interval.dev_attr.attr,
+	NULL
+};
+
+static umode_t hwm_attributes_visible(struct kobject *kobj,
+				      struct attribute *attr, int index)
+{
+	struct device *dev = kobj_to_dev(kobj);
+	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
+	struct i915_hwmon *hwmon = ddat->hwmon;
+
+	if (attr == &sensor_dev_attr_power1_max_interval.dev_attr.attr)
+		return i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit) ? attr->mode : 0;
+	else
+		return 0;
+}
+
+static const struct attribute_group hwm_attrgroup = {
+	.attrs = hwm_attributes,
+	.is_visible = hwm_attributes_visible,
+};
+
+static const struct attribute_group *hwm_groups[] = {
+	&hwm_attrgroup,
+	NULL
+};
+
 static const struct hwmon_channel_info *hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
 	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
@@ -495,6 +606,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 
 	hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
 	hwmon->scl_shift_energy = REG_FIELD_GET(PKG_ENERGY_UNIT, val_sku_unit);
+	hwmon->scl_shift_time = REG_FIELD_GET(PKG_TIME_UNIT, val_sku_unit);
 
 	/*
 	 * Initialize 'struct hwm_energy_info', i.e. set fields to the
@@ -533,7 +645,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
 						    ddat,
 						    &hwm_chip_info,
-						    NULL);
+						    hwm_groups);
 	if (IS_ERR(hwmon_dev)) {
 		mutex_destroy(&hwmon->hwmon_lock);
 		i915->hwmon = NULL;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6f72e7285e64..68251ba3bc53 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1879,8 +1879,8 @@
 #define   PKG_MIN_PWR			GENMASK_ULL(30, 16)
 #define   PKG_MAX_PWR			GENMASK_ULL(46, 32)
 #define   PKG_MAX_WIN			GENMASK_ULL(54, 48)
-#define     PKG_MAX_WIN_Y		GENMASK_ULL(54, 53)
-#define     PKG_MAX_WIN_X		GENMASK_ULL(52, 48)
+#define     PKG_MAX_WIN_X		GENMASK_ULL(54, 53)
+#define     PKG_MAX_WIN_Y		GENMASK_ULL(52, 48)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 1014d0b7cc16..9331a3c15fd1 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -206,6 +206,10 @@
 #define   RPE_MASK				REG_GENMASK(15, 8)
 #define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
 #define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
+#define   PKG_PWR_LIM_1_EN			REG_BIT(15)
+#define   PKG_PWR_LIM_1_TIME			REG_GENMASK(23, 17)
+#define   PKG_PWR_LIM_1_TIME_X			REG_GENMASK(23, 22)
+#define   PKG_PWR_LIM_1_TIME_Y			REG_GENMASK(21, 17)
 
 /* snb MCH registers for priority tuning */
 #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-- 
2.25.1

