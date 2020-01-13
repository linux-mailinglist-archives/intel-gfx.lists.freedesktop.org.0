Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F7139378
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284A689EAE;
	Mon, 13 Jan 2020 14:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D0789E9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:17:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19862433-1500050 
 for multiple; Mon, 13 Jan 2020 14:16:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 14:16:53 +0000
Message-Id: <20200113141653.1868621-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200113140715.1868017-1-chris@chris-wilson.co.uk>
References: <20200113140715.1868017-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: More proactive timeline retirement
 before new requests
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

Currently, we only retire the oldest request on the timeline before
allocating the next, but only if there is a spare request. However,
since we rearranged the locking, e.g.  commit df9f85d8582e ("drm/i915:
Serialise i915_active_fence_set() with itself"), we no longer benefit
from keeping the active chain intact underneath the struct_mutex. As
such, retire all completed requests in the client's timeline before
creating the next, trying to keep our memory and resource usage tight
and ideally only penalising the heavy users.

v2: Keep a retire after submission to try and keep the amount of work
before the next submission to a minimum.

References: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 57 +++++++----------------------
 1 file changed, 13 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 9ed0d3bc7249..70f5010e89f5 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -556,31 +556,20 @@ static void retire_requests(struct intel_timeline *tl)
 static noinline struct i915_request *
 request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
 {
-	struct i915_request *rq;
-
-	if (list_empty(&tl->requests))
-		goto out;
-
 	if (!gfpflags_allow_blocking(gfp))
-		goto out;
+		return NULL;
 
-	/* Move our oldest request to the slab-cache (if not in use!) */
-	rq = list_first_entry(&tl->requests, typeof(*rq), link);
-	i915_request_retire(rq);
+	if (!list_empty(&tl->requests)) {
+		struct i915_request *rq;
 
-	rq = kmem_cache_alloc(global.slab_requests,
-			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
-	if (rq)
-		return rq;
+		/* Ratelimit ourselves to prevent oom from malicious clients */
+		rq = list_last_entry(&tl->requests, typeof(*rq), link);
+		cond_synchronize_rcu(rq->rcustate);
 
-	/* Ratelimit ourselves to prevent oom from malicious clients */
-	rq = list_last_entry(&tl->requests, typeof(*rq), link);
-	cond_synchronize_rcu(rq->rcustate);
-
-	/* Retire our old requests in the hope that we free some */
-	retire_requests(tl);
+		/* Retire our old requests in the hope that we free some */
+		retire_requests(tl);
+	}
 
-out:
 	return kmem_cache_alloc(global.slab_requests, gfp);
 }
 
@@ -739,9 +728,7 @@ i915_request_create(struct intel_context *ce)
 		return ERR_CAST(tl);
 
 	/* Move our oldest request to the slab-cache (if not in use!) */
-	rq = list_first_entry(&tl->requests, typeof(*rq), link);
-	if (!list_is_last(&rq->link, &tl->requests))
-		i915_request_retire(rq);
+	retire_requests(tl);
 
 	intel_context_enter(ce);
 	rq = __i915_request_create(ce, GFP_KERNEL);
@@ -1344,27 +1331,9 @@ void i915_request_add(struct i915_request *rq)
 	__i915_request_queue(rq, &attr);
 	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
 
-	/*
-	 * In typical scenarios, we do not expect the previous request on
-	 * the timeline to be still tracked by timeline->last_request if it
-	 * has been completed. If the completed request is still here, that
-	 * implies that request retirement is a long way behind submission,
-	 * suggesting that we haven't been retiring frequently enough from
-	 * the combination of retire-before-alloc, waiters and the background
-	 * retirement worker. So if the last request on this timeline was
-	 * already completed, do a catch up pass, flushing the retirement queue
-	 * up to this client. Since we have now moved the heaviest operations
-	 * during retirement onto secondary workers, such as freeing objects
-	 * or contexts, retiring a bunch of requests is mostly list management
-	 * (and cache misses), and so we should not be overly penalizing this
-	 * client by performing excess work, though we may still performing
-	 * work on behalf of others -- but instead we should benefit from
-	 * improved resource management. (Well, that's the theory at least.)
-	 */
-	if (prev &&
-	    i915_request_completed(prev) &&
-	    rcu_access_pointer(prev->timeline) == tl)
-		i915_request_retire_upto(prev);
+	/* Try to clean up the client's timeline after submitting the request */
+	if (prev)
+		retire_requests(tl);
 
 	mutex_unlock(&tl->mutex);
 }
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
