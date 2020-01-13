Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E29139308
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0AA89E38;
	Mon, 13 Jan 2020 14:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6252689E38
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:04:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19862272-1500050 
 for multiple; Mon, 13 Jan 2020 14:04:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 14:04:07 +0000
Message-Id: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Preemptive timeline retirement
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

References: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 44 ++++-------------------------
 1 file changed, 5 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 9ed0d3bc7249..5743edb50688 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -558,21 +558,12 @@ request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
 {
 	struct i915_request *rq;
 
-	if (list_empty(&tl->requests))
-		goto out;
+	if (gfpflags_allow_blocking(gfp))
+		return NULL;
 
-	if (!gfpflags_allow_blocking(gfp))
+	if (list_empty(&tl->requests))
 		goto out;
 
-	/* Move our oldest request to the slab-cache (if not in use!) */
-	rq = list_first_entry(&tl->requests, typeof(*rq), link);
-	i915_request_retire(rq);
-
-	rq = kmem_cache_alloc(global.slab_requests,
-			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
-	if (rq)
-		return rq;
-
 	/* Ratelimit ourselves to prevent oom from malicious clients */
 	rq = list_last_entry(&tl->requests, typeof(*rq), link);
 	cond_synchronize_rcu(rq->rcustate);
@@ -739,9 +730,7 @@ i915_request_create(struct intel_context *ce)
 		return ERR_CAST(tl);
 
 	/* Move our oldest request to the slab-cache (if not in use!) */
-	rq = list_first_entry(&tl->requests, typeof(*rq), link);
-	if (!list_is_last(&rq->link, &tl->requests))
-		i915_request_retire(rq);
+	retire_requests(tl);
 
 	intel_context_enter(ce);
 	rq = __i915_request_create(ce, GFP_KERNEL);
@@ -1304,14 +1293,13 @@ void i915_request_add(struct i915_request *rq)
 {
 	struct intel_timeline * const tl = i915_request_timeline(rq);
 	struct i915_sched_attr attr = {};
-	struct i915_request *prev;
 
 	lockdep_assert_held(&tl->mutex);
 	lockdep_unpin_lock(&tl->mutex, rq->cookie);
 
 	trace_i915_request_add(rq);
 
-	prev = __i915_request_commit(rq);
+	__i915_request_commit(rq);
 
 	if (rcu_access_pointer(rq->context->gem_context))
 		attr = i915_request_gem_context(rq)->sched;
@@ -1344,28 +1332,6 @@ void i915_request_add(struct i915_request *rq)
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
-
 	mutex_unlock(&tl->mutex);
 }
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
