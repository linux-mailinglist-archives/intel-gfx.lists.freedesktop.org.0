Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF321D1C59
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DAD6EA88;
	Wed, 13 May 2020 17:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA6C6EA88
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:35:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190499-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 18:35:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 18:35:04 +0100
Message-Id: <20200513173504.28322-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Drop no-semaphore boosting
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

Now that we have fast timeslicing on semaphores, we no longer need to
prioritise none-semaphore work as we will yield any work blocked on a
semaphore to the next in the queue. Previously with no timeslicing,
blocking on the semaphore caused extremely bad scheduling with multiple
clients utilising multiple rings. Now, there is no impact and we can
remove the complication.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 -------
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  9 -----
 drivers/gpu/drm/i915/gt/selftest_context.c    |  1 +
 drivers/gpu/drm/i915/i915_priolist_types.h    |  4 +-
 drivers/gpu/drm/i915/i915_request.c           | 40 ++-----------------
 drivers/gpu/drm/i915/i915_request.h           |  1 -
 drivers/gpu/drm/i915/i915_scheduler.c         | 11 ++---
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  3 +-
 8 files changed, 11 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d54a4933cc05..36d181579619 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2582,21 +2582,6 @@ static void eb_request_add(struct i915_execbuffer *eb)
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
index 32feb2a27dfc..60f2bdcb73dd 100644
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
index 2d5b98549ddc..50bbde109930 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -368,8 +368,6 @@ __await_execution(struct i915_request *rq,
 	}
 	spin_unlock_irq(&signal->lock);
 
-	/* Copy across semaphore status as we need the same behaviour */
-	rq->sched.flags |= signal->sched.flags;
 	return 0;
 }
 
@@ -537,10 +535,8 @@ void __i915_request_unsubmit(struct i915_request *request)
 	spin_unlock(&request->lock);
 
 	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request)) {
-		request->sched.attr.priority |= I915_PRIORITY_NOSEMAPHORE;
+	if (request->sched.semaphores && i915_request_started(request))
 		request->sched.semaphores = 0;
-	}
 
 	/*
 	 * We don't need to wake_up any waiters on request->execute, they
@@ -598,15 +594,6 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
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
@@ -614,11 +601,6 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
-		if (!(READ_ONCE(rq->sched.attr.priority) & I915_PRIORITY_NOSEMAPHORE)) {
-			i915_request_get(rq);
-			init_irq_work(&rq->semaphore_work, irq_semaphore_cb);
-			irq_work_queue(&rq->semaphore_work);
-		}
 		break;
 
 	case FENCE_FREE:
@@ -996,6 +978,7 @@ emit_semaphore_wait(struct i915_request *to,
 		    gfp_t gfp)
 {
 	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
+	struct i915_sw_fence *wait = &to->submit;
 
 	if (!intel_context_use_semaphores(to->context))
 		goto await_fence;
@@ -1027,11 +1010,10 @@ emit_semaphore_wait(struct i915_request *to,
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
@@ -1066,17 +1048,6 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
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
 
@@ -1523,9 +1494,6 @@ void i915_request_add(struct i915_request *rq)
 		attr = ctx->sched;
 	rcu_read_unlock();
 
-	if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
-		attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-
 	__i915_request_queue(rq, &attr);
 
 	mutex_unlock(&tl->mutex);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index d8ce908e1346..09cca737a4c2 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -209,7 +209,6 @@ struct i915_request {
 	};
 	struct list_head execute_cb;
 	struct i915_sw_fence semaphore;
-	struct irq_work semaphore_work;
 
 	/*
 	 * A list of everyone we wait upon, and everyone who waits upon us.
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index bec2a9c25425..f4ea318781f0 100644
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
@@ -434,15 +434,12 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
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
