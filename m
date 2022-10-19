Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8645A60398A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 08:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9D810EA7A;
	Wed, 19 Oct 2022 06:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC72D10E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 06:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666159478; x=1697695478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SnL0po/JOXVHg1aU+fGXha4LHuu2Dfgb44yuIKVLCII=;
 b=LmIR/G33i+otZZ8i0QSnLhkITarSJsCNUJs+vz2Mn8WmqE7GkuhX6U5A
 lR0zLU2yeBCy3EzSZvzcW4VECwZYc/HULhCjcdgEmpnq+apY/4MMPd0/8
 BXKl6VGqcHHPvJEL8yJLjIARLF5ktGAX7WGcbcXJ80lcSQsr9nNx/vr8b
 d72IAnaD3SlDDP72xRo/Ko5Y3k0cQpotAWQNI/fwT1oMhgD40tCmVWHbc
 7l+M1Uk1T4C0IP+0FnBKhCpA8aCbax/oSCcjkv+9cw/BW86MEgulefpIe
 wTbhumkiDi2aGYhoIn4yRFWJjtjjc7ce60ZqNM9ONmhsPHfAmUBcB9uVE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368367055"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368367055"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="580170684"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="580170684"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:36 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 11:34:02 +0530
Message-Id: <20221019060402.2807360-4-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221019060402.2807360-1-riana.tauro@intel.com>
References: <20221019060402.2807360-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Add hwmon support in
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

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c    |  8 +++---
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 22 +++++++--------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  2 +-
 drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++-----------
 drivers/gpu/drm/i915/selftests/libpower.h |  8 +++---
 5 files changed, 38 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index aacff50dfa89..585915f7c988 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 
 	dt = ktime_get();
-	rc0_power = libpower_get_energy_uJ();
+	rc0_power = libpower_get_energy_uJ(gt->i915);
 	msleep(250);
-	rc0_power = libpower_get_energy_uJ() - rc0_power;
+	rc0_power = libpower_get_energy_uJ(gt->i915) - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
@@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
-	rc6_power = libpower_get_energy_uJ();
+	rc6_power = libpower_get_energy_uJ(gt->i915);
 	msleep(100);
-	rc6_power = libpower_get_energy_uJ() - rc6_power;
+	rc6_power = libpower_get_energy_uJ(gt->i915) - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if (res[1] == res[0]) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 3287698c655b..e88bd774a862 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1094,38 +1094,38 @@ int live_rps_interrupt(void *arg)
 	return err;
 }
 
-static u64 __measure_power(int duration_ms)
+static u64 __measure_power(struct intel_gt *gt, int duration_ms)
 {
 	u64 dE, dt;
 
 	dt = ktime_get();
-	dE = libpower_get_energy_uJ();
+	dE = libpower_get_energy_uJ(gt->i915);
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
-	dE = libpower_get_energy_uJ() - dE;
+	dE = libpower_get_energy_uJ(gt->i915) - dE;
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
@@ -1191,10 +1191,10 @@ int live_rps_power(void *arg)
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
index 494e7a486b07..bca15cfad8a1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -70,7 +70,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
 	if (err)
 		return err;
 	*freq = intel_rps_read_actual_frequency(&gt->rps);
-	*power = measure_power(&gt->rps, freq);
+	*power = measure_power(gt, freq);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/libpower.c b/drivers/gpu/drm/i915/selftests/libpower.c
index c66e993c5f85..b0dfcdf0f20b 100644
--- a/drivers/gpu/drm/i915/selftests/libpower.c
+++ b/drivers/gpu/drm/i915/selftests/libpower.c
@@ -6,29 +6,30 @@
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
+u64 libpower_get_energy_uJ(struct drm_i915_private *i915)
 {
 	unsigned long long power;
 	u32 units;
+	long energy_uJ = 0;
 
-	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
-		return 0;
+	if (IS_DGFX(i915)) {
+#if IS_REACHABLE(CONFIG_HWMON)
+		if (i915_hwm_get_energy(i915, &energy_uJ))
+#endif
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
index 5352981eb946..03a44611f9e9 100644
--- a/drivers/gpu/drm/i915/selftests/libpower.h
+++ b/drivers/gpu/drm/i915/selftests/libpower.h
@@ -10,8 +10,10 @@
 
 struct drm_i915_private;
 
-bool libpower_supported(const struct drm_i915_private *i915);
-
-u64 libpower_get_energy_uJ(void);
+u64 libpower_get_energy_uJ(struct drm_i915_private *i915);
 
+static inline bool libpower_supported(struct drm_i915_private *i915)
+{
+	return libpower_get_energy_uJ(i915);
+}
 #endif /* SELFTEST_LIBPOWER_H */
-- 
2.25.1

