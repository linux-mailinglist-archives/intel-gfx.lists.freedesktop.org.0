Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E53295C32
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 11:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4E26F57B;
	Thu, 22 Oct 2020 09:48:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD886F57B;
 Thu, 22 Oct 2020 09:48:56 +0000 (UTC)
IronPort-SDR: iL2dI6PQNZ2fPrly90qWdDUWwQU3y0KZaALqdvHbXyK8lrJMBVV1/LqmezwB/H/sML52U0gsq2
 lybf+SI/SMIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="155286677"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155286677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 02:48:55 -0700
IronPort-SDR: 5VGFhJ7tB9nG1dRvsxo9AQWm0cqbc92lwK46ZR1/STVZ/847/QS7AJX0cEWlQciHnop9zmvQDQ
 gglkEVMaVrNA==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="533896955"
Received: from peterhae-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.41.22])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 02:48:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 22 Oct 2020 10:48:50 +0100
Message-Id: <20201022094850.1670710-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/i915/perf_pmu: PCI unbind test
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Test driver unbind from device with active PMU client.

v2:
 * Verify successful open after rebind. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/perf_pmu.c | 113 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index cb7273142b8f..76bfa0d40e2c 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -43,6 +43,7 @@
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_device.h"
+#include "igt_device_scan.h"
 #include "igt_kmod.h"
 #include "igt_perf.h"
 #include "igt_sysfs.h"
@@ -2011,6 +2012,80 @@ static void test_unload(unsigned int num_engines)
 	igt_assert_eq(unload_i915(), 0);
 }
 
+static void set_filter_from_device(int fd)
+{
+	const char *filter_type = "sys:";
+	char filter[strlen(filter_type) + PATH_MAX + 1];
+	char *dst = stpcpy(filter, filter_type);
+	char path[PATH_MAX + 1];
+
+	igt_assert(igt_sysfs_path(fd, path, PATH_MAX));
+	igt_ignore_warn(strncat(path, "/device", PATH_MAX - strlen(path)));
+	igt_assert(realpath(path, dst));
+
+	igt_device_filter_free_all();
+	igt_assert_eq(igt_device_filter_add(filter), 1);
+}
+
+struct rebind_data
+{
+	int sysfs;
+	uint64_t perf_type;
+	char *bus_addr;
+};
+
+static void test_rebind(struct rebind_data *data)
+{
+	struct igt_helper_process pmu_client = { };
+	const unsigned int timeout = 5;
+	int pmu;
+
+	/* Start rapid PMU traffic from a background process. */
+	igt_fork_helper(&pmu_client) {
+		pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
+		igt_assert(pmu >= 0);
+
+		for (;;) {
+			pmu_read_single(pmu);
+			usleep(500);
+		}
+	}
+
+	/* Let the child run for a bit. */
+	usleep(1e6);
+
+	/* Unbind the device. */
+	igt_set_timeout(timeout, "Driver unbind timeout!");
+	igt_assert_f(igt_sysfs_set(data->sysfs, "unbind", data->bus_addr),
+		     "Driver unbind failure!\n");
+	igt_reset_timeout();
+
+	/* Check new PMUs cannot be opened. */
+	pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
+	igt_assert(pmu < 0);
+	usleep(1e6);
+	pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
+	igt_assert(pmu < 0);
+
+	/* Stop background PMU traffic. */
+	usleep(1e6);
+	igt_stop_helper(&pmu_client);
+
+	/* Bind the device back. */
+	igt_set_timeout(timeout, "Driver bind timeout!");
+	igt_assert_f(igt_sysfs_set(data->sysfs, "bind", data->bus_addr),
+		     "Driver bind failure\n!");
+	igt_reset_timeout();
+
+	igt_fail_on_f(faccessat(data->sysfs, data->bus_addr, F_OK, 0),
+		      "Device not present!\n");
+
+	/* Check new PMUs can be opened. */
+	pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
+	igt_assert(pmu >= 0);
+	close(pmu);
+}
+
 #define test_each_engine(T, i915, e) \
 	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
 		igt_dynamic_f("%s", e->name)
@@ -2026,6 +2101,7 @@ igt_main
 	const unsigned int num_other_metrics =
 		I915_PMU_LAST - __I915_PMU_OTHER(0) + 1;
 	unsigned int num_engines = 0;
+	struct rebind_data rebind;
 	int fd = -1;
 
 	igt_fixture {
@@ -2269,9 +2345,46 @@ igt_main
 	}
 
 	igt_fixture {
+		const char *filter;
+		char *sysfs_path;
+		int sysfs_dev;
+
+		/* Prepare for the rebind test before closing the device. */
+		set_filter_from_device(fd);
+
+		filter = igt_device_filter_get(0);
+		igt_assert(filter);
+
+		rebind.bus_addr = strrchr(filter, '/');
+		igt_assert(rebind.bus_addr++);
+
+		sysfs_path = strchr(filter, ':');
+		igt_assert(sysfs_path++);
+		igt_debug("sysfs path = %s\n", sysfs_path);
+
+		sysfs_dev = open(sysfs_path, O_DIRECTORY);
+		igt_assert_fd(sysfs_dev);
+
+		rebind.sysfs = openat(sysfs_dev, "driver", O_DIRECTORY);
+		igt_assert_fd(rebind.sysfs);
+
+		close(sysfs_dev);
+
+		rebind.perf_type = i915_perf_type_id(fd);
+		igt_debug("type id = %"PRIu64"\n", rebind.perf_type);
+
+		/* Close the device - REQUIRED step for following tests! */
 		close(fd);
 	}
 
+	igt_subtest("rebind")
+		test_rebind(&rebind);
+
+	igt_fixture {
+		close(rebind.sysfs);
+		igt_device_filter_free_all();
+	}
+
 	igt_subtest("module-unload") {
 		igt_require(unload_i915() == 0);
 		for (int pass = 0; pass < 3; pass++)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
