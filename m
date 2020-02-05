Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A200A1524D3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 03:35:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5796E0F3;
	Wed,  5 Feb 2020 02:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 7799 seconds by postgrey-1.36 at gabe;
 Wed, 05 Feb 2020 02:35:16 UTC
Received: from 6.mo178.mail-out.ovh.net (6.mo178.mail-out.ovh.net
 [46.105.53.132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BCA86E0F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 02:35:16 +0000 (UTC)
Received: from player729.ha.ovh.net (unknown [10.110.208.202])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 514388DF9E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 01:07:52 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player729.ha.ovh.net (Postfix) with ESMTPSA id 96D77F25EC86;
 Wed,  5 Feb 2020 00:07:48 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Wed,  5 Feb 2020 02:07:41 +0200
Message-Id: <20200205000741.3648-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 529172959393333853
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrhedtgddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedvledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v4] drm/i915/selftests: add basic selftests for
 rc6
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
Hi,

just resending this patch that was going in decomposition. It's
rebased on top of drm-tip.

Andi

Changelog:
* v3 -> v4:
	- just a small refactoring where test_rc6 becomes a
	  measure function while another test_rc6 checks the
	  return value from the measure.
* v2 -> v3:
        - rebased on top of the latest drm-tip
        - fixed exiting order in rc6_basic to avoid exiting
          without releasing the pm reference
* v1 -> v2:
        - some changes from Chris (thank you!).

 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   3 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 190 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |   3 +
 3 files changed, 196 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 09ff8e4f88af..84d1a58cfa28 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -51,6 +51,9 @@ static int live_gt_resume(void *arg)
 int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_rc6_basic),
+		SUBTEST(live_rc6_threshold),
+		SUBTEST(live_rc6_busy),
 		SUBTEST(live_rc6_manual),
 		SUBTEST(live_gt_resume),
 	};
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 5f7e2dcf5686..bd0e75421a4a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -11,6 +11,7 @@
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
+#include "selftests/igt_spinner.h"
 
 int live_rc6_manual(void *arg)
 {
@@ -202,3 +203,192 @@ int live_rc6_ctx_wa(void *arg)
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
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return enabled != (ec1 >= ec2);
+}
+
+int live_rc6_basic(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rc6 *rc6 = &gt->rc6;
+	intel_wakeref_t wakeref;
+	int i, err = 0;
+
+	if (!rc6->supported)
+		return 0;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	/*
+	 * the two loops test rc6 both in case it's enabled
+	 * and in the case it's disabled. It restores the prvious
+	 * status
+	 */
+	for (i = 0; i < 2; i++) {
+		if (!test_rc6(rc6, rc6->enabled)) {
+			err = -EINVAL;
+
+			/* restore before leaving */
+			if (!i)
+				goto exit;
+		}
+
+		if (rc6->enabled)
+			intel_rc6_disable(&gt->rc6);
+		else
+			intel_rc6_enable(&gt->rc6);
+	}
+
+exit:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+	return err;
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
+	if (!rc6->supported)
+		return 0;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
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
+	/* interval < threshold */
+	if (!test_rc6(rc6, true)) {
+		pr_err("i915 mismatch: rc6 with interval < threshold\n");
+		err = -EINVAL;
+	}
+
+	/* set interval indicatively to twice the threshold */
+	interval = threshold * 2;
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, interval);
+
+	/* interval > threshold */
+	if (!test_rc6(rc6, false)) {
+		pr_err("i915 mismatch: not in rc6 with interval > threshold\n");
+		err = -EINVAL;
+	}
+
+	intel_uncore_write(uncore, GEN6_RC6_THRESHOLD, t_orig);
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, i_orig);
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
+		/* gpu is busy, we should be in rc6 */
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
index 762fd442d7b2..b924d2e5cb43 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.h
@@ -7,6 +7,9 @@
 #ifndef SELFTEST_RC6_H
 #define SELFTEST_RC6_H
 
+int live_rc6_basic(void *arg);
+int live_rc6_threshold(void *arg);
+int live_rc6_busy(void *arg);
 int live_rc6_ctx_wa(void *arg);
 int live_rc6_manual(void *arg);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
