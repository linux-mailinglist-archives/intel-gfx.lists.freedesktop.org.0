Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F361AF197
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 17:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBB46ECA1;
	Sat, 18 Apr 2020 15:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF21E6EC9E
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Apr 2020 15:27:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20944726-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Apr 2020 16:27:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Apr 2020 16:27:33 +0100
Message-Id: <20200418152733.1770-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418152733.1770-1-chris@chris-wilson.co.uk>
References: <20200418152733.1770-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/selftests: Check RPS controls
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

Check that the GPU does respond to our RPS frequency requests by setting
our desired frequency.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c   | 192 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/selftest_rps.h   |   1 +
 3 files changed, 170 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 4b2733967c42..de3eaef40596 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -53,6 +53,7 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_rc6_manual),
+		SUBTEST(live_rps_control),
 		SUBTEST(live_rps_frequency),
 		SUBTEST(live_rps_power),
 		SUBTEST(live_rps_interrupt),
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 67c287282d38..5ee693ac9904 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -107,6 +107,168 @@ create_spin_counter(struct intel_engine_cs *engine,
 	return vma;
 }
 
+static u8 rps_set_check(struct intel_rps *rps, u8 freq)
+{
+	u8 history[64], i;
+	unsigned long end;
+	int sleep;
+
+	mutex_lock(&rps->lock);
+	GEM_BUG_ON(!rps->active);
+	intel_rps_set(rps, freq);
+	GEM_BUG_ON(rps->last_freq != freq);
+	mutex_unlock(&rps->lock);
+
+	i = 0;
+	memset(history, freq, sizeof(history));
+	sleep = 20;
+
+	/* The PCU does not change instantly, but drifts towards the goal? */
+	end = jiffies + msecs_to_jiffies(50);
+	do {
+		u8 act;
+
+		act = read_cagf(rps);
+		if (time_after(jiffies, end))
+			return act;
+
+		/* Target acquired */
+		if (act == freq)
+			return act;
+
+		/* Any change witin the last N samples? */
+		if (!memchr_inv(history, act, sizeof(history)))
+			return act;
+
+		history[i] = act;
+		i = (i + 1) % ARRAY_SIZE(history);
+
+		usleep_range(sleep, 2 * sleep);
+		sleep *= 2;
+		if (sleep > 1000)
+			sleep = 1000;
+	} while (1);
+}
+
+int live_rps_control(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rps *rps = &gt->rps;
+	void (*saved_work)(struct work_struct *wrk);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	/*
+	 * Check that the actual frequency matches our requested frequency,
+	 * to verify our control mechanism. We have to be careful that the
+	 * PCU may throttle the GPU in which case the actual frequency used
+	 * will be lowered than requested.
+	 */
+
+	if (!rps->enabled || rps->max_freq <= rps->min_freq)
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
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq;
+		ktime_t min_dt, max_dt;
+		int act, f, limit;
+		int min, max;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,
+						MI_NOOP);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			pr_err("%s: RPS spinner did not start\n",
+			       engine->name);
+			intel_gt_set_wedged(engine->gt);
+			err = -EIO;
+			break;
+		}
+
+		if (rps_set_check(rps, rps->min_freq) != rps->min_freq) {
+			pr_err("%s: could not set minimum frequency!\n",
+			       engine->name);
+			igt_spinner_end(&spin);
+			err = -EINVAL;
+			break;
+		}
+
+		for (f = rps->min_freq + 1; f < rps->max_freq; f++) {
+			act = rps_set_check(rps, f);
+			if (act < f)
+				break;
+		}
+
+		limit = rps_set_check(rps, f);
+
+		if (rps_set_check(rps, rps->min_freq) != rps->min_freq) {
+			pr_err("%s: could not restore minimum frequency!\n",
+			       engine->name);
+			igt_spinner_end(&spin);
+			err = -EINVAL;
+			break;
+		}
+
+		max_dt = ktime_get();
+		max = rps_set_check(rps, rps->max_freq);
+		max_dt = ktime_sub(ktime_get(), max_dt);
+
+		min_dt = ktime_get();
+		min = rps_set_check(rps, rps->min_freq);
+		min_dt = ktime_sub(ktime_get(), min_dt);
+
+		igt_spinner_end(&spin);
+
+		pr_info("%s: range:[%x:%uMHz, %x:%uMHz] actual:[ %x:%uMHz, %x:%uMHz], %x:%x response %lluns:%lluns\n",
+			engine->name,
+			rps->min_freq, intel_gpu_freq(rps, rps->min_freq),
+			rps->max_freq, intel_gpu_freq(rps, rps->max_freq),
+			act, intel_gpu_freq(rps, act),
+			limit, intel_gpu_freq(rps, limit),
+			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
+
+		if (limit == rps->min_freq) {
+			pr_err("%s: GPU throttled to minimum!\n",
+			       engine->name);
+			err = -ENODEV;
+			break;
+		}
+
+		if (igt_flush_test(gt->i915)) {
+			err = -EIO;
+			break;
+		}
+	}
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
 static u64 __measure_frequency(u32 *cntr, int duration_ms)
 {
 	u64 dc, dt;
@@ -125,16 +287,10 @@ static u64 measure_frequency_at(struct intel_rps *rps, u32 *cntr, int *freq)
 	u64 x[5];
 	int i;
 
-	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, *freq);
-	mutex_unlock(&rps->lock);
-
-	msleep(20); /* more than enough time to stabilise! */
-
+	*freq = rps_set_check(rps, *freq);
 	for (i = 0; i < 5; i++)
 		x[i] = __measure_frequency(cntr, 2);
-	*freq = read_cagf(rps);
+	*freq = (*freq + read_cagf(rps)) / 2;
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
@@ -273,10 +429,7 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 	if (!intel_engine_can_store_dword(engine))
 		return 0;
 
-	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, rps->min_freq);
-	mutex_unlock(&rps->lock);
+	rps_set_check(rps, rps->min_freq);
 
 	rq = igt_spinner_create_request(spin, engine->kernel_context, MI_NOOP);
 	if (IS_ERR(rq))
@@ -348,10 +501,7 @@ static int __rps_down_interrupt(struct intel_rps *rps,
 	struct intel_uncore *uncore = engine->uncore;
 	u32 timeout;
 
-	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, rps->max_freq);
-	mutex_unlock(&rps->lock);
+	rps_set_check(rps, rps->max_freq);
 
 	if (!(rps->pm_events & GEN6_PM_RP_DOWN_THRESHOLD)) {
 		pr_err("%s: RPS did not register DOWN interrupt\n",
@@ -484,16 +634,10 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
 	u64 x[5];
 	int i;
 
-	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, *freq);
-	mutex_unlock(&rps->lock);
-
-	msleep(20); /* more than enough time to stabilise! */
-
+	*freq = rps_set_check(rps, *freq);
 	for (i = 0; i < 5; i++)
 		x[i] = __measure_power(5);
-	*freq = read_cagf(rps);
+	*freq = (*freq + read_cagf(rps)) / 2;
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.h b/drivers/gpu/drm/i915/gt/selftest_rps.h
index 07c2bddf8899..be0bf8e3f639 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.h
@@ -6,6 +6,7 @@
 #ifndef SELFTEST_RPS_H
 #define SELFTEST_RPS_H
 
+int live_rps_control(void *arg);
 int live_rps_frequency(void *arg);
 int live_rps_interrupt(void *arg);
 int live_rps_power(void *arg);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
