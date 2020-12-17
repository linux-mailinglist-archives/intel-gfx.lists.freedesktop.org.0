Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E95152DD67D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 18:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6553E89458;
	Thu, 17 Dec 2020 17:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D892189458;
 Thu, 17 Dec 2020 17:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23358165-1500050 
 for multiple; Thu, 17 Dec 2020 17:45:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Dec 2020 17:45:16 +0000
Message-Id: <20201217174516.1705324-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217172618.1637044-1-chris@chris-wilson.co.uk>
References: <20201217172618.1637044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/perf_pmu: Exercise
 I915_PMU_SOFTWARE_GT_AWAKE_TIME
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

Measure the sample gt-awake time while each engine and every engine is
busy. They should all report the same duration, the elapsed runtime of
the batch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 include/drm-uapi/i915_drm.h |  3 ++-
 lib/igt_dummyload.c         | 10 +++++++++
 lib/igt_dummyload.h         |  1 +
 tests/i915/perf_pmu.c       | 43 +++++++++++++++++++++++++++++++++++++
 4 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index ef696d1a5..bf9ea471c 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -177,8 +177,9 @@ enum drm_i915_pmu_engine_sample {
 #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
 #define I915_PMU_INTERRUPTS		__I915_PMU_OTHER(2)
 #define I915_PMU_RC6_RESIDENCY		__I915_PMU_OTHER(3)
+#define I915_PMU_SOFTWARE_GT_AWAKE_TIME	__I915_PMU_OTHER(4)
 
-#define I915_PMU_LAST I915_PMU_RC6_RESIDENCY
+#define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
 
 /* Each region is a minimum of 16k, and there are at most 255 of them.
  */
diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 4ef79cc4a..b29d12aff 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -590,6 +590,16 @@ void igt_terminate_spins(void)
 	pthread_mutex_unlock(&list_lock);
 }
 
+void igt_free_spins(int i915)
+{
+	struct igt_spin *iter, *next;
+
+	pthread_mutex_lock(&list_lock);
+	igt_list_for_each_entry_safe(iter, next, &spin_list, link)
+		igt_spin_free(i915, iter);
+	pthread_mutex_unlock(&list_lock);
+}
+
 void igt_unshare_spins(void)
 {
 	struct igt_spin *it, *n;
diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
index 3ece70a50..9e19ffabc 100644
--- a/lib/igt_dummyload.h
+++ b/lib/igt_dummyload.h
@@ -107,6 +107,7 @@ static inline void igt_spin_busywait_until_started(igt_spin_t *spin)
 
 void igt_terminate_spins(void);
 void igt_unshare_spins(void);
+void igt_free_spins(int i915);
 
 enum igt_cork_type {
 	CORK_SYNC_FD = 1,
diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index c2b186d39..da06a28b0 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -883,6 +883,43 @@ sema_busy(int gem_fd,
 	close(fd[1]);
 }
 
+static void test_awake(int i915)
+{
+	const struct intel_execution_engine2 *e;
+	unsigned long slept;
+	uint64_t val;
+	int fd;
+
+	fd = perf_i915_open(i915, I915_PMU_SOFTWARE_GT_AWAKE_TIME);
+	igt_skip_on(fd < 0);
+
+	/* Check that each engine is captured by the GT wakeref */
+	__for_each_physical_engine(i915, e) {
+		igt_spin_new(i915, .engine = e->flags);
+
+		val = pmu_read_single(fd);
+		slept = measured_usleep(batch_duration_ns / 1000);
+		val = pmu_read_single(fd) - val;
+
+		gem_quiescent_gpu(i915);
+		assert_within_epsilon(val, slept, tolerance);
+	}
+
+	/* And that the total GT wakeref matches walltime not summation */
+	__for_each_physical_engine(i915, e)
+		igt_spin_new(i915, .engine = e->flags);
+
+	val = pmu_read_single(fd);
+	slept = measured_usleep(batch_duration_ns / 1000);
+	val = pmu_read_single(fd) - val;
+
+	gem_quiescent_gpu(i915);
+	assert_within_epsilon(val, slept, tolerance);
+
+	igt_free_spins(i915);
+	close(fd);
+}
+
 #define   MI_WAIT_FOR_PIPE_C_VBLANK (1<<21)
 #define   MI_WAIT_FOR_PIPE_B_VBLANK (1<<11)
 #define   MI_WAIT_FOR_PIPE_A_VBLANK (1<<3)
@@ -2250,6 +2287,12 @@ igt_main
 	igt_subtest("rc6-suspend")
 		test_rc6(fd, TEST_S3);
 
+	/**
+	 * Test GT wakeref tracking (similar to RC0, opposite of RC6)
+	 */
+	igt_subtest("gt-awake")
+		test_awake(fd);
+
 	/**
 	 * Check render nodes are counted.
 	 */
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
