Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0BC1CA5DF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 10:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E636EA9D;
	Fri,  8 May 2020 08:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0186E225
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 08:17:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21147518-1500050 
 for multiple; Fri, 08 May 2020 09:16:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 May 2020 09:16:29 +0100
Message-Id: <20200508081630.13882-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508081630.13882-1-chris@chris-wilson.co.uk>
References: <20200508081630.13882-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Drop no-semaphore boosting
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

Now that we have fast timeslicing on semaphores, we no longer need to
prioritise none-semaphore work as we will yield any work blocked on a
sempahore to the next in the queue. Previously with no timeslicing,
blocking on the semaphore caused extremely bad scheduling with multiple
clients utilising multiple rings. Now, there is no impact and we can
remove the complication.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 --------
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  9 -----
 drivers/gpu/drm/i915/i915_priolist_types.h    |  4 +--
 drivers/gpu/drm/i915/i915_request.c           | 36 +++----------------
 drivers/gpu/drm/i915/i915_scheduler.c         |  7 +---
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  3 +-
 6 files changed, 7 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6368f0070157..f7261cf11eed 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2603,21 +2603,6 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	/* Check that the context wasn't destroyed before submission */
 	if (likely(!intel_context_is_closed(eb->context))) {
 		attr = eb->gem_context->sched;
-
-		/*
-		 * Boost actual workloads past semaphores!
-		 *
-		 * With semaphores we spin on one engine waiting for another,
-		 * simply to reduce the latency of starting our work when
-		 * the signaler completes. However, if there is any other
-		 * work that we could be doing on this engine instead, that
-		 * is better utilisation and will reduce the overall duration
-		 * of the current work. To avoid PI boosting a semaphore
-		 * far in the distance past over useful work, we keep a history
-		 * of any semaphore use along our dependency chain.
-		 */
-		if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
-			attr.priority |= I915_PRIORITY_NOSEMAPHORE;
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
 		i915_request_set_error_once(rq, -ENOENT);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4792fa26a6c3..fd0cb419fc11 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -429,15 +429,6 @@ static int effective_prio(const struct i915_request *rq)
 	if (i915_request_has_nopreempt(rq))
 		prio = I915_PRIORITY_UNPREEMPTABLE;
 
-	/*
-	 * On unwinding the active request, we give it a priority bump
-	 * if it has completed waiting on any semaphore. If we know that
-	 * the request has already started, we can prevent an unwanted
-	 * preempt-to-idle cycle by taking that into account now.
-	 */
-	if (__i915_request_has_started(rq))
-		prio |= I915_PRIORITY_NOSEMAPHORE;
-
 	return prio;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index e18723d8df86..5003a71113cb 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -24,14 +24,12 @@ enum {
 	I915_PRIORITY_DISPLAY,
 };
 
-#define I915_USER_PRIORITY_SHIFT 1
+#define I915_USER_PRIORITY_SHIFT 0
 #define I915_USER_PRIORITY(x) ((x) << I915_USER_PRIORITY_SHIFT)
 
 #define I915_PRIORITY_COUNT BIT(I915_USER_PRIORITY_SHIFT)
 #define I915_PRIORITY_MASK (I915_PRIORITY_COUNT - 1)
 
-#define I915_PRIORITY_NOSEMAPHORE	((u8)BIT(0))
-
 /* Smallest priority value that cannot be bumped. */
 #define I915_PRIORITY_INVALID (INT_MIN | (u8)I915_PRIORITY_MASK)
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 6afd77e6f141..87ae67fc5022 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -368,8 +368,6 @@ __await_execution(struct i915_request *rq,
 	}
 	spin_unlock_irq(&signal->lock);
 
-	/* Copy across semaphore status as we need the same behaviour */
-	rq->sched.flags |= signal->sched.flags;
 	return 0;
 }
 
@@ -538,10 +536,8 @@ void __i915_request_unsubmit(struct i915_request *request)
 	spin_unlock(&request->lock);
 
 	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request)) {
-		request->sched.attr.priority |= I915_PRIORITY_NOSEMAPHORE;
+	if (request->sched.semaphores && i915_request_started(request))
 		request->sched.semaphores = 0;
-	}
 
 	/*
 	 * We don't need to wake_up any waiters on request->execute, they
@@ -599,15 +595,6 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 	return NOTIFY_DONE;
 }
 
-static void irq_semaphore_cb(struct irq_work *wrk)
-{
-	struct i915_request *rq =
-		container_of(wrk, typeof(*rq), semaphore_work);
-
-	i915_schedule_bump_priority(rq, I915_PRIORITY_NOSEMAPHORE);
-	i915_request_put(rq);
-}
-
 static int __i915_sw_fence_call
 semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 {
@@ -615,11 +602,6 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
-		if (!(READ_ONCE(rq->sched.attr.priority) & I915_PRIORITY_NOSEMAPHORE)) {
-			i915_request_get(rq);
-			init_irq_work(&rq->semaphore_work, irq_semaphore_cb);
-			irq_work_queue(&rq->semaphore_work);
-		}
 		break;
 
 	case FENCE_FREE:
@@ -997,6 +979,7 @@ emit_semaphore_wait(struct i915_request *to,
 		    gfp_t gfp)
 {
 	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
+	struct i915_sw_fence *wait = &to->submit;
 
 	if (!intel_context_use_semaphores(to->context))
 		goto await_fence;
@@ -1028,11 +1011,10 @@ emit_semaphore_wait(struct i915_request *to,
 		goto await_fence;
 
 	to->sched.semaphores |= mask;
-	to->sched.flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
-	return 0;
+	wait = &to->semaphore;
 
 await_fence:
-	return i915_sw_fence_await_dma_fence(&to->submit,
+	return i915_sw_fence_await_dma_fence(wait,
 					     &from->fence, 0,
 					     I915_FENCE_GFP);
 }
@@ -1067,13 +1049,6 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 	if (ret < 0)
 		return ret;
 
-	if (to->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN) {
-		ret = i915_sw_fence_await_dma_fence(&to->semaphore,
-						    &from->fence, 0,
-						    I915_FENCE_GFP);
-		if (ret < 0)
-			return ret;
-	}
 
 	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
 		to->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
@@ -1654,9 +1629,6 @@ void i915_request_add(struct i915_request *rq)
 		attr = ctx->sched;
 	rcu_read_unlock();
 
-	if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
-		attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-
 	__i915_request_queue(rq, &attr);
 
 	mutex_unlock(&tl->mutex);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index f8e797a7eee9..7499428764d1 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -51,7 +51,7 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
 		   rb_first(&execlists->queue.rb_root));
 
-	last_prio = (INT_MAX >> I915_USER_PRIORITY_SHIFT) + 1;
+	last_prio = (INT_MAX >> I915_USER_PRIORITY_SHIFT) + 1l;
 	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
 		const struct i915_priolist *p = to_priolist(rb);
 
@@ -434,11 +434,6 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 		dep->waiter = node;
 		dep->flags = flags;
 
-		/* Keep track of whether anyone on this chain has a semaphore */
-		if (signal->flags & I915_SCHED_HAS_SEMAPHORE_CHAIN &&
-		    !node_started(signal))
-			node->flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
-
 		/* All set, now publish. Beware the lockless walkers. */
 		list_add_rcu(&dep->signal_link, &node->signalers_list);
 		list_add_rcu(&dep->wait_link, &signal->waiters_list);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 6ab2c5289bed..f72e6c397b08 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -65,8 +65,7 @@ struct i915_sched_node {
 	struct list_head link;
 	struct i915_sched_attr attr;
 	unsigned int flags;
-#define I915_SCHED_HAS_SEMAPHORE_CHAIN	BIT(0)
-#define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(1)
+#define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
 	intel_engine_mask_t semaphores;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
