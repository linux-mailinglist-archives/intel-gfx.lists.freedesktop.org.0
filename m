Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846541814BB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95006E94D;
	Wed, 11 Mar 2020 09:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0446E94D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:26:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20518591-1500050 
 for multiple; Wed, 11 Mar 2020 09:26:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:26:22 +0000
Message-Id: <20200311092624.10012-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Pull checking rps->pm_events
 under the irq_lock
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

Avoid angering kcsan by serialising the read of the pm_events with the
write in rps_disable_interrupts.

[ 6268.713419] BUG: KCSAN: data-race in intel_rps_park [i915] / rps_work [i915]
[ 6268.713437]
[ 6268.713449] write to 0xffff8881eda8efac of 4 bytes by task 1127 on cpu 3:
[ 6268.713680]  intel_rps_park+0x136/0x260 [i915]
[ 6268.713905]  __gt_park+0x61/0xa0 [i915]
[ 6268.714128]  ____intel_wakeref_put_last+0x42/0x90 [i915]
[ 6268.714352]  __intel_wakeref_put_work+0xd3/0xf0 [i915]
[ 6268.714369]  process_one_work+0x3b1/0x690
[ 6268.714384]  worker_thread+0x80/0x670
[ 6268.714398]  kthread+0x19a/0x1e0
[ 6268.714412]  ret_from_fork+0x1f/0x30
[ 6268.714423]
[ 6268.714435] read to 0xffff8881eda8efac of 4 bytes by task 950 on cpu 2:
[ 6268.714664]  rps_work+0xc2/0x680 [i915]
[ 6268.714679]  process_one_work+0x3b1/0x690
[ 6268.714693]  worker_thread+0x80/0x670
[ 6268.714707]  kthread+0x19a/0x1e0
[ 6268.714720]  ret_from_fork+0x1f/0x30

v2: Mark all reads and writes of rpm->pm_events.

The flow of enabling/disabling rps is stronly ordered, so the writes and
interrupt generation are also strongly ordered -- just this may not be
visible to the compiler, so provide annotations.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 1b1cda2438d1..87f9638d2cbf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -57,7 +57,7 @@ static u32 rps_pm_mask(struct intel_rps *rps, u8 val)
 	if (val < rps->max_freq_softlimit)
 		mask |= GEN6_PM_RP_UP_EI_EXPIRED | GEN6_PM_RP_UP_THRESHOLD;
 
-	mask &= rps->pm_events;
+	mask &= READ_ONCE(rps->pm_events);
 
 	return rps_pm_sanitize_mask(rps, ~mask);
 }
@@ -70,17 +70,19 @@ static void rps_reset_ei(struct intel_rps *rps)
 static void rps_enable_interrupts(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
+	u32 events;
 
 	rps_reset_ei(rps);
 
 	if (IS_VALLEYVIEW(gt->i915))
 		/* WaGsvRC0ResidencyMethod:vlv */
-		rps->pm_events = GEN6_PM_RP_UP_EI_EXPIRED;
+		events = GEN6_PM_RP_UP_EI_EXPIRED;
 	else
-		rps->pm_events = (GEN6_PM_RP_UP_THRESHOLD |
-				  GEN6_PM_RP_DOWN_THRESHOLD |
-				  GEN6_PM_RP_DOWN_TIMEOUT);
+		events = (GEN6_PM_RP_UP_THRESHOLD |
+			  GEN6_PM_RP_DOWN_THRESHOLD |
+			  GEN6_PM_RP_DOWN_TIMEOUT);
 
+	WRITE_ONCE(rps->pm_events, events);
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
 	spin_unlock_irq(&gt->irq_lock);
@@ -117,8 +119,7 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
 
-	rps->pm_events = 0;
-
+	WRITE_ONCE(rps->pm_events, 0);
 	set(gt->uncore, GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
 
 	spin_lock_irq(&gt->irq_lock);
@@ -1459,12 +1460,12 @@ static void rps_work(struct work_struct *work)
 	u32 pm_iir = 0;
 
 	spin_lock_irq(&gt->irq_lock);
-	pm_iir = fetch_and_zero(&rps->pm_iir);
+	pm_iir = fetch_and_zero(&rps->pm_iir) & READ_ONCE(rps->pm_events);
 	client_boost = atomic_read(&rps->num_waiters);
 	spin_unlock_irq(&gt->irq_lock);
 
 	/* Make sure we didn't queue anything we're not going to process. */
-	if ((pm_iir & rps->pm_events) == 0 && !client_boost)
+	if (!pm_iir && !client_boost)
 		goto out;
 
 	mutex_lock(&rps->lock);
@@ -1560,11 +1561,15 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
+	u32 events;
 
-	if (pm_iir & rps->pm_events) {
+	events = pm_iir & READ_ONCE(rps->pm_events);
+	if (events) {
 		spin_lock(&gt->irq_lock);
-		gen6_gt_pm_mask_irq(gt, pm_iir & rps->pm_events);
-		rps->pm_iir |= pm_iir & rps->pm_events;
+
+		gen6_gt_pm_mask_irq(gt, events);
+		rps->pm_iir |= events;
+
 		schedule_work(&rps->work);
 		spin_unlock(&gt->irq_lock);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
