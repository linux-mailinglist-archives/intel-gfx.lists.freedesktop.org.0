Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BA21545AF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 15:04:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197F26FA5B;
	Thu,  6 Feb 2020 14:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 136590 seconds by postgrey-1.36 at gabe;
 Thu, 06 Feb 2020 14:04:24 UTC
Received: from 7.mo173.mail-out.ovh.net (7.mo173.mail-out.ovh.net
 [46.105.44.159])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38026FA5B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 14:04:24 +0000 (UTC)
Received: from player771.ha.ovh.net (unknown [10.110.208.203])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 13DB112CB55
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:04:22 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player771.ha.ovh.net (Postfix) with ESMTPSA id 60022F28748D;
 Thu,  6 Feb 2020 14:04:17 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  6 Feb 2020 16:04:00 +0200
Message-Id: <20200206140402.11790-2-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206140402.11790-1-andi@etezian.org>
References: <20200206140402.11790-1-andi@etezian.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2082351880966947421
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheefgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915/selftests: add busy selftests
 for rc6
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

live_rc6_busy keeps the gpu busy and then goes in idle;
checks that we don't fall in rc6 when busy and that we do fall
in rc6 when idling.

The test is added as subtest of the bigger live_late_gt_pm
selftest.

The basic rc6 functionality is tested by checking the reference
counter within the evaluation interval.

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   1 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 112 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |   1 +
 3 files changed, 114 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 09ff8e4f88af..40562f5208ea 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -51,6 +51,7 @@ static int live_gt_resume(void *arg)
 int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_rc6_busy),
 		SUBTEST(live_rc6_manual),
 		SUBTEST(live_gt_resume),
 	};
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 5f7e2dcf5686..270e8d24036d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -11,6 +11,7 @@
 #include "selftest_rc6.h"
 
 #include "selftests/i915_random.h"
+#include "selftests/igt_spinner.h"
 
 int live_rc6_manual(void *arg)
 {
@@ -202,3 +203,114 @@ int live_rc6_ctx_wa(void *arg)
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
index 762fd442d7b2..75e05a8a1fda 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.h
@@ -7,6 +7,7 @@
 #ifndef SELFTEST_RC6_H
 #define SELFTEST_RC6_H
 
+int live_rc6_busy(void *arg);
 int live_rc6_ctx_wa(void *arg);
 int live_rc6_manual(void *arg);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
