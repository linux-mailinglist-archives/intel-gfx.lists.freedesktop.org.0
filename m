Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A626CB376
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 03:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7305A10E7E1;
	Tue, 28 Mar 2023 01:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D7110E442;
 Tue, 28 Mar 2023 01:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679968690; x=1711504690;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WzXZAz32smRePFQj3+S2DdQ7f2KtnkmmSMAQBtqTIuU=;
 b=UMCcYj4W/qW+p82CWCybMNDNc0koY3sixz4hXZ5nZ2J0mjJCo5rGBkh8
 1UwU7TpW+ktTF6XS74V2ogjO66ktmEg1Em65rGfBt/dOZjqvGFs454kuw
 /mG13kFholM4YqILpWt9GmIbmaMFwRx3ZGaNMSwTe78jNkglDySwDDJH1
 7DyAzsdaPa/+sfKSkhrKsj4Zt986EAxKYqMKleVc24z7nucaE8p7gE23H
 AdG22VacHdhd27SIp9aM3OZFiUJQyyO7XN4SQJxo/7sEFSvwVs9MT6aw6
 ZsALTWQN2Sf6zXklgMUxbk3KQkmq/AVakDvriPy4yraq1PHhVpVeJ0+gY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342846140"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="342846140"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 18:58:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="683670112"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="683670112"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga002.jf.intel.com with ESMTP; 27 Mar 2023 18:58:12 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 27 Mar 2023 19:00:28 -0700
Message-Id: <20230328020028.2143954-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>
References: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915_pm_freq_api: Add some basic SLPC
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

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 151 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   1 +
 2 files changed, 152 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_api.c

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
new file mode 100644
index 00000000..f1027d1c
--- /dev/null
+++ b/tests/i915/i915_pm_freq_api.c
@@ -0,0 +1,151 @@
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
+	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
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
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
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
+		igt_require(gem_using_guc_submission(i915));
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
index 7d2168be..072cae30 100644
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

