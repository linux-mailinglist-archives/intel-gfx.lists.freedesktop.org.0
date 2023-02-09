Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677D36907C1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 12:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A2D10E9D6;
	Thu,  9 Feb 2023 11:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E7B10E0D6;
 Thu,  9 Feb 2023 11:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675943473; x=1707479473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fx0dOg6hMLvqpJexWUH5XpWzzHkr/3H0vynVatemytk=;
 b=Ini1omG5+Eqe5D4z89eILeTuB16SVFpbayzZsEHji9zpwOU8o5xtmOeo
 wqptVs5DWNsWbF/AurcFQojfYvycvolTPu9caZP41xI4wxJxcGW74cUj8
 YGfTNj8n5tKms8rzenNnAHeW0y0dR6PNXglGDrTGCSygJHG5Px/uaoPxJ
 87SGa0B25LL3ja/dRR1F+E8WZJDigziQHGZ+CqV7DweMqJxIpq8vTDQDa
 SBpcvlTwQSSRZl76JteXPHsGDqex7BfbtjUyQJ5i4T93OrIHrQWjBvS1R
 r4u1cbMYMMhTeBQXwRS9L491cEOlCv0saIZAQq6bkj9wrN8ALucprzevQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="318085601"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="318085601"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 03:51:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791579847"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="791579847"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.17.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 03:51:09 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  9 Feb 2023 12:50:39 +0100
Message-Id: <20230209115039.34441-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 1/1] tests/gem_ctx_exec: Exercise
 barrier race
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

Since root cause analysis pointed out to an issue in barrier processing
code, add a new subtest focused on exercising interaction between perf
open / close operations, which replace active barriers with perf requests
on kernel contexts, and concurrent barrier preallocate / acquire
operations performed during context first pin / last unpin.

v2: convert to a separate subtest, not a variant of another one (that has
    been dropped from the series),
  - move the subtest out of tests/i915/perf.c (Ashutosh), add it to
    tests/i915/gem_ctx_exec.c,
  - don't touch lib/i915/perf.c (Umesh, Ashutosh), duplicate reused code
    from tests/i915/perf.c in tests/i915/gem_ctx_exec.c.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   9 ++-
 2 files changed, 131 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index 3d94f01db9..97fbc50e97 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -42,6 +42,7 @@
 
 #include "i915/gem.h"
 #include "i915/gem_create.h"
+#include "i915/perf.h"
 #include "igt.h"
 #include "igt_dummyload.h"
 #include "igt_rand.h"
@@ -448,6 +449,115 @@ static void close_race(int i915)
 	munmap(ctx_id, 4096);
 }
 
+static uint64_t timebase_scale(struct intel_perf *intel_perf, uint32_t u32_delta)
+{
+	return ((uint64_t)u32_delta * NSEC_PER_SEC) / intel_perf->devinfo.timestamp_frequency;
+}
+
+/* Returns: the largest OA exponent that will still result in a sampling period
+ * less than or equal to the given @period.
+ */
+static int max_oa_exponent_for_period_lte(struct intel_perf *intel_perf, uint64_t period)
+{
+	/* NB: timebase_scale() takes a uint32_t and an exponent of 30
+	 * would already represent a period of ~3 minutes so there's
+	 * really no need to consider higher exponents.
+	 */
+	for (int i = 0; i < 30; i++) {
+		uint64_t oa_period = timebase_scale(intel_perf, 2 << i);
+
+		if (oa_period > period)
+			return max(0, i - 1);
+	}
+
+	igt_assert(!"reached");
+	return -1;
+}
+
+static void perf_open_close_loop(int fd, int *done)
+{
+	struct intel_perf_metric_set *metric_set = NULL, *metric_set_iter;
+	struct intel_perf *intel_perf = intel_perf_for_fd(fd);
+	uint64_t properties[] = {
+		DRM_I915_PERF_PROP_SAMPLE_OA, true,
+		DRM_I915_PERF_PROP_OA_METRICS_SET, 0,
+		DRM_I915_PERF_PROP_OA_FORMAT, 0,
+		DRM_I915_PERF_PROP_OA_EXPONENT, 0,
+	};
+	struct drm_i915_perf_open_param param = {
+		.flags = I915_PERF_FLAG_FD_CLOEXEC,
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
+	igt_require(intel_perf->devinfo.timestamp_frequency);
+	properties[7] = max_oa_exponent_for_period_lte(intel_perf, 1000);
+
+	intel_perf_free(intel_perf);
+
+	do {
+		int stream = igt_ioctl(fd, DRM_IOCTL_I915_PERF_OPEN, &param);
+
+		igt_assert_fd(stream);
+		close(stream);
+
+	} while (!READ_ONCE(*done));
+}
+
+static void gem_create_exec_close_loop(int fd, struct intel_execution_engine2 *e, int *done)
+{
+	const uint32_t batch[2] = { 0, MI_BATCH_BUFFER_END };
+
+	fd = gem_reopen_driver(fd);
+
+	do {
+		uint32_t handle = gem_create(fd, 4096);
+
+		gem_write(fd, handle, 0, batch, sizeof(batch));
+		igt_assert_eq(exec(fd, handle, e->flags, 0), 0);
+
+		gem_sync(fd, handle);
+		gem_close(fd, handle);
+
+	} while (!READ_ONCE(*done));
+}
+
+
+static void test_barrier_race(int fd, struct intel_execution_engine2 *e, unsigned int timeout)
+{
+	int *done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+
+	igt_assert(done != MAP_FAILED);
+
+	igt_fork(child, 1)
+		perf_open_close_loop(fd, done);
+
+	igt_fork(child, sysconf(_SC_NPROCESSORS_ONLN))
+		gem_create_exec_close_loop(fd, e, done);
+
+	sleep(timeout);
+	*done = 1;
+	igt_waitchildren();
+	munmap(done, 4096);
+}
+
 igt_main
 {
 	const uint32_t batch[2] = { 0, MI_BATCH_BUFFER_END };
@@ -546,4 +656,17 @@ igt_main
 		gem_context_destroy(fd, ctx_id);
 		put_ahnd(ahnd);
 	}
+
+	igt_describe("Race intel_context_active_acquire/release against intel_context_prepare_remote_request");
+	igt_subtest_with_dynamic("barrier-race") {
+		struct intel_execution_engine2 *e;
+
+		for_each_physical_engine(fd, e) {
+			if (e->flags != I915_ENGINE_CLASS_RENDER)
+				continue;
+
+			igt_dynamic(e->name)
+				test_barrier_race(fd, e, 5);
+		}
+	}
 }
diff --git a/tests/meson.build b/tests/meson.build
index 6fb1bb86c9..f8cf794996 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -104,7 +104,6 @@ i915_progs = [
 	'gem_ctx_bad_destroy',
 	'gem_ctx_create',
 	'gem_ctx_engines',
-	'gem_ctx_exec',
 	'gem_ctx_isolation',
 	'gem_ctx_param',
 	'gem_ctx_persistence',
@@ -334,6 +333,14 @@ test_executables += executable('gem_create',
 	   install : true)
 test_list += 'gem_create'
 
+test_executables += executable('gem_ctx_exec',
+	   join_paths('i915', 'gem_ctx_exec.c'),
+	   dependencies : test_deps + [ lib_igt_i915_perf ],
+	   install_dir : libexecdir,
+	   install_rpath : libexecdir_rpathdir,
+	   install : true)
+test_list += 'gem_ctx_exec'
+
 test_executables += executable('gem_ctx_freq',
 	   join_paths('i915', 'gem_ctx_freq.c'),
 	   dependencies : test_deps + [ lib_igt_perf ],
-- 
2.25.1

