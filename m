Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E79C66D1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 02:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFDD210E241;
	Wed, 13 Nov 2024 01:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NpaF4vm0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A0EC10E241;
 Wed, 13 Nov 2024 01:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731461969; x=1762997969;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1EM9WGq3kI3jgROWn2nwMbjfJd6GKFeLeUzv7Nx555M=;
 b=NpaF4vm0iuWKDGKXORPggktZDn8ucTwf2+JVLQjHoI79YYAsEyuMeHnF
 vsuIWYYOePEqAgEtu7WwJBgk8hcPgkh2r1o0P1of2hNXXBwhkNkvtn9Ym
 bfA7NPaLqUwILTKJfRMoXF1fH5hGhbo9zKkUe941ql5EI54Ntk+JJzzia
 oBeT8qRlBgQXzAklpn5z/2CFXI57zHypsB4eqNRC3DbLTPI9MGa6W9R+u
 u6JxsNYWpFmjYH+PKABdOA7RoB92WZcMkyehmjFUEhMCifnMOY4p0t3bn
 0+diP6QqZKCS80zlu92vxToEk10HYLjdV2VQMYOr0qj7AJy+UEjYVdkzi Q==;
X-CSE-ConnectionGUID: UougQQVNRyGizR2sV4k8Uw==
X-CSE-MsgGUID: I15tZJI4THCgYBMeydt9xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31488937"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31488937"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 17:39:28 -0800
X-CSE-ConnectionGUID: wu/+S2o0TM+8dur20sIkvg==
X-CSE-MsgGUID: t0hMXvMJTGOyTRThSlvzXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,149,1728975600"; d="scan'208";a="125230417"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 17:39:28 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v3] tests/xe/pmu: Add pmu tests
Date: Tue, 12 Nov 2024 17:36:43 -0800
Message-Id: <20241113013643.4151537-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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
residencies and frequency.

These tests validate the kernel series which is currently in review
here - https://patchwork.freedesktop.org/series/139121/

v2: Rename rc6-residency-* to c6-residency-* as per KMD changes.
Also, move config read to igt_perf library.
v3: Fix build errors.

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c       |  48 ++++++
 lib/igt_perf.h       |   3 +
 tests/intel/xe_pmu.c | 394 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 4 files changed, 446 insertions(+)
 create mode 100644 tests/intel/xe_pmu.c

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 3866c6d77..1aca511a7 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -129,6 +129,48 @@ uint64_t igt_perf_type_id(const char *device)
 	return strtoull(buf, NULL, 0);
 }
 
+uint64_t xe_perf_event_config(int xe, char *pmu_str)
+{
+	char buf[150];
+	ssize_t ret;
+	int fd;
+	uint64_t config;
+	char device[30];
+
+	snprintf(buf, sizeof(buf),
+		 "/sys/bus/event_source/devices/%s/events/%s",
+		 xe_perf_device(xe, device, sizeof(device)),
+		 pmu_str);
+
+	fd = open(buf, O_RDONLY);
+	if (fd < 0)
+		return 0;
+
+	ret = read(fd, buf, sizeof(buf) - 1);
+	close(fd);
+	if (ret < 1)
+		return 0;
+
+	buf[ret] = '\0';
+	ret = sscanf(buf, "config=0x%lx", &config);
+	if (ret != 1)
+		return 0;
+
+	return config;
+}
+
+int igt_xe_perf_events_dir(int xe)
+{
+	char buf[80];
+	char path[PATH_MAX];
+
+	memset(buf, 0, sizeof(buf));
+
+	xe_perf_device(xe, buf, sizeof(buf));
+	snprintf(path, sizeof(path), "/sys/bus/event_source/devices/%s/events", buf);
+	return open(path, O_RDONLY);
+}
+
 int igt_perf_events_dir(int i915)
 {
 	char buf[80];
@@ -183,6 +225,12 @@ int perf_xe_open(int xe, uint64_t config)
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
index 3d9ba2917..173dd7914 100644
--- a/lib/igt_perf.h
+++ b/lib/igt_perf.h
@@ -54,7 +54,9 @@ perf_event_open(struct perf_event_attr *attr,
 }
 
 uint64_t igt_perf_type_id(const char *device);
+uint64_t xe_perf_event_config(int xe, char* pmu_event);
 int igt_perf_events_dir(int i915);
+int igt_xe_perf_events_dir(int xe);
 int igt_perf_open(uint64_t type, uint64_t config);
 int igt_perf_open_group(uint64_t type, uint64_t config, int group);
 
@@ -71,5 +73,6 @@ int perf_i915_open(int i915, uint64_t config);
 int perf_i915_open_group(int i915, uint64_t config, int group);
 
 int perf_xe_open(int xe, uint64_t config);
+int perf_xe_open_group(int xe, uint64_t config, int group);
 
 #endif /* I915_PERF_H */
diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
new file mode 100644
index 000000000..7923aaf17
--- /dev/null
+++ b/tests/intel/xe_pmu.c
@@ -0,0 +1,394 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
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
+static int open_group(int xe, uint64_t config, int group)
+{
+	int fd;
+
+	fd = perf_xe_open_group(xe, config, group);
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
+static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
+{
+	uint64_t buf[2 + num];
+	unsigned int i;
+
+	igt_assert_eq(read(fd, buf, sizeof(buf)), sizeof(buf));
+
+	for (i = 0; i < num; i++)
+		val[i] = buf[2 + i];
+
+	return buf[1];
+}
+
+/**
+ * SUBTEST: c6
+ * Description: Basic residency test to validate idle residency
+ *		measured over a time interval is within the tolerance
+ *
+ * SUBTEST: frequency
+ * Description: Read requested freq and actual frequency via PMU within
+ *		specified time interval while workload runs
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
+static void test_c6(int xe, unsigned int gt)
+{
+	int pmu_fd;
+	int pmu_config;
+	char event_str[100];
+	uint64_t ts[2];
+	unsigned long slept, start, end;
+	uint64_t val;
+
+	sprintf(event_str, "c6-residency-gt%d", gt);
+	pmu_config = xe_perf_event_config(xe, event_str);
+	pmu_fd = open_pmu(xe, pmu_config);
+
+	igt_assert_f(igt_wait(xe_is_gt_in_c6(xe, gt), 3000, 1), "GT %d not in C6\n", gt);
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
+static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
+{
+	int ret = -EAGAIN;
+	char freq_attr[22];
+	int gt_fd;
+
+	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
+	gt_fd = xe_sysfs_gt_open(fd, gt_id);
+	igt_assert(gt_fd >= 0);
+
+	while (ret == -EAGAIN)
+		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
+
+	close(gt_fd);
+	return ret;
+}
+
+static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
+{
+	uint32_t freq;
+	int err = -EAGAIN;
+	char freq_attr[22];
+	int gt_fd;
+
+	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
+	gt_fd = xe_sysfs_gt_open(fd, gt_id);
+	igt_assert(gt_fd >= 0);
+
+	while (err == -EAGAIN)
+		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
+
+	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
+
+	close(gt_fd);
+	return freq;
+}
+
+static void run_workload(int fd, int gt, struct drm_xe_engine_class_instance *eci,
+			 struct workload *wl)
+{
+	struct drm_xe_sync sync[2] = {
+		{ .type = DRM_XE_SYNC_TYPE_SYNCOBJ, .flags = DRM_XE_SYNC_FLAG_SIGNAL, },
+		{ .type = DRM_XE_SYNC_TYPE_SYNCOBJ, .flags = DRM_XE_SYNC_FLAG_SIGNAL, },
+	};
+	struct drm_xe_exec exec = {
+		.num_batch_buffer = 1,
+		.num_syncs = 2,
+		.syncs = to_user_pointer(sync),
+	};
+	struct xe_spin_opts spin_opts = {
+		.addr = 0x1a0000,
+		.preempt = false
+	};
+	struct xe_spin *spin;
+
+	wl->addr = 0x1a0000;
+
+	wl->vm = xe_vm_create(fd, 0, 0);
+	wl->bo_size = sizeof(*spin);
+	wl->bo_size = xe_bb_size(fd, wl->bo_size);
+
+	wl->bo = xe_bo_create(fd, wl->vm, wl->bo_size,
+			  vram_if_possible(fd, eci->gt_id), 0);
+	wl->spin = xe_bo_map(fd, wl->bo, wl->bo_size);
+
+	wl->exec_queue = xe_exec_queue_create(fd, wl->vm, eci, 0);
+	wl->syncobj = syncobj_create(fd, 0);
+
+	sync[0].handle = syncobj_create(fd, 0);
+	xe_vm_bind_async(fd, wl->vm, 0, wl->bo, 0, wl->addr, wl->bo_size, sync, 1);
+
+	xe_spin_init(wl->spin, &spin_opts);
+
+	sync[0].flags &= ~DRM_XE_SYNC_FLAG_SIGNAL;
+	sync[1].flags |= DRM_XE_SYNC_FLAG_SIGNAL;
+	sync[1].handle = wl->syncobj;
+
+	exec.exec_queue_id = wl->exec_queue;
+	exec.address = wl->addr;
+	xe_exec(fd, &exec);
+
+	xe_spin_wait_started(wl->spin);
+	usleep(50000);
+	igt_assert(!syncobj_wait(fd, &wl->syncobj, 1, 1, 0, NULL));
+
+	igt_info("Running on GT %d Engine %s:%d\n", eci->gt_id,
+		 xe_engine_class_string(eci->engine_class), eci->engine_instance);
+
+	/* Save it for the end_workload function */
+	wl->sync[0] = sync[0];
+	wl->sync[1] = sync[1];
+}
+
+static void end_workload(int fd, struct workload *wl)
+{
+	xe_spin_end(wl->spin);
+
+	igt_assert(syncobj_wait(fd, &wl->syncobj, 1, INT64_MAX, 0, NULL));
+	igt_assert(syncobj_wait(fd, &wl->sync[0].handle, 1, INT64_MAX, 0, NULL));
+
+	wl->sync[0].flags |= DRM_XE_SYNC_FLAG_SIGNAL;
+	xe_vm_unbind_async(fd, wl->vm, 0, 0, wl->addr, wl->bo_size, wl->sync, 1);
+	igt_assert(syncobj_wait(fd, &wl->sync[0].handle, 1, INT64_MAX, 0, NULL));
+
+	syncobj_destroy(fd, wl->sync[0].handle);
+	syncobj_destroy(fd, wl->syncobj);
+	xe_exec_queue_destroy(fd, wl->exec_queue);
+
+	munmap(wl->spin, wl->bo_size);
+	gem_close(fd, wl->bo);
+	xe_vm_destroy(fd, wl->vm);
+}
+
+static void test_frequency(int fd, int gt, struct drm_xe_engine_class_instance *eci)
+{
+	struct workload wl;
+
+	uint64_t val[2], start[2], slept;
+	double min[2], max[2];
+	int pmu_fd[2];
+	uint32_t orig_min = get_freq(fd, gt, "min");
+	uint32_t orig_max = get_freq(fd, gt, "max");
+	unsigned long config_rq_freq, config_act_freq;
+	char event_str[100];
+
+
+	sprintf(event_str, "requested-frequency-gt%d", gt);
+	config_rq_freq = xe_perf_event_config(fd, event_str);
+	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
+
+	memset(event_str, 0, 100);
+	sprintf(event_str, "actual-frequency-gt%d", gt);
+	config_act_freq = xe_perf_event_config(fd, event_str);
+	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
+
+	run_workload(fd, gt, eci, &wl);
+	/*
+	 * Set GPU to min frequency and read PMU counters.
+	 */
+	igt_assert(set_freq(fd, gt, "max", orig_min) > 0);
+	igt_assert(get_freq(fd, gt, "max") == orig_min);
+
+	slept = pmu_read_multi(pmu_fd[0], 2, start);
+	measured_usleep(batch_duration_ns / 1000);
+	slept = pmu_read_multi(pmu_fd[0], 2, val) - slept;
+
+	min[0] = 1e9*(val[0] - start[0]) / slept;
+	min[1] = 1e9*(val[1] - start[1]) / slept;
+
+	/*
+	 * Set GPU to max frequency and read PMU counters.
+	 */
+	igt_assert(set_freq(fd, gt, "max", orig_max) > 0);
+	igt_assert(get_freq(fd, gt, "max") == orig_max);
+	igt_assert(set_freq(fd, gt, "min", orig_max) > 0);
+	igt_assert(get_freq(fd, gt, "min") == orig_max);
+
+	slept = pmu_read_multi(pmu_fd[0], 2, start);
+	measured_usleep(batch_duration_ns / 1000);
+	slept = pmu_read_multi(pmu_fd[0], 2, val) - slept;
+
+	max[0] = 1e9*(val[0] - start[0]) / slept;
+	max[1] = 1e9*(val[1] - start[1]) / slept;
+
+	/*
+	 * Restore min/max.
+	 */
+	igt_assert(set_freq(fd, gt, "min", orig_min) > 0);
+	igt_assert(get_freq(fd, gt, "min") == orig_min);
+
+	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
+		 min[0], min[1]);
+	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
+		 max[0], max[1]);
+
+	close(pmu_fd[0]);
+	close(pmu_fd[1]);
+
+	end_workload(fd, &wl);
+
+	assert_within_epsilon(min[0], orig_min, tolerance);
+	/*
+	 * On thermally throttled devices we cannot be sure maximum frequency
+	 * can be reached so use larger tolerance downards.
+	 */
+	__assert_within_epsilon(max[0], orig_max, tolerance, 0.15f, no_debug_data);
+}
+
+igt_main
+{
+	int fd, gt;
+	struct drm_xe_engine_class_instance *hwe;
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
+	igt_describe("Validate PMU GT freq measured over a time interval is within the tolerance");
+	igt_subtest("frequency")
+		xe_for_each_engine(fd, hwe)
+			test_frequency(fd, hwe->gt_id, hwe);
+
+	igt_fixture {
+		close(fd);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 2724c7a9a..b159b91a7 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -308,6 +308,7 @@ intel_xe_progs = [
 	'xe_pat',
 	'xe_peer2peer',
 	'xe_pm',
+	'xe_pmu',
 	'xe_pm_residency',
 	'xe_prime_self_import',
 	'xe_query',
-- 
2.38.1

