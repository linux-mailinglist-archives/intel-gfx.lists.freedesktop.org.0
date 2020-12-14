Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8F42D969D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E8B6E1F5;
	Mon, 14 Dec 2020 10:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1346E1D7;
 Mon, 14 Dec 2020 10:51:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23318471-1500050 
 for multiple; Mon, 14 Dec 2020 10:51:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:51:20 +0000
Message-Id: <20201214105123.542518-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915/perf_pmu: Verify RC6
 measurements before/after suspend
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

RC6 should work before suspend, and continue to increment while idle
after suspend. Should.

v2: Include a longer sleep after suspend; it appears we are reticent to
idle so soon after waking up.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/perf_pmu.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index cb7273142..0b470c1bc 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -170,6 +170,7 @@ static unsigned int measured_usleep(unsigned int usec)
 #define TEST_RUNTIME_PM (8)
 #define FLAG_LONG (16)
 #define FLAG_HANG (32)
+#define TEST_S3 (64)
 
 static igt_spin_t * __spin_poll(int fd, uint32_t ctx,
 				const struct intel_execution_engine2 *e)
@@ -1578,7 +1579,7 @@ test_frequency_idle(int gem_fd)
 		     "Actual frequency should be 0 while parked!\n");
 }
 
-static bool wait_for_rc6(int fd)
+static bool wait_for_rc6(int fd, int timeout)
 {
 	struct timespec tv = {};
 	uint64_t start, now;
@@ -1594,7 +1595,7 @@ static bool wait_for_rc6(int fd)
 		now = pmu_read_single(fd);
 		if (now - start > 1e6)
 			return true;
-	} while (!igt_seconds_elapsed(&tv));
+	} while (igt_seconds_elapsed(&tv) <= timeout);
 
 	return false;
 }
@@ -1636,14 +1637,32 @@ test_rc6(int gem_fd, unsigned int flags)
 		}
 	}
 
-	igt_require(wait_for_rc6(fd));
+	igt_require(wait_for_rc6(fd, 1));
 
 	/* While idle check full RC6. */
 	prev = __pmu_read_single(fd, &ts[0]);
 	slept = measured_usleep(duration_ns / 1000);
 	idle = __pmu_read_single(fd, &ts[1]);
+
 	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
+	assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+
+	if (flags & TEST_S3) {
+		prev = __pmu_read_single(fd, &ts[0]);
+		igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
+					      SUSPEND_TEST_NONE);
+		idle = __pmu_read_single(fd, &ts[1]);
+		igt_debug("suspend=%"PRIu64"\n", ts[1] - ts[0]);
+		//assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+	}
+
+	igt_assert(wait_for_rc6(fd, 5));
 
+	prev = __pmu_read_single(fd, &ts[0]);
+	slept = measured_usleep(duration_ns / 1000);
+	idle = __pmu_read_single(fd, &ts[1]);
+
+	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
 	assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
 
 	/* Wake up device and check no RC6. */
@@ -2245,6 +2264,9 @@ igt_main
 	igt_subtest("rc6-runtime-pm-long")
 		test_rc6(fd, TEST_RUNTIME_PM | FLAG_LONG);
 
+	igt_subtest("rc6-suspend")
+		test_rc6(fd, TEST_S3);
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
