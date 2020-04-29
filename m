Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEEF1BE939
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B456EB26;
	Wed, 29 Apr 2020 20:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FDD06EB26
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:54:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21063323-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 21:54:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 21:54:46 +0100
Message-Id: <20200429205446.3259-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205446.3259-1-chris@chris-wilson.co.uk>
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915/gt: Restore aggressive post-boost
 downclocking
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

We reduced the clocks slowly after a boost event based on the
observation that the smoothness of animations suffered. However, since
reducing the evalution intervals, we should be able to respond to the
rapidly fluctuating workload of a simple desktop animation and so
restore the more aggressive downclocking.

References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 1716d6d2c76f..c682355ec79e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1680,30 +1680,18 @@ static void rps_work(struct work_struct *work)
 		adj = 0;
 	}
 
-	rps->last_adj = adj;
-
 	/*
-	 * Limit deboosting and boosting to keep ourselves at the extremes
-	 * when in the respective power modes (i.e. slowly decrease frequencies
-	 * while in the HIGH_POWER zone and slowly increase frequencies while
-	 * in the LOW_POWER zone). On idle, we will hit the timeout and drop
-	 * to the next level quickly, and conversely if busy we expect to
-	 * hit a waitboost and rapidly switch into max power.
-	 */
-	if ((adj < 0 && rps->power.mode == HIGH_POWER) ||
-	    (adj > 0 && rps->power.mode == LOW_POWER))
-		rps->last_adj = 0;
-
-	/* sysfs frequency interfaces may have snuck in while servicing the
-	 * interrupt
+	 * sysfs frequency limits may have snuck in while
+	 * servicing the interrupt
 	 */
 	new_freq += adj;
 	new_freq = clamp_t(int, new_freq, min, max);
 
 	if (intel_rps_set(rps, new_freq)) {
 		drm_dbg(&i915->drm, "Failed to set new GPU frequency\n");
-		rps->last_adj = 0;
+		adj = 0;
 	}
+	rps->last_adj = adj;
 
 	mutex_unlock(&rps->lock);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
