Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5F2645355
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D30F10E359;
	Wed,  7 Dec 2022 05:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A800410E359
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390196; x=1701926196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=473yPmwrxjq8Mb3/DUFnspAe88CtgN4gY1jt8L+ASNQ=;
 b=gvWabr7YRACTmerIwm+9gH5i4815OcO7E+vH25Qi+su8Rr9xyeMjF6i6
 /kqtOzJlVELqe0V5qVV6dyzgbJU8HY4ECHMcgKPr0Zgl+TZMQyGSrv1C5
 hPb6KKxSpo5f54n9ckVbso/YP+Nf+zj5CQE8AQzOAw7STXJMT40CEgmBm
 T3PyAjdxEsvhz4tBk6kQ/cmSswYDQHXxKKY0FON3J4WpC5LFDsvsBqOYS
 XSEgHFbEyGSFWVTU42RIDNuQGLH2qAgY8TkryavIjEwqpj/owImIu5C5t
 VuhQu3qM7nQIgJrDKrminkFAbQ1ANWK+mSGhIpLb6COwoTLV2jCA4z6mJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297158316"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="297158316"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="679006068"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="679006068"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:16:23 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 10:47:45 +0530
Message-Id: <20221207051747.3212925-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221207051747.3212925-1-riana.tauro@intel.com>
References: <20221207051747.3212925-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915/selftests: Rename librapl
 library to libpower
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

Rename librapl files to libpower and replace librapl
with libpower prefix. No functional changes

v2: update commit message (Anshuman)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/Makefile                   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c          | 12 ++++++------
 drivers/gpu/drm/i915/gt/selftest_rps.c          |  8 ++++----
 drivers/gpu/drm/i915/gt/selftest_slpc.c         |  2 +-
 .../i915/selftests/{librapl.c => libpower.c}    | 10 +++++-----
 drivers/gpu/drm/i915/selftests/libpower.h       | 17 +++++++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.h        | 17 -----------------
 7 files changed, 34 insertions(+), 34 deletions(-)
 rename drivers/gpu/drm/i915/selftests/{librapl.c => libpower.c} (69%)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 01974b82d205..ddece53f7c9f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -342,7 +342,7 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
 	selftests/igt_mmap.o \
 	selftests/igt_reset.o \
 	selftests/igt_spinner.o \
-	selftests/librapl.o
+	selftests/libpower.o
 
 # virtual gpu code
 i915-y += i915_vgpu.o
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 2ceeadecc639..15b84c428f66 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -11,7 +11,7 @@
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
-#include "selftests/librapl.h"
+#include "selftests/libpower.h"
 
 static u64 rc6_residency(struct intel_rc6 *rc6)
 {
@@ -51,7 +51,7 @@ int live_rc6_manual(void *arg)
 	if (IS_VALLEYVIEW(gt->i915) || IS_CHERRYVIEW(gt->i915))
 		return 0;
 
-	has_power = librapl_supported(gt->i915);
+	has_power = libpower_supported(gt->i915);
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 
 	/* Force RC6 off for starters */
@@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 
 	dt = ktime_get();
-	rc0_power = librapl_energy_uJ();
+	rc0_power = libpower_get_energy_uJ();
 	msleep(250);
-	rc0_power = librapl_energy_uJ() - rc0_power;
+	rc0_power = libpower_get_energy_uJ() - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
@@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
 	res[0] = rc6_residency(rc6);
 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
 	dt = ktime_get();
-	rc6_power = librapl_energy_uJ();
+	rc6_power = libpower_get_energy_uJ();
 	msleep(100);
-	rc6_power = librapl_energy_uJ() - rc6_power;
+	rc6_power = libpower_get_energy_uJ() - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if (res[1] == res[0]) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 39f1b7564170..b8b0b0c7617e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -19,7 +19,7 @@
 #include "selftest_rps.h"
 #include "selftests/igt_flush_test.h"
 #include "selftests/igt_spinner.h"
-#include "selftests/librapl.h"
+#include "selftests/libpower.h"
 
 /* Try to isolate the impact of cstates from determing frequency response */
 #define CPU_LATENCY 0 /* -1 to disable pm_qos, 0 to disable cstates */
@@ -1095,9 +1095,9 @@ static u64 __measure_power(int duration_ms)
 	u64 dE, dt;
 
 	dt = ktime_get();
-	dE = librapl_energy_uJ();
+	dE = libpower_get_energy_uJ();
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
-	dE = librapl_energy_uJ() - dE;
+	dE = libpower_get_energy_uJ() - dE;
 	dt = ktime_get() - dt;
 
 	return div64_u64(1000 * 1000 * dE, dt);
@@ -1143,7 +1143,7 @@ int live_rps_power(void *arg)
 	if (!intel_rps_is_enabled(rps) || GRAPHICS_VER(gt->i915) < 6)
 		return 0;
 
-	if (!librapl_supported(gt->i915))
+	if (!libpower_supported(gt->i915))
 		return 0;
 
 	if (igt_spinner_init(&spin, gt))
diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index bd44ce73a504..fc1cdda82ec6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -169,7 +169,7 @@ static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
 	 * actually saves power. Let's see if our RAPL measurement supports
 	 * that theory.
 	 */
-	if (!librapl_supported(gt->i915))
+	if (!libpower_supported(gt->i915))
 		return 0;
 
 	min.freq = slpc->min_freq;
diff --git a/drivers/gpu/drm/i915/selftests/librapl.c b/drivers/gpu/drm/i915/selftests/libpower.c
similarity index 69%
rename from drivers/gpu/drm/i915/selftests/librapl.c
rename to drivers/gpu/drm/i915/selftests/libpower.c
index eb03b5b28bad..c66e993c5f85 100644
--- a/drivers/gpu/drm/i915/selftests/librapl.c
+++ b/drivers/gpu/drm/i915/selftests/libpower.c
@@ -1,23 +1,23 @@
 // SPDX-License-Identifier: MIT
 /*
- * Copyright © 2020 Intel Corporation
+ * Copyright © 2022 Intel Corporation
  */
 
 #include <asm/msr.h>
 
 #include "i915_drv.h"
-#include "librapl.h"
+#include "libpower.h"
 
-bool librapl_supported(const struct drm_i915_private *i915)
+bool libpower_supported(const struct drm_i915_private *i915)
 {
 	/* Discrete cards require hwmon integration */
 	if (IS_DGFX(i915))
 		return false;
 
-	return librapl_energy_uJ();
+	return libpower_get_energy_uJ();
 }
 
-u64 librapl_energy_uJ(void)
+u64 libpower_get_energy_uJ(void)
 {
 	unsigned long long power;
 	u32 units;
diff --git a/drivers/gpu/drm/i915/selftests/libpower.h b/drivers/gpu/drm/i915/selftests/libpower.h
new file mode 100644
index 000000000000..5352981eb946
--- /dev/null
+++ b/drivers/gpu/drm/i915/selftests/libpower.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef SELFTEST_LIBPOWER_H
+#define SELFTEST_LIBPOWER_H
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+
+bool libpower_supported(const struct drm_i915_private *i915);
+
+u64 libpower_get_energy_uJ(void);
+
+#endif /* SELFTEST_LIBPOWER_H */
diff --git a/drivers/gpu/drm/i915/selftests/librapl.h b/drivers/gpu/drm/i915/selftests/librapl.h
deleted file mode 100644
index e3b24fad0a7a..000000000000
--- a/drivers/gpu/drm/i915/selftests/librapl.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2020 Intel Corporation
- */
-
-#ifndef SELFTEST_LIBRAPL_H
-#define SELFTEST_LIBRAPL_H
-
-#include <linux/types.h>
-
-struct drm_i915_private;
-
-bool librapl_supported(const struct drm_i915_private *i915);
-
-u64 librapl_energy_uJ(void);
-
-#endif /* SELFTEST_LIBRAPL_H */
-- 
2.25.1

