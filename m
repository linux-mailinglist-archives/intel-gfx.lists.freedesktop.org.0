Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB4F1AAF07
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A0346EA3D;
	Wed, 15 Apr 2020 17:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBEB6EA3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:03:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20908948-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 18:03:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 18:03:18 +0100
Message-Id: <20200415170318.16771-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415170318.16771-1-chris@chris-wilson.co.uk>
References: <20200415170318.16771-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Update PMINTRMSK holding fw
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

If we use a non-forcewaked write to PMINTRMSK, it does not take effect
until much later, if at all, causing a loss of RPS interrupts and no GPU
reclocking, leaving the GPU running at the wrong frequency for long
periods of time.

Reported-by: Francisco Jerez <currojerez@riseup.net>
Suggested-by: Francisco Jerez <currojerez@riseup.net>
Fixes: 35cc7f32c298 ("drm/i915/gt: Use non-forcewake writes for RPS")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Francisco Jerez <currojerez@riseup.net>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
Cc: <stable@vger.kernel.org> # v5.6+
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index d19161c7a3d8..4dcfae16a7ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -81,13 +81,14 @@ static void rps_enable_interrupts(struct intel_rps *rps)
 		events = (GEN6_PM_RP_UP_THRESHOLD |
 			  GEN6_PM_RP_DOWN_THRESHOLD |
 			  GEN6_PM_RP_DOWN_TIMEOUT);
-
 	WRITE_ONCE(rps->pm_events, events);
+
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
 	spin_unlock_irq(&gt->irq_lock);
 
-	set(gt->uncore, GEN6_PMINTRMSK, rps_pm_mask(rps, rps->cur_freq));
+	intel_uncore_write(gt->uncore,
+			   GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));
 }
 
 static void gen6_rps_reset_interrupts(struct intel_rps *rps)
@@ -120,7 +121,9 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 	struct intel_gt *gt = rps_to_gt(rps);
 
 	WRITE_ONCE(rps->pm_events, 0);
-	set(gt->uncore, GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
+
+	intel_uncore_write(gt->uncore,
+			   GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
 
 	spin_lock_irq(&gt->irq_lock);
 	gen6_gt_pm_disable_irq(gt, GEN6_PM_RPS_EVENTS);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
