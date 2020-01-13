Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEDE139018
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71ABA6E060;
	Mon, 13 Jan 2020 11:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE276E05C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 11:29:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19860274-1500050 
 for multiple; Mon, 13 Jan 2020 11:29:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 11:29:17 +0000
Message-Id: <20200113112917.1789952-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200113112917.1789952-1-chris@chris-wilson.co.uk>
References: <20200113112917.1789952-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Lift clearing GT wedged out of
 gt_sanitize
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

We only want to try and reset a wedged device on resume, not before
suspend, so lift the recovery out of the commont gt_sanitize().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 26241c9c9e38..5a174ec36310 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -138,17 +138,6 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 
-	/*
-	 * As we have just resumed the machine and woken the device up from
-	 * deep PCI sleep (presumably D3_cold), assume the HW has been reset
-	 * back to defaults, recovering from whatever wedged state we left it
-	 * in and so worth trying to use the device once more.
-	 */
-	if (intel_gt_is_wedged(gt))
-		intel_gt_unset_wedged(gt);
-
-	intel_uc_sanitize(&gt->uc);
-
 	for_each_engine(engine, gt, id)
 		if (engine->reset.prepare)
 			engine->reset.prepare(engine);
@@ -195,7 +184,19 @@ int intel_gt_resume(struct intel_gt *gt)
 	intel_gt_pm_get(gt);
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+
 	intel_rc6_sanitize(&gt->rc6);
+	intel_uc_sanitize(&gt->uc);
+
+	/*
+	 * As we have just resumed the machine and woken the device up from
+	 * deep PCI sleep (presumably D3_cold), assume the HW has been reset
+	 * back to defaults, recovering from whatever wedged state we left it
+	 * in and so worth trying to use the device once more.
+	 */
+	if (intel_gt_is_wedged(gt))
+		intel_gt_unset_wedged(gt);
+
 	gt_sanitize(gt, true);
 	if (intel_gt_is_wedged(gt)) {
 		err = -EIO;
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
