Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DAE694135
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 10:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D4A10E510;
	Mon, 13 Feb 2023 09:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A690910E510;
 Mon, 13 Feb 2023 09:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676280722; x=1707816722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgKZaRXSHtuWL4PYfPV+Ya1kiHvOA9YJ6Qs2m6adPkA=;
 b=Vj+tIoEQORSh7hr+TFdnY048V/tn5CSpxg6hSXw8bNAXmYvd1X3hUMWC
 +vFMIxGrmi/OA/4DNrk8qVe6bCSMq7hnzcW2+Fu6h2EvbtZkq2gKsI5aJ
 Ib7X8ETQLQNwRKvQVeTlYM33+qGlPWmBeO5PHFyAdX8Z98uBYUX/Poyfd
 1vFPKLglfsmiDc4pjzd1EcLd/eJigrwamAMnqRI3aJYRCMTlcWcdfAMZs
 aDxY0+ALMnJNaeJc35iWpDBl+8EUiE7X4xmG+/Z0nWPxvgn0TPnk/027Z
 VjdfxRawXzGbTYkHHv0QgEFv/+ghEcEPSOW57BtR5OLaPxQiEw8D5jK3u A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="318876425"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="318876425"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:32:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="668747014"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="668747014"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:31:57 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 13 Feb 2023 10:31:32 +0100
Message-Id: <20230213093132.12763-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230213093132.12763-1-janusz.krzysztofik@linux.intel.com>
References: <20230213093132.12763-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 1/1] tests: Exercise remote request vs
 barrier handling race
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users reported oopses on list corruptions when using i915 perf with a
number of concurrently running graphics applications.  That indicates we
are currently missing some important tests for such scenarios.  Cover
that gap.

Root cause analysis pointed out to an issue in barrier processing code and
its interaction with perf replacing kernel contexts' active barriers with
its own requests.

Add a new test intended for exercising intentionally racy barrier tasks
list processing and its interaction with other i915 subsystems.  As a
first subtest, add one that exercises the interaction of remote requests
with barrier tasks list handling, especially barrier preallocate / acquire
operations performed during context first pin / last unpin.

The code is partially inspired by Chris Wilson's igt@perf@open-race
subtest, which I was not able to get an Ack for from upstream.

v3: don't add the new subtest to gem_ctx_exec which occurred blocklisted,
    create a new test hosting the new subtest, update commit descripion,
  - prepare parameters for perf open still in the main thread to avoid
    test failures on platforms with no perf support (will skip now),
  - call perf open with OA buffer reports disabled, this will make sure
    that the perf API doesn't unnecessarily enable the OA unit, while the
    test still runs the targeted code (Umesh),
  - replace additional code for OA exponent calculations with a reasonable
    hardcoded value (Umesh).
v2: convert to a separate subtest, not a variant of another one (that has
    been dropped from the series),
  - move the subtest out of tests/i915/perf.c (Ashutosh), add it to
    tests/i915/gem_ctx_exec.c,
  - don't touch lib/i915/perf.c (Umesh, Ashutosh), duplicate reused code
    from tests/i915/perf.c in tests/i915/gem_ctx_exec.c.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 tests/i915/gem_barrier_race.c | 159 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   8 ++
 2 files changed, 167 insertions(+)
 create mode 100644 tests/i915/gem_barrier_race.c

diff --git a/tests/i915/gem_barrier_race.c b/tests/i915/gem_barrier_race.c
new file mode 100644
index 0000000000..fd0c7bdf1c
--- /dev/null
+++ b/tests/i915/gem_barrier_race.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2023 Intel Corporation. All rights reserved.
+ */
+
+#include <stdint.h>
+
+#include "drmtest.h"
+#include "igt_aux.h"
+#include "igt_core.h"
+#include "igt_gt.h"
+#include "intel_chipset.h"
+#include "intel_reg.h"
+#include "ioctl_wrappers.h"
+
+#include "i915/gem.h"
+#include "i915/gem_create.h"
+#include "i915/gem_engine_topology.h"
+#include "i915/perf.h"
+
+IGT_TEST_DESCRIPTION("Exercise barrier tasks list handling and its interation with other i915 subsystems");
+
+/* Based on code patterns found in tests/i915/perf.c */
+static void perf_open_close_workload(int fd, int *done)
+{
+	struct intel_perf_metric_set *metric_set = NULL, *metric_set_iter;
+	struct intel_perf *intel_perf = intel_perf_for_fd(fd);
+	uint64_t properties[] = {
+		DRM_I915_PERF_PROP_SAMPLE_OA, true,
+		DRM_I915_PERF_PROP_OA_METRICS_SET, 0,
+		DRM_I915_PERF_PROP_OA_FORMAT, 0,
+		DRM_I915_PERF_PROP_OA_EXPONENT, 5,
+	};
+	struct drm_i915_perf_open_param param = {
+		.flags = I915_PERF_FLAG_FD_CLOEXEC | I915_PERF_FLAG_DISABLED,
+		.num_properties = sizeof(properties) / 16,
+		.properties_ptr = to_user_pointer(properties),
+	};
+	uint32_t devid = intel_get_drm_devid(fd);
+
+	igt_require(intel_perf);
+	intel_perf_load_perf_configs(intel_perf, fd);
+
+	igt_require(devid);
+	igt_list_for_each_entry(metric_set_iter, &intel_perf->metric_sets, link) {
+		if (!strcmp(metric_set_iter->symbol_name,
+			    IS_HASWELL(devid) ? "RenderBasic" : "TestOa")) {
+			metric_set = metric_set_iter;
+			break;
+		}
+	}
+	igt_require(metric_set);
+	igt_require(metric_set->perf_oa_metrics_set);
+	properties[3] = metric_set->perf_oa_metrics_set;
+	properties[5] = metric_set->perf_oa_format;
+
+	intel_perf_free(intel_perf);
+
+	igt_fork(child, 1) {
+		do {
+			int stream = igt_ioctl(fd, DRM_IOCTL_I915_PERF_OPEN, &param);
+
+			igt_assert_fd(stream);
+			close(stream);
+
+		} while (!READ_ONCE(*done));
+	}
+}
+
+static void remote_request_workload(int fd, int *done)
+{
+	/*
+	 * Use DRM_IOCTL_I915_PERF_OPEN / close as
+	 * intel_context_prepare_remote_request() workload
+	 */
+	perf_open_close_workload(fd, done);
+}
+
+/* Copied from tests/i915/gem_ctx_exec.c */
+static int exec(int fd, uint32_t handle, int ring, int ctx_id)
+{
+	struct drm_i915_gem_exec_object2 obj = { .handle = handle };
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.flags = ring,
+	};
+
+	i915_execbuffer2_set_context_id(execbuf, ctx_id);
+
+	return __gem_execbuf(fd, &execbuf);
+}
+
+static void gem_create_nop_exec_sync_close_loop(int fd, uint64_t engine, int *done)
+{
+	const uint32_t batch[2] = { 0, MI_BATCH_BUFFER_END };
+
+	fd = gem_reopen_driver(fd);
+
+	do {
+		uint32_t handle = gem_create(fd, 4096);
+
+		gem_write(fd, handle, 0, batch, sizeof(batch));
+		igt_assert_eq(exec(fd, handle, engine, 0), 0);
+
+		gem_sync(fd, handle);
+		gem_close(fd, handle);
+
+	} while (!READ_ONCE(*done));
+}
+
+static void intel_context_first_pin_last_unpin_loop(int fd, uint64_t engine, int *done)
+{
+	/*
+	 * Use gem_create -> gem_write -> gem_execbuf -> gem_sync -> gem_close
+	 * as intel context first pin / last unpin intensive workload
+	 */
+	gem_create_nop_exec_sync_close_loop(fd, engine, done);
+}
+
+static void test_remote_request(int fd, uint64_t engine, unsigned int timeout)
+{
+	int *done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+
+	igt_assert(done != MAP_FAILED);
+
+	remote_request_workload(fd, done);
+
+	igt_fork(child, sysconf(_SC_NPROCESSORS_ONLN))
+		intel_context_first_pin_last_unpin_loop(fd, engine, done);
+
+	sleep(timeout);
+	*done = 1;
+	igt_waitchildren();
+	munmap(done, 4096);
+}
+
+igt_main
+{
+	int fd;
+
+	igt_fixture {
+		fd = drm_open_driver_render(DRIVER_INTEL);
+		igt_require_gem(fd);
+	}
+
+	igt_describe("Race intel_context_prepare_remote_request against intel_context_active_acquire/release");
+	igt_subtest_with_dynamic("remote-request") {
+		struct intel_execution_engine2 *e;
+
+		for_each_physical_engine(fd, e) {
+			if (e->class != I915_ENGINE_CLASS_RENDER)
+				continue;
+
+			igt_dynamic(e->name)
+				test_remote_request(fd, e->flags, 5);
+		}
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 6fb1bb86c9..5670712ae8 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -389,6 +389,14 @@ test_executables += executable('i915_pm_rc6_residency',
 	   install : true)
 test_list += 'i915_pm_rc6_residency'
 
+test_executables += executable('gem_barrier_race',
+	   join_paths('i915', 'gem_barrier_race.c'),
+	   dependencies : test_deps + [ lib_igt_i915_perf ],
+	   install_dir : libexecdir,
+	   install_rpath : libexecdir_rpathdir,
+	   install : true)
+test_list += 'gem_barrier_race'
+
 test_executables += executable('perf_pmu',
 	   join_paths('i915', 'perf_pmu.c'),
 	   dependencies : test_deps + [ lib_igt_perf ],
-- 
2.25.1

