Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 932A863CEBC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 06:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA74F10E28F;
	Wed, 30 Nov 2022 05:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC9C10E28C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 05:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669786398; x=1701322398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JDgbmQL+7SosA9ZIiY+BDzO2DkboqGDSnmZ34TLxGqM=;
 b=XYzYZgMJvb51ggKDyZAoKKRVb936wyQ11izq2WgM2a/GB0HLiz6sBBDM
 odcB54t36kVVMCLe2OGureq/PKINYYRH+zKI7ao3ZXtu62VUxJZXkU9OZ
 UIWgg4r+W9u9Fzi3RV87qtahGHGkR/EDNTCnrlcjnuQkaWir4y9gOa1mc
 j42aqJn7fJ3/YnUYV0j4bnrMR8I2X5wYZ46PQzruRssKGg8vjM6wyUOAq
 2XduWkF15C49fZTT/6TJEEKhjQUVOK3QoEm2FRSAPaxlwZrumpDOGzUB4
 T+iW3ow52sPuZPjrnmuKvjik5TuRHsIMHcylomZqhGDpBE2c893qW1ds1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401588255"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401588255"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818498645"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="818498645"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:15 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 11:04:27 +0530
Message-Id: <20221130053427.2207600-4-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221130053427.2207600-1-riana.tauro@intel.com>
References: <20221130053427.2207600-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/selftests: Add hwmon support in
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

hwmon provides an interface to read energy values for discrete graphics.
add hwmon support to the existing libpower library so that it can verify
power consumption values in different selftests.

Changed prototype of libpower_get_energy_uJ

v2: add per-gt hwmon support (Ashutosh)

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Co-developed-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 10 ++++----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 24 +++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/selftests/libpower.c | 31 +++++++++++------------
 drivers/gpu/drm/i915/selftests/libpower.h | 10 +++++---
 5 files changed, 40 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 15b84c428f66..682f2fe67b3a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -51,7 +51,7 @@ int live_rc6_manual(void *arg)
 	if (IS_VALLEYVIEW(gt->i915) || IS_CHERRYVIEW(gt->i915))
 		return 0;
 
-	has_power = libpower_supported(gt->i915);
+	has_power = libpower_supported(gt);
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 
 	/* Force RC6 off for starters */
@@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 
 	dt = ktime_get();
-	rc0_power = libpower_get_energy_uJ();
+	rc0_power = libpower_get_energy_uJ(gt);
 	msleep(250);
-	rc0_power = libpower_get_energy_uJ() - rc0_power;
+	rc0_power = libpower_get_energy_uJ(gt) - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
@@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
-	rc6_power = libpower_get_energy_uJ();
+	rc6_power = libpower_get_energy_uJ(gt);
 	msleep(100);
-	rc6_power = libpower_get_energy_uJ() - rc6_power;
+	rc6_power = libpower_get_energy_uJ(gt) - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if (res[1] == res[0]) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index b8b0b0c7617e..d5e9f57cca55 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1090,38 +1090,38 @@ int live_rps_interrupt(void *arg)
 	return err;
 }
 
-static u64 __measure_power(int duration_ms)
+static u64 __measure_power(struct intel_gt *gt, int duration_ms)
 {
 	u64 dE, dt;
 
 	dt = ktime_get();
-	dE = libpower_get_energy_uJ();
+	dE = libpower_get_energy_uJ(gt);
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
-	dE = libpower_get_energy_uJ() - dE;
+	dE = libpower_get_energy_uJ(gt) - dE;
 	dt = ktime_get() - dt;
 
 	return div64_u64(1000 * 1000 * dE, dt);
 }
 
-static u64 measure_power(struct intel_rps *rps, int *freq)
+static u64 measure_power(struct intel_gt *gt, int *freq)
 {
 	u64 x[5];
 	int i;
 
 	for (i = 0; i < 5; i++)
-		x[i] = __measure_power(5);
+		x[i] = __measure_power(gt, 5);
 
-	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
+	*freq = (*freq + intel_rps_read_actual_frequency(&gt->rps)) / 2;
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
 	return div_u64(x[1] + 2 * x[2] + x[3], 4);
 }
 
-static u64 measure_power_at(struct intel_rps *rps, int *freq)
+static u64 measure_power_at(struct intel_gt *gt, int *freq)
 {
-	*freq = rps_set_check(rps, *freq);
-	return measure_power(rps, freq);
+	*freq = rps_set_check(&gt->rps, *freq);
+	return measure_power(gt, freq);
 }
 
 int live_rps_power(void *arg)
@@ -1143,7 +1143,7 @@ int live_rps_power(void *arg)
 	if (!intel_rps_is_enabled(rps) || GRAPHICS_VER(gt->i915) < 6)
 		return 0;
 
-	if (!libpower_supported(gt->i915))
+	if (!libpower_supported(gt))
 		return 0;
 
 	if (igt_spinner_init(&spin, gt))
@@ -1187,10 +1187,10 @@ int live_rps_power(void *arg)
 		}
 
 		max.freq = rps->max_freq;
-		max.power = measure_power_at(rps, &max.freq);
+		max.power = measure_power_at(gt, &max.freq);
 
 		min.freq = rps->min_freq;
-		min.power = measure_power_at(rps, &min.freq);
+		min.power = measure_power_at(gt, &min.freq);
 
 		igt_spinner_end(&spin);
 		st_engine_heartbeat_enable(engine);
diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index fc1cdda82ec6..20b9e05d3d16 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -78,7 +78,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
 	if (err)
 		return err;
 	*freq = intel_rps_read_actual_frequency(&gt->rps);
-	*power = measure_power(&gt->rps, freq);
+	*power = measure_power(gt, freq);
 
 	return err;
 }
@@ -169,7 +169,7 @@ static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
 	 * actually saves power. Let's see if our RAPL measurement supports
 	 * that theory.
 	 */
-	if (!libpower_supported(gt->i915))
+	if (!libpower_supported(gt))
 		return 0;
 
 	min.freq = slpc->min_freq;
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

