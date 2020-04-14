Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F381A8455
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D9A89C68;
	Tue, 14 Apr 2020 16:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370CD89C68
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:14:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20897747-1500050 
 for multiple; Tue, 14 Apr 2020 17:14:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 17:14:22 +0100
Message-Id: <20200414161423.23830-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Try to smooth RPS spikes
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

By the time we respond to the RPS interrupt [inside a worker], the GPU
may be running a different workload. As we look to make the evalution
intervals shorter, these spikes are more likely to okay. Let's try to
smooth over the spikes in the workload by comparing the EI interrupt
[up/down events] with the most recently completed EI; if both say up,
then increase the clocks, if they disagree stay the same. In principle,
this means we now take 2 up EI to go increase into the next bin, and
similary 2 down EI to decrease. However, if the worker runs fast enough,
the previous EI in the registers will be the same as triggered the
interrupt, so responsiveness remains unaffect. [Under the current scheme
where EI are on the order of 10ms, it is likely that this is true and we
compare the interrupt with the EI that caused it.]

As usual, Valleyview just likes to be different; and there since we are
manually evaluating the threshold, we cannot sample the previous EI
registers.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1698
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 59 ++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 86110458e2a7..367132092bed 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1416,6 +1416,11 @@ static void vlv_c0_read(struct intel_uncore *uncore, struct intel_rps_ei *ei)
 	ei->media_c0 = intel_uncore_read(uncore, VLV_MEDIA_C0_COUNT);
 }
 
+static bool vlv_manual_ei(u32 pm_iir)
+{
+	return pm_iir & GEN6_PM_RP_UP_EI_EXPIRED;
+}
+
 static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
@@ -1423,7 +1428,7 @@ static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 	struct intel_rps_ei now;
 	u32 events = 0;
 
-	if ((pm_iir & GEN6_PM_RP_UP_EI_EXPIRED) == 0)
+	if (!vlv_manual_ei(pm_iir))
 		return 0;
 
 	vlv_c0_read(uncore, &now);
@@ -1456,6 +1461,37 @@ static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 	return events;
 }
 
+static bool __confirm_ei(struct intel_rps *rps,
+			 i915_reg_t ei_sample,
+			 i915_reg_t ei_threshold)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 threshold, sample;
+
+	sample = intel_uncore_read(uncore, ei_sample);
+	threshold = intel_uncore_read(uncore, ei_threshold);
+
+	sample &= GEN6_CURBSYTAVG_MASK;
+
+	return sample > threshold;
+}
+
+static bool confirm_up(struct intel_rps *rps, u32 pm_iir)
+{
+	if (vlv_manual_ei(pm_iir))
+		return true;
+
+	return __confirm_ei(rps, GEN6_RP_PREV_UP, GEN6_RP_UP_THRESHOLD);
+}
+
+static bool confirm_down(struct intel_rps *rps, u32 pm_iir)
+{
+	if (vlv_manual_ei(pm_iir))
+		return true;
+
+	return !__confirm_ei(rps, GEN6_RP_PREV_UP, GEN6_RP_UP_THRESHOLD);
+}
+
 static void rps_work(struct work_struct *work)
 {
 	struct intel_rps *rps = container_of(work, typeof(*rps), work);
@@ -1484,10 +1520,11 @@ static void rps_work(struct work_struct *work)
 	max = rps->max_freq_softlimit;
 	if (client_boost)
 		max = rps->max_freq;
-	if (client_boost && new_freq < rps->boost_freq) {
+	if (client_boost && new_freq <= rps->boost_freq) {
 		new_freq = rps->boost_freq;
 		adj = 0;
-	} else if (pm_iir & GEN6_PM_RP_UP_THRESHOLD) {
+	} else if (pm_iir & GEN6_PM_RP_UP_THRESHOLD &&
+		   confirm_up(rps, pm_iir)) {
 		if (adj > 0)
 			adj *= 2;
 		else /* CHV needs even encode values */
@@ -1497,13 +1534,15 @@ static void rps_work(struct work_struct *work)
 			adj = 0;
 	} else if (client_boost) {
 		adj = 0;
-	} else if (pm_iir & GEN6_PM_RP_DOWN_TIMEOUT) {
+	} else if (pm_iir & GEN6_PM_RP_DOWN_TIMEOUT &&
+		   confirm_down(rps, pm_iir)) {
 		if (rps->cur_freq > rps->efficient_freq)
 			new_freq = rps->efficient_freq;
 		else if (rps->cur_freq > rps->min_freq_softlimit)
 			new_freq = rps->min_freq_softlimit;
 		adj = 0;
-	} else if (pm_iir & GEN6_PM_RP_DOWN_THRESHOLD) {
+	} else if (pm_iir & GEN6_PM_RP_DOWN_THRESHOLD &&
+		   confirm_down(rps, pm_iir)) {
 		if (adj < 0)
 			adj *= 2;
 		else /* CHV needs even encode values */
@@ -1511,8 +1550,8 @@ static void rps_work(struct work_struct *work)
 
 		if (new_freq <= rps->min_freq_softlimit)
 			adj = 0;
-	} else { /* unknown event */
-		adj = 0;
+	} else { /* unknown event, or unwanted */
+		goto unlock;
 	}
 
 	rps->last_adj = adj;
@@ -1529,8 +1568,9 @@ static void rps_work(struct work_struct *work)
 	    (adj > 0 && rps->power.mode == LOW_POWER))
 		rps->last_adj = 0;
 
-	/* sysfs frequency interfaces may have snuck in while servicing the
-	 * interrupt
+	/*
+	 * sysfs frequency limits may have snuck in while
+	 * servicing the interrupt
 	 */
 	new_freq += adj;
 	new_freq = clamp_t(int, new_freq, min, max);
@@ -1540,6 +1580,7 @@ static void rps_work(struct work_struct *work)
 		rps->last_adj = 0;
 	}
 
+unlock:
 	mutex_unlock(&rps->lock);
 
 out:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
