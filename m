Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E651AD1B0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 23:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D206B6EB6F;
	Thu, 16 Apr 2020 21:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0487E6EB6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 21:06:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20926622-1500050 
 for multiple; Thu, 16 Apr 2020 22:05:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 22:05:50 +0100
Message-Id: <20200416210553.10860-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200416210553.10860-1-chris@chris-wilson.co.uk>
References: <20200416210553.10860-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Trace RPS events
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

Add tracek to the RPS events (interrupts, worker, enabling, threshold
selection, frequency setting), so that if we have to debug reticent HW
we have some traces to start from.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 47 ++++++++++++++++++++++++++---
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4dcfae16a7ce..42275e25ea1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -82,6 +82,8 @@ static void rps_enable_interrupts(struct intel_rps *rps)
 			  GEN6_PM_RP_DOWN_THRESHOLD |
 			  GEN6_PM_RP_DOWN_TIMEOUT);
 	WRITE_ONCE(rps->pm_events, events);
+	GT_TRACE(gt, "interrupts:on rps->pm_events: %x, rps_pm_mask:%x\n",
+		 events, rps_pm_mask(rps, rps->last_freq));
 
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
@@ -140,6 +142,7 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 	cancel_work_sync(&rps->work);
 
 	rps_reset_interrupts(rps);
+	GT_TRACE(gt, "interrupts:off\n");
 }
 
 static const struct cparams {
@@ -581,6 +584,10 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 	if (IS_VALLEYVIEW(i915))
 		goto skip_hw_write;
 
+	GT_TRACE(rps_to_gt(rps),
+		 "changing power mode [%d], up %d%% @ %dus, down %d%% @ %dus\n",
+		 new_power, threshold_up, ei_up, threshold_down, ei_down);
+
 	set(uncore, GEN6_RP_UP_EI, GT_INTERVAL_FROM_US(i915, ei_up));
 	set(uncore, GEN6_RP_UP_THRESHOLD,
 	    GT_INTERVAL_FROM_US(i915, ei_up * threshold_up / 100));
@@ -645,6 +652,8 @@ static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
 
 void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 {
+	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n", yesno(interactive));
+
 	mutex_lock(&rps->power.mutex);
 	if (interactive) {
 		if (!rps->power.interactive++ && READ_ONCE(rps->active))
@@ -672,6 +681,9 @@ static int gen6_rps_set(struct intel_rps *rps, u8 val)
 			 GEN6_AGGRESSIVE_TURBO);
 	set(uncore, GEN6_RPNSWREQ, swreq);
 
+	GT_TRACE(rps_to_gt(rps), "set val:%x, freq:%d, swreq:%x\n",
+		 val, intel_gpu_freq(rps, val), swreq);
+
 	return 0;
 }
 
@@ -684,6 +696,9 @@ static int vlv_rps_set(struct intel_rps *rps, u8 val)
 	err = vlv_punit_write(i915, PUNIT_REG_GPU_FREQ_REQ, val);
 	vlv_punit_put(i915);
 
+	GT_TRACE(rps_to_gt(rps), "set val:%x, freq:%d\n",
+		 val, intel_gpu_freq(rps, val));
+
 	return err;
 }
 
@@ -717,6 +732,8 @@ void intel_rps_unpark(struct intel_rps *rps)
 	if (!rps->enabled)
 		return;
 
+	GT_TRACE(rps_to_gt(rps), "unpark:%x\n", rps->cur_freq);
+
 	/*
 	 * Use the user's desired frequency as a guide, but for better
 	 * performance, jump directly to RPe as our starting frequency.
@@ -784,6 +801,8 @@ void intel_rps_park(struct intel_rps *rps)
 	 */
 	rps->cur_freq =
 		max_t(int, round_down(rps->cur_freq - 1, 2), rps->min_freq);
+
+	GT_TRACE(rps_to_gt(rps), "park:%x\n", rps->cur_freq);
 }
 
 void intel_rps_boost(struct i915_request *rq)
@@ -800,6 +819,9 @@ void intel_rps_boost(struct i915_request *rq)
 	    !dma_fence_is_signaled_locked(&rq->fence)) {
 		set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
 
+		GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
+			 rq->fence.context, rq->fence.seqno);
+
 		if (!atomic_fetch_inc(&rps->num_waiters) &&
 		    READ_ONCE(rps->cur_freq) < rps->boost_freq)
 			schedule_work(&rps->work);
@@ -895,6 +917,7 @@ static void gen6_rps_init(struct intel_rps *rps)
 static bool rps_reset(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
+
 	/* force a reset */
 	rps->power.mode = -1;
 	rps->last_freq = -1;
@@ -1215,11 +1238,17 @@ void intel_rps_enable(struct intel_rps *rps)
 	if (!rps->enabled)
 		return;
 
-	drm_WARN_ON(&i915->drm, rps->max_freq < rps->min_freq);
-	drm_WARN_ON(&i915->drm, rps->idle_freq > rps->max_freq);
+	GT_TRACE(rps_to_gt(rps),
+		 "min:%x, max:%x, freq:[%d, %d]\n",
+		 rps->min_freq, rps->max_freq,
+		 intel_gpu_freq(rps, rps->min_freq),
+		 intel_gpu_freq(rps, rps->max_freq));
+
+	GEM_BUG_ON(rps->max_freq < rps->min_freq);
+	GEM_BUG_ON(rps->idle_freq > rps->max_freq);
 
-	drm_WARN_ON(&i915->drm, rps->efficient_freq < rps->min_freq);
-	drm_WARN_ON(&i915->drm, rps->efficient_freq > rps->max_freq);
+	GEM_BUG_ON(rps->efficient_freq < rps->min_freq);
+	GEM_BUG_ON(rps->efficient_freq > rps->max_freq);
 }
 
 static void gen6_rps_disable(struct intel_rps *rps)
@@ -1487,6 +1516,12 @@ static void rps_work(struct work_struct *work)
 	max = rps->max_freq_softlimit;
 	if (client_boost)
 		max = rps->max_freq;
+
+	GT_TRACE(gt,
+		 "pm_iir:%x, client_boost:%s, last:%d, cur:%x, min:%x, max:%x\n",
+		 pm_iir, yesno(client_boost),
+		 adj, new_freq, min, max);
+
 	if (client_boost && new_freq < rps->boost_freq) {
 		new_freq = rps->boost_freq;
 		adj = 0;
@@ -1561,6 +1596,8 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 	if (unlikely(!events))
 		return;
 
+	GT_TRACE(gt, "irq events:%x\n", events);
+
 	gen6_gt_pm_mask_irq(gt, events);
 
 	rps->pm_iir |= events;
@@ -1576,6 +1613,8 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 	if (events) {
 		spin_lock(&gt->irq_lock);
 
+		GT_TRACE(gt, "irq events:%x\n", events);
+
 		gen6_gt_pm_mask_irq(gt, events);
 		rps->pm_iir |= events;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
