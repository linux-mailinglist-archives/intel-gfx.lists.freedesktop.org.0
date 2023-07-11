Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F103774F445
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 18:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F55D10E3D6;
	Tue, 11 Jul 2023 16:03:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0CB10E3CE;
 Tue, 11 Jul 2023 16:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689091404; x=1720627404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nsvwFGYi5KRSFYteO77/svyyqj1XJzbr1h/NcfSA+WQ=;
 b=m6xYb4PetfUdG83eoG6jYt5mRFQ5R74y4ukvH5mdoQs1LI37ZnSbhh3J
 Cnm5DFoL4H1u3dQA7eTyizyR9/tdESYbwUUQV7B/vnZkAFPfoEb5M/BCz
 4sau5L58uOPATEP0TMxFW816IzzbIgZoiy16u+lZphPPF7aBUd1WgDWjY
 YGCrcHAHPauILE1FFNcL8MZrPOqKmUDFSEpyloGz4+113KkvI7Tpr6nXG
 1x3CM7Ow1CiJIS3elcSAXpg0Nkp0oMF/l9NyhsrzCkMndrGgc7jwDxqGR
 FtCoip3SgZH6CJlNm9uzFmQMakEnRAwAZR4KOFiobuaFHo/7PQ/9dDuOj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="363520066"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="363520066"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 09:02:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="750820267"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="750820267"
Received: from rayhaanf-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 09:02:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jul 2023 17:02:14 +0100
Message-Id: <20230711160214.463134-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
References: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915_pm_rps: Exercise sysfs
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

v2:
 * Common sync spinner code now in library.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 tests/i915/i915_pm_rps.c | 194 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index 7044fcd81c56..8c370b35c85b 100644
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
@@ -81,6 +83,22 @@
  * SUBTEST: waitboost
  * Feature: pm_rps
  * Run type: FULL
+ *
+ * SUBTEST: thresholds
+ * Feature: pm_rps
+ * Run type: FULL
+ *
+ * SUBTEST: thresholds-idle
+ * Feature: pm_rps
+ * Run type: FULL
+ *
+ * SUBTEST: thresholds-idle-park
+ * Feature: pm_rps
+ * Run type: FULL
+ *
+ * SUBTEST: thresholds-park
+ * Feature: pm_rps
+ * Run type: FULL
  */
 
 IGT_TEST_DESCRIPTION("Render P-States tests - verify GPU frequency changes");
@@ -920,6 +938,146 @@ static void pm_rps_exit_handler(int sig)
 	drm_close_driver(drm_fd);
 }
 
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
+	return __igt_sync_spin(i915, ahnd, *ctx, &e);
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
@@ -1000,6 +1158,42 @@ igt_main
 		igt_disallow_hang(drm_fd, hang);
 	}
 
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
+
 	igt_fixture
 		drm_close_driver(drm_fd);
 }
-- 
2.39.2

