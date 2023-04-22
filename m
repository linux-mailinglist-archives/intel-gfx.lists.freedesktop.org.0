Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBCA6EB68D
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 03:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CCA10EF30;
	Sat, 22 Apr 2023 01:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A332C10EF1E;
 Sat, 22 Apr 2023 01:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682125292; x=1713661292;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HesbrkwV9yptY8ouFY9YGk4Fq0Xj89KCz5tIv1Drpps=;
 b=SAXBFBY8SwXGu5ZcVFCnpjMsTf/ZVuw7974AgIJ4UXuQhIHo2FfCM9Sa
 gIH4XTdl8OcDZlraPaj8GZ6y2CrpIvbs6mJbORP6EnpGGR9kGO2MqzwPO
 qMMS605LhAy1U5zA7bSXIiLQC8C9vqpF+10eNR23zISogD3Wa3s5T36/2
 vZdo27GqyleWetCbH5SJAa5eQus0Rf1mb1BdLH3L/prJidxBwQyA8NN8i
 +KZzgyLfXos5HOtSUbnnvFAkztdXZB0O9DBvy+mT3iiax8D2EJqOiS2Hz
 vpTBPI1EDjqKeIb4MK3EgXSr2RP2eCi4CLOur6T6hY9ASUTpOnmP0a0DN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="411385218"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="411385218"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 18:01:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="938678687"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="938678687"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2023 18:01:32 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 21 Apr 2023 18:01:02 -0700
Message-Id: <20230422010103.1028886-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
References: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] i915_pm_freq_api: Add some basic SLPC
 igt tests
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

Validate basic api for GT freq control. Also test
interaction with GT reset. We skip rps tests with
SLPC enabled, this will re-introduce some coverage.
SLPC selftests are already covering some other workload
related scenarios.

v2: Rename test (Rodrigo)
v3: Review comments (Ashutosh)
v4: Skip when SLPC is disabled. Check for enable_guc is
not sufficient as kernel config may have it but the
platform doesn't actually support it.
v5: Use the updated SLPC helper

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 152 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   1 +
 2 files changed, 153 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_api.c

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
new file mode 100644
index 00000000..f0f4e3f9
--- /dev/null
+++ b/tests/i915/i915_pm_freq_api.c
@@ -0,0 +1,152 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <dirent.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <inttypes.h>
+#include <stdlib.h>
+#include <sys/stat.h>
+#include <sys/syscall.h>
+#include <sys/types.h>
+#include <unistd.h>
+
+#include "drmtest.h"
+#include "i915/gem.h"
+#include "igt_sysfs.h"
+#include "igt.h"
+
+IGT_TEST_DESCRIPTION("Test SLPC freq API");
+/*
+ * Too many intermediate components and steps before freq is adjusted
+ * Specially if workload is under execution, so let's wait 100 ms.
+ */
+#define ACT_FREQ_LATENCY_US 100000
+
+static uint32_t get_freq(int dirfd, uint8_t id)
+{
+	uint32_t val;
+
+	igt_assert(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
+
+	return val;
+}
+
+static int set_freq(int dirfd, uint8_t id, uint32_t val)
+{
+	return igt_sysfs_rps_printf(dirfd, id, "%u", val);
+}
+
+static void test_freq_basic_api(int dirfd, int gt)
+{
+	uint32_t rpn, rp0, rpe;
+
+	/* Save frequencies */
+	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
+	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
+	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
+
+	/*
+	 * Negative bound tests
+	 * RPn is the floor
+	 * RP0 is the ceiling
+	 */
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn - 1) < 0);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
+
+	/* Assert min requests are respected from rp0 to rpn */
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0) > 0);
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rp0);
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpe) > 0);
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpe);
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+
+	/* Assert max requests are respected from rpn to rp0 */
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpe) > 0);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpe);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rp0);
+
+}
+
+static void test_reset(int i915, int dirfd, int gt)
+{
+	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	int fd;
+
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
+	usleep(ACT_FREQ_LATENCY_US);
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+
+	/* Manually trigger a GT reset */
+	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
+	igt_require(fd >= 0);
+	igt_ignore_warn(write(fd, "1\n", 2));
+	close(fd);
+
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
+}
+
+igt_main
+{
+	int i915 = -1;
+	uint32_t *stash_min, *stash_max;
+
+	igt_fixture {
+		int num_gts, dirfd, gt;
+
+		i915 = drm_open_driver(DRIVER_INTEL);
+		igt_require_gem(i915);
+		/* i915_pm_rps already covers execlist path */
+		igt_skip_on_f(!i915_is_slpc_enabled(i915),
+			      "This test is supported only with SLPC enabled\n");
+
+		num_gts = igt_sysfs_get_num_gt(i915);
+		stash_min = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
+		stash_max = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
+
+		/* Save curr min and max across GTs */
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
+			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
+			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
+		}
+	}
+
+	igt_describe("Test basic API for controlling min/max GT frequency");
+	igt_subtest_with_dynamic_f("freq-basic-api") {
+		int dirfd, gt;
+
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
+			igt_dynamic_f("gt%u", gt)
+				test_freq_basic_api(dirfd, gt);
+	}
+
+	igt_describe("Test basic freq API works after a reset");
+	igt_subtest_with_dynamic_f("freq-reset") {
+		int dirfd, gt;
+
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
+			igt_dynamic_f("gt%u", gt)
+				test_reset(i915, dirfd, gt);
+	}
+
+	igt_fixture {
+		int dirfd, gt;
+		/* Restore frequencies */
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
+			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
+			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
+		}
+		close(i915);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index da31e782..46109f10 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -202,6 +202,7 @@ i915_progs = [
 	'gem_workarounds',
 	'i915_fb_tiling',
 	'i915_getparams_basic',
+	'i915_pm_freq_api',
 	'i915_hangman',
 	'i915_hwmon',
 	'i915_module_load',
-- 
2.38.1

