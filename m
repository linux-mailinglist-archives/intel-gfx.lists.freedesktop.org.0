Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAB51BA649
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 16:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975CB6E2DE;
	Mon, 27 Apr 2020 14:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E146E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 14:25:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21036107-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 15:25:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 15:25:25 +0100
Message-Id: <20200427142525.23654-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Fix up clock frequency
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

The bspec lists both the clock frequency and the effective interval. The
interval corresponds to observed behaviour, so adjust the frequency to
match.

v2: Mika rightfully asked if we could measure the clock frequency from a
selftest.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  12 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 133 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rps.h        |   1 +
 4 files changed, 141 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 852a7d731b3b..999079686846 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -7,9 +7,9 @@
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 
+#define MHZ_12   12000000 /* 12MHz (24MHz/2), 83.333ns */
+#define MHZ_12_5 12500000 /* 12.5MHz (25MHz/2), 80ns */
 #define MHZ_19_2 19200000 /* 19.2MHz, 52.083ns */
-#define MHZ_24 24000000 /* 24MHz, 83.333ns */
-#define MHZ_25 25000000 /* 25MHz, 80ns */
 
 static u32 read_clock_frequency(const struct intel_gt *gt)
 {
@@ -21,19 +21,19 @@ static u32 read_clock_frequency(const struct intel_gt *gt)
 		config >>= GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
 
 		switch (config) {
-		case 0: return MHZ_24;
+		case 0: return MHZ_12;
 		case 1:
 		case 2: return MHZ_19_2;
 		default:
-		case 3: return MHZ_25;
+		case 3: return MHZ_12_5;
 		}
 	} else if (INTEL_GEN(gt->i915) >= 9) {
 		if (IS_GEN9_LP(gt->i915))
 			return MHZ_19_2;
 		else
-			return MHZ_24;
+			return MHZ_12;
 	} else {
-		return MHZ_25;
+		return MHZ_12_5;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index e02fdec58826..242181a5214c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -53,6 +53,7 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_rc6_manual),
+		SUBTEST(live_rps_clock_interval),
 		SUBTEST(live_rps_control),
 		SUBTEST(live_rps_frequency_cs),
 		SUBTEST(live_rps_frequency_srm),
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index e13cbcb82825..a7218dcebd2d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -208,6 +208,139 @@ static void show_pstate_limits(struct intel_rps *rps)
 	}
 }
 
+int live_rps_clock_interval(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rps *rps = &gt->rps;
+	void (*saved_work)(struct work_struct *wrk);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	if (!rps->enabled)
+		return 0;
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	intel_gt_pm_wait_for_idle(gt);
+	saved_work = rps->work.func;
+	rps->work.func = dummy_rps_work;
+
+	intel_gt_pm_get(gt);
+	intel_rps_disable(&gt->rps);
+
+	intel_gt_check_clock_frequency(gt);
+
+	for_each_engine(engine, gt, id) {
+		unsigned long saved_heartbeat;
+		struct i915_request *rq;
+		ktime_t dt;
+		u32 cycles;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		saved_heartbeat = engine_heartbeat_disable(engine);
+
+		rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,
+						MI_NOOP);
+		if (IS_ERR(rq)) {
+			engine_heartbeat_enable(engine, saved_heartbeat);
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			pr_err("%s: RPS spinner did not start\n",
+			       engine->name);
+			igt_spinner_end(&spin);
+			engine_heartbeat_enable(engine, saved_heartbeat);
+			intel_gt_set_wedged(engine->gt);
+			err = -EIO;
+			break;
+		}
+
+		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+
+		intel_uncore_write_fw(gt->uncore, GEN6_RP_CUR_UP_EI, 0);
+
+		/* Set the evaluation interval to infinity! */
+		intel_uncore_write_fw(gt->uncore,
+				      GEN6_RP_UP_EI, 0xffffffff);
+		intel_uncore_write_fw(gt->uncore,
+				      GEN6_RP_UP_THRESHOLD, 0xffffffff);
+
+		intel_uncore_write_fw(gt->uncore, GEN6_RP_CONTROL,
+				      GEN6_RP_ENABLE | GEN6_RP_UP_BUSY_AVG);
+
+		if (wait_for(intel_uncore_read_fw(gt->uncore,
+						  GEN6_RP_CUR_UP_EI),
+			     10)) {
+			pr_err("%s: rps evalution interval not ticking\n",
+			       engine->name);
+			err = -ENODEV;
+		} else {
+			dt = ktime_get();
+			cycles = -intel_uncore_read_fw(gt->uncore,
+						       GEN6_RP_CUR_UP_EI);
+			usleep_range(1000, 2000);
+			dt = ktime_sub(ktime_get(), dt);
+			cycles += intel_uncore_read_fw(gt->uncore,
+						       GEN6_RP_CUR_UP_EI);
+		}
+
+		intel_uncore_write_fw(gt->uncore, GEN6_RP_CONTROL, 0);
+		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
+
+		igt_spinner_end(&spin);
+		engine_heartbeat_enable(engine, saved_heartbeat);
+
+		if (err == 0) {
+			u64 time = intel_gt_pm_interval_to_ns(gt, cycles);
+			u32 expected =
+				intel_gt_ns_to_pm_interval(gt, ktime_to_ns(dt));
+
+			pr_info("%s: rps counted %d C0 cycles [%lldns] in %lldns [%d cycles], using GT clock frequency of %uKHz\n",
+				engine->name, cycles, time, ktime_to_ns(dt), expected,
+				gt->clock_frequency / 1000);
+
+			if (10 * time < 9 * ktime_to_ns(dt) ||
+			    10 * time > 11 * ktime_to_ns(dt)) {
+				pr_err("%s: rps clock time does not match walltime!\n",
+				       engine->name);
+				err = -EINVAL;
+			}
+
+			if (10 * expected < 9 * cycles ||
+			    10 * expected > 11 * cycles) {
+				pr_err("%s: walltime does not match rps clock ticks!\n",
+				       engine->name);
+				err = -EINVAL;
+			}
+		}
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+
+		break; /* once is enough */
+	}
+
+	intel_rps_enable(&gt->rps);
+	intel_gt_pm_put(gt);
+
+	igt_spinner_fini(&spin);
+
+	intel_gt_pm_wait_for_idle(gt);
+	rps->work.func = saved_work;
+
+	return err;
+}
+
 int live_rps_control(void *arg)
 {
 	struct intel_gt *gt = arg;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.h b/drivers/gpu/drm/i915/gt/selftest_rps.h
index 76c4b19553e6..6e82a631cfa1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.h
@@ -7,6 +7,7 @@
 #define SELFTEST_RPS_H
 
 int live_rps_control(void *arg);
+int live_rps_clock_interval(void *arg);
 int live_rps_frequency_cs(void *arg);
 int live_rps_frequency_srm(void *arg);
 int live_rps_power(void *arg);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
