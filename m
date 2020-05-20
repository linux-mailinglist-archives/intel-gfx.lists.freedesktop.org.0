Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DA81DB8BE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 17:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25D56E866;
	Wed, 20 May 2020 15:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A826B6E82E;
 Wed, 20 May 2020 15:54:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21242999-1500050 
 for multiple; Wed, 20 May 2020 16:54:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 16:54:10 +0100
Message-Id: <20200520155410.2544056-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rc6_residency: Check we
 conserve power while waiting
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check that if we submit a request that is held up by an external fence,
that we conserve power during the wait as the GPU is idle.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 tests/i915/i915_pm_rc6_residency.c | 82 ++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index 144bcd028..810415b48 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -38,6 +38,7 @@
 #include "igt_perf.h"
 #include "igt_rapl.h"
 #include "igt_sysfs.h"
+#include "sw_sync.h"
 
 #define SLEEP_DURATION 3 /* in seconds */
 
@@ -447,6 +448,80 @@ static void rc6_idle(int i915)
 	}
 }
 
+static void rc6_fence(int i915)
+{
+	const int64_t duration_ns = SLEEP_DURATION * (int64_t)NSEC_PER_SEC;
+	const int tolerance = 20; /* Some RC6 is better than none! */
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+	const struct intel_execution_engine2 *e;
+	struct power_sample sample[2];
+	unsigned long slept;
+	uint64_t rc6, ts[2];
+	struct rapl rapl;
+	int fd;
+
+	igt_require_sw_sync();
+
+	fd = open_pmu(i915, I915_PMU_RC6_RESIDENCY);
+	igt_drop_caches_set(i915, DROP_IDLE);
+	igt_require(__pmu_wait_for_rc6(fd));
+	gpu_power_open(&rapl);
+
+	/* While idle check full RC6. */
+	rapl_read(&rapl, &sample[0]);
+	rc6 = -__pmu_read_single(fd, &ts[0]);
+	slept = measured_usleep(duration_ns / 1000);
+	rc6 += __pmu_read_single(fd, &ts[1]);
+	igt_debug("slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
+		  slept, ts[1] - ts[0], rc6);
+	if (rapl_read(&rapl, &sample[1]))  {
+		double idle = power_J(&rapl, &sample[0], &sample[1]);
+		igt_log(IGT_LOG_DOMAIN,
+			idle > 1e-3 && gen > 6 ? IGT_LOG_WARN : IGT_LOG_INFO,
+			"Total energy used while idle: %.1fmJ\n", idle * 1e3);
+	}
+	assert_within_epsilon(rc6, ts[1] - ts[0], 5);
+
+	/* Submit but delay execution, we should be idle and conserving power */
+	__for_each_physical_engine(i915, e) {
+		igt_spin_t *spin;
+		int timeline;
+		int fence;
+
+		timeline = sw_sync_timeline_create();
+		fence = sw_sync_timeline_create_fence(timeline, 1);
+		spin = igt_spin_new(i915,
+				    .engine = e->flags,
+				    .fence = fence,
+				    .flags = IGT_SPIN_FENCE_IN);
+		close(fence);
+
+		rapl_read(&rapl, &sample[0]);
+		rc6 = -__pmu_read_single(fd, &ts[0]);
+		slept = measured_usleep(duration_ns / 1000);
+		rc6 += __pmu_read_single(fd, &ts[1]);
+		igt_debug("%s: slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
+			  e->name, slept, ts[1] - ts[0], rc6);
+		if (rapl_read(&rapl, &sample[1]))  {
+			uint64_t power = power_J(&rapl, &sample[0], &sample[1]);
+			igt_info("Total energy used for %s: %.1fmJ (%.1fmW)\n",
+				 e->name,
+				 power * 1e3,
+				 power * 1e12 / slept);
+		}
+
+		igt_assert(gem_bo_busy(i915, spin->handle));
+		igt_spin_free(i915, spin);
+
+		close(timeline);
+
+		assert_within_epsilon(rc6, ts[1] - ts[0], tolerance);
+	}
+
+	rapl_close(&rapl);
+	close(fd);
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -463,6 +538,13 @@ igt_main
 		rc6_idle(i915);
 	}
 
+	igt_subtest("rc6-fence") {
+		igt_require_gem(i915);
+		gem_quiescent_gpu(i915);
+
+		rc6_fence(i915);
+	}
+
 	igt_subtest_group {
 		unsigned int rc6_enabled = 0;
 		unsigned int devid = 0;
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
