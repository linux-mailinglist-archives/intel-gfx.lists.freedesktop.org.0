Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A41B3A46
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 10:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8615A6E365;
	Wed, 22 Apr 2020 08:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D576E365
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 08:39:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20979945-1500050 
 for multiple; Wed, 22 Apr 2020 09:38:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 09:38:55 +0100
Message-Id: <20200422083855.26842-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Disable heartbeat around
 RPS interrupt testing
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For verifying reciving the EI interrupts, we need to hold the GPU in
very precise conditions (in terms of C0 cycles during the EI). If we
preempt the busy load to handle the heartbeat, this may perturb the busy
load causing us to miss the interrupt.

The other tests, while not as time sensitive, may also be slightly
perturbed, so apply the heartbeat protection across all the
measurements.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 59 ++++++++++++++++++++++++--
 1 file changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 0d7ed000aff0..9d9c8e0aa2e7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -6,6 +6,7 @@
 #include <linux/pm_qos.h>
 #include <linux/sort.h>
 
+#include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt_pm.h"
@@ -18,6 +19,26 @@
 /* Try to isolate the impact of cstates from determing frequency response */
 #define CPU_LATENCY 0 /* -1 to disable pm_qos, 0 to disable cstates */
 
+static unsigned long engine_heartbeat_disable(struct intel_engine_cs *engine)
+{
+	unsigned long old;
+
+	old = fetch_and_zero(&engine->props.heartbeat_interval_ms);
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+
+	return old;
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine,
+				    unsigned long saved)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms = saved;
+}
+
 static void dummy_rps_work(struct work_struct *wrk)
 {
 }
@@ -218,6 +239,7 @@ int live_rps_control(void *arg)
 
 	intel_gt_pm_get(gt);
 	for_each_engine(engine, gt, id) {
+		unsigned long saved_heartbeat;
 		struct i915_request *rq;
 		ktime_t min_dt, max_dt;
 		int f, limit;
@@ -226,6 +248,8 @@ int live_rps_control(void *arg)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
+		saved_heartbeat = engine_heartbeat_disable(engine);
+
 		rq = igt_spinner_create_request(&spin,
 						engine->kernel_context,
 						MI_NOOP);
@@ -240,6 +264,7 @@ int live_rps_control(void *arg)
 			pr_err("%s: RPS spinner did not start\n",
 			       engine->name);
 			igt_spinner_end(&spin);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			intel_gt_set_wedged(engine->gt);
 			err = -EIO;
 			break;
@@ -249,6 +274,7 @@ int live_rps_control(void *arg)
 			pr_err("%s: could not set minimum frequency [%x], only %x!\n",
 			       engine->name, rps->min_freq, read_cagf(rps));
 			igt_spinner_end(&spin);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			show_pstate_limits(rps);
 			err = -EINVAL;
 			break;
@@ -265,6 +291,7 @@ int live_rps_control(void *arg)
 			pr_err("%s: could not restore minimum frequency [%x], only %x!\n",
 			       engine->name, rps->min_freq, read_cagf(rps));
 			igt_spinner_end(&spin);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			show_pstate_limits(rps);
 			err = -EINVAL;
 			break;
@@ -279,6 +306,7 @@ int live_rps_control(void *arg)
 		min_dt = ktime_sub(ktime_get(), min_dt);
 
 		igt_spinner_end(&spin);
+		engine_heartbeat_enable(engine, saved_heartbeat);
 
 		pr_info("%s: range:[%x:%uMHz, %x:%uMHz] limit:[%x:%uMHz], %x:%x response %lluns:%lluns\n",
 			engine->name,
@@ -441,6 +469,7 @@ int live_rps_frequency_cs(void *arg)
 	rps->work.func = dummy_rps_work;
 
 	for_each_engine(engine, gt, id) {
+		unsigned long saved_heartbeat;
 		struct i915_request *rq;
 		struct i915_vma *vma;
 		u32 *cancel, *cntr;
@@ -449,11 +478,14 @@ int live_rps_frequency_cs(void *arg)
 			int freq;
 		} min, max;
 
+		saved_heartbeat = engine_heartbeat_disable(engine);
+
 		vma = create_spin_counter(engine,
 					  engine->kernel_context->vm, false,
 					  &cancel, &cntr);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			break;
 		}
 
@@ -533,6 +565,7 @@ int live_rps_frequency_cs(void *arg)
 		i915_vma_unpin(vma);
 		i915_vma_put(vma);
 
+		engine_heartbeat_enable(engine, saved_heartbeat);
 		if (igt_flush_test(gt->i915))
 			err = -EIO;
 		if (err)
@@ -578,6 +611,7 @@ int live_rps_frequency_srm(void *arg)
 	rps->work.func = dummy_rps_work;
 
 	for_each_engine(engine, gt, id) {
+		unsigned long saved_heartbeat;
 		struct i915_request *rq;
 		struct i915_vma *vma;
 		u32 *cancel, *cntr;
@@ -586,11 +620,14 @@ int live_rps_frequency_srm(void *arg)
 			int freq;
 		} min, max;
 
+		saved_heartbeat = engine_heartbeat_disable(engine);
+
 		vma = create_spin_counter(engine,
 					  engine->kernel_context->vm, true,
 					  &cancel, &cntr);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			break;
 		}
 
@@ -669,6 +706,7 @@ int live_rps_frequency_srm(void *arg)
 		i915_vma_unpin(vma);
 		i915_vma_put(vma);
 
+		engine_heartbeat_enable(engine, saved_heartbeat);
 		if (igt_flush_test(gt->i915))
 			err = -EIO;
 		if (err)
@@ -858,12 +896,16 @@ int live_rps_interrupt(void *arg)
 	for_each_engine(engine, gt, id) {
 		/* Keep the engine busy with a spinner; expect an UP! */
 		if (pm_events & GEN6_PM_RP_UP_THRESHOLD) {
+			unsigned long saved_heartbeat;
+
 			intel_gt_pm_wait_for_idle(engine->gt);
 			GEM_BUG_ON(rps->active);
 
-			intel_engine_pm_get(engine);
+			saved_heartbeat = engine_heartbeat_disable(engine);
+
 			err = __rps_up_interrupt(rps, engine, &spin);
-			intel_engine_pm_put(engine);
+
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			if (err)
 				goto out;
 
@@ -872,13 +914,15 @@ int live_rps_interrupt(void *arg)
 
 		/* Keep the engine awake but idle and check for DOWN */
 		if (pm_events & GEN6_PM_RP_DOWN_THRESHOLD) {
-			intel_engine_pm_get(engine);
+			unsigned long saved_heartbeat;
+
+			saved_heartbeat = engine_heartbeat_disable(engine);
 			intel_rc6_disable(&gt->rc6);
 
 			err = __rps_down_interrupt(rps, engine);
 
 			intel_rc6_enable(&gt->rc6);
-			intel_engine_pm_put(engine);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			if (err)
 				goto out;
 		}
@@ -954,6 +998,7 @@ int live_rps_power(void *arg)
 	rps->work.func = dummy_rps_work;
 
 	for_each_engine(engine, gt, id) {
+		unsigned long saved_heartbeat;
 		struct i915_request *rq;
 		struct {
 			u64 power;
@@ -963,10 +1008,13 @@ int live_rps_power(void *arg)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
+		saved_heartbeat = engine_heartbeat_disable(engine);
+
 		rq = igt_spinner_create_request(&spin,
 						engine->kernel_context,
 						MI_NOOP);
 		if (IS_ERR(rq)) {
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			err = PTR_ERR(rq);
 			break;
 		}
@@ -976,6 +1024,8 @@ int live_rps_power(void *arg)
 		if (!igt_wait_for_spinner(&spin, rq)) {
 			pr_err("%s: RPS spinner did not start\n",
 			       engine->name);
+			igt_spinner_end(&spin);
+			engine_heartbeat_enable(engine, saved_heartbeat);
 			intel_gt_set_wedged(engine->gt);
 			err = -EIO;
 			break;
@@ -988,6 +1038,7 @@ int live_rps_power(void *arg)
 		min.power = measure_power_at(rps, &min.freq);
 
 		igt_spinner_end(&spin);
+		engine_heartbeat_enable(engine, saved_heartbeat);
 
 		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
 			engine->name,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
