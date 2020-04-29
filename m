Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 783C41BD9BA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F876EE79;
	Wed, 29 Apr 2020 10:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177F56EE73
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:35:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21056674-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 11:35:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 11:35:34 +0100
Message-Id: <20200429103535.27781-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429103535.27781-1-chris@chris-wilson.co.uk>
References: <20200429103535.27781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915/gt: Apply the aggressive downclocking
 to parking
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

We treat parking as a manual RPS timeout event, and downclock the GPU
for the next unpark and batch execution. However, having restored the
aggressive downclocking and observed that we have very light workloads
whose only interaction is through the manual parking events, carry over
the aggressive downclocking to the fake RPS events.

References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index f723a9cdd24e..a2ff98706fef 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -835,8 +835,6 @@ void intel_rps_unpark(struct intel_rps *rps)
 			    rps->min_freq_softlimit,
 			    rps->max_freq_softlimit));
 
-	rps->last_adj = 0;
-
 	mutex_unlock(&rps->lock);
 
 	rps->pm_iir = 0;
@@ -851,6 +849,8 @@ void intel_rps_unpark(struct intel_rps *rps)
 
 void intel_rps_park(struct intel_rps *rps)
 {
+	int adj;
+
 	if (!intel_rps_clear_active(rps))
 		return;
 
@@ -889,8 +889,13 @@ void intel_rps_park(struct intel_rps *rps)
 	 * (Note we accommodate Cherryview's limitation of only using an
 	 * even bin by applying it to all.)
 	 */
-	rps->cur_freq =
-		max_t(int, round_down(rps->cur_freq - 1, 2), rps->min_freq);
+	adj = rps->last_adj;
+	if (adj < 0)
+		adj *= 2;
+	else /* CHV needs even encode values */
+		adj = -2;
+	rps->last_adj = adj;
+	rps->cur_freq = max_t(int, rps->cur_freq + adj, rps->min_freq);
 
 	GT_TRACE(rps_to_gt(rps), "park:%x\n", rps->cur_freq);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
