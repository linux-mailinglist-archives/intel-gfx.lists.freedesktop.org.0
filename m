Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F6F1B1175
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 18:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD4F6E7FA;
	Mon, 20 Apr 2020 16:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6EE56E7DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 16:25:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20962226-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 17:25:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 17:25:09 +0100
Message-Id: <20200420162509.29044-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420162509.29044-1-chris@chris-wilson.co.uk>
References: <20200420162509.29044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915/selftests: Exercise dynamic
 reclocking with RPS
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

After having testing all the RPS controls individually, we need to take
a step back and check how our RPS worker integrates them to perform
dynamic GPU reclocking. So do that by submitting a spinner and wait and
see what happens.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c   | 112 +++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_rps.h   |   3 +-
 3 files changed, 105 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 9855e6f0ce7c..e02fdec58826 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -58,6 +58,7 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_rps_frequency_srm),
 		SUBTEST(live_rps_power),
 		SUBTEST(live_rps_interrupt),
+		SUBTEST(live_rps_dynamic),
 		SUBTEST(live_gt_resume),
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 5264ff86f235..93db2748c1d6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -110,24 +110,18 @@ create_spin_counter(struct intel_engine_cs *engine,
 	return vma;
 }
 
-static u8 rps_set_check(struct intel_rps *rps, u8 freq)
+static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
 {
 	u8 history[64], i;
 	unsigned long end;
 	int sleep;
 
-	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, freq);
-	GEM_BUG_ON(rps->last_freq != freq);
-	mutex_unlock(&rps->lock);
-
 	i = 0;
 	memset(history, freq, sizeof(history));
 	sleep = 20;
 
 	/* The PCU does not change instantly, but drifts towards the goal? */
-	end = jiffies + msecs_to_jiffies(50);
+	end = jiffies + msecs_to_jiffies(timeout_ms);
 	do {
 		u8 act;
 
@@ -148,11 +142,22 @@ static u8 rps_set_check(struct intel_rps *rps, u8 freq)
 
 		usleep_range(sleep, 2 * sleep);
 		sleep *= 2;
-		if (sleep > 1000)
-			sleep = 1000;
+		if (sleep > timeout_ms * 20)
+			sleep = timeout_ms * 20;
 	} while (1);
 }
 
+static u8 rps_set_check(struct intel_rps *rps, u8 freq)
+{
+	mutex_lock(&rps->lock);
+	GEM_BUG_ON(!rps->active);
+	intel_rps_set(rps, freq);
+	GEM_BUG_ON(rps->last_freq != freq);
+	mutex_unlock(&rps->lock);
+
+	return wait_for_freq(rps, freq, 50);
+}
+
 int live_rps_control(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -933,3 +938,90 @@ int live_rps_power(void *arg)
 
 	return err;
 }
+
+int live_rps_dynamic(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rps *rps = &gt->rps;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	/*
+	 * We've looked at the bascs, and have established that we
+	 * can change the clock frequency and that the HW will generate
+	 * interrupts based on load. Now we check how we integrate those
+	 * moving parts into dynamic reclocking based on load.
+	 */
+
+	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+		return 0;
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq;
+		struct {
+			ktime_t dt;
+			u8 freq;
+		} min,max;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		intel_gt_pm_wait_for_idle(gt);
+		GEM_BUG_ON(rps->active);
+		rps->cur_freq = rps->min_freq;
+
+		intel_engine_pm_get(engine);
+		intel_rc6_disable(&gt->rc6);
+		GEM_BUG_ON(rps->last_freq != rps->min_freq);
+
+		rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,
+						MI_NOOP);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err;
+		}
+
+		i915_request_add(rq);
+
+		max.dt = ktime_get();
+		max.freq = wait_for_freq(rps, rps->max_freq, 500);
+		max.dt = ktime_sub(ktime_get(), max.dt);
+
+		igt_spinner_end(&spin);
+
+		min.dt = ktime_get();
+		min.freq = wait_for_freq(rps, rps->min_freq, 2000);
+		min.dt = ktime_sub(ktime_get(), min.dt);
+
+		pr_info("%s: dynamically reclocked to %u:%uMHz while busy in %lluns, and %u:%uMHz while idle in %lluns\n",
+			engine->name,
+			max.freq, intel_gpu_freq(rps, max.freq),
+			ktime_to_ns(max.dt),
+			min.freq, intel_gpu_freq(rps, min.freq),
+			ktime_to_ns(min.dt));
+		if (min.freq >= max.freq) {
+			pr_err("%s: dynamic reclocking of spinner failed\n!",
+			       engine->name);
+			err = -EINVAL;
+		}
+
+err:
+		intel_rc6_enable(&gt->rc6);
+		intel_engine_pm_put(engine);
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	igt_spinner_fini(&spin);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.h b/drivers/gpu/drm/i915/gt/selftest_rps.h
index 22e46c5341c5..76c4b19553e6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.h
@@ -9,7 +9,8 @@
 int live_rps_control(void *arg);
 int live_rps_frequency_cs(void *arg);
 int live_rps_frequency_srm(void *arg);
-int live_rps_interrupt(void *arg);
 int live_rps_power(void *arg);
+int live_rps_interrupt(void *arg);
+int live_rps_dynamic(void *arg);
 
 #endif /* SELFTEST_RPS_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
