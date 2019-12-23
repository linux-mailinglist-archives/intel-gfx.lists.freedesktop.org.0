Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8689B129AE2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9A689930;
	Mon, 23 Dec 2019 20:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AD289930
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 20:44:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19676352-1500050 
 for multiple; Mon, 23 Dec 2019 20:44:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 20:44:11 +0000
Message-Id: <20191223204411.2355304-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
References: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Convert the final GEM_TRACE to
 GT_TRACE and co
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

Convert the few remaining GEM_TRACE() used for debugging over to the
appropriate GT_TRACE or RQ_TRACE.

References: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 1c51296646e0..5cade72c7701 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -147,11 +147,7 @@ static void mark_innocent(struct i915_request *rq)
 
 void __i915_request_reset(struct i915_request *rq, bool guilty)
 {
-	GEM_TRACE("%s rq=%llx:%lld, guilty? %s\n",
-		  rq->engine->name,
-		  rq->fence.context,
-		  rq->fence.seqno,
-		  yesno(guilty));
+	RQ_TRACE(rq, "guilty? %s\n", yesno(guilty));
 
 	GEM_BUG_ON(i915_request_completed(rq));
 
@@ -625,7 +621,7 @@ int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	 */
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	for (retry = 0; ret == -ETIMEDOUT && retry < retries; retry++) {
-		GEM_TRACE("engine_mask=%x\n", engine_mask);
+		GT_TRACE(gt, "engine_mask=%x\n", engine_mask);
 		preempt_disable();
 		ret = reset(gt, engine_mask, retry);
 		preempt_enable();
@@ -785,8 +781,7 @@ static void nop_submit_request(struct i915_request *request)
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
 
-	GEM_TRACE("%s fence %llx:%lld -> -EIO\n",
-		  engine->name, request->fence.context, request->fence.seqno);
+	RQ_TRACE(request, "-EIO\n");
 	dma_fence_set_error(&request->fence, -EIO);
 
 	spin_lock_irqsave(&engine->active.lock, flags);
@@ -813,7 +808,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 			intel_engine_dump(engine, &p, "%s\n", engine->name);
 	}
 
-	GEM_TRACE("start\n");
+	GT_TRACE(gt, "start\n");
 
 	/*
 	 * First, stop submission to hw, but do not yet complete requests by
@@ -844,7 +839,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 
 	reset_finish(gt, awake);
 
-	GEM_TRACE("end\n");
+	GT_TRACE(gt, "end\n");
 }
 
 void intel_gt_set_wedged(struct intel_gt *gt)
@@ -870,7 +865,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 	if (test_bit(I915_WEDGED_ON_INIT, &gt->reset.flags))
 		return false;
 
-	GEM_TRACE("start\n");
+	GT_TRACE(gt, "start\n");
 
 	/*
 	 * Before unwedging, make sure that all pending operations
@@ -932,7 +927,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 	 */
 	intel_engines_reset_default_submission(gt);
 
-	GEM_TRACE("end\n");
+	GT_TRACE(gt, "end\n");
 
 	smp_mb__before_atomic(); /* complete takeover before enabling execbuf */
 	clear_bit(I915_WEDGED, &gt->reset.flags);
@@ -1007,7 +1002,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	intel_engine_mask_t awake;
 	int ret;
 
-	GEM_TRACE("flags=%lx\n", gt->reset.flags);
+	GT_TRACE(gt, "flags=%lx\n", gt->reset.flags);
 
 	might_sleep();
 	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
