Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A572E64CE
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB8C89BFB;
	Mon, 28 Dec 2020 15:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37EA89A0F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448183-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:51:41 +0000
Message-Id: <20201228155229.9516-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/54] drm/i915: Drop i915_request.lock
 requirement for intel_rps_boost()
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

Since we use a flag within i915_request.flags to indicate when we have
boosted the request (so that we only apply the boost) once, this can be
used as the serialisation with i915_request_retire() to avoid having to
explicitly take the i915_request.lock which is more heavily contended.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 15 ++++++---------
 drivers/gpu/drm/i915/i915_request.c |  4 +---
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index f74d5e09e176..e1397b8d3586 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -917,17 +917,15 @@ void intel_rps_park(struct intel_rps *rps)
 
 void intel_rps_boost(struct i915_request *rq)
 {
-	struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
-	unsigned long flags;
-
-	if (i915_request_signaled(rq) || !intel_rps_is_active(rps))
+	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
 		return;
 
 	/* Serializes with i915_request_retire() */
-	spin_lock_irqsave(&rq->lock, flags);
-	if (!i915_request_has_waitboost(rq) &&
-	    !dma_fence_is_signaled_locked(&rq->fence)) {
-		set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
+	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
+		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
+
+		if (!intel_rps_is_active(rps))
+			return;
 
 		GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
 			 rq->fence.context, rq->fence.seqno);
@@ -938,7 +936,6 @@ void intel_rps_boost(struct i915_request *rq)
 
 		atomic_inc(&rps->boosts);
 	}
-	spin_unlock_irqrestore(&rq->lock, flags);
 }
 
 int intel_rps_set(struct intel_rps *rps, u8 val)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 2d2882344e40..2a7bad88038b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -307,10 +307,8 @@ bool i915_request_retire(struct i915_request *rq)
 		spin_unlock_irq(&rq->lock);
 	}
 
-	if (i915_request_has_waitboost(rq)) {
-		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
+	if (test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags))
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
-	}
 
 	/*
 	 * We only loosely track inflight requests across preemption,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
