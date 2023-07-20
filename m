Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9FE75AAF5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B816B10E594;
	Thu, 20 Jul 2023 09:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C291A10E58E;
 Thu, 20 Jul 2023 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689845768; x=1721381768;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0YIvzxpg7CZNRjFmj0JMFz8Y7aTN/Z+XE5OE1jfeG+g=;
 b=lXj4WcDKT/6oaMTmHmzoM+xSL73T4xWbCNmI2yYQL/XZF52NWFWrrAwL
 LnMmu2q1ZV72nafF+HqJPzLR/bEmcsBHs6D72Y/UlKP2hvGzkx3M3n8iT
 929SMsZdJfeUBpILvPslQwC3RHItUzJVC6Lc8CNqYtOeLtqEFvCQFv1Zl
 mtzOkeBcS/vS8OBXu+fTFSaqma5tli8038Sy9MyPm1U7hXl9HWwryDeWI
 t+xBTDMY9ZKGOBeC7b/GzfZcEyXWFu4Y7POfQjZPTF5TQkM6omeHut0Rf
 wgPqv0dMudt2dS5mZ20X32xHYBDzIDaZLLtwdnxsVEIjrX/d6mRMwbeXQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365570585"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="365570585"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:36:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="838038248"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="838038248"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO jkrzyszt-mobl2.lan)
 ([10.213.11.218])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:36:04 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 11:35:44 +0200
Message-ID: <20230720093543.832147-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Fix premature release of request's
 reusable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Infinite waits for completion of GPU activity have been observed in CI,
mostly inside __i915_active_wait(), triggered by igt@gem_barrier_race or
igt@perf@stress-open-close.  Root cause analysis, based of ftrace dumps
generated with a lot of extra trace_printk() calls added to the code,
revealed loops of request dependencies being accidentally built,
preventing the requests from being processed, each waiting for completion
of another one's activity.

After we substitute a new request for a last active one tracked on a
timeline, we set up a dependency of our new request to wait on completion
of current activity of that previous one.  While doing that, we must take
care of keeping the old request still in memory until we use its
attributes for setting up that await dependency, or we can happen to set
up the await dependency on an unrelated request that already reuses the
memory previously allocated to the old one, already released.  Combined
with perf adding consecutive kernel context remote requests to different
user context timelines, unresolvable loops of await dependencies can be
built, leading do infinite waits.

We obtain a pointer to the previous request to wait upon when we
substitute it with a pointer to our new request in an active tracker,
e.g. in intel_timeline.last_request.  In some processing paths we protect
that old request from being freed before we use it by getting a reference
to it under RCU protection, but in others, e.g.  __i915_request_commit()
-> __i915_request_add_to_timeline() -> __i915_request_ensure_ordering(),
we don't.  But anyway, since the requests' memory is SLAB_FAILSAFE_BY_RCU,
that RCU protection is not sufficient against reuse of memory.

We could protect i915_request's memory from being prematurely reused by
calling its release function via call_rcu() and using rcu_read_lock()
consequently, as proposed in v1.  However, that approach leads to
significant (up to 10 times) increase of SLAB utilization by i915_request
SLAB cache.  Another potential approach is to take a reference to the
previous active fence.

When updating an active fence tracker, we first lock the new fence,
substitute a pointer of the current active fence with the new one, then we
lock the substituted fence.  With this approach, there is a time window
after the substitution and before the lock when the request can be
concurrently released by an interrupt handler and its memory reused, then
we may happen to lock and return a new, unrelated request.

Always get a reference to the current active fence first, before
replacing it with a new one.  Having it protected from premature release
and reuse, lock it and then replace with the new one but only if not
yet signalled via a potential concurrent interrupt nor replaced with
another one by a potential concurrent thread, otherwise retry, starting
from getting a reference to the new current one.  Adjust users to not
get a reference to the previous active fence themselves and always put the
reference got by __i915_active_fence_set() when no longer needed.

v3: Fix lockdep splat reports and other issues caused by incorrect use of
    try_cmpxchg() (use (cmpxchg() != prev) instead)
v2: Protect request's memory by getting a reference to it in favor of
    delegating its release to call_rcu() (Chris)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8211
Fixes: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.6+
---
 drivers/gpu/drm/i915/i915_active.c  | 99 ++++++++++++++++++++---------
 drivers/gpu/drm/i915/i915_request.c | 11 ++++
 2 files changed, 81 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 8ef93889061a6..5ec293011d990 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -449,8 +449,11 @@ int i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
 		}
 	} while (unlikely(is_barrier(active)));
 
-	if (!__i915_active_fence_set(active, fence))
+	fence = __i915_active_fence_set(active, fence);
+	if (!fence)
 		__i915_active_acquire(ref);
+	else
+		dma_fence_put(fence);
 
 out:
 	i915_active_release(ref);
@@ -469,13 +472,9 @@ __i915_active_set_fence(struct i915_active *ref,
 		return NULL;
 	}
 
-	rcu_read_lock();
 	prev = __i915_active_fence_set(active, fence);
-	if (prev)
-		prev = dma_fence_get_rcu(prev);
-	else
+	if (!prev)
 		__i915_active_acquire(ref);
-	rcu_read_unlock();
 
 	return prev;
 }
@@ -1019,10 +1018,11 @@ void i915_request_add_active_barriers(struct i915_request *rq)
  *
  * Records the new @fence as the last active fence along its timeline in
  * this active tracker, moving the tracking callbacks from the previous
- * fence onto this one. Returns the previous fence (if not already completed),
- * which the caller must ensure is executed before the new fence. To ensure
- * that the order of fences within the timeline of the i915_active_fence is
- * understood, it should be locked by the caller.
+ * fence onto this one. Gets and returns a reference to the previous fence
+ * (if not already completed), which the caller must put after making sure
+ * that it is executed before the new fence. To ensure that the order of
+ * fences within the timeline of the i915_active_fence is understood, it
+ * should be locked by the caller.
  */
 struct dma_fence *
 __i915_active_fence_set(struct i915_active_fence *active,
@@ -1031,7 +1031,23 @@ __i915_active_fence_set(struct i915_active_fence *active,
 	struct dma_fence *prev;
 	unsigned long flags;
 
-	if (fence == rcu_access_pointer(active->fence))
+	/*
+	 * In case of fences embedded in i915_requests, their memory is
+	 * SLAB_FAILSAFE_BY_RCU, then it can be reused right after release
+	 * by new requests.  Then, there is a risk of passing back a pointer
+	 * to a new, completely unrelated fence that reuses the same memory
+	 * while tracked under a different active tracker.  Combined with i915
+	 * perf open/close operations that build await dependencies between
+	 * engine kernel context requests and user requests from different
+	 * timelines, this can lead to dependency loops and infinite waits.
+	 *
+	 * As a countermeasure, we try to get a reference to the active->fence
+	 * first, so if we succeed and pass it back to our user then it is not
+	 * released and potentially reused by an unrelated request before the
+	 * user has a chance to set up an await dependency on it.
+	 */
+	prev = i915_active_fence_get(active);
+	if (fence == prev)
 		return fence;
 
 	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags));
@@ -1040,27 +1056,56 @@ __i915_active_fence_set(struct i915_active_fence *active,
 	 * Consider that we have two threads arriving (A and B), with
 	 * C already resident as the active->fence.
 	 *
-	 * A does the xchg first, and so it sees C or NULL depending
-	 * on the timing of the interrupt handler. If it is NULL, the
-	 * previous fence must have been signaled and we know that
-	 * we are first on the timeline. If it is still present,
-	 * we acquire the lock on that fence and serialise with the interrupt
-	 * handler, in the process removing it from any future interrupt
-	 * callback. A will then wait on C before executing (if present).
-	 *
-	 * As B is second, it sees A as the previous fence and so waits for
-	 * it to complete its transition and takes over the occupancy for
-	 * itself -- remembering that it needs to wait on A before executing.
+	 * Both A and B have got a reference to C or NULL, depending on the
+	 * timing of the interrupt handler.  Let's assume that if A has got C
+	 * then it has locked C first (before B).
 	 *
 	 * Note the strong ordering of the timeline also provides consistent
 	 * nesting rules for the fence->lock; the inner lock is always the
 	 * older lock.
 	 */
 	spin_lock_irqsave(fence->lock, flags);
-	prev = xchg(__active_fence_slot(active), fence);
-	if (prev) {
-		GEM_BUG_ON(prev == fence);
+	if (prev)
 		spin_lock_nested(prev->lock, SINGLE_DEPTH_NESTING);
+
+	/*
+	 * A does the cmpxchg first, and so it sees C or NULL, as before, or
+	 * something else, depending on the timing of other threads and/or
+	 * interrupt handler.  If not the same as before then A unlocks C if
+	 * applicable and retries, starting from an attempt to get a new
+	 * active->fence.  Meanwhile, B follows the same path as A.
+	 * Once A succeeds with cmpxch, B fails again, retires, gets A from
+	 * active->fence, locks it as soon as A completes, and possibly
+	 * succeeds with cmpxchg.
+	 */
+	while (cmpxchg(__active_fence_slot(active), prev, fence) != prev) {
+		if (prev) {
+			spin_unlock(prev->lock);
+			dma_fence_put(prev);
+		}
+		spin_unlock_irqrestore(fence->lock, flags);
+
+		prev = i915_active_fence_get(active);
+		GEM_BUG_ON(prev == fence);
+
+		spin_lock_irqsave(fence->lock, flags);
+		if (prev)
+			spin_lock_nested(prev->lock, SINGLE_DEPTH_NESTING);
+	}
+
+	/*
+	 * If prev is NULL then the previous fence must have been signaled
+	 * and we know that we are first on the timeline.  If it is still
+	 * present then, having the lock on that fence already acquired, we
+	 * serialise with the interrupt handler, in the process of removing it
+	 * from any future interrupt callback.  A will then wait on C before
+	 * executing (if present).
+	 *
+	 * As B is second, it sees A as the previous fence and so waits for
+	 * it to complete its transition and takes over the occupancy for
+	 * itself -- remembering that it needs to wait on A before executing.
+	 */
+	if (prev) {
 		__list_del_entry(&active->cb.node);
 		spin_unlock(prev->lock); /* serialise with prev->cb_list */
 	}
@@ -1077,11 +1122,7 @@ int i915_active_fence_set(struct i915_active_fence *active,
 	int err = 0;
 
 	/* Must maintain timeline ordering wrt previous active requests */
-	rcu_read_lock();
 	fence = __i915_active_fence_set(active, &rq->fence);
-	if (fence) /* but the previous fence may not belong to that timeline! */
-		fence = dma_fence_get_rcu(fence);
-	rcu_read_unlock();
 	if (fence) {
 		err = i915_request_await_dma_fence(rq, fence);
 		dma_fence_put(fence);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 894068bb37b6f..833b73edefdbb 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1661,6 +1661,11 @@ __i915_request_ensure_parallel_ordering(struct i915_request *rq,
 
 	request_to_parent(rq)->parallel.last_rq = i915_request_get(rq);
 
+	/*
+	 * Users have to put a reference potentially got by
+	 * __i915_active_fence_set() to the returned request
+	 * when no longer needed
+	 */
 	return to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
 }
@@ -1707,6 +1712,10 @@ __i915_request_ensure_ordering(struct i915_request *rq,
 							 0);
 	}
 
+	/*
+	 * Users have to put the reference to prev potentially got
+	 * by __i915_active_fence_set() when no longer needed
+	 */
 	return prev;
 }
 
@@ -1760,6 +1769,8 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 		prev = __i915_request_ensure_ordering(rq, timeline);
 	else
 		prev = __i915_request_ensure_parallel_ordering(rq, timeline);
+	if (prev)
+		i915_request_put(prev);
 
 	/*
 	 * Make sure that no request gazumped us - if it was allocated after
-- 
2.41.0

