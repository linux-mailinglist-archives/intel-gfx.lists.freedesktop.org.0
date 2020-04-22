Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972831B33DC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 02:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4407A6E040;
	Wed, 22 Apr 2020 00:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646EB6E040
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 00:17:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20977451-1500050 
 for multiple; Wed, 22 Apr 2020 01:17:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 01:17:01 +0100
Message-Id: <20200422001703.1697-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Prefer soft-rc6 over RPS
 DOWN_TIMEOUT
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

The RPS DOWN_TIMEOUT interrupt is signaled after a period of rc6, and
upon receipt of that interrupt we reprogram the GPU clocks down to the
next idle notch [to help convserve power during rc6]. However, on
execlists, we benefit from soft-rc6 immediately parking the GPU and
setting idle frequencies upon idling [within a jiffie], and here the
interrupt prevents us from restarting from our last frequency.

In the process, we can simply opt for a static pm_events mask and rely
on the enable/disable interrupts to flush the worker on parking.

This will reduce the amount of oscillation observed during steady
workloads with microsleeps, as each time the rc6 timeout occurs we
immediately follow with a waitboost for a dropped frame.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 41 +++++++++++++----------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4dcfae16a7ce..785cd58fba76 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -57,7 +57,7 @@ static u32 rps_pm_mask(struct intel_rps *rps, u8 val)
 	if (val < rps->max_freq_softlimit)
 		mask |= GEN6_PM_RP_UP_EI_EXPIRED | GEN6_PM_RP_UP_THRESHOLD;
 
-	mask &= READ_ONCE(rps->pm_events);
+	mask &= rps->pm_events;
 
 	return rps_pm_sanitize_mask(rps, ~mask);
 }
@@ -70,19 +70,9 @@ static void rps_reset_ei(struct intel_rps *rps)
 static void rps_enable_interrupts(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
-	u32 events;
 
 	rps_reset_ei(rps);
 
-	if (IS_VALLEYVIEW(gt->i915))
-		/* WaGsvRC0ResidencyMethod:vlv */
-		events = GEN6_PM_RP_UP_EI_EXPIRED;
-	else
-		events = (GEN6_PM_RP_UP_THRESHOLD |
-			  GEN6_PM_RP_DOWN_THRESHOLD |
-			  GEN6_PM_RP_DOWN_TIMEOUT);
-	WRITE_ONCE(rps->pm_events, events);
-
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
 	spin_unlock_irq(&gt->irq_lock);
@@ -120,8 +110,6 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
 
-	WRITE_ONCE(rps->pm_events, 0);
-
 	intel_uncore_write(gt->uncore,
 			   GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
 
@@ -919,12 +907,10 @@ static bool gen9_rps_enable(struct intel_rps *rps)
 		intel_uncore_write_fw(uncore, GEN6_RC_VIDEO_FREQ,
 				      GEN9_FREQUENCY(rps->rp1_freq));
 
-	/* 1 second timeout */
-	intel_uncore_write_fw(uncore, GEN6_RP_DOWN_TIMEOUT,
-			      GT_INTERVAL_FROM_US(i915, 1000000));
-
 	intel_uncore_write_fw(uncore, GEN6_RP_IDLE_HYSTERSIS, 0xa);
 
+	rps->pm_events = GEN6_PM_RP_UP_THRESHOLD | GEN6_PM_RP_DOWN_THRESHOLD;
+
 	return rps_reset(rps);
 }
 
@@ -935,12 +921,10 @@ static bool gen8_rps_enable(struct intel_rps *rps)
 	intel_uncore_write_fw(uncore, GEN6_RC_VIDEO_FREQ,
 			      HSW_FREQUENCY(rps->rp1_freq));
 
-	/* NB: Docs say 1s, and 1000000 - which aren't equivalent */
-	intel_uncore_write_fw(uncore, GEN6_RP_DOWN_TIMEOUT,
-			      100000000 / 128); /* 1 second timeout */
-
 	intel_uncore_write_fw(uncore, GEN6_RP_IDLE_HYSTERSIS, 10);
 
+	rps->pm_events = GEN6_PM_RP_UP_THRESHOLD | GEN6_PM_RP_DOWN_THRESHOLD;
+
 	return rps_reset(rps);
 }
 
@@ -952,6 +936,10 @@ static bool gen6_rps_enable(struct intel_rps *rps)
 	intel_uncore_write_fw(uncore, GEN6_RP_DOWN_TIMEOUT, 50000);
 	intel_uncore_write_fw(uncore, GEN6_RP_IDLE_HYSTERSIS, 10);
 
+	rps->pm_events = (GEN6_PM_RP_UP_THRESHOLD |
+			  GEN6_PM_RP_DOWN_THRESHOLD |
+			  GEN6_PM_RP_DOWN_TIMEOUT);
+
 	return rps_reset(rps);
 }
 
@@ -1037,6 +1025,10 @@ static bool chv_rps_enable(struct intel_rps *rps)
 			      GEN6_RP_UP_BUSY_AVG |
 			      GEN6_RP_DOWN_IDLE_AVG);
 
+	rps->pm_events = (GEN6_PM_RP_UP_THRESHOLD |
+			  GEN6_PM_RP_DOWN_THRESHOLD |
+			  GEN6_PM_RP_DOWN_TIMEOUT);
+
 	/* Setting Fixed Bias */
 	vlv_punit_get(i915);
 
@@ -1135,6 +1127,9 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 			      GEN6_RP_UP_BUSY_AVG |
 			      GEN6_RP_DOWN_IDLE_CONT);
 
+	/* WaGsvRC0ResidencyMethod:vlv */
+	rps->pm_events = GEN6_PM_RP_UP_EI_EXPIRED;
+
 	vlv_punit_get(i915);
 
 	/* Setting Fixed Bias */
@@ -1469,7 +1464,7 @@ static void rps_work(struct work_struct *work)
 	u32 pm_iir = 0;
 
 	spin_lock_irq(&gt->irq_lock);
-	pm_iir = fetch_and_zero(&rps->pm_iir) & READ_ONCE(rps->pm_events);
+	pm_iir = fetch_and_zero(&rps->pm_iir) & rps->pm_events;
 	client_boost = atomic_read(&rps->num_waiters);
 	spin_unlock_irq(&gt->irq_lock);
 
@@ -1572,7 +1567,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 	struct intel_gt *gt = rps_to_gt(rps);
 	u32 events;
 
-	events = pm_iir & READ_ONCE(rps->pm_events);
+	events = pm_iir & rps->pm_events;
 	if (events) {
 		spin_lock(&gt->irq_lock);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
