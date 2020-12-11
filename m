Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB22D7809
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 15:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EED6E0FD;
	Fri, 11 Dec 2020 14:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC906E0AF;
 Fri, 11 Dec 2020 14:39:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23294698-1500050 
 for multiple; Fri, 11 Dec 2020 14:39:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 14:39:09 +0000
Message-Id: <20201211143909.2716931-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Verify RC6 measurements
 before/after suspend
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/perf_pmu.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index cb7273142..29119b236 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -170,6 +170,7 @@ static unsigned int measured_usleep(unsigned int usec)
 #define TEST_RUNTIME_PM (8)
 #define FLAG_LONG (16)
 #define FLAG_HANG (32)
+#define TEST_S3 (64)
 
 static igt_spin_t * __spin_poll(int fd, uint32_t ctx,
 				const struct intel_execution_engine2 *e)
@@ -1639,12 +1640,34 @@ test_rc6(int gem_fd, unsigned int flags)
 	igt_require(wait_for_rc6(fd));
 
 	/* While idle check full RC6. */
-	prev = __pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(duration_ns / 1000);
-	idle = __pmu_read_single(fd, &ts[1]);
-	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
+	for (int pass = 0; pass < 3; pass++) {
+		prev = __pmu_read_single(fd, &ts[0]);
+		slept = measured_usleep(duration_ns / 1000);
+		idle = __pmu_read_single(fd, &ts[1]);
+
+		igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
+		assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+	}
+
+	if (flags & TEST_S3) {
+		prev = __pmu_read_single(fd, &ts[0]);
+		igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
+					      SUSPEND_TEST_NONE);
+		idle = __pmu_read_single(fd, &ts[1]);
+		igt_debug("suspend=%"PRIu64"\n", ts[1] - ts[0]);
+		//assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+	}
 
-	assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+	igt_assert(wait_for_rc6(fd));
+
+	for (int pass = 0; pass < 3; pass++) {
+		prev = __pmu_read_single(fd, &ts[0]);
+		slept = measured_usleep(duration_ns / 1000);
+		idle = __pmu_read_single(fd, &ts[1]);
+
+		igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
+		assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
+	}
 
 	/* Wake up device and check no RC6. */
 	fw = igt_open_forcewake_handle(gem_fd);
@@ -2245,6 +2268,9 @@ igt_main
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
