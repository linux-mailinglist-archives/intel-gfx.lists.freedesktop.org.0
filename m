Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F228645357
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9111410E35D;
	Wed,  7 Dec 2022 05:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19F210E35A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390196; x=1701926196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4hxHe0mG3nn+OYJ0Otr3vjCExJIeldxkRaBuKnpFOM=;
 b=M2ZZyuB4EUkmJLvzLctMaPekTppYCCTtA/gxwXKwH84UwC6/5+OZFph7
 0CnDYtIrEX4b+xec1CPLYquLVTzc/7o9yJgg9lWJbXnp2H803V3E91wxB
 Yyv0sbHF8wT64Yp8lhEI7LFUBYmwwk7kYpnWqx8sk+PdnnBe82Sw49mN3
 GYCLREwByGgTeMH9hY9+fRJTvwZCMM/7j7ic+912v2z0dbD7BHxvIzT4K
 STkoDUCJNw/Cj+bEpP8SlPQaP/pe9GRoxIVwQXTwLUF+ymmw2V+4EiTw9
 D7AwN0lg+F5ebQ2u4+ZWRSlN3ZNH3lhIEtKVk8rbsK+vx4rewQvwzuzpE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297158318"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="297158318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="679006071"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="679006071"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:26 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 10:47:46 +0530
Message-Id: <20221207051747.3212925-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221207051747.3212925-1-riana.tauro@intel.com>
References: <20221207051747.3212925-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915/hwmon: Add hwmon support in
 libpower for dgfx
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

Add an interface to obtain hwmon energy values. The function returns
per-gt energy if gt level energy is available else returns the package
level energy if there is a single gt.

Use this function in libpower to verify power consumption in
different subtests

v2 : use i915_hwmon prefix (Anshuman)
v3 : re-use is_visible function of energy to remove
     redundant code (Anshuman)
v4 : fix kernel-doc (Anshuman)
     add per-gt hwmon support (Ashutosh)
v5 : add check to return package level energy only when there
     is a single gt and gt level energy is not available.
     add libpower library changes (Ashutosh)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Co-developed-by: Tilak Tangudu <tilak.tangudu@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c         | 28 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h         |  3 +++
 drivers/gpu/drm/i915/selftests/libpower.c | 31 +++++++++++------------
 drivers/gpu/drm/i915/selftests/libpower.h | 10 +++++---
 4 files changed, 52 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c588a17f97e9..e1a33ea65458 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -442,6 +442,34 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+/**
+ * i915_hwmon_get_energy - obtains energy value
+ * @gt: intel_gt structure
+ * @energy: pointer to store energy in uJ
+ *
+ * This function checks for the validity of the underlying energy
+ * hardware register and obtains per-gt level energy
+ * values.
+ *
+ * Return: 0 on success, -EOPNOTSUPP if register is invalid
+ */
+int
+i915_hwmon_get_energy(struct intel_gt *gt, long *energy)
+{
+	struct i915_hwmon *hwmon = gt->i915->hwmon;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
+	struct hwm_drvdata *ddat_gt = hwmon->ddat_gt + gt->info.id;
+
+	if (hwm_energy_is_visible(ddat_gt, hwmon_energy_input))
+		hwm_energy(ddat_gt, energy);
+	else if (!HAS_EXTRA_GT_LIST(gt->i915) && hwm_energy_is_visible(ddat, hwmon_energy_input))
+		hwm_energy(ddat, energy);
+	else
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static umode_t
 hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 {
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 7ca9cf2c34c9..1c38cfdbb7e9 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -8,13 +8,16 @@
 #define __I915_HWMON_H__
 
 struct drm_i915_private;
+struct intel_gt;
 
 #if IS_REACHABLE(CONFIG_HWMON)
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+int i915_hwmon_get_energy(struct intel_gt *gt, long *energy);
 #else
 static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
 static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
+static inline int i915_hwmon_get_energy(struct intel_gt *gt, long *energy) { return -EOPNOTSUPP; }
 #endif
 
 #endif /* __I915_HWMON_H__ */
diff --git a/drivers/gpu/drm/i915/selftests/libpower.c b/drivers/gpu/drm/i915/selftests/libpower.c
index c66e993c5f85..3d4d2dc74a54 100644
--- a/drivers/gpu/drm/i915/selftests/libpower.c
+++ b/drivers/gpu/drm/i915/selftests/libpower.c
@@ -6,29 +6,28 @@
 #include <asm/msr.h>
 
 #include "i915_drv.h"
+#include "i915_hwmon.h"
 #include "libpower.h"
 
-bool libpower_supported(const struct drm_i915_private *i915)
-{
-	/* Discrete cards require hwmon integration */
-	if (IS_DGFX(i915))
-		return false;
-
-	return libpower_get_energy_uJ();
-}
-
-u64 libpower_get_energy_uJ(void)
+u64 libpower_get_energy_uJ(struct intel_gt *gt)
 {
 	unsigned long long power;
 	u32 units;
+	long energy_uJ = 0;
 
-	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
-		return 0;
+	if (IS_DGFX(gt->i915)) {
+		if (i915_hwmon_get_energy(gt, &energy_uJ))
+			return 0;
+	} else {
+		if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
+			return 0;
 
-	units = (power & 0x1f00) >> 8;
+		units = (power & 0x1f00) >> 8;
 
-	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
-		return 0;
+		if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
+			return 0;
 
-	return (1000000 * power) >> units; /* convert to uJ */
+		energy_uJ = (1000000 * power) >> units; /* convert to uJ */
+	}
+	return energy_uJ;
 }
diff --git a/drivers/gpu/drm/i915/selftests/libpower.h b/drivers/gpu/drm/i915/selftests/libpower.h
index 5352981eb946..e4410a886654 100644
--- a/drivers/gpu/drm/i915/selftests/libpower.h
+++ b/drivers/gpu/drm/i915/selftests/libpower.h
@@ -8,10 +8,12 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct intel_gt;
 
-bool libpower_supported(const struct drm_i915_private *i915);
-
-u64 libpower_get_energy_uJ(void);
+u64 libpower_get_energy_uJ(struct intel_gt *gt);
 
+static inline bool libpower_supported(struct intel_gt *gt)
+{
+	return libpower_get_energy_uJ(gt);
+}
 #endif /* SELFTEST_LIBPOWER_H */
-- 
2.25.1

