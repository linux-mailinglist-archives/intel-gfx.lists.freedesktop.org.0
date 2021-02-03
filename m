Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BF830DA14
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 13:47:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883A56EA9F;
	Wed,  3 Feb 2021 12:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B746EA9F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 12:47:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23775133-1500050 
 for multiple; Wed, 03 Feb 2021 12:47:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 12:47:40 +0000
Message-Id: <20210203124740.9354-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Prevent waiting inside ring
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +++
 drivers/gpu/drm/i915/gt/intel_ring.c          | 19 ++++++++--------
 drivers/gpu/drm/i915/i915_request.c           |  2 ++
 drivers/gpu/drm/i915/i915_request.h           | 22 +++++++++++++++++++
 4 files changed, 37 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index fe170186dd42..903eccad7ae2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3289,6 +3289,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	if (file->f_flags & O_NONBLOCK)
+		i915_request_set_nowait(eb.request);
+
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
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
index a336d6c40d8b..44b4c2a9f454 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -857,6 +857,8 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 
 	kref_init(&rq->fence.refcount);
 	rq->fence.flags = 0;
+	if ((flags & __GFP_RECLAIM) == 0)
+		__set_bit(I915_FENCE_FLAG_NOWAIT, &rq->fence.flags);
 	rq->fence.error = 0;
 	INIT_LIST_HEAD(&rq->fence.cb_list);
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index c0bd4cb8786a..4cecfecc82e5 100644
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
@@ -558,6 +570,16 @@ static inline void i915_request_mark_complete(struct i915_request *rq)
 		   (u32 *)&rq->fence.seqno);
 }
 
+static inline bool i915_request_nowait(const struct i915_request *rq)
+{
+	return test_bit(I915_FENCE_FLAG_NOWAIT, &rq->fence.flags);
+}
+
+static inline void i915_request_set_nowait(struct i915_request *rq)
+{
+	set_bit(I915_FENCE_FLAG_NOWAIT, &rq->fence.flags);
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
