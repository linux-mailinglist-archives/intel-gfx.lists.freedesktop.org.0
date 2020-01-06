Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 806B9131071
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 11:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDB26E22D;
	Mon,  6 Jan 2020 10:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E18686E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 10:22:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19782265-1500050 
 for multiple; Mon, 06 Jan 2020 10:22:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jan 2020 10:22:23 +0000
Message-Id: <20200106102227.2438478-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
References: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Merge i915_request.flags with
 i915_request.fence.flags
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

As we already have a flags field buried within i915_request, reuse it!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 +-
 drivers/gpu/drm/i915/i915_request.c           |  1 -
 drivers/gpu/drm/i915/i915_request.h           | 43 +++++++++++++++----
 7 files changed, 41 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cbd2bcade3c8..d5a0f5ae4a8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2173,7 +2173,7 @@ static int eb_submit(struct i915_execbuffer *eb)
 	}
 
 	if (intel_context_nopreempt(eb->context))
-		eb->request->flags |= I915_REQUEST_NOPREEMPT;
+		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 742628e40201..6c6fd185457c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -199,7 +199,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 		goto out_unlock;
 	}
 
-	rq->flags |= I915_REQUEST_SENTINEL;
+	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
 	idle_pulse(engine, rq);
 
 	__i915_request_commit(rq);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 170b5a0139a3..28c05e7a1510 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1538,8 +1538,8 @@ static bool can_merge_rq(const struct i915_request *prev,
 	if (i915_request_completed(next))
 		return true;
 
-	if (unlikely((prev->flags ^ next->flags) &
-		     (I915_REQUEST_NOPREEMPT | I915_REQUEST_SENTINEL)))
+	if (unlikely((prev->fence.flags ^ next->fence.flags) &
+		     (I915_FENCE_FLAG_NOPREEMPT | I915_FENCE_FLAG_SENTINEL)))
 		return false;
 
 	if (!can_merge_ctx(prev->context, next->context))
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index f232036c3c7a..d2a3d935d186 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -777,7 +777,7 @@ void intel_rps_boost(struct i915_request *rq)
 	spin_lock_irqsave(&rq->lock, flags);
 	if (!i915_request_has_waitboost(rq) &&
 	    !dma_fence_is_signaled_locked(&rq->fence)) {
-		rq->flags |= I915_REQUEST_WAITBOOST;
+		set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
 
 		if (!atomic_fetch_inc(&rps->num_waiters) &&
 		    READ_ONCE(rps->cur_freq) < rps->boost_freq)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d96604baab94..15cda024e3e4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1153,7 +1153,7 @@ static int live_nopreempt(void *arg)
 		}
 
 		/* Low priority client, but unpreemptable! */
-		rq_a->flags |= I915_REQUEST_NOPREEMPT;
+		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq_a->fence.flags);
 
 		i915_request_add(rq_a);
 		if (!igt_wait_for_spinner(&a.spin, rq_a)) {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 44a0d1a950c5..be185886e4fc 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -658,7 +658,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->engine = ce->engine;
 	rq->ring = ce->ring;
 	rq->execution_mask = ce->engine->mask;
-	rq->flags = 0;
 
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 9784421a3b4d..031433691a06 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -77,6 +77,38 @@ enum {
 	 * a request is on the various signal_list.
 	 */
 	I915_FENCE_FLAG_SIGNAL,
+
+	/*
+	 * I915_FENCE_FLAG_NOPREEMPT - this request should not be preempted
+	 *
+	 * The execution of some requests should not be interrupted. This is
+	 * a sensitive operation as it makes the request super important,
+	 * blocking other higher priority work. Abuse of this flag will
+	 * lead to quality of service issues.
+	 */
+	I915_FENCE_FLAG_NOPREEMPT,
+
+	/*
+	 * I915_FENCE_FLAG_SENTINEL - this request should be last in the queue
+	 *
+	 * A high priority sentinel request may be submitted to clear the
+	 * submission queue. As it will be the only request in-flight, upon
+	 * execution all other active requests will have been preempted and
+	 * unsubmitted. This preemptive pulse is used to re-evaluate the
+	 * in-flight requests, particularly in cases where an active context
+	 * is banned and those active requests need to be cancelled.
+	 */
+	I915_FENCE_FLAG_SENTINEL,
+
+	/*
+	 * I915_FENCE_FLAG_BOOST - upclock the gpu for this request
+	 *
+	 * Some requests are more important than others! In particular, a
+	 * request that the user is waiting on is typically required for
+	 * interactive latency, for which we want to minimise by upclocking
+	 * the GPU. Here we track such boost requests on a per-request basis.
+	 */
+	I915_FENCE_FLAG_BOOST,
 };
 
 /**
@@ -225,11 +257,6 @@ struct i915_request {
 	/** Time at which this request was emitted, in jiffies. */
 	unsigned long emitted_jiffies;
 
-	unsigned long flags;
-#define I915_REQUEST_WAITBOOST	BIT(0)
-#define I915_REQUEST_NOPREEMPT	BIT(1)
-#define I915_REQUEST_SENTINEL	BIT(2)
-
 	/** timeline->request entry for this request */
 	struct list_head link;
 
@@ -442,18 +469,18 @@ static inline void i915_request_mark_complete(struct i915_request *rq)
 
 static inline bool i915_request_has_waitboost(const struct i915_request *rq)
 {
-	return rq->flags & I915_REQUEST_WAITBOOST;
+	return test_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
 }
 
 static inline bool i915_request_has_nopreempt(const struct i915_request *rq)
 {
 	/* Preemption should only be disabled very rarely */
-	return unlikely(rq->flags & I915_REQUEST_NOPREEMPT);
+	return unlikely(test_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags));
 }
 
 static inline bool i915_request_has_sentinel(const struct i915_request *rq)
 {
-	return unlikely(rq->flags & I915_REQUEST_SENTINEL);
+	return unlikely(test_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags));
 }
 
 static inline struct intel_timeline *
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
