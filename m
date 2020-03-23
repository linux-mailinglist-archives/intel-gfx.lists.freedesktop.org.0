Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 771FD18FC7B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 19:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B556B6E3DA;
	Mon, 23 Mar 2020 18:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C036E3D8;
 Mon, 23 Mar 2020 18:14:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20665169-1500050 
 for multiple; Mon, 23 Mar 2020 18:14:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 18:14:46 +0000
Message-Id: <20200323181446.1270580-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/pm_rc6_residency: Trigger waitboosts
 on intermittent workloads
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use gem_sync() to trigger the waitboost, currrently we use a busywait to
avoid the frequency boost, to create a new test to make sure that our
waitboost does not impact upon idling.

We can use this test to demonstrate the impact of forgetting to cancel
the waitboost due to sleeping regularly.

References: https://gitlab.freedesktop.org/drm/intel/issues/1500
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_pm_rc6_residency.c | 118 ++++++++++++++++++++---------
 1 file changed, 84 insertions(+), 34 deletions(-)

diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index 6a714cab8..93f4bb10a 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -34,6 +34,7 @@
 
 #include "igt.h"
 #include "igt_perf.h"
+#include "igt_rapl.h"
 #include "igt_sysfs.h"
 
 #define SLEEP_DURATION 3 /* in seconds */
@@ -280,67 +281,116 @@ static int open_pmu(int i915, uint64_t config)
 	return fd;
 }
 
+#define WAITBOOST 0x1
+#define ONCE 0x2
+
+static void bg_load(int i915, unsigned int flags, unsigned long *ctl)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = batch_create(i915),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+	};
+
+	do {
+		struct timespec tv = {};
+
+		igt_nsec_elapsed(&tv);
+
+		gem_execbuf(i915, &execbuf);
+		if (flags & WAITBOOST) {
+			gem_sync(i915, obj.handle);
+			if (flags & ONCE)
+				flags &= ~WAITBOOST;
+		} else  {
+			while (gem_bo_busy(i915, obj.handle))
+				usleep(0);
+		}
+		ctl[1]++;
+
+		usleep(igt_nsec_elapsed(&tv) / 10); /* => 1% busy */
+	} while (!READ_ONCE(*ctl));
+}
+
 static void rc6_idle(int i915)
 {
 	const int64_t duration_ns = SLEEP_DURATION * (int64_t)NSEC_PER_SEC;
 	const int tolerance = 20; /* Some RC6 is better than none! */
+	struct {
+		const char *name;
+		unsigned int flags;
+		double power;
+	} phases[] = {
+		{ "normal", 0 },
+		{ "boost", WAITBOOST },
+		{ "once", WAITBOOST | ONCE },
+	};
+	struct power_sample sample[2];
 	unsigned long slept, cycles;
 	unsigned long *done;
 	uint64_t rc6, ts[2];
+	struct rapl rapl;
+	double idle = 0;
 	int fd;
 
 	fd = open_pmu(i915, I915_PMU_RC6_RESIDENCY);
 	igt_require(__pmu_wait_for_rc6(fd));
+	gpu_power_open(&rapl);
 
 	/* While idle check full RC6. */
+	rapl_read(&rapl, &sample[0]);
 	rc6 = -__pmu_read_single(fd, &ts[0]);
 	slept = measured_usleep(duration_ns / 1000);
 	rc6 += __pmu_read_single(fd, &ts[1]);
 	igt_debug("slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
 		  slept, ts[1] - ts[0], rc6);
+	if (rapl_read(&rapl, &sample[1]))  {
+		idle = power_J(&rapl, &sample[0], &sample[1]);
+		igt_info("Total energy used while idle: %.1fmJ\n", idle * 1e3);
+		igt_assert(idle < 1e-3);
+	}
 	assert_within_epsilon(rc6, ts[1] - ts[0], 5);
 
-	/* Setup up a very light load */
 	done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
-	igt_fork(child, 1) {
-		struct drm_i915_gem_exec_object2 obj = {
-			.handle = batch_create(i915),
-		};
-		struct drm_i915_gem_execbuffer2 execbuf = {
-			.buffers_ptr = to_user_pointer(&obj),
-			.buffer_count = 1,
-		};
-
-		do {
-			struct timespec tv = {};
-
-			igt_nsec_elapsed(&tv);
-
-			gem_execbuf(i915, &execbuf);
-			while (gem_bo_busy(i915, obj.handle))
-				usleep(0);
-			done[1]++;
 
-			usleep(igt_nsec_elapsed(&tv) / 10); /* => 1% busy */
-		} while (!READ_ONCE(*done));
+	for (int p = 0; p < ARRAY_SIZE(phases); p++) {
+		memset(done, 0, 2 * sizeof(*done));
+		igt_fork(child, 1) /* Setup up a very light load */
+			bg_load(i915, phases[p].flags, done);
+
+		rapl_read(&rapl, &sample[0]);
+		cycles = -READ_ONCE(done[1]);
+		rc6 = -__pmu_read_single(fd, &ts[0]);
+		slept = measured_usleep(duration_ns / 1000);
+		rc6 += __pmu_read_single(fd, &ts[1]);
+		cycles += READ_ONCE(done[1]);
+		igt_debug("%s: slept=%lu perf=%"PRIu64", cycles=%lu, rc6=%"PRIu64"\n",
+			  phases[p].name, slept, ts[1] - ts[0], cycles, rc6);
+		if (rapl_read(&rapl, &sample[1]))  {
+			phases[p].power = power_J(&rapl, &sample[0], &sample[1]);
+			igt_info("Total energy used for %s: %.1fmJ\n",
+				 phases[p].name,  phases[p].power * 1e3);
+		}
+
+		*done = 1;
+		igt_waitchildren();
+
+		/* At least one wakeup/s needed for a reasonable test */
+		igt_assert(cycles >= SLEEP_DURATION);
+
+		/* While very nearly idle, expect full RC6 */
+		assert_within_epsilon(rc6, ts[1] - ts[0], tolerance);
 	}
 
-	/* While very nearly idle (idle to within tolerance), expect full RC6 */
-	cycles = -READ_ONCE(done[1]);
-	rc6 = -__pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(duration_ns / 1000);
-	rc6 += __pmu_read_single(fd, &ts[1]);
-	cycles += READ_ONCE(done[1]);
-	igt_debug("slept=%lu perf=%"PRIu64", cycles=%lu, rc6=%"PRIu64"\n",
-		  slept, ts[1] - ts[0], cycles, rc6);
-
-	*done = 1;
-	igt_waitchildren();
 	munmap(done, 4096);
 	close(fd);
 
-	igt_assert(cycles >= SLEEP_DURATION); /* At least one wakeup/s needed */
-	assert_within_epsilon(rc6, ts[1] - ts[0], tolerance);
+	rapl_close(&rapl);
+
+	igt_assert_f(2 * phases[2].power - phases[0].power <= phases[1].power,
+		     "Exceeded energy expectations for single busy wait load\n");
 }
 
 igt_main
-- 
2.26.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
