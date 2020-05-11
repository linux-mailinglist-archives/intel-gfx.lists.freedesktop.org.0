Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE22F1CD365
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 09:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E054A6E260;
	Mon, 11 May 2020 07:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91B66E265
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 07:57:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21160796-1500050 
 for multiple; Mon, 11 May 2020 08:57:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 08:57:14 +0100
Message-Id: <20200511075722.13483-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/20] drm/i915: Drop no-semaphore boosting
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 -------
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  9 -----
 drivers/gpu/drm/i915/gt/selftest_context.c    |  1 +
 drivers/gpu/drm/i915/i915_priolist_types.h    |  4 +-
 drivers/gpu/drm/i915/i915_request.c           | 40 ++-----------------
 drivers/gpu/drm/i915/i915_request.h           |  1 -
 drivers/gpu/drm/i915/i915_scheduler.c         | 12 +++---
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  3 +-
 8 files changed, 12 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 2067557e277b..0a4606faf966 100644
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
index f93f13d20b5a..382969c1c7ca 100644
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
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index a56dff3b157a..52af1cee9a94 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -24,6 +24,7 @@ static int request_sync(struct i915_request *rq)
 
 	/* Opencode i915_request_add() so we can keep the timeline locked. */
 	__i915_request_commit(rq);
+	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	__i915_request_queue(rq, NULL);
 
 	timeout = i915_request_wait(rq, 0, HZ / 10);
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
index 9ad1e6761492..9738dab5a9f6 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -369,8 +369,6 @@ __await_execution(struct i915_request *rq,
 	}
 	spin_unlock_irq(&signal->lock);
 
-	/* Copy across semaphore status as we need the same behaviour */
-	rq->sched.flags |= signal->sched.flags;
 	return 0;
 }
 
@@ -539,10 +537,8 @@ void __i915_request_unsubmit(struct i915_request *request)
 	spin_unlock(&request->lock);
 
 	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request)) {
-		request->sched.attr.priority |= I915_PRIORITY_NOSEMAPHORE;
+	if (request->sched.semaphores && i915_request_started(request))
 		request->sched.semaphores = 0;
-	}
 
 	/*
 	 * We don't need to wake_up any waiters on request->execute, they
@@ -600,15 +596,6 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
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
@@ -616,11 +603,6 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
-		if (!(READ_ONCE(rq->sched.attr.priority) & I915_PRIORITY_NOSEMAPHORE)) {
-			i915_request_get(rq);
-			init_irq_work(&rq->semaphore_work, irq_semaphore_cb);
-			irq_work_queue(&rq->semaphore_work);
-		}
 		break;
 
 	case FENCE_FREE:
@@ -999,6 +981,7 @@ emit_semaphore_wait(struct i915_request *to,
 		    gfp_t gfp)
 {
 	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
+	struct i915_sw_fence *wait = &to->submit;
 
 	if (!intel_context_use_semaphores(to->context))
 		goto await_fence;
@@ -1033,11 +1016,10 @@ emit_semaphore_wait(struct i915_request *to,
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
@@ -1072,17 +1054,6 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 	if (ret < 0)
 		return ret;
 
-	if (to->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN) {
-		ret = i915_sw_fence_await_dma_fence(&to->semaphore,
-						    &from->fence, 0,
-						    I915_FENCE_GFP);
-		if (ret < 0)
-			return ret;
-	}
-
-	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
-		to->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
-
 	return 0;
 }
 
@@ -1706,9 +1677,6 @@ void i915_request_add(struct i915_request *rq)
 		attr = ctx->sched;
 	rcu_read_unlock();
 
-	if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
-		attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-
 	__i915_request_queue(rq, &attr);
 
 	mutex_unlock(&tl->mutex);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 98ae2dc82371..8ec7ee4dbadc 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -216,7 +216,6 @@ struct i915_request {
 	};
 	struct list_head execute_cb;
 	struct i915_sw_fence semaphore;
-	struct irq_work semaphore_work;
 
 	/*
 	 * A list of everyone we wait upon, and everyone who waits upon us.
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index f8e797a7eee9..56defe78ae54 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -51,11 +51,11 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
 		   rb_first(&execlists->queue.rb_root));
 
-	last_prio = (INT_MAX >> I915_USER_PRIORITY_SHIFT) + 1;
+	last_prio = INT_MAX;
 	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
 		const struct i915_priolist *p = to_priolist(rb);
 
-		GEM_BUG_ON(p->priority >= last_prio);
+		GEM_BUG_ON(p->priority > last_prio);
 		last_prio = p->priority;
 
 		GEM_BUG_ON(!p->used);
@@ -434,15 +434,13 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
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
 
+		/* Propagate the chains */
+		node->flags |= signal->flags;
+
 		ret = true;
 	}
 
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
