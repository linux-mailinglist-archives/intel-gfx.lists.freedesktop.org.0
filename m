Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D401A1D23F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 09:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF03910E4EA;
	Mon, 27 Jan 2025 08:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFt5FvE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D9410E4DD;
 Mon, 27 Jan 2025 08:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737965869; x=1769501869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJgU0leasiL774TZ4yMzmC+jltvWHtNNZcnvFADfnic=;
 b=OFt5FvE167Vr+J+KwkCjEE3MpECL/hzpUd4p+j2rP/G1TAKAd1/dBK8M
 fsaq307z5F+rKUXRchweTxYicqfzHWRtsvrTPUdvW+7lMmlMU46r6MDFb
 WU+o5Y/B1P0w4r2SNqTiIWMduDCoAk02uFj9og3kkHGtvxp4ZiBCuD0UX
 EfetfZN+6aR9PBslwFOEYlykgn2tXCvU3aSwLrOTVHtY2AcNN1ZgWvymk
 QLUEjATK8vgUDsmnrZiGNLWoQ7VzwTkzad8/+CzqZv6iIMxTSbeE72L+O
 qrL5HMRsCAcSRbJ8UZK9buO2O5m6rff3J90OladQLWc0PR5wz5wmmj36Y A==;
X-CSE-ConnectionGUID: rm0YyezvQR+eZ6HgDlUiZQ==
X-CSE-MsgGUID: 2LvRTOFeQCmMZy3Gn9ZTeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="60883655"
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="60883655"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 00:17:49 -0800
X-CSE-ConnectionGUID: c1kcodEMSPGFaGbHQib8Lg==
X-CSE-MsgGUID: CXyG1H3iTGmlwDA2+bJMCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="108342480"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa006.jf.intel.com with ESMTP; 27 Jan 2025 00:17:49 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v4 2/2] tests/xe/pmu: Add pmu tests
Date: Mon, 27 Jan 2025 00:14:02 -0800
Message-Id: <20250127081402.2587605-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
References: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
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

These tests validate the kernel series which is currently in review
here - https://patchwork.freedesktop.org/series/139121/

v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
v3: Keep just gt-c6 tests, add frequency tests later.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c       |   8 +-
 lib/igt_perf.h       |   2 +
 tests/intel/xe_pmu.c | 191 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 4 files changed, 201 insertions(+), 1 deletion(-)
 create mode 100644 tests/intel/xe_pmu.c

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index e333744bb..b8367cd5e 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -153,7 +153,7 @@ int perf_xe_event_config(const char *device, const char *event, uint64_t *config
 		return ret;
 
 	buf[ret] = '\0';
-	ret = sscanf(buf, "config=0x%lx", config);
+	ret = sscanf(buf, "event=0x%lx", config);
 	if (ret != 1)
 		return -EINVAL;
 
@@ -251,6 +251,12 @@ int perf_xe_open(int xe, uint64_t config)
 			PERF_FORMAT_TOTAL_TIME_ENABLED);
 }
 
+int perf_xe_open_group(int xe, uint64_t config, int group)
+{
+	return _perf_open(xe_perf_type_id(xe), config, group,
+			  PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_GROUP);
+}
+
 int perf_i915_open(int i915, uint64_t config)
 {
 	return _perf_open(i915_perf_type_id(i915), config, -1,
diff --git a/lib/igt_perf.h b/lib/igt_perf.h
index f51c44bb2..e268fb4ff 100644
--- a/lib/igt_perf.h
+++ b/lib/igt_perf.h
@@ -55,6 +55,7 @@ perf_event_open(struct perf_event_attr *attr,
 
 uint64_t igt_perf_type_id(const char *device);
 int igt_perf_events_dir(int i915);
+int igt_xe_perf_events_dir(int xe);
 int igt_perf_open(uint64_t type, uint64_t config);
 int igt_perf_open_group(uint64_t type, uint64_t config, int group);
 
@@ -71,6 +72,7 @@ int perf_i915_open(int i915, uint64_t config);
 int perf_i915_open_group(int i915, uint64_t config, int group);
 
 int perf_xe_open(int xe, uint64_t config);
+int perf_xe_open_group(int xe, uint64_t config, int group);
 int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
 int perf_xe_event_format_gt(const char *device);
 
diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
new file mode 100644
index 000000000..929de8082
--- /dev/null
+++ b/tests/intel/xe_pmu.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+/**
+ * TEST: Test Xe PMU functionality
+ * Category: Perf Monitoring Unit
+ * Mega feature: Perf Monitoring Unit
+ * Sub-category: Power Management
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
+const unsigned long batch_duration_ns = 500e6;
+const char *no_debug_data = "\0";
+
+#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
+	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
+		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
+		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
+		     #x, #ref, (double)(x), \
+		     (tol_up) * 100.0, (tol_down) * 100.0, \
+		     (double)(ref), debug_data)
+
+#define assert_within_epsilon(x, ref, tolerance) \
+	__assert_within_epsilon(x, ref, tolerance, tolerance, no_debug_data)
+
+#define assert_within_epsilon_debug(x, ref, tolerance, debug_data) \
+	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)
+
+struct workload {
+	struct drm_xe_sync sync[2];
+	struct drm_xe_exec exec;
+	uint64_t addr;
+	struct xe_spin_opts spin_opts;
+	struct xe_spin *spin;
+	uint32_t exec_queue;
+	uint32_t syncobj;
+	size_t bo_size;
+	uint32_t bo;
+	uint32_t vm;
+};
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
+/**
+ * SUBTEST: c6
+ * Description: Basic residency test to validate idle residency
+ *		measured over a time interval is within the tolerance
+ */
+static unsigned int measured_usleep(unsigned int usec)
+{
+	struct timespec ts = { };
+	unsigned int slept;
+
+	slept = igt_nsec_elapsed(&ts);
+	igt_assert(slept == 0);
+	do {
+		usleep(usec - slept);
+		slept = igt_nsec_elapsed(&ts) / 1000;
+	} while (slept < usec);
+
+	return igt_nsec_elapsed(&ts) / 1000;
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
+	u32 gt_shift;
+
+	xe_perf_device(xe, xe_device, sizeof(xe_device));
+	ret = perf_xe_event_config(xe_device, event, &pmu_config);
+	igt_assert(ret >= 0);
+	gt_shift = perf_xe_event_format_gt(xe_device);
+	pmu_config |= (u64) gt << gt_shift;
+
+	return pmu_config;
+}
+
+static void test_c6(int xe, unsigned int gt)
+{
+	int pmu_fd;
+	u64 pmu_config;
+	char event[100];
+	uint64_t ts[2];
+	unsigned long slept, start, end;
+	uint64_t val;
+
+	/* Get the PMU config for the c6 event */
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
+	slept = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
+	end = read_idle_residency(xe, gt);
+	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
+
+	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
+		  gt, slept,  val);
+
+	igt_debug("Start res: %lu, end_res: %lu", start, end);
+
+	assert_within_epsilon(val,
+			      (ts[1] - ts[0])/1000000,
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
+	igt_describe("Validate PMU C6 residency counters");
+	igt_subtest("c6")
+		xe_for_each_gt(fd, gt)
+			test_c6(fd, gt);
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

