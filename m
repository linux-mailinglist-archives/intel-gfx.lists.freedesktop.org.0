Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F73030DD56
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 15:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8AE96EB12;
	Wed,  3 Feb 2021 14:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB986EB12
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 14:55:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23776808-1500050 
 for multiple; Wed, 03 Feb 2021 14:55:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 14:55:45 +0000
Message-Id: <20210203145545.30201-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203124740.9354-1-chris@chris-wilson.co.uk>
References: <20210203124740.9354-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Prevent waiting inside ring
 construction for critical sections
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

From some contexts, we may not be allowed to wait during request
construction. For example, in the powermanagement handler that should
never block (as the engine was idle) and the driver would be crippled if
we did. Similarly, the user may request that the execbuf does not block,
and so would prefer to handle an EWOULDBLOCK error instead. In both
cases we need to propagate the flag to various blocking wait points, the
first and usually hit is intel_ring::wait_for_space().

Testcase: igt/gem_ctx_ringsize/spin
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 +++++++--
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  7 ++++-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          | 19 +++++++------
 drivers/gpu/drm/i915/i915_request.c           |  8 +++---
 drivers/gpu/drm/i915/i915_request.h           | 28 +++++++++++++++++--
 6 files changed, 58 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index fe170186dd42..03d5fac24a72 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1265,6 +1265,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	struct intel_gt_buffer_pool_node *pool = eb->reloc_pool;
 	struct i915_request *rq;
 	struct i915_vma *batch;
+	unsigned long flags;
+	gfp_t gfp;
 	u32 *cmd;
 	int err;
 
@@ -1300,8 +1302,15 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_unmap;
 
+	flags = 0;
+	gfp = GFP_KERNEL | __GFP_NOWARN;
+	if (eb->file->filp->f_flags & O_NONBLOCK) {
+		flags = BIT(I915_FENCE_FLAG_NOWAIT);
+		gfp |= __GFP_RETRY_MAYFAIL;
+	}
+
 	if (engine == eb->context->engine) {
-		rq = i915_request_create(eb->context);
+		rq = __i915_request_create(eb->context, flags, gfp);
 	} else {
 		struct intel_context *ce = eb->reloc_context;
 
@@ -1321,7 +1330,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		if (err)
 			goto err_unpin;
 
-		rq = i915_request_create(ce);
+		rq = __i915_request_create(ce, flags, gfp);
 		intel_context_unpin(ce);
 	}
 	if (IS_ERR(rq)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 778bcae5ef2c..12b58ba5bcd8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -40,9 +40,14 @@ static struct i915_request *
 heartbeat_create(struct intel_context *ce, gfp_t gfp)
 {
 	struct i915_request *rq;
+	unsigned long flags;
+
+	flags = 0;
+	if ((gfp & __GFP_RECLAIM) == 0)
+		flags = BIT(I915_FENCE_FLAG_NOWAIT);
 
 	intel_context_enter(ce);
-	rq = __i915_request_create(ce, gfp);
+	rq = __i915_request_create_locked(ce, flags, gfp);
 	intel_context_exit(ce);
 
 	return rq;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 6372d7826bc9..d9bed542136a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -200,7 +200,7 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	flags = __timeline_mark_lock(ce);
 	GEM_BUG_ON(atomic_read(&ce->timeline->active_count) < 0);
 
-	rq = __i915_request_create(ce, GFP_NOWAIT);
+	rq = __i915_request_create_locked(ce, BIT(I915_FENCE_FLAG_NOWAIT), GFP_NOWAIT);
 	if (IS_ERR(rq))
 		/* Context switch failed, hope for the best! Maybe reset? */
 		goto out_unlock;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index aee0a77c77e0..9f149fdc8416 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -184,9 +184,10 @@ void intel_ring_free(struct kref *ref)
 
 static noinline int
 wait_for_space(struct intel_ring *ring,
-	       struct intel_timeline *tl,
+	       struct i915_request *rq,
 	       unsigned int bytes)
 {
+	struct intel_timeline *tl = i915_request_timeline(rq);
 	struct i915_request *target;
 	long timeout;
 
@@ -207,11 +208,13 @@ wait_for_space(struct intel_ring *ring,
 	if (GEM_WARN_ON(&target->link == &tl->requests))
 		return -ENOSPC;
 
-	timeout = i915_request_wait(target,
-				    I915_WAIT_INTERRUPTIBLE,
-				    MAX_SCHEDULE_TIMEOUT);
-	if (timeout < 0)
-		return timeout;
+	timeout = MAX_SCHEDULE_TIMEOUT;
+	if (i915_request_nowait(rq))
+		timeout = 0;
+
+	timeout = i915_request_wait(target, I915_WAIT_INTERRUPTIBLE, timeout);
+	if (unlikely(timeout < 0))
+		return i915_request_nowait(rq) ? -EWOULDBLOCK : timeout;
 
 	i915_request_retire_upto(target);
 
@@ -271,9 +274,7 @@ u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
 		 */
 		GEM_BUG_ON(!rq->reserved_space);
 
-		ret = wait_for_space(ring,
-				     i915_request_timeline(rq),
-				     total_bytes);
+		ret = wait_for_space(ring, rq, total_bytes);
 		if (unlikely(ret))
 			return ERR_PTR(ret);
 	}
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a336d6c40d8b..04ca4fe54633 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -799,7 +799,7 @@ static void __i915_request_ctor(void *arg)
 }
 
 struct i915_request *
-__i915_request_create(struct intel_context *ce, gfp_t gfp)
+__i915_request_create_locked(struct intel_context *ce, unsigned long flags, gfp_t gfp)
 {
 	struct intel_timeline *tl = ce->timeline;
 	struct i915_request *rq;
@@ -856,7 +856,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->execution_mask = ce->engine->mask;
 
 	kref_init(&rq->fence.refcount);
-	rq->fence.flags = 0;
+	rq->fence.flags = flags;
 	rq->fence.error = 0;
 	INIT_LIST_HEAD(&rq->fence.cb_list);
 
@@ -934,7 +934,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 }
 
 struct i915_request *
-i915_request_create(struct intel_context *ce)
+__i915_request_create(struct intel_context *ce, unsigned long flags, gfp_t gfp)
 {
 	struct i915_request *rq;
 	struct intel_timeline *tl;
@@ -949,7 +949,7 @@ i915_request_create(struct intel_context *ce)
 		i915_request_retire(rq);
 
 	intel_context_enter(ce);
-	rq = __i915_request_create(ce, GFP_KERNEL);
+	rq = __i915_request_create_locked(ce, flags, gfp);
 	intel_context_exit(ce); /* active reference transferred to request */
 	if (IS_ERR(rq))
 		goto err_unlock;
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index c0bd4cb8786a..43230037f469 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -137,6 +137,18 @@ enum {
 	 * the GPU. Here we track such boost requests on a per-request basis.
 	 */
 	I915_FENCE_FLAG_BOOST,
+
+	/*
+	 * I915_FENCE_FLAG_NOWAIT - avoid waits while constructing the request
+	 *
+	 * We may wish to construct a request from some contexts where
+	 * we do not want to wait, and sometimes the client would prefer
+	 * to have a nonblocking interface. We may have to wait in a few place
+	 * during request construction (e.g. waiting for space in the
+	 * ringbuffer), this flag allows us to opt out of those waits and
+	 * return -EAGAIN instead.
+	 */
+	I915_FENCE_FLAG_NOWAIT,
 };
 
 /**
@@ -305,9 +317,16 @@ static inline bool dma_fence_is_i915(const struct dma_fence *fence)
 struct kmem_cache *i915_request_slab_cache(void);
 
 struct i915_request * __must_check
-__i915_request_create(struct intel_context *ce, gfp_t gfp);
+__i915_request_create_locked(struct intel_context *ce,
+			     unsigned long flags, gfp_t gfp);
 struct i915_request * __must_check
-i915_request_create(struct intel_context *ce);
+__i915_request_create(struct intel_context *ce,
+		      unsigned long flags, gfp_t gfp);
+static inline struct i915_request *
+i915_request_create(struct intel_context *ce)
+{
+	return __i915_request_create(ce, 0, GFP_KERNEL);
+}
 
 void __i915_request_skip(struct i915_request *rq);
 void i915_request_set_error_once(struct i915_request *rq, int error);
@@ -558,6 +577,11 @@ static inline void i915_request_mark_complete(struct i915_request *rq)
 		   (u32 *)&rq->fence.seqno);
 }
 
+static inline bool i915_request_nowait(const struct i915_request *rq)
+{
+	return test_bit(I915_FENCE_FLAG_NOWAIT, &rq->fence.flags);
+}
+
 static inline bool i915_request_has_waitboost(const struct i915_request *rq)
 {
 	return test_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
