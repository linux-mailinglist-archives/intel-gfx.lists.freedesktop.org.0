Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A6CA236BC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F1710E9D7;
	Thu, 30 Jan 2025 21:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i2S8tn39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A2610E9D9;
 Thu, 30 Jan 2025 21:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738272863; x=1769808863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nYMnbQTII8+qSuOA2xssSMUyQ3kXkf2qzRW8BNQvp+k=;
 b=i2S8tn395YCELUmE4P3VxvpE0wkFQ5qBIsVCHWv2IQY5LrAccT9uJW7f
 oozLay6QMPgjP77dDy9ZRr7XkBEsZ9at84JX2XBbGyQChtC+zpM5L4T1d
 jpmRpz38S+6ujuFd0Cif49JpPpryzLHhgcc8WcUlKgbR1ioOZvLy0h+co
 rmzk4f3ovG4JEHZN5WnrzrTfSA5BRid4exJBZpVHvVhJXh7k4yLuGrHjp
 tcpgeCn/KE9j3dFeq8AqcUcS0gKN0H38OVqUADJdnp5Wmj/iSgk9PwWSt
 9Qka9zYw0XdnyKghmAgQF8T7FImNueV4H3WmyCyYYk4MUqVMK5ckQ+ovF w==;
X-CSE-ConnectionGUID: LORxqvrCQm6g2Exmq2KBzA==
X-CSE-MsgGUID: YBOF/8eeSoSLjCGs1bWwuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38083308"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38083308"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:34:22 -0800
X-CSE-ConnectionGUID: p6hEH8wURPeGkTK20i0LCA==
X-CSE-MsgGUID: Ehfm929HQjCnxNCvmsS4Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109352194"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jan 2025 13:34:19 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v7 3/3] tests/xe/pmu: Add pmu tests for gt-c6
Date: Thu, 30 Jan 2025 13:30:28 -0800
Message-Id: <20250130213028.3852086-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
References: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Simple tests for validating the PMU implementation for GT C6
residencies.

v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
v3: Keep just gt-c6 tests, add frequency tests later.
v4: Review comments (Riana)
v5: Review comments (Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_pmu.c | 149 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 2 files changed, 150 insertions(+)
 create mode 100644 tests/intel/xe_pmu.c

diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
new file mode 100644
index 000000000..44589cb86
--- /dev/null
+++ b/tests/intel/xe_pmu.c
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+/**
+ * TEST: Test Xe PMU functionality
+ * Category: Perf Monitoring Unit
+ * Mega feature: Perf Monitoring Unit
+ * Sub-category: Telemetry
+ * Functionality: Power/Perf
+ * Test category: Functional tests
+ */
+
+#include <fcntl.h>
+#include <limits.h>
+#include <time.h>
+#include <errno.h>
+#include <dirent.h>
+#include <string.h>
+#include <sys/time.h>
+
+#include "igt.h"
+#include "igt_device.h"
+#include "igt_power.h"
+#include "igt_sysfs.h"
+#include "igt_perf.h"
+
+#include "lib/igt_syncobj.h"
+#include "xe/xe_ioctl.h"
+#include "xe/xe_gt.h"
+#include "xe/xe_query.h"
+#include "xe/xe_spin.h"
+#include "xe/xe_util.h"
+
+#define SLEEP_DURATION 2 /* in seconds */
+const double tolerance = 0.1;
+const char *no_debug_data = "\0";
+
+static int open_pmu(int xe, uint64_t config)
+{
+	int fd;
+
+	fd = perf_xe_open(xe, config);
+	igt_skip_on(fd < 0 && errno == ENODEV);
+	igt_assert(fd >= 0);
+
+	return fd;
+}
+
+static uint64_t __pmu_read_single(int fd, uint64_t *ts)
+{
+	uint64_t data[2];
+
+	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
+	if (ts)
+		*ts = data[1];
+
+	return data[0];
+}
+
+static unsigned long read_idle_residency(int fd, int gt)
+{
+	unsigned long residency = 0;
+	int gt_fd;
+
+	gt_fd = xe_sysfs_gt_open(fd, gt);
+	igt_assert(gt_fd >= 0);
+	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
+	close(gt_fd);
+
+	return residency;
+}
+
+static u64 get_event_config(int xe, unsigned int gt, char *event)
+{
+	int ret;
+	char xe_device[100];
+	u64 pmu_config;
+	u32 start, end;
+
+	xe_perf_device(xe, xe_device, sizeof(xe_device));
+	ret = perf_event_config(xe_device, event, &pmu_config);
+	igt_assert(ret >= 0);
+	ret = perf_event_format(xe_device, "gt", &start, &end);
+	igt_assert(ret >= 0);
+	pmu_config |= (u64) gt << start;
+
+	return pmu_config;
+}
+
+/**
+ * SUBTEST: gt-c6-idle
+ * Description: Basic residency test to validate idle residency
+ *		measured over a time interval is within the tolerance
+ */
+static void test_gt_c6_idle(int xe, unsigned int gt)
+{
+	int pmu_fd;
+	u64 pmu_config;
+	char event[100];
+	uint64_t ts[2];
+	unsigned long slept, start, end;
+	uint64_t val;
+
+	/* Get the PMU config for the gt-c6 event */
+	sprintf(event, "gt-c6-residency");
+	pmu_config = get_event_config(xe, gt, event);
+
+	pmu_fd = open_pmu(xe, pmu_config);
+
+	igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d should be in C6\n", gt);
+
+	/* While idle check full RC6. */
+	start = read_idle_residency(xe, gt);
+	val = __pmu_read_single(pmu_fd, &ts[0]);
+	slept = igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
+	end = read_idle_residency(xe, gt);
+	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
+
+	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
+		  gt, slept,  val);
+
+	igt_debug("Start res: %lu, end_res: %lu", start, end);
+
+	assert_within_epsilon(val,
+			      (ts[1] - ts[0])/USEC_PER_SEC,
+			      tolerance);
+	close(pmu_fd);
+}
+
+igt_main
+{
+	int fd, gt;
+
+	igt_fixture {
+		fd = drm_open_driver(DRIVER_XE);
+		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
+	}
+
+	igt_describe("Validate PMU gt-c6 residency counters when idle");
+	igt_subtest("gt-c6-idle")
+		xe_for_each_gt(fd, gt)
+			test_gt_c6_idle(fd, gt);
+
+	igt_fixture {
+		close(fd);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 33dffad31..d20f50766 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -309,6 +309,7 @@ intel_xe_progs = [
 	'xe_pat',
 	'xe_peer2peer',
 	'xe_pm',
+	'xe_pmu',
 	'xe_pm_residency',
 	'xe_prime_self_import',
 	'xe_query',
-- 
2.38.1

