Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F93153CF4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 03:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98246F99C;
	Thu,  6 Feb 2020 02:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 12000 seconds by postgrey-1.36 at gabe;
 Thu, 06 Feb 2020 02:28:35 UTC
Received: from 11.mo1.mail-out.ovh.net (11.mo1.mail-out.ovh.net
 [188.165.48.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DA56F99C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 02:28:35 +0000 (UTC)
Received: from player729.ha.ovh.net (unknown [10.110.171.136])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id F19AE1ACABB
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 23:50:28 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player729.ha.ovh.net (Postfix) with ESMTPSA id 4BAA9F314A5C;
 Wed,  5 Feb 2020 22:50:24 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  6 Feb 2020 00:49:49 +0200
Message-Id: <20200205224949.5942-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205223627.5680-1-andi@etezian.org>
References: <20200205223627.5680-1-andi@etezian.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 5094697080492573277
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrhedvgddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedvledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v5] drm/i915/selftests: add basic selftests for
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
I sent the wrong patch, sorry, this is the right one.

Andi

Changelog:
* v4 -> v5:
	- added changes in v4 which I forgot to include
	- a small renaming and refactoring suggested by Mika to
	  make clear the purpose of the test function. Now it's
	  called "is_rc6_active" in a question format (and I
	  believe Chris won't like my creativity) and it returns
	  true if rc6 is active and false otherwise. Thanks, Mika!
	- fixed a couple of typos.
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

 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   2 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 179 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |   2 +
 3 files changed, 183 insertions(+)

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
index 5f7e2dcf5686..7b5d476a8ad1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -11,6 +11,7 @@
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
+#include "selftests/igt_spinner.h"
 
 int live_rc6_manual(void *arg)
 {
@@ -202,3 +203,181 @@ int live_rc6_ctx_wa(void *arg)
 	kfree(engines);
 	return err;
 }
+
+static u32 measure_rc6(struct intel_uncore *uncore, u32 interval)
+{
+	u32 ec1, ec2;
+
+	ec1 = intel_uncore_read(uncore, GEN6_GT_GFX_RC6);
+
+	/*
+	 * It's not important to precisely wait the interval time.
+	 * I'll wait at least twice the time in order to be sure
+	 * that the counting happens in the reference counter.
+	 */
+	msleep(interval);
+
+	ec2 = intel_uncore_read(uncore, GEN6_GT_GFX_RC6);
+
+	pr_info("interval:%x [%dms], threshold:%x, rc6:%x\n",
+		intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL),
+		interval,
+		intel_uncore_read(uncore, GEN6_RC6_THRESHOLD),
+		ec2 - ec1);
+
+	/* paranoia? ec2 is always supposed to be bigger */
+	return (ec2 >= ec1) ? ec2 - ec1 : 0;
+}
+
+static bool is_rc6_active(struct intel_rc6 *rc6)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	intel_wakeref_t wakeref;
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
+			   100 * 1000); /* => milliseconds */
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return !!measure_rc6(uncore, 2 * interval);
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
+	if (!rc6->manual) /* No interfering PCU! */
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
+	if (is_rc6_active(rc6)) {
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
+	if (!is_rc6_active(rc6)) {
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
+		if (is_rc6_active(rc6)) {
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
+		if (!is_rc6_active(rc6)) {
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
