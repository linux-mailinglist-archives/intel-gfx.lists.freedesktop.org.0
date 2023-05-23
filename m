Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E94C70DADC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AE410E426;
	Tue, 23 May 2023 10:51:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DA010E426;
 Tue, 23 May 2023 10:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684839110; x=1716375110;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AgbIAN5+ucLxOESGENI282EiYQQsKNbBpx7s9z5z69U=;
 b=D/np4JT8KP49bS0NiYwL4B2VZTuToN0DdSVItY/oR8+bgG5AdD5POJVC
 35cpNRA6+UPIIOE4rEDcFRJMN6WnVjIxIqH4PQu0K7pIXZc6yEwEy7/Zy
 Hhm4v/Ww7ZA4DjqX/6QICtdPyJwyCA4t41L6WrzzmWPM97i7F0nnRHfqz
 9jRrSDwtFsTH9pE3srKgzgmd7phJgpeIF4HE9fgfoZQ7rkBe5uuXvLKjZ
 TqrcQvPO3RjP2GhQl//hCbl6gRXCwhRliYCDILFObE3VTPLmVS5mlHMT/
 +AvDS/3oaDyP+rP8BO5xij5BURPcJLalPcOSNws2dhJzJi0acQ1Mj8aTD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="332816921"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="332816921"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="734700645"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="734700645"
Received: from cboylan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:51:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 11:51:39 +0100
Message-Id: <20230523105139.626772-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_rps: Exercise sysfs
 thresholds
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Exercise a bunch of up and down rps thresholds to verify hardware
is happy with them all.

To limit the overall runtime relies on probability and number of runs
to approach complete coverage.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 tests/i915/i915_pm_rps.c | 232 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 232 insertions(+)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index 050d68a16559..acff59207311 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -39,8 +39,10 @@
 #include "i915/gem.h"
 #include "i915/gem_create.h"
 #include "igt.h"
+#include "igt_aux.h"
 #include "igt_dummyload.h"
 #include "igt_perf.h"
+#include "igt_rand.h"
 #include "igt_sysfs.h"
 /**
  * TEST: i915 pm rps
@@ -914,6 +916,200 @@ static void pm_rps_exit_handler(int sig)
 	close(drm_fd);
 }
 
+static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
+			       const struct intel_execution_engine2 *e)
+{
+	struct igt_spin_factory opts = {
+		.ahnd = ahnd,
+		.ctx = ctx,
+		.engine = e->flags,
+	};
+
+	if (gem_class_can_store_dword(fd, e->class))
+		opts.flags |= IGT_SPIN_POLL_RUN;
+
+	return __igt_spin_factory(fd, &opts);
+}
+
+static unsigned long __spin_wait(int fd, igt_spin_t *spin)
+{
+	struct timespec start = { };
+
+	igt_nsec_elapsed(&start);
+
+	if (igt_spin_has_poll(spin)) {
+		unsigned long timeout = 0;
+
+		while (!igt_spin_has_started(spin)) {
+			unsigned long t = igt_nsec_elapsed(&start);
+
+			igt_assert(gem_bo_busy(fd, spin->handle));
+			if ((t - timeout) > 250e6) {
+				timeout = t;
+				igt_warn("Spinner not running after %.2fms\n",
+					 (double)t / 1e6);
+				igt_assert(t < 2e9);
+			}
+		}
+	} else {
+		igt_debug("__spin_wait - usleep mode\n");
+		usleep(500e3); /* Better than nothing! */
+	}
+
+	igt_assert(gem_bo_busy(fd, spin->handle));
+	return igt_nsec_elapsed(&start);
+}
+
+static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
+			       const struct intel_execution_engine2 *e)
+{
+	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
+
+	__spin_wait(fd, spin);
+
+	return spin;
+}
+
+static struct i915_engine_class_instance
+find_dword_engine(int i915, const unsigned int gt)
+{
+	struct i915_engine_class_instance *engines, ci = { -1, -1 };
+	unsigned int i, count;
+
+	engines = gem_list_engines(i915, 1u << gt, ~0u, &count);
+	igt_assert(engines);
+
+	for (i = 0; i < count; i++) {
+		if (!gem_class_can_store_dword(i915, engines[i].engine_class))
+			continue;
+
+		ci = engines[i];
+		break;
+	}
+
+	free(engines);
+
+	return ci;
+}
+
+static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
+				const intel_ctx_t **ctx)
+{
+	struct i915_engine_class_instance ci = { -1, -1 };
+	struct intel_execution_engine2 e = { };
+
+	ci = find_dword_engine(i915, gt);
+
+	igt_require(ci.engine_class != (uint16_t)I915_ENGINE_CLASS_INVALID);
+
+	if (gem_has_contexts(i915)) {
+		e.class = ci.engine_class;
+		e.instance = ci.engine_instance;
+		e.flags = 0;
+		*ctx = intel_ctx_create_for_engine(i915, e.class, e.instance);
+	} else {
+		igt_require(gt == 0); /* Impossible anyway. */
+		e.class = gem_execbuf_flags_to_engine_class(I915_EXEC_DEFAULT);
+		e.instance = 0;
+		e.flags = I915_EXEC_DEFAULT;
+		*ctx = intel_ctx_0(i915);
+	}
+
+	igt_debug("Using engine %u:%u\n", e.class, e.instance);
+
+	return __spin_sync(i915, ahnd, *ctx, &e);
+}
+
+#define TEST_IDLE 0x1
+#define TEST_PARK 0x2
+static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
+{
+	uint64_t ahnd = get_reloc_ahnd(i915, 0);
+	const unsigned int points = 10;
+	unsigned int def_up, def_down;
+	igt_spin_t *spin = NULL;
+	const intel_ctx_t *ctx;
+	unsigned int *ta, *tb;
+	unsigned int i;
+	int sysfs;
+
+	sysfs = igt_sysfs_gt_open(i915, gt);
+	igt_require(sysfs >= 0);
+
+	/* Feature test */
+	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
+	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
+	igt_require(def_up && def_down);
+
+	/* Check invalid percentages are rejected */
+	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
+	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
+
+	/*
+	 * Invent some random up-down thresholds, but always include 0 and 100
+	 * just to have some wild edge cases.
+	 */
+	ta = calloc(points, sizeof(unsigned int));
+	tb = calloc(points, sizeof(unsigned int));
+	igt_require(ta && tb);
+
+	ta[0] = tb[0] = 0;
+	ta[1] = tb[1] = 100;
+	hars_petruska_f54_1_random_seed(time(NULL));
+	for (i = 2; i < points; i++) {
+		ta[i] = hars_petruska_f54_1_random_unsafe_max(100);
+		tb[i] = hars_petruska_f54_1_random_unsafe_max(100);
+	}
+	igt_permute_array(ta, points, igt_exchange_int);
+	igt_permute_array(tb, points, igt_exchange_int);
+
+	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
+	for (i = 0; i < points; i++) {
+		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
+		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
+		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);
+
+		if (flags & TEST_IDLE) {
+			gem_quiescent_gpu(i915);
+		} else if (spin) {
+			intel_ctx_destroy(i915, ctx);
+			igt_spin_free(i915, spin);
+			spin = NULL;
+			if (flags & TEST_PARK) {
+				gem_quiescent_gpu(i915);
+				usleep(500000);
+			}
+		}
+		spin = spin_sync_gt(i915, ahnd, gt, &ctx);
+		usleep(1000000);
+		if (flags & TEST_IDLE) {
+			intel_ctx_destroy(i915, ctx);
+			igt_spin_free(i915, spin);
+			if (flags & TEST_PARK) {
+				gem_quiescent_gpu(i915);
+				usleep(500000);
+			}
+			spin = NULL;
+		}
+	}
+
+	if (spin) {
+		intel_ctx_destroy(i915, ctx);
+		igt_spin_free(i915, spin);
+	}
+
+	gem_quiescent_gpu(i915);
+
+	/* Restore defaults */
+	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
+	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
+
+	free(ta);
+	free(tb);
+	close(sysfs);
+	put_ahnd(ahnd);
+}
+
 igt_main
 {
 	igt_fixture {
@@ -993,4 +1189,40 @@ igt_main
 		waitboost(drm_fd, true);
 		igt_disallow_hang(drm_fd, hang);
 	}
+
+	igt_subtest_with_dynamic("thresholds-idle") {
+		int tmp, gt;
+
+		i915_for_each_gt(drm_fd, tmp, gt) {
+			igt_dynamic_f("gt%u", gt)
+				test_thresholds(drm_fd, gt, TEST_IDLE);
+		}
+	}
+
+	igt_subtest_with_dynamic("thresholds") {
+		int tmp, gt;
+
+		i915_for_each_gt(drm_fd, tmp, gt) {
+			igt_dynamic_f("gt%u", gt)
+				test_thresholds(drm_fd, gt, 0);
+		}
+	}
+
+	igt_subtest_with_dynamic("thresholds-park") {
+		int tmp, gt;
+
+		i915_for_each_gt(drm_fd, tmp, gt) {
+			igt_dynamic_f("gt%u", gt)
+				test_thresholds(drm_fd, gt, TEST_PARK);
+		}
+	}
+
+	igt_subtest_with_dynamic("thresholds-idle-park") {
+		int tmp, gt;
+
+		i915_for_each_gt(drm_fd, tmp, gt) {
+			igt_dynamic_f("gt%u", gt)
+				test_thresholds(drm_fd, gt, TEST_IDLE | TEST_PARK);
+		}
+	}
 }
-- 
2.39.2

