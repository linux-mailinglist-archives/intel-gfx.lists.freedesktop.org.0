Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BB95E82CD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 21:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315B210E8D0;
	Fri, 23 Sep 2022 19:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5479110E8BC;
 Fri, 23 Sep 2022 19:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663962879; x=1695498879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vaEVHw1AHPMpO4xbM7YzDCeYnPoqslqvV71/1IU/Ti4=;
 b=QmusQkRBirCG6OyGnpZ3KYvsq8E+CPA9XD/TAZFdSTZzlszu278aKLS4
 Fj2f79LMSNab1b2owgJY/X+BvtNhC7B4Iq+rQ4YDRK/mWV/r6j29bqPRH
 tDnzjNnvIoA5V5gKFTqvDBejo73wgo2IMW1pGMdkN4l6Y4Pw0k/VqGjr0
 s2Zg/QbOt7l5olXcUikIL69ko02YfQeElrYnTXIbaT4e0x0yv+DswQlNe
 HeNAk2LIzWQioE5P+HEdiiHWhoezwibA6jNReFHEzQqM695pCca2mRpTK
 Yd7XI4pjAmUPpQe7zQWFqYtVtXb0tkCzz0aBdZK3pgvYsd+oicD6kx6TQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="298281572"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="298281572"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 12:54:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="709424415"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 12:54:18 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 24 Sep 2022 01:26:41 +0530
Message-Id: <20220923195643.2376927-6-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923195643.2376927-1-badal.nilawar@intel.com>
References: <20220923195643.2376927-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/hwmon: Expose card reactive
 critical power
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

From: Ashutosh Dixit <ashutosh.dixit@intel.com>

Expose the card reactive critical (I1) power. I1 is exposed as
power1_crit in microwatts (typically for client products) or as
curr1_crit in milliamperes (typically for server).

v2: Add curr1_crit functionality (Ashutosh)
v3: Use HWMON_CHANNEL_INFO to define power1_crit, curr1_crit (Badal)
v4: Use hwm_ prefix for static functions (Ashutosh)
v5: KernelVersion: 6.2, Date: February 2023 in doc (Tvrtko)

Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon | 26 +++++
 drivers/gpu/drm/i915/i915_hwmon.c             | 95 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  6 ++
 3 files changed, 126 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 7525db243d74..f9d6d3b08bba 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -26,6 +26,32 @@ Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
 
+What:		/sys/devices/.../hwmon/hwmon<i>/power1_crit
+Date:		February 2023
+KernelVersion:	6.2
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RW. Card reactive critical (I1) power limit in microwatts.
+
+		Card reactive critical (I1) power limit in microwatts is exposed
+		for client products. The power controller will throttle the
+		operating frequency if the power averaged over a window exceeds
+		this limit.
+
+		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/curr1_crit
+Date:		February 2023
+KernelVersion:	6.2
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RW. Card reactive critical (I1) power limit in milliamperes.
+
+		Card reactive critical (I1) power limit in milliamperes is
+		exposed for server products. The power controller will throttle
+		the operating frequency if the power averaged over a window
+		exceeds this limit.
+
+		Only supported for particular Intel i915 graphics platforms.
+
 What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
 Date:		February 2023
 KernelVersion:	6.2
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 60da956fae0e..f743ac5c59c4 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -11,16 +11,19 @@
 #include "i915_hwmon.h"
 #include "i915_reg.h"
 #include "intel_mchbar_regs.h"
+#include "intel_pcode.h"
 #include "gt/intel_gt_regs.h"
 
 /*
  * SF_* - scale factors for particular quantities according to hwmon spec.
  * - voltage  - millivolts
  * - power  - microwatts
+ * - curr   - milliamperes
  * - energy - microjoules
  */
 #define SF_VOLTAGE	1000
 #define SF_POWER	1000000
+#define SF_CURR		1000
 #define SF_ENERGY	1000000
 
 struct hwm_reg {
@@ -160,11 +163,25 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
 
 static const struct hwmon_channel_info *hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
-	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX),
+	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
 	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
+	HWMON_CHANNEL_INFO(curr, HWMON_C_CRIT),
 	NULL
 };
 
+/* I1 is exposed as power_crit or as curr_crit depending on bit 31 */
+static int hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)
+{
+	return snb_pcode_read_p(&i915->uncore, PCODE_POWER_SETUP,
+				POWER_SETUP_SUBCOMMAND_READ_I1, 0, uval);
+}
+
+static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
+{
+	return  snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
+				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
+}
+
 static umode_t
 hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 {
@@ -198,13 +215,18 @@ hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 static umode_t
 hwm_power_is_visible(const struct hwm_drvdata *ddat, u32 attr, int chan)
 {
+	struct drm_i915_private *i915 = ddat->uncore->i915;
 	struct i915_hwmon *hwmon = ddat->hwmon;
+	u32 uval;
 
 	switch (attr) {
 	case hwmon_power_max:
 		return i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit) ? 0664 : 0;
 	case hwmon_power_rated_max:
 		return i915_mmio_reg_valid(hwmon->rg.pkg_power_sku) ? 0444 : 0;
+	case hwmon_power_crit:
+		return (hwm_pcode_read_i1(i915, &uval) ||
+			!(uval & POWER_SETUP_I1_WATTS)) ? 0 : 0644;
 	default:
 		return 0;
 	}
@@ -214,6 +236,8 @@ static int
 hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
 {
 	struct i915_hwmon *hwmon = ddat->hwmon;
+	int ret;
+	u32 uval;
 
 	switch (attr) {
 	case hwmon_power_max:
@@ -230,6 +254,15 @@ hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
 						hwmon->scl_shift_power,
 						SF_POWER);
 		return 0;
+	case hwmon_power_crit:
+		ret = hwm_pcode_read_i1(ddat->uncore->i915, &uval);
+		if (ret)
+			return ret;
+		if (!(uval & POWER_SETUP_I1_WATTS))
+			return -ENODEV;
+		*val = mul_u64_u32_shr(REG_FIELD_GET(POWER_SETUP_I1_DATA_MASK, uval),
+				       SF_POWER, POWER_SETUP_I1_SHIFT);
+		return 0;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -239,6 +272,7 @@ static int
 hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
 {
 	struct i915_hwmon *hwmon = ddat->hwmon;
+	u32 uval;
 
 	switch (attr) {
 	case hwmon_power_max:
@@ -248,6 +282,9 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
 					  hwmon->scl_shift_power,
 					  SF_POWER, val);
 		return 0;
+	case hwmon_power_crit:
+		uval = DIV_ROUND_CLOSEST_ULL(val << POWER_SETUP_I1_SHIFT, SF_POWER);
+		return hwm_pcode_write_i1(ddat->uncore->i915, uval);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -279,6 +316,56 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+static umode_t
+hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)
+{
+	struct drm_i915_private *i915 = ddat->uncore->i915;
+	u32 uval;
+
+	switch (attr) {
+	case hwmon_curr_crit:
+		return (hwm_pcode_read_i1(i915, &uval) ||
+			(uval & POWER_SETUP_I1_WATTS)) ? 0 : 0644;
+	default:
+		return 0;
+	}
+}
+
+static int
+hwm_curr_read(struct hwm_drvdata *ddat, u32 attr, long *val)
+{
+	int ret;
+	u32 uval;
+
+	switch (attr) {
+	case hwmon_curr_crit:
+		ret = hwm_pcode_read_i1(ddat->uncore->i915, &uval);
+		if (ret)
+			return ret;
+		if (uval & POWER_SETUP_I1_WATTS)
+			return -ENODEV;
+		*val = mul_u64_u32_shr(REG_FIELD_GET(POWER_SETUP_I1_DATA_MASK, uval),
+				       SF_CURR, POWER_SETUP_I1_SHIFT);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+hwm_curr_write(struct hwm_drvdata *ddat, u32 attr, long val)
+{
+	u32 uval;
+
+	switch (attr) {
+	case hwmon_curr_crit:
+		uval = DIV_ROUND_CLOSEST_ULL(val << POWER_SETUP_I1_SHIFT, SF_CURR);
+		return hwm_pcode_write_i1(ddat->uncore->i915, uval);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static umode_t
 hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	       u32 attr, int channel)
@@ -292,6 +379,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 		return hwm_power_is_visible(ddat, attr, channel);
 	case hwmon_energy:
 		return hwm_energy_is_visible(ddat, attr);
+	case hwmon_curr:
+		return hwm_curr_is_visible(ddat, attr);
 	default:
 		return 0;
 	}
@@ -310,6 +399,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 		return hwm_power_read(ddat, attr, channel, val);
 	case hwmon_energy:
 		return hwm_energy_read(ddat, attr, val);
+	case hwmon_curr:
+		return hwm_curr_read(ddat, attr, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -324,6 +415,8 @@ hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	switch (type) {
 	case hwmon_power:
 		return hwm_power_write(ddat, attr, channel, val);
+	case hwmon_curr:
+		return hwm_curr_write(ddat, attr, val);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d340737b10be..335bb5f1dc83 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6650,6 +6650,12 @@
 #define   DG1_PCODE_STATUS			0x7E
 #define     DG1_UNCORE_GET_INIT_STATUS		0x0
 #define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
+#define   PCODE_POWER_SETUP			0x7C
+#define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
+#define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
+#define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
+#define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
+#define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
-- 
2.25.1

