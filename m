Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387291D0A28
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 09:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3D06E98E;
	Wed, 13 May 2020 07:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1C06E981
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 07:48:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21182452-1500050 
 for multiple; Wed, 13 May 2020 08:48:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 08:47:57 +0100
Message-Id: <20200513074809.18194-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/24] drm/i915: Remove the saturation backoff
 for HW semaphores
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

Could our scheduling now be good enough that we avoid unnecessary
semaphores and do not waste bus cycles checking old results? Judging by
local runs of the examples from last year, possibly!

References: ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  1 -
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 -
 drivers/gpu/drm/i915/i915_request.c           | 54 ++-----------------
 drivers/gpu/drm/i915/i915_request.h           |  1 -
 4 files changed, 3 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 762a251d553b..e4aece20bc80 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -268,7 +268,6 @@ static int __intel_context_active(struct i915_active *active)
 	if (err)
 		goto err_timeline;
 
-	ce->saturated = 0;
 	return 0;
 
 err_timeline:
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index aed26d93c2ca..4954b0df4864 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -78,8 +78,6 @@ struct intel_context {
 	} lrc;
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
-	intel_engine_mask_t saturated; /* submitting semaphores too late? */
-
 	/* Time on GPU as tracked by the hw. */
 	struct {
 		struct ewma_runtime avg;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index dae0b2c44951..b87766b02efb 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -120,7 +120,6 @@ static void i915_fence_release(struct dma_fence *fence)
 	 * caught trying to reuse dead objects.
 	 */
 	i915_sw_fence_fini(&rq->submit);
-	i915_sw_fence_fini(&rq->semaphore);
 
 	/* Keep one request on each engine for reserved use under mempressure */
 	if (!cmpxchg(&rq->engine->request_pool, NULL, rq))
@@ -451,26 +450,6 @@ bool __i915_request_submit(struct i915_request *request)
 	if (unlikely(fatal_error(request->fence.error)))
 		__i915_request_skip(request);
 
-	/*
-	 * Are we using semaphores when the gpu is already saturated?
-	 *
-	 * Using semaphores incurs a cost in having the GPU poll a
-	 * memory location, busywaiting for it to change. The continual
-	 * memory reads can have a noticeable impact on the rest of the
-	 * system with the extra bus traffic, stalling the cpu as it too
-	 * tries to access memory across the bus (perf stat -e bus-cycles).
-	 *
-	 * If we installed a semaphore on this request and we only submit
-	 * the request after the signaler completed, that indicates the
-	 * system is overloaded and using semaphores at this time only
-	 * increases the amount of work we are doing. If so, we disable
-	 * further use of semaphores until we are idle again, whence we
-	 * optimistically try again.
-	 */
-	if (request->sched.semaphores &&
-	    i915_sw_fence_signaled(&request->semaphore))
-		request->context->saturated |= request->sched.semaphores;
-
 	engine->emit_fini_breadcrumb(request,
 				     request->ring->vaddr + request->postfix);
 
@@ -536,10 +515,6 @@ void __i915_request_unsubmit(struct i915_request *request)
 
 	spin_unlock(&request->lock);
 
-	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request))
-		request->sched.semaphores = 0;
-
 	/*
 	 * We don't need to wake_up any waiters on request->execute, they
 	 * will get woken by any other event or us re-adding this request
@@ -596,23 +571,6 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 	return NOTIFY_DONE;
 }
 
-static int __i915_sw_fence_call
-semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
-{
-	struct i915_request *rq = container_of(fence, typeof(*rq), semaphore);
-
-	switch (state) {
-	case FENCE_COMPLETE:
-		break;
-
-	case FENCE_FREE:
-		i915_request_put(rq);
-		break;
-	}
-
-	return NOTIFY_DONE;
-}
-
 static void retire_requests(struct intel_timeline *tl)
 {
 	struct i915_request *rq, *rn;
@@ -668,7 +626,6 @@ static void __i915_request_ctor(void *arg)
 	spin_lock_init(&rq->lock);
 	i915_sched_node_init(&rq->sched);
 	i915_sw_fence_init(&rq->submit, submit_notify);
-	i915_sw_fence_init(&rq->semaphore, semaphore_notify);
 
 	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
 
@@ -757,7 +714,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 
 	/* We bump the ref for the fence chain */
 	i915_sw_fence_reinit(&i915_request_get(rq)->submit);
-	i915_sw_fence_reinit(&i915_request_get(rq)->semaphore);
 
 	i915_sched_node_reinit(&rq->sched);
 
@@ -918,10 +874,8 @@ already_busywaiting(struct i915_request *rq)
 	 * if we have detected the engine is saturated (i.e. would not be
 	 * submitted early and cause bus traffic reading an already passed
 	 * semaphore).
-	 *
-	 * See the are-we-too-late? check in __i915_request_submit().
 	 */
-	return rq->sched.semaphores | READ_ONCE(rq->context->saturated);
+	return rq->sched.semaphores;
 }
 
 static int
@@ -981,7 +935,6 @@ emit_semaphore_wait(struct i915_request *to,
 		    gfp_t gfp)
 {
 	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
-	struct i915_sw_fence *wait = &to->submit;
 
 	if (!intel_context_use_semaphores(to->context))
 		goto await_fence;
@@ -1016,10 +969,10 @@ emit_semaphore_wait(struct i915_request *to,
 		goto await_fence;
 
 	to->sched.semaphores |= mask;
-	wait = &to->semaphore;
+	return 0;
 
 await_fence:
-	return i915_sw_fence_await_dma_fence(wait,
+	return i915_sw_fence_await_dma_fence(&to->submit,
 					     &from->fence, 0,
 					     I915_FENCE_GFP);
 }
@@ -1654,7 +1607,6 @@ void __i915_request_queue(struct i915_request *rq,
 	 */
 	if (attr && rq->engine->schedule)
 		rq->engine->schedule(rq, attr);
-	i915_sw_fence_commit(&rq->semaphore);
 	i915_sw_fence_commit(&rq->submit);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 8ec7ee4dbadc..246c80dd37f1 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -215,7 +215,6 @@ struct i915_request {
 		} duration;
 	};
 	struct list_head execute_cb;
-	struct i915_sw_fence semaphore;
 
 	/*
 	 * A list of everyone we wait upon, and everyone who waits upon us.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
