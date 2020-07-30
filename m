Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3637A232F9F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AFC6E8AE;
	Thu, 30 Jul 2020 09:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0E588E7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:38:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21979068-1500050 
 for multiple; Thu, 30 Jul 2020 10:38:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:37:55 +0100
Message-Id: <20200730093756.16737-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/21] drm/i915: Drop i915_request.lock
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
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
index e6a00eea0631..2a43e216e0d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -889,17 +889,15 @@ void intel_rps_park(struct intel_rps *rps)
 
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
@@ -910,7 +908,6 @@ void intel_rps_boost(struct i915_request *rq)
 
 		atomic_inc(&rps->boosts);
 	}
-	spin_unlock_irqrestore(&rq->lock, flags);
 }
 
 int intel_rps_set(struct intel_rps *rps, u8 val)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 247e021203c2..43614d8fa18d 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -306,10 +306,8 @@ bool i915_request_retire(struct i915_request *rq)
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
