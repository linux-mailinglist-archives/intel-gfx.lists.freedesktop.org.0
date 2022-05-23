Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EBB530E85
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 13:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68282891A4;
	Mon, 23 May 2022 11:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFF610E460
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 11:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653304107; x=1684840107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7b5xgNaDjOb9hpgC8ttRXuW0UACfLLHag3n0ViQ1uQ0=;
 b=B2BU1d/nKPiMs5TA5tKHtAmbC7vH11sZ7Lqn77CE9Tn8xF8bQPGvP3Vh
 4f0wjsRvF2WOOoHgGUx/5xldiZMfkdxf7073f9Gi/bmCyPAfAGNc2QQ++
 a+KrYAEIccFXszQ7oKpRcF5j04g3PEORtzr3bXfoxqt1w98ngNPyFqbxp
 y2Nn4ilWv+/gEHmfz/Y/+WoOhnaA890Mc3XzO85Ky1xi3l+he5vumRlfu
 KKZuVeHNELKxIrCVNZAZwtwqLo3X6z5DvZcR/NM83y/9eEzVm67eD9JgU
 uIdr8+aFaqpXgNfSXUQMG+HWYLoWNefaFdeufhN2EH/L4tR56odQxhcny g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="359579425"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="359579425"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="600589657"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:24 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 16:38:41 +0530
Message-Id: <20220523110841.1151431-4-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523110841.1151431-1-badal.nilawar@intel.com>
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Add HWMON current voltage
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

From: Riana Tauro <riana.tauro@intel.com>

As part of the System Managemenent Interface (SMI), use the HWMON
subsystem to display current voltage

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 +++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  4 ++
 drivers/gpu/drm/i915/i915_hwmon.c             | 57 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h             |  1 +
 4 files changed, 70 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 7574421c326f..c70e06dd0333 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -33,3 +33,11 @@ Contact:	dri-devel@lists.freedesktop.org
 Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
+
+What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
+Date:		May 2022
+KernelVersion:	5.18
+Contact:	dri-devel@lists.freedesktop.org
+Description:	RO. Current Voltage in millivolt.
+
+		Only supported for particular Intel i915 graphics platforms.
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7246eb870c7e..0adeca083de1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1475,6 +1475,10 @@
 #define GEN6_GT_GFX_RC6p			_MMIO(0x13810c)
 #define GEN6_GT_GFX_RC6pp			_MMIO(0x138110)
 #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
+
+#define GEN12_RPSTAT1				_MMIO(0x1381b4)
+#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
+
 #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
 
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index b35c4de73f30..e5f4293a8fdb 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 
 #include "i915_drv.h"
+#include "gt/intel_gt_regs.h"
 #include "i915_hwmon.h"
 #include "intel_mchbar_regs.h"
 
@@ -301,8 +302,23 @@ static const struct hwmon_channel_info i915_power = {
 	.config = i915_config_power,
 };
 
+/*
+ * HWMON SENSOR TYPE = hwmon_in
+ *  - Voltage Input value (in0_input)
+ */
+static const u32 i915_config_in[] = {
+	HWMON_I_INPUT,
+	0
+};
+
+static const struct hwmon_channel_info i915_in = {
+	.type = hwmon_in,
+	.config = i915_config_in,
+};
+
 static const struct hwmon_channel_info *i915_info[] = {
 	&i915_power,
+	&i915_in,
 	NULL
 };
 
@@ -370,6 +386,41 @@ i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long val)
 	return ret;
 }
 
+static umode_t
+i915_in_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr)
+{
+	struct drm_i915_private *i915 = ddat->dd_uncore->i915;
+
+	switch (attr) {
+	case hwmon_in_input:
+		return (IS_DG1(i915) || IS_DG2(i915)) ? 0444 : 0;
+	default:
+		return 0;
+	}
+
+	return 0444;
+}
+
+static int
+i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
+{
+	struct i915_hwmon *hwmon = ddat->dd_hwmon;
+	intel_wakeref_t wakeref;
+	u32 reg_value;
+
+	switch (attr) {
+	case hwmon_in_input:
+		with_intel_runtime_pm(ddat->dd_uncore->rpm, wakeref)
+			reg_value = intel_uncore_read(ddat->dd_uncore, hwmon->rg.gt_perf_status);
+		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
 static umode_t
 i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 		u32 attr, int channel)
@@ -379,6 +430,8 @@ i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
 	switch (type) {
 	case hwmon_power:
 		return i915_power_is_visible(ddat, attr, channel);
+	case hwmon_in:
+		return i915_in_is_visible(ddat, attr);
 	default:
 		return 0;
 	}
@@ -393,6 +446,8 @@ i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
 	switch (type) {
 	case hwmon_power:
 		return i915_power_read(ddat, attr, channel, val);
+	case hwmon_in:
+		return i915_in_read(ddat, attr, val);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -440,12 +495,14 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
 		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
 		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
+		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
 	} else {
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
 		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
 		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
 		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
+		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
 	}
 
 	wakeref = intel_runtime_pm_get(uncore->rpm);
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 1c70a7056be7..90ae4acae74e 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -20,6 +20,7 @@ struct i915_hwmon_reg {
 	i915_reg_t pkg_rapl_limit;
 	i915_reg_t energy_status_all;
 	i915_reg_t energy_status_tile;
+	i915_reg_t gt_perf_status;
 };
 
 struct i915_energy_info {
-- 
2.25.1

