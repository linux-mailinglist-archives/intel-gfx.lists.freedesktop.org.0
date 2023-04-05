Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A540B6D740A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC4F10E0D0;
	Wed,  5 Apr 2023 06:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5E510E06C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680674441; x=1712210441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=asQ1O0pMc/00cH16XeGLAywxWOxlMQ1hHpBQ84mbixE=;
 b=Da/RWxwSN4Y5wQsnQKc6iDzijv04MLUwRZyFaM9LhieIMtVuE1zPGwEA
 9O8XK2L6F48v9Aqcoej/8CE+4TjAYOPaxrO4HkGgSxy8TD4A1AJTCsIcC
 E5eznfZPa8y2dQAqsCtJqVtaGIKt2OUgEoje5/ZIXop5KJeZ5C/xPZcEC
 yTpKQAuOAmJ1dKisD7+9ziwkWkXUhW/rSKyTP6pMb2VXzHzU83e2zDNTg
 zIK97NGWGWnrv3I7L0z8ChGPvmwGZkAFCM5S350PVAyUwGm5ec/xr7Qwc
 vaqa3zfKaHONY7jdlQyhu7ZMAyWaLUsqzLtdIg3w7Psa1JGVJrh4oOxWO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326412455"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="326412455"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="860849551"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="860849551"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:39 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 11:30:26 +0530
Message-Id: <20230405060029.3574262-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405060029.3574262-1-riana.tauro@intel.com>
References: <20230405060029.3574262-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/4] drm/i915/selftests: Rename librapl
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
v3: fix license year

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
index 057ef22fa9c6..33f2e8038d2f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -356,7 +356,7 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
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
index 84e77e8dbba1..ab534964da4d 100644
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
@@ -1094,10 +1094,10 @@ static u64 __measure_power(int duration_ms)
 {
 	u64 dE, dt;
 
-	dE = librapl_energy_uJ();
+	dE = libpower_get_energy_uJ();
 	dt = ktime_get();
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
index eb03b5b28bad..5d96cccd2e55 100644
--- a/drivers/gpu/drm/i915/selftests/librapl.c
+++ b/drivers/gpu/drm/i915/selftests/libpower.c
@@ -1,23 +1,23 @@
 // SPDX-License-Identifier: MIT
 /*
- * Copyright © 2020 Intel Corporation
+ * Copyright © 2023 Intel Corporation
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
index 000000000000..dd4b93ccf6b0
--- /dev/null
+++ b/drivers/gpu/drm/i915/selftests/libpower.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
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
2.40.0

