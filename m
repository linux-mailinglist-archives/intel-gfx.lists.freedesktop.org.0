Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9938115297C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 11:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37B66F542;
	Wed,  5 Feb 2020 10:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D076F542
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 10:58:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20122606-1500050 
 for multiple; Wed, 05 Feb 2020 10:57:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 10:57:49 +0000
Message-Id: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: add basic selftests for rc6
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

From: Andi Shyti <andi.shyti@intel.com>

Add three basic tests for rc6 power status:

1. live_rc6_basic - simply checks if rc6 works when it's enabled
   or stops when it's disabled.

2. live_rc6_threshold - rc6 should not work when the evaluation
   interval is less than the threshold and should work otherwise.

3. live_rc6_busy - keeps the gpu busy and then goes in idle;
   checks that we don't fall in rc6 when busy and that we do fall
   in rc6 when idling.

The three tests are added as sutest of the bigger live_late_gt_pm
selftest.

The basic rc6 functionality is tested by checking the reference
counter within the evaluation interval.

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   2 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 173 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |   2 +
 3 files changed, 177 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 09ff8e4f88af..5c7b92301a14 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -52,6 +52,8 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_rc6_manual),
+		SUBTEST(live_rc6_threshold),
+		SUBTEST(live_rc6_busy),
 		SUBTEST(live_gt_resume),
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 5f7e2dcf5686..92375f458845 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -11,6 +11,7 @@
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
+#include "selftests/igt_spinner.h"
 
 int live_rc6_manual(void *arg)
 {
@@ -202,3 +203,175 @@ int live_rc6_ctx_wa(void *arg)
 	kfree(engines);
 	return err;
 }
+
+static bool test_rc6(struct intel_rc6 *rc6, bool enabled)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	intel_wakeref_t wakeref;
+	u32 ec1, ec2;
+	u32 interval;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	interval = intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL);
+
+	/*
+	 * the interval is stored in steps of 1.28us
+	 */
+	interval = div_u64(mul_u32_u32(interval, 128),
+			   100 * 1000); /* => miliseconds */
+
+	ec1 = intel_uncore_read(uncore, GEN6_GT_GFX_RC6);
+
+	/*
+	 * It's not important to precisely wait the interval time.
+	 * I'll wait at least twice the time in order to be sure
+	 * that the counting happens in the reference counter.
+	 */
+	msleep(2 * interval);
+
+	ec2 = intel_uncore_read(uncore, GEN6_GT_GFX_RC6);
+
+	pr_info("interval:%x [%dms], threshold:%x, rc6:%x, enabled?:%s\n",
+		intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL),
+		interval,
+		intel_uncore_read(uncore, GEN6_RC6_THRESHOLD),
+	       	ec2 - ec1,
+	       	yesno(enabled));
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return enabled != (ec1 >= ec2);
+}
+
+int live_rc6_threshold(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_uncore *uncore = gt->uncore;
+	struct intel_rc6 *rc6 = &gt->rc6;
+	intel_wakeref_t wakeref;
+	u32 threshold, interval;
+	u32 t_orig, i_orig;
+	int err = 0;
+
+	if (!rc6->manual) /* No interferring PCU! */
+		return 0;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	__intel_rc6_disable(rc6); /* stop before adjusting thresholds */
+
+	t_orig = intel_uncore_read(uncore, GEN6_RC6_THRESHOLD);
+	i_orig = intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL);
+
+	/*
+	 * set the threshold to 50ms
+	 *
+	 * 50ms * 1000 = 50000us
+	 * 50000 / (1.28 * 100) / 100 (we don't have floating point)
+	 */
+	threshold = 50 * 1000 / 128 * 100;
+	intel_uncore_write(uncore, GEN6_RC6_THRESHOLD, threshold);
+
+	/* set interval indicatively to half the threshold */
+	interval = threshold / 2;
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, interval);
+
+	intel_rc6_unpark(rc6);
+
+	/* interval < threshold */
+	if (!test_rc6(rc6, false)) {
+		pr_err("i915 mismatch: rc6 with interval < threshold\n");
+		err = -EINVAL;
+	}
+
+	__intel_rc6_disable(rc6);
+
+	/* set interval indicatively to twice the threshold */
+	interval = threshold * 2;
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, interval);
+
+	intel_rc6_unpark(rc6);
+
+	/* interval > threshold */
+	if (!test_rc6(rc6, true)) {
+		pr_err("i915 mismatch: not in rc6 with interval > threshold\n");
+		err = -EINVAL;
+	}
+
+	__intel_rc6_disable(rc6);
+
+	intel_uncore_write(uncore, GEN6_RC6_THRESHOLD, t_orig);
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, i_orig);
+
+	intel_rc6_park(rc6);
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return err;
+}
+
+int live_rc6_busy(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rc6 *rc6 = &gt->rc6;
+	struct intel_engine_cs *engine;
+	struct igt_spinner spin;
+	intel_wakeref_t wakeref;
+	enum intel_engine_id id;
+	int err;
+
+	if (!rc6->supported)
+		return 0;
+
+	err = igt_spinner_init(&spin, gt);
+	if (err)
+		return err;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq;
+
+		rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,
+						MI_NOOP);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		igt_wait_for_spinner(&spin, rq); /* it's enough waiting */
+
+		/* gpu is busy, we shouldn't be in rc6 */
+		if (!test_rc6(rc6, false)) {
+			pr_err("%s: never busy enough for having a nap\n",
+			       engine->name);
+			err = -EINVAL;
+		}
+
+		igt_spinner_end(&spin);
+		if (i915_request_wait(rq, 0, HZ / 5) < 0)
+			err = -ETIME;
+		i915_request_put(rq);
+		if (err)
+			break;
+
+		intel_gt_wait_for_idle(gt, HZ / 5);
+		intel_gt_pm_wait_for_idle(gt);
+
+		/* gpu is idle, we should be in rc6 */
+		if (!test_rc6(rc6, true)) {
+			pr_err("%s is idle but doesn't go in rc6\n",
+			       engine->name);
+			err = -EINVAL;
+			break;
+		}
+	}
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
+	igt_spinner_fini(&spin);
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.h b/drivers/gpu/drm/i915/gt/selftest_rc6.h
index 762fd442d7b2..312894423dc2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.h
@@ -7,7 +7,9 @@
 #ifndef SELFTEST_RC6_H
 #define SELFTEST_RC6_H
 
+int live_rc6_busy(void *arg);
 int live_rc6_ctx_wa(void *arg);
 int live_rc6_manual(void *arg);
+int live_rc6_threshold(void *arg);
 
 #endif /* SELFTEST_RC6_H */
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
