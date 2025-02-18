Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4128A3A3BC
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 18:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BAE10E742;
	Tue, 18 Feb 2025 17:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Igt85gYX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4982110E743;
 Tue, 18 Feb 2025 17:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739898658; x=1771434658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGashF46PTX2+1+VaJnYpwZd5GCa+5UjRi+3oh3H0Wc=;
 b=Igt85gYXRhmccsRLaSMEKTzTvDOzu6bdbwEzfY0H4431Ox1rkRyIGaXA
 izXXnZTthvArfqKGcGzmjd0UZPboS+YiR8nHtM/xnN5+qT+6KZ6PPhiU7
 bkpNB5oGFFlGjwHXvbjP1AP4pl7m3+KUZRBccP5+2AGq8aDdxMB4CkS+j
 gi1YW2Yzsg0CKAR+njoKi6DMy2CT78DHg0OFh2udu4g1B5S+oNiS7e7tu
 M5S+aaObuqwGfSROr6RH8gRU9+6FZ6cuf/hE62UGZeTK4s5EseAdyjLDr
 h2QHsnT9/hAXbtkCKy0DjaLobZuOMnIjGv4PnLu7qSpgqBvZIfG2CTOa1 Q==;
X-CSE-ConnectionGUID: eKut5gLwTu6SRCGRbmR9oA==
X-CSE-MsgGUID: QsBze2xrRmaZtC9OCPYRHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28207593"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28207593"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 09:10:58 -0800
X-CSE-ConnectionGUID: 3qFV2HlzTdOQzL3eG2Rr2g==
X-CSE-MsgGUID: 9nHoAi50S2equF08JtxbgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="119544185"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 18 Feb 2025 09:10:58 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t v10 3/3] tests/xe/pmu: Add pmu tests for gt-c6
Date: Tue, 18 Feb 2025 09:06:57 -0800
Message-Id: <20250218170657.214076-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250218170657.214076-1-vinay.belgaumkar@intel.com>
References: <20250218170657.214076-1-vinay.belgaumkar@intel.com>
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
v6: Comments (Riana, Kamil)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_pmu.c | 142 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 2 files changed, 143 insertions(+)
 create mode 100644 tests/intel/xe_pmu.c

diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
new file mode 100644
index 000000000..62ed3a977
--- /dev/null
+++ b/tests/intel/xe_pmu.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+/**
+ * TEST: Test Xe PMU(Performance Monitoring Unit) functionality
+ * Category: Metrics
+ * Functionality: Power/Perf
+ * Mega feature: Performance Monitoring Unit
+ * Sub-category: Telemetry
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
+#include "igt_perf.h"
+#include "igt_sysfs.h"
+
+#include "xe/xe_gt.h"
+
+#define SLEEP_DURATION 2 /* in seconds */
+const double tolerance = 0.1;
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
+static uint64_t get_event_config(int xe, unsigned int gt, char *event)
+{
+	int ret;
+	char xe_device[100];
+	uint64_t pmu_config;
+	u32 start, end;
+
+	xe_perf_device(xe, xe_device, sizeof(xe_device));
+	ret = perf_event_config(xe_device, event, &pmu_config);
+	igt_assert(ret >= 0);
+	ret = perf_event_format(xe_device, "gt", &start, &end);
+	igt_assert(ret >= 0);
+	pmu_config |= (uint64_t) gt << start;
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
+	uint64_t pmu_config;
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
index 33dffad31..95ddcae2a 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -310,6 +310,7 @@ intel_xe_progs = [
 	'xe_peer2peer',
 	'xe_pm',
 	'xe_pm_residency',
+	'xe_pmu',
 	'xe_prime_self_import',
 	'xe_query',
 	'xe_render_copy',
-- 
2.38.1

