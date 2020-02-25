Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5489016EB4F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 17:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFE76EB44;
	Tue, 25 Feb 2020 16:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603D66EB44
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 16:24:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20347433-1500050 
 for multiple; Tue, 25 Feb 2020 16:23:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 16:23:29 +0000
Message-Id: <20200225162329.558359-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Autotune idle timeouts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we measure how long it takes for each heartbeat when idling the
system, we have a reasonable expectation for the baseline latency when
idling. We can use this baseline to estimate how long we expect it
should take to idle, and so provide a more precise upper bound for
declaring a problem.

References: b81e4d9b5941 ("drm/i915/gt: Track engine round-trip times")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 +--
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  2 +-
 drivers/gpu/drm/i915/i915_gem.h               |  2 --
 .../gpu/drm/i915/selftests/igt_flush_test.c   |  2 +-
 7 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 3dea8881e915..4057ac4d350a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -440,7 +440,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
 	}
 
 	/* Flush the default context image to memory, and enable powersaving. */
-	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME) {
+	if (intel_gt_wait_for_idle(gt, 10) == -ETIME) {
 		err = -EIO;
 		goto out;
 	}
@@ -543,7 +543,7 @@ static int __engines_verify_workarounds(struct intel_gt *gt)
 	}
 
 	/* Flush and restore the kernel context for safety */
-	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME)
+	if (intel_gt_wait_for_idle(gt, 10) == -ETIME)
 		err = -EIO;
 
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 8b653c0f5e5f..202550c06139 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -248,7 +248,7 @@ static void wait_for_suspend(struct intel_gt *gt)
 	if (!intel_gt_pm_is_awake(gt))
 		return;
 
-	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME) {
+	if (intel_gt_wait_for_idle(gt, 10) == -ETIME) {
 		/*
 		 * Forcibly cancel outstanding work and leave
 		 * the gpu quiet.
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 8a5054f21bf8..5c9797cb3d0b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -180,12 +180,39 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 	return active_count ? timeout : 0;
 }
 
+static long
+intel_gt_timeout(struct intel_gt *gt, intel_engine_mask_t mask, int factor)
+{
+	struct intel_engine_cs *engine;
+	intel_engine_mask_t tmp;
+	unsigned long max;
+
+	max = 0;
+	for_each_engine_masked(engine, gt, mask, tmp) {
+		unsigned long latency;
+
+		latency = ewma__engine_latency_read(&engine->latency);
+		if (latency > max)
+			max = latency;
+
+		factor++; /* allow each engine to flush pm sequentially */
+	}
+	if (max == 0) /* no latency measured yet */
+		return MAX_SCHEDULE_TIMEOUT;
+
+	return usecs_to_jiffies(max * factor) + 1;
+}
+
 int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout)
 {
 	/* If the device is asleep, we have no requests outstanding */
 	if (!intel_gt_pm_is_awake(gt))
 		return 0;
 
+	/* Adjust our expected jiffie timeout based on historical latency */
+	if (timeout < MAX_SCHEDULE_TIMEOUT)
+		timeout = intel_gt_timeout(gt, ALL_ENGINES, timeout);
+
 	while ((timeout = intel_gt_retire_requests_timeout(gt, timeout)) > 0) {
 		cond_resched();
 		if (signal_pending(current))
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 5f7e2dcf5686..70d040b39685 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -176,7 +176,7 @@ int live_rc6_ctx_wa(void *arg)
 				goto out;
 			}
 
-			if (intel_gt_wait_for_idle(gt, HZ / 5) == -ETIME) {
+			if (intel_gt_wait_for_idle(gt, 2) == -ETIME) {
 				intel_gt_set_wedged(gt);
 				err = -ETIME;
 				goto out;
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index c2578a0f2f14..31f6ca3e6d76 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -789,7 +789,7 @@ static int live_hwsp_rollover_kernel(void *arg)
 		int i;
 
 		engine_heartbeat_disable(engine, &heartbeat);
-		if (intel_gt_wait_for_idle(gt, HZ / 2)) {
+		if (intel_gt_wait_for_idle(gt, 5)) {
 			err = -EIO;
 			goto out;
 		}
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 1753c84d6c0d..51c64ae7833f 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -82,8 +82,6 @@ struct drm_i915_private;
 #define GEM_TRACE_DUMP_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #endif
 
-#define I915_GEM_IDLE_TIMEOUT (HZ / 5)
-
 static inline void tasklet_lock(struct tasklet_struct *t)
 {
 	while (!tasklet_trylock(t))
diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
index 7b0939e3f007..44700f29a8e7 100644
--- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
@@ -19,7 +19,7 @@ int igt_flush_test(struct drm_i915_private *i915)
 
 	cond_resched();
 
-	if (intel_gt_wait_for_idle(gt, HZ / 5) == -ETIME) {
+	if (intel_gt_wait_for_idle(gt, 5) == -ETIME) {
 		pr_err("%pS timed out, cancelling all further testing.\n",
 		       __builtin_return_address(0));
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
