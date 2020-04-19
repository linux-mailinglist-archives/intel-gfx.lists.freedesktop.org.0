Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C79BD1AF957
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 12:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8766E466;
	Sun, 19 Apr 2020 10:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F207F6E02D
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Apr 2020 10:32:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20949532-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Apr 2020 11:32:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 19 Apr 2020 11:32:14 +0100
Message-Id: <20200419103214.28866-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419103214.28866-1-chris@chris-wilson.co.uk>
References: <20200419103214.28866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/selftests: Split RPS frequency
 measurement
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

Split the frequency measurement into two modes, so that we can judge the
impact of the llc setup on top of the pure CS frequency scaling.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   3 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c   | 156 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_rps.h   |   3 +-
 3 files changed, 153 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index de3eaef40596..5d7dde81f2b7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -54,7 +54,8 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_rc6_manual),
 		SUBTEST(live_rps_control),
-		SUBTEST(live_rps_frequency),
+		SUBTEST(live_rps_frequency_cs),
+		SUBTEST(live_rps_frequency_mem),
 		SUBTEST(live_rps_power),
 		SUBTEST(live_rps_interrupt),
 		SUBTEST(live_gt_resume),
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 932c643e28e3..a79dfdc564dc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -33,6 +33,7 @@ static int cmp_u64(const void *A, const void *B)
 static struct i915_vma *
 create_spin_counter(struct intel_engine_cs *engine,
 		    struct i915_address_space *vm,
+		    bool srm,
 		    u32 **cancel,
 		    u32 **counter)
 {
@@ -91,10 +92,12 @@ create_spin_counter(struct intel_engine_cs *engine,
 	*cs++ = MI_MATH_ADD;
 	*cs++ = MI_MATH_STORE(MI_MATH_REG(COUNT), MI_MATH_REG_ACCU);
 
-	*cs++ = MI_STORE_REGISTER_MEM_GEN8;
-	*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
-	*cs++ = lower_32_bits(vma->node.start + 1000 * sizeof(*cs));
-	*cs++ = upper_32_bits(vma->node.start + 1000 * sizeof(*cs));
+	if (srm) {
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+		*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
+		*cs++ = lower_32_bits(vma->node.start + 1000 * sizeof(*cs));
+		*cs++ = upper_32_bits(vma->node.start + 1000 * sizeof(*cs));
+	}
 
 	*cs++ = MI_BATCH_BUFFER_START_GEN8;
 	*cs++ = lower_32_bits(vma->node.start + loop * sizeof(*cs));
@@ -103,7 +106,7 @@ create_spin_counter(struct intel_engine_cs *engine,
 	i915_gem_object_flush_map(obj);
 
 	*cancel = base + loop;
-	*counter = memset32(base + 1000, 0, 1);
+	*counter = srm ? memset32(base + 1000, 0, 1) : NULL;
 	return vma;
 }
 
@@ -301,7 +304,146 @@ static u64 measure_frequency_at(struct intel_rps *rps, u32 *cntr, int *freq)
 	return div_u64(x[1] + 2 * x[2] + x[3], 4);
 }
 
-int live_rps_frequency(void *arg)
+static u64 __measure_cs_frequency(struct intel_engine_cs *engine,
+				  int duration_ms)
+{
+	u64 dc, dt;
+
+	dt = ktime_get();
+	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0));
+	usleep_range(1000 * duration_ms, 2000 * duration_ms);
+	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0)) - dc;
+	dt = ktime_get() - dt;
+
+	return div64_u64(1000 * 1000 * dc, dt);
+}
+
+static u64 measure_cs_frequency_at(struct intel_rps *rps,
+				   struct intel_engine_cs *engine,
+				   int *freq)
+{
+	u64 x[5];
+	int i;
+
+	*freq = rps_set_check(rps, *freq);
+	for (i = 0; i < 5; i++)
+		x[i] = __measure_cs_frequency(engine, 2);
+	*freq = (*freq + read_cagf(rps)) / 2;
+
+	/* A simple triangle filter for better result stability */
+	sort(x, 5, sizeof(*x), cmp_u64, NULL);
+	return div_u64(x[1] + 2 * x[2] + x[3], 4);
+}
+
+int live_rps_frequency_cs(void *arg)
+{
+	void (*saved_work)(struct work_struct *wrk);
+	struct intel_gt *gt = arg;
+	struct intel_rps *rps = &gt->rps;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * The premise is that the GPU does change freqency at our behest.
+	 * Let's check there is a correspondence between the requested
+	 * frequency, the actual frequency, and the observed clock rate.
+	 */
+
+	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+		return 0;
+
+	if (INTEL_GEN(gt->i915) < 8) /* for CS simplicity */
+		return 0;
+
+	intel_gt_pm_wait_for_idle(gt);
+	saved_work = rps->work.func;
+	rps->work.func = dummy_rps_work;
+
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq;
+		struct i915_vma *vma;
+		u32 *cancel, *cntr;
+		struct {
+			u64 count;
+			int freq;
+		} min, max;
+
+		vma = create_spin_counter(engine,
+					  engine->kernel_context->vm, false,
+					  &cancel, &cntr);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			break;
+		}
+
+		rq = intel_engine_create_kernel_request(engine);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_vma;
+		}
+
+		i915_vma_lock(vma);
+		err = i915_request_await_object(rq, vma->obj, false);
+		if (!err)
+			err = i915_vma_move_to_active(vma, rq, 0);
+		if (!err)
+			err = rq->engine->emit_bb_start(rq,
+							vma->node.start,
+							PAGE_SIZE, 0);
+		i915_vma_unlock(vma);
+		i915_request_add(rq);
+		if (err)
+			goto err_vma;
+
+		if (wait_for(intel_uncore_read(engine->uncore, CS_GPR(0)),
+			     10)) {
+			pr_err("%s: timed loop did not start\n",
+			       engine->name);
+			goto err_vma;
+		}
+
+		min.freq = rps->min_freq;
+		min.count = measure_cs_frequency_at(rps, engine, &min.freq);
+
+		max.freq = rps->max_freq;
+		max.count = measure_cs_frequency_at(rps, engine, &max.freq);
+
+		pr_info("%s: min:%lluKHz @ %uMHz, max:%lluKHz @ %uMHz [%d%%]\n",
+			engine->name,
+			min.count, intel_gpu_freq(rps, min.freq),
+			max.count, intel_gpu_freq(rps, max.freq),
+			(int)DIV64_U64_ROUND_CLOSEST(100 * min.freq * max.count,
+						     max.freq * min.count));
+
+		if (2 * max.freq * min.count > 3 * min.freq * max.count ||
+		    3 * max.freq * min.count < 2 * min.freq * max.count) {
+			pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
+			       engine->name,
+			       max.freq * min.count,
+			       min.freq * max.count);
+			err = -EINVAL;
+		}
+
+err_vma:
+		*cancel = MI_BATCH_BUFFER_END;
+		i915_gem_object_unpin_map(vma->obj);
+		i915_vma_unpin(vma);
+		i915_vma_put(vma);
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	intel_gt_pm_wait_for_idle(gt);
+	rps->work.func = saved_work;
+
+	return err;
+}
+
+int live_rps_frequency_mem(void *arg)
 {
 	void (*saved_work)(struct work_struct *wrk);
 	struct intel_gt *gt = arg;
@@ -336,7 +478,7 @@ int live_rps_frequency(void *arg)
 		} min, max;
 
 		vma = create_spin_counter(engine,
-					  engine->kernel_context->vm,
+					  engine->kernel_context->vm, true,
 					  &cancel, &cntr);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.h b/drivers/gpu/drm/i915/gt/selftest_rps.h
index be0bf8e3f639..b78ef3fe2741 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.h
@@ -7,7 +7,8 @@
 #define SELFTEST_RPS_H
 
 int live_rps_control(void *arg);
-int live_rps_frequency(void *arg);
+int live_rps_frequency_cs(void *arg);
+int live_rps_frequency_mem(void *arg);
 int live_rps_interrupt(void *arg);
 int live_rps_power(void *arg);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
