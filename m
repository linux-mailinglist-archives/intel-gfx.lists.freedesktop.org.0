Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E13125411
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 22:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFD989DA3;
	Wed, 18 Dec 2019 21:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE6589D83
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 21:06:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19625985-1500050 
 for multiple; Wed, 18 Dec 2019 21:05:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 21:05:44 +0000
Message-Id: <20191218210545.3975426-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Use non-forcewake writes for
 RPS
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

Use non-forcewaked writes to queue RPS register changes that will take
effect when the write buffer is flushed, rather than wake the mmio
device for immediate effect. This is so that we can avoid a slow
forcewake dance upon unparking, and at our irregular updates.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 66 ++++++++++++++---------------
 1 file changed, 32 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index eabd5e1a2b95..443d4ba3bbb7 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -37,6 +37,11 @@ static u32 rps_pm_sanitize_mask(struct intel_rps *rps, u32 mask)
 	return mask & ~rps->pm_intrmsk_mbz;
 }
 
+static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
+{
+	intel_uncore_write_fw(uncore, reg, val);
+}
+
 static u32 rps_pm_mask(struct intel_rps *rps, u8 val)
 {
 	u32 mask = 0;
@@ -78,8 +83,7 @@ static void rps_enable_interrupts(struct intel_rps *rps)
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
 	spin_unlock_irq(&gt->irq_lock);
 
-	intel_uncore_write(gt->uncore, GEN6_PMINTRMSK,
-			   rps_pm_mask(rps, rps->cur_freq));
+	set(gt->uncore, GEN6_PMINTRMSK, rps_pm_mask(rps, rps->cur_freq));
 }
 
 static void gen6_rps_reset_interrupts(struct intel_rps *rps)
@@ -113,8 +117,7 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 
 	rps->pm_events = 0;
 
-	intel_uncore_write(gt->uncore, GEN6_PMINTRMSK,
-			   rps_pm_sanitize_mask(rps, ~0u));
+	set(gt->uncore, GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
 
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_disable_irq(gt, GEN6_PM_RPS_EVENTS);
@@ -573,25 +576,21 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 	if (IS_VALLEYVIEW(i915))
 		goto skip_hw_write;
 
-	intel_uncore_write(uncore, GEN6_RP_UP_EI,
-			   GT_INTERVAL_FROM_US(i915, ei_up));
-	intel_uncore_write(uncore, GEN6_RP_UP_THRESHOLD,
-			   GT_INTERVAL_FROM_US(i915,
-					       ei_up * threshold_up / 100));
-
-	intel_uncore_write(uncore, GEN6_RP_DOWN_EI,
-			   GT_INTERVAL_FROM_US(i915, ei_down));
-	intel_uncore_write(uncore, GEN6_RP_DOWN_THRESHOLD,
-			   GT_INTERVAL_FROM_US(i915,
-					       ei_down * threshold_down / 100));
-
-	intel_uncore_write(uncore, GEN6_RP_CONTROL,
-			   (INTEL_GEN(i915) > 9 ? 0 : GEN6_RP_MEDIA_TURBO) |
-			   GEN6_RP_MEDIA_HW_NORMAL_MODE |
-			   GEN6_RP_MEDIA_IS_GFX |
-			   GEN6_RP_ENABLE |
-			   GEN6_RP_UP_BUSY_AVG |
-			   GEN6_RP_DOWN_IDLE_AVG);
+	set(uncore, GEN6_RP_UP_EI, GT_INTERVAL_FROM_US(i915, ei_up));
+	set(uncore, GEN6_RP_UP_THRESHOLD,
+	    GT_INTERVAL_FROM_US(i915, ei_up * threshold_up / 100));
+
+	set(uncore, GEN6_RP_DOWN_EI, GT_INTERVAL_FROM_US(i915, ei_down));
+	set(uncore, GEN6_RP_DOWN_THRESHOLD,
+	    GT_INTERVAL_FROM_US(i915, ei_down * threshold_down / 100));
+
+	set(uncore, GEN6_RP_CONTROL,
+	    (INTEL_GEN(i915) > 9 ? 0 : GEN6_RP_MEDIA_TURBO) |
+	    GEN6_RP_MEDIA_HW_NORMAL_MODE |
+	    GEN6_RP_MEDIA_IS_GFX |
+	    GEN6_RP_ENABLE |
+	    GEN6_RP_UP_BUSY_AVG |
+	    GEN6_RP_DOWN_IDLE_AVG);
 
 skip_hw_write:
 	rps->power.mode = new_power;
@@ -666,7 +665,7 @@ static int gen6_rps_set(struct intel_rps *rps, u8 val)
 		swreq = (GEN6_FREQUENCY(val) |
 			 GEN6_OFFSET(0) |
 			 GEN6_AGGRESSIVE_TURBO);
-	intel_uncore_write(uncore, GEN6_RPNSWREQ, swreq);
+	set(uncore, GEN6_RPNSWREQ, swreq);
 
 	return 0;
 }
@@ -790,7 +789,7 @@ void intel_rps_boost(struct i915_request *rq)
 
 int intel_rps_set(struct intel_rps *rps, u8 val)
 {
-	int err = 0;
+	int err;
 
 	lockdep_assert_held(&rps->lock);
 	GEM_BUG_ON(val > rps->max_freq);
@@ -798,6 +797,8 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 
 	if (rps->active) {
 		err = rps_set(rps, val);
+		if (err)
+			return err;
 
 		/*
 		 * Make sure we continue to get interrupts
@@ -806,18 +807,15 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 		if (INTEL_GEN(rps_to_i915(rps)) >= 6) {
 			struct intel_uncore *uncore = rps_to_uncore(rps);
 
-			intel_uncore_write(uncore, GEN6_RP_INTERRUPT_LIMITS,
-					   rps_limits(rps, val));
+			set(uncore,
+			    GEN6_RP_INTERRUPT_LIMITS, rps_limits(rps, val));
 
-			intel_uncore_write(uncore, GEN6_PMINTRMSK,
-					   rps_pm_mask(rps, val));
+			set(uncore, GEN6_PMINTRMSK, rps_pm_mask(rps, val));
 		}
 	}
 
-	if (err == 0)
-		rps->cur_freq = val;
-
-	return err;
+	rps->cur_freq = val;
+	return 0;
 }
 
 static void gen6_rps_init(struct intel_rps *rps)
@@ -1201,7 +1199,7 @@ void intel_rps_enable(struct intel_rps *rps)
 
 static void gen6_rps_disable(struct intel_rps *rps)
 {
-	intel_uncore_write(rps_to_uncore(rps), GEN6_RP_CONTROL, 0);
+	set(rps_to_uncore(rps), GEN6_RP_CONTROL, 0);
 }
 
 void intel_rps_disable(struct intel_rps *rps)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
