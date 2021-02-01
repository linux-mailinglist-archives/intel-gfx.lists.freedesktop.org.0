Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA37730A3B7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A856E513;
	Mon,  1 Feb 2021 08:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DADC6E49A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757761-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:58 +0000
Message-Id: <20210201085715.27435-40-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/57] drm/i915/gt: Support virtual engine queues
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

Allow multiple requests to be queued unto a virtual engine, whereas
before we only allowed a single request to be queued at a time. The
advantage of keeping just one request in the queue was to ensure that we
always decided late which engine to use. However, with the introduction
of the virtual deadline we throttle submission and still only drip one
request into the sibling at a time (unless it is truly empty, but then a
second request will have an earlier deadline than the queued virtual
engine and force itself in front). This also takes advantage that a
virtual engine will remain bound while it is active, i.e. we can not
switch to a second engine until the context is completed -- such that we
cannot be as lazy as lazy can be.

By allowing a full queue, we avoid having to synchronize via the
breadcrumb interrupt everytime, letting the virtual engine reach the
full throughput of the siblings.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 435 +++++++++---------
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 146 ------
 drivers/gpu/drm/i915/i915_request.c           |  12 +-
 drivers/gpu/drm/i915/i915_scheduler.c         |  70 ++-
 drivers/gpu/drm/i915/i915_scheduler.h         |   4 +-
 5 files changed, 281 insertions(+), 386 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 31d36057c729..9c929688a955 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -160,17 +160,6 @@ struct virtual_engine {
 	struct intel_context context;
 	struct rcu_work rcu;
 
-	/*
-	 * We allow only a single request through the virtual engine at a time
-	 * (each request in the timeline waits for the completion fence of
-	 * the previous before being submitted). By restricting ourselves to
-	 * only submitting a single request, each request is placed on to a
-	 * physical to maximise load spreading (by virtue of the late greedy
-	 * scheduling -- each real engine takes the next available request
-	 * upon idling).
-	 */
-	struct i915_request *request;
-
 	/*
 	 * We keep a rbtree of available virtual engines inside each physical
 	 * engine, sorted by priority. Here we preallocate the nodes we need
@@ -274,17 +263,24 @@ static struct i915_request *first_request(const struct i915_sched *se)
 					sched.link);
 }
 
-static struct i915_request *first_virtual(const struct intel_engine_cs *engine)
+static struct virtual_engine *
+first_virtual_engine(const struct intel_engine_cs *engine)
 {
-	struct rb_node *rb;
+	return rb_entry_safe(rb_first_cached(&engine->execlists.virtual),
+			     struct virtual_engine,
+			     nodes[engine->id].rb);
+}
 
-	rb = rb_first_cached(&engine->execlists.virtual);
-	if (!rb)
+static const struct i915_request *
+first_virtual(const struct intel_engine_cs *engine)
+{
+	struct virtual_engine *ve;
+
+	ve = first_virtual_engine(engine);
+	if (!ve)
 		return NULL;
 
-	return READ_ONCE(rb_entry(rb,
-				  struct virtual_engine,
-				  nodes[engine->id].rb)->request);
+	return first_request(&ve->base.sched);
 }
 
 static const struct i915_request *
@@ -500,7 +496,7 @@ static void execlists_schedule_in(struct i915_request *rq, int idx)
 	trace_i915_request_in(rq, idx);
 
 	old = ce->inflight;
-	if (!old)
+	if (!__intel_context_inflight_count(old))
 		old = __execlists_schedule_in(rq);
 	WRITE_ONCE(ce->inflight, ptr_inc(old));
 
@@ -510,31 +506,43 @@ static void execlists_schedule_in(struct i915_request *rq, int idx)
 static void
 resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 {
-	struct i915_sched *se = i915_request_get_scheduler(rq);
+	struct i915_sched *se = intel_engine_get_scheduler(&ve->base);
+	struct i915_sched *pv = i915_request_get_scheduler(rq);
+	struct i915_request *pos = rq;
+	struct intel_timeline *tl;
 
-	spin_lock_irq(&se->lock);
+	spin_lock_irq(&pv->lock);
 
-	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-	WRITE_ONCE(rq->engine, &ve->base);
-	ve->base.sched.submit_request(rq);
+	if (__i915_request_is_complete(rq))
+		goto unlock;
 
-	spin_unlock_irq(&se->lock);
+	tl = i915_request_active_timeline(rq);
+
+	/* Rewind back to the start of this virtual engine queue */
+	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
+		if (!i915_request_in_priority_queue(rq))
+			break;
+
+		pos = rq;
+	}
+
+	/* Resubmit the queue in execution order */
+	spin_lock(&se->lock);
+	list_for_each_entry_from(pos, &tl->requests, link) {
+		if (pos->engine == &ve->base)
+			break;
+
+		__i915_request_requeue(pos, &ve->base);
+	}
+	spin_unlock(&se->lock);
+
+unlock:
+	spin_unlock_irq(&pv->lock);
 }
 
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
-	struct intel_engine_cs *engine = rq->engine;
-
-	/*
-	 * After this point, the rq may be transferred to a new sibling, so
-	 * before we clear ce->inflight make sure that the context has been
-	 * removed from the b->signalers and furthermore we need to make sure
-	 * that the concurrent iterator in signal_irq_work is no longer
-	 * following ce->signal_link.
-	 */
-	if (!list_empty(&ce->signals))
-		intel_context_remove_breadcrumbs(ce, engine->breadcrumbs);
 
 	/*
 	 * This engine is now too busy to run this virtual request, so
@@ -543,11 +551,11 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 	 * same as other native request.
 	 */
 	if (i915_request_in_priority_queue(rq) &&
-	    rq->execution_mask != engine->mask)
+	    rq->execution_mask != rq->engine->mask)
 		resubmit_virtual_request(rq, ve);
 
-	if (READ_ONCE(ve->request))
-		intel_engine_kick_scheduler(&ve->base);
+	if (!i915_sched_is_idle(&ve->base.sched))
+		i915_sched_kick(&ve->base.sched);
 }
 
 static void __execlists_schedule_out(struct i915_request * const rq,
@@ -896,10 +904,16 @@ static bool ctx_single_port_submission(const struct intel_context *ce)
 		intel_context_force_single_submission(ce));
 }
 
+static bool __can_merge_ctx(const struct intel_context *prev,
+			    const struct intel_context *next)
+{
+	return prev == next;
+}
+
 static bool can_merge_ctx(const struct intel_context *prev,
 			  const struct intel_context *next)
 {
-	if (prev != next)
+	if (!__can_merge_ctx(prev, next))
 		return false;
 
 	if (ctx_single_port_submission(prev))
@@ -970,31 +984,6 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
-static struct virtual_engine *
-first_virtual_engine(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists *el = &engine->execlists;
-	struct rb_node *rb = rb_first_cached(&el->virtual);
-
-	while (rb) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		struct i915_request *rq = READ_ONCE(ve->request);
-
-		/* lazily cleanup after another engine handled rq */
-		if (!rq || !virtual_matches(ve, rq, engine)) {
-			rb_erase_cached(rb, &el->virtual);
-			RB_CLEAR_NODE(rb);
-			rb = rb_first_cached(&el->virtual);
-			continue;
-		}
-
-		return ve;
-	}
-
-	return NULL;
-}
-
 static void virtual_xfer_context(struct virtual_engine *ve,
 				 struct intel_engine_cs *engine)
 {
@@ -1003,6 +992,10 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	if (likely(engine == ve->siblings[0]))
 		return;
 
+	if (!list_empty(&ve->context.signals))
+		intel_context_remove_breadcrumbs(&ve->context,
+						 ve->siblings[0]->breadcrumbs);
+
 	GEM_BUG_ON(READ_ONCE(ve->context.inflight));
 	if (!intel_engine_has_relative_mmio(engine))
 		lrc_update_offsets(&ve->context, engine);
@@ -1175,6 +1168,118 @@ static bool completed(const struct i915_request *rq)
 	return __i915_request_is_complete(rq);
 }
 
+static void __virtual_dequeue(struct virtual_engine *ve,
+			      struct intel_engine_cs *sibling)
+{
+	struct ve_node * const node = &ve->nodes[sibling->id];
+	struct rb_node **parent, *rb;
+	struct i915_request *rq;
+	u64 deadline;
+	bool first;
+
+	rb_erase_cached(&node->rb, &sibling->execlists.virtual);
+	RB_CLEAR_NODE(&node->rb);
+
+	rq = first_request(&ve->base.sched);
+	if (!virtual_matches(ve, rq, sibling))
+		return;
+
+	rb = NULL;
+	first = true;
+	parent = &sibling->execlists.virtual.rb_root.rb_node;
+	deadline = rq_deadline(rq);
+	while (*parent) {
+		struct ve_node *other;
+
+		rb = *parent;
+		other = rb_entry(rb, typeof(*other), rb);
+		if (deadline <= other->deadline) {
+			parent = &rb->rb_left;
+		} else {
+			parent = &rb->rb_right;
+			first = false;
+		}
+	}
+
+	rb_link_node(&node->rb, rb, parent);
+	rb_insert_color_cached(&node->rb, &sibling->execlists.virtual, first);
+}
+
+static void virtual_requeue(struct intel_engine_cs *engine,
+			    struct i915_request *last)
+{
+	const struct i915_request * const first =
+		first_request(intel_engine_get_scheduler(engine));
+	struct virtual_engine *ve;
+
+	while ((ve = first_virtual_engine(engine))) {
+		struct i915_sched *se = intel_engine_get_scheduler(&ve->base);
+		struct i915_request *rq;
+
+		spin_lock(&se->lock);
+
+		rq = first_request(se);
+		if (unlikely(!virtual_matches(ve, rq, engine)))
+			/* lost the race to a sibling */
+			goto unlock;
+
+		GEM_BUG_ON(rq->engine != &ve->base);
+		GEM_BUG_ON(rq->context != &ve->context);
+
+		if (last && !__can_merge_ctx(last->context, rq->context)) {
+			spin_unlock(&se->lock);
+			return; /* leave this for another sibling? */
+		}
+
+		if (!dl_before(rq, first)) {
+			spin_unlock(&se->lock);
+			return;
+		}
+
+		ENGINE_TRACE(engine,
+			     "virtual rq=%llx:%lld%s, dl %lld, new engine? %s\n",
+			     rq->fence.context,
+			     rq->fence.seqno,
+			     __i915_request_is_complete(rq) ? "!" :
+			     __i915_request_has_started(rq) ? "*" :
+			     "",
+			     rq_deadline(rq),
+			     yesno(engine != ve->siblings[0]));
+
+		GEM_BUG_ON(!(rq->execution_mask & engine->mask));
+		if (__i915_request_requeue(rq, engine)) {
+			/*
+			 * Only after we confirm that we will submit
+			 * this request (i.e. it has not already
+			 * completed), do we want to update the context.
+			 *
+			 * This serves two purposes. It avoids
+			 * unnecessary work if we are resubmitting an
+			 * already completed request after timeslicing.
+			 * But more importantly, it prevents us altering
+			 * ve->siblings[] on an idle context, where
+			 * we may be using ve->siblings[] in
+			 * virtual_context_enter / virtual_context_exit.
+			 */
+			virtual_xfer_context(ve, engine);
+
+			/* Bind this ve before we release the lock */
+			if (!ve->context.inflight)
+				WRITE_ONCE(ve->context.inflight, engine);
+
+			GEM_BUG_ON(rq->engine != engine);
+			GEM_BUG_ON(ve->siblings[0] != engine);
+			GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
+
+			last = rq;
+		}
+
+unlock:
+		__virtual_dequeue(ve, engine);
+		spin_unlock(&se->lock);
+	}
+}
+
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -1182,9 +1287,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request *last, * const *active;
-	struct virtual_engine *ve;
 	struct i915_priolist *pl;
-	struct rb_node *rb;
 	bool submit = false;
 
 	/*
@@ -1315,83 +1418,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	/* XXX virtual is always taking precedence */
-	while ((ve = first_virtual_engine(engine))) {
-		struct i915_request *rq;
-
-		spin_lock(&ve->base.sched.lock);
-
-		rq = ve->request;
-		if (unlikely(!virtual_matches(ve, rq, engine)))
-			goto unlock; /* lost the race to a sibling */
-
-		GEM_BUG_ON(rq->engine != &ve->base);
-		GEM_BUG_ON(rq->context != &ve->context);
-
-		if (!dl_before(rq, first_request(se))) {
-			spin_unlock(&ve->base.sched.lock);
-			break;
-		}
-
-		if (last && !can_merge_rq(last, rq)) {
-			spin_unlock(&ve->base.sched.lock);
-			spin_unlock(&se->lock);
-			return; /* leave this for another sibling */
-		}
-
-		ENGINE_TRACE(engine,
-			     "virtual rq=%llx:%lld%s, dl %llx, new engine? %s\n",
-			     rq->fence.context,
-			     rq->fence.seqno,
-			     __i915_request_is_complete(rq) ? "!" :
-			     __i915_request_has_started(rq) ? "*" :
-			     "",
-			     rq_deadline(rq),
-			     yesno(engine != ve->siblings[0]));
-		WRITE_ONCE(ve->request, NULL);
-
-		rb = &ve->nodes[engine->id].rb;
-		rb_erase_cached(rb, &execlists->virtual);
-		RB_CLEAR_NODE(rb);
-
-		GEM_BUG_ON(!(rq->execution_mask & engine->mask));
-		WRITE_ONCE(rq->engine, engine);
-
-		if (__i915_request_submit(rq)) {
-			/*
-			 * Only after we confirm that we will submit
-			 * this request (i.e. it has not already
-			 * completed), do we want to update the context.
-			 *
-			 * This serves two purposes. It avoids
-			 * unnecessary work if we are resubmitting an
-			 * already completed request after timeslicing.
-			 * But more importantly, it prevents us altering
-			 * ve->siblings[] on an idle context, where
-			 * we may be using ve->siblings[] in
-			 * virtual_context_enter / virtual_context_exit.
-			 */
-			virtual_xfer_context(ve, engine);
-			GEM_BUG_ON(ve->siblings[0] != engine);
-
-			submit = true;
-			last = rq;
-		}
-
-		i915_request_put(rq);
-unlock:
-		spin_unlock(&ve->base.sched.lock);
-
-		/*
-		 * Hmm, we have a bunch of virtual engine requests,
-		 * but the first one was already completed (thanks
-		 * preempt-to-busy!). Keep looking at the veng queue
-		 * until we have no more relevant requests (i.e.
-		 * the normal submit queue has higher priority).
-		 */
-		if (submit)
-			break;
-	}
+	if (!RB_EMPTY_ROOT(&execlists->virtual.rb_root))
+		virtual_requeue(engine, last);
 
 	for_each_priolist(pl, &se->queue) {
 		struct i915_request *rq, *rn;
@@ -1399,6 +1427,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		priolist_for_each_request_safe(rq, rn, pl) {
 			bool merge = true;
 
+			GEM_BUG_ON(i915_request_get_scheduler(rq) != se);
+
 			/*
 			 * Can we combine this request with the current port?
 			 * It has to be the same context/ringbuffer and not
@@ -2715,14 +2745,15 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		RB_CLEAR_NODE(rb);
 
 		spin_lock(&ve->base.sched.lock);
-		rq = fetch_and_zero(&ve->request);
-		if (rq) {
-			if (i915_request_mark_eio(rq)) {
-				rq->engine = engine;
-				__i915_request_submit(rq);
-				i915_request_put(rq);
+		for_each_priolist(pl, &ve->base.sched.queue) {
+			priolist_for_each_request_safe(rq, rn, pl) {
+				if (i915_request_mark_eio(rq)) {
+					rq->engine = engine;
+					__i915_request_submit(rq);
+					i915_request_put(rq);
+				}
 			}
-			i915_request_put(rq);
+			i915_priolist_advance(&ve->base.sched.queue, pl);
 		}
 		spin_unlock(&ve->base.sched.lock);
 	}
@@ -3039,11 +3070,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-static struct list_head *virtual_queue(struct virtual_engine *ve)
-{
-	return &ve->base.sched.default_priolist.requests;
-}
-
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
 {
 	struct virtual_engine *ve =
@@ -3054,19 +3080,19 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	GEM_BUG_ON(ve->context.inflight);
 
 	/* Preempt-to-busy may leave a stale request behind. */
-	if (unlikely(ve->request)) {
-		struct i915_request *old;
+	if (unlikely(!i915_sched_is_idle(se))) {
+		struct i915_request *rq, *rn;
+		struct i915_priolist *pl;
 
 		spin_lock_irq(&se->lock);
-
-		old = fetch_and_zero(&ve->request);
-		if (old) {
-			GEM_BUG_ON(!__i915_request_is_complete(old));
-			__i915_request_submit(old);
-			i915_request_put(old);
+		for_each_priolist(pl, &se->queue) {
+			priolist_for_each_request_safe(rq, rn, pl)
+				__i915_request_submit(rq);
+			i915_priolist_advance(&se->queue, pl);
 		}
-
 		spin_unlock_irq(&se->lock);
+
+		GEM_BUG_ON(!i915_sched_is_idle(se));
 	}
 
 	/*
@@ -3095,7 +3121,6 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 		spin_unlock_irq(&sibling->sched.lock);
 	}
 	GEM_BUG_ON(__tasklet_is_scheduled(&se->tasklet));
-	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 
 	lrc_fini(&ve->context);
 	intel_context_fini(&ve->context);
@@ -3214,46 +3239,43 @@ static const struct intel_context_ops virtual_context_ops = {
 	.destroy = virtual_context_destroy,
 };
 
-static intel_engine_mask_t
+static struct i915_request *
 virtual_submission_mask(struct virtual_engine *ve, u64 *deadline)
 {
 	struct i915_request *rq;
-	intel_engine_mask_t mask;
 
-	rq = READ_ONCE(ve->request);
+	rq = first_request(&ve->base.sched);
 	if (!rq)
-		return 0;
+		return NULL;
 
 	/* The rq is ready for submission; rq->execution_mask is now stable. */
-	mask = rq->execution_mask;
-	if (unlikely(!mask)) {
+	if (unlikely(!rq->execution_mask)) {
 		/* Invalid selection, submit to a random engine in error */
 		i915_request_set_error_once(rq, -ENODEV);
-		mask = ve->siblings[0]->mask;
+		WRITE_ONCE(rq->execution_mask, ALL_ENGINES);
 	}
 
 	*deadline = rq_deadline(rq);
 
 	ENGINE_TRACE(&ve->base, "rq=%llx:%llu, mask=%x, dl=%llu\n",
 		     rq->fence.context, rq->fence.seqno,
-		     mask, *deadline);
+		     rq->execution_mask, *deadline);
 
-	return mask;
+	return rq;
 }
 
 static void virtual_submission_tasklet(struct tasklet_struct *t)
 {
 	struct virtual_engine * const ve =
 		from_tasklet(ve, t, base.sched.tasklet);
-	intel_engine_mask_t mask;
+	struct i915_request *rq;
 	unsigned int n;
 	u64 deadline;
 
 	rcu_read_lock();
-	mask = virtual_submission_mask(ve, &deadline);
-	rcu_read_unlock();
-	if (unlikely(!mask))
-		return;
+	rq = virtual_submission_mask(ve, &deadline);
+	if (unlikely(!rq))
+		goto out;
 
 	for (n = 0; n < ve->num_siblings; n++) {
 		struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
@@ -3262,12 +3284,9 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 		struct rb_node **parent, *rb;
 		bool first;
 
-		if (!READ_ONCE(ve->request))
-			break; /* already handled by a sibling's tasklet */
-
 		spin_lock_irq(&se->lock);
 
-		if (unlikely(!(mask & sibling->mask))) {
+		if (unlikely(!virtual_matches(ve, rq, sibling))) {
 			if (!RB_EMPTY_NODE(&node->rb)) {
 				rb_erase_cached(&node->rb,
 						&sibling->execlists.virtual);
@@ -3324,46 +3343,9 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 		if (intel_context_inflight(&ve->context))
 			break;
 	}
-}
 
-static void virtual_submit_request(struct i915_request *rq)
-{
-	struct virtual_engine *ve = to_virtual_engine(rq->engine);
-	struct i915_sched *se = intel_engine_get_scheduler(&ve->base);
-	unsigned long flags;
-
-	ENGINE_TRACE(&ve->base, "rq=%llx:%lld\n",
-		     rq->fence.context,
-		     rq->fence.seqno);
-
-	GEM_BUG_ON(ve->base.sched.submit_request != virtual_submit_request);
-
-	spin_lock_irqsave(&se->lock, flags);
-
-	/* By the time we resubmit a request, it may be completed */
-	if (__i915_request_is_complete(rq)) {
-		__i915_request_submit(rq);
-		goto unlock;
-	}
-
-	if (ve->request) { /* background completion from preempt-to-busy */
-		GEM_BUG_ON(!__i915_request_is_complete(ve->request));
-		__i915_request_submit(ve->request);
-		i915_request_put(ve->request);
-	}
-
-	rq->sched.deadline =
-		min(rq->sched.deadline,
-		    i915_scheduler_next_virtual_deadline(rq_prio(rq)));
-	ve->request = i915_request_get(rq);
-
-	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
-	list_move_tail(&rq->sched.link, virtual_queue(ve));
-
-	intel_engine_kick_scheduler(&ve->base);
-
-unlock:
-	spin_unlock_irqrestore(&se->lock, flags);
+out:
+	rcu_read_unlock();
 }
 
 static struct ve_bond *
@@ -3455,8 +3437,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	ve->base.bond_execute = virtual_bond_execute;
 
-	INIT_LIST_HEAD(virtual_queue(ve));
-
 	intel_context_init(&ve->context, &ve->base);
 
 	ve->base.breadcrumbs = intel_breadcrumbs_create(NULL);
@@ -3539,7 +3519,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			ENGINE_VIRTUAL);
 	ve->base.sched.flags = sched;
 
-	ve->base.sched.submit_request = virtual_submit_request;
+	ve->base.sched.submit_request = i915_request_enqueue;
 	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
 
 	virtual_engine_initial_hint(ve);
@@ -3675,8 +3655,9 @@ static void execlists_show(struct drm_printer *m,
 	for (rb = rb_first_cached(&el->virtual); rb; rb = rb_next(rb)) {
 		struct virtual_engine *ve =
 			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		struct i915_request *rq = READ_ONCE(ve->request);
+		struct i915_request *rq;
 
+		rq = first_request(&ve->base.sched);
 		if (rq) {
 			if (count++ < max - 1)
 				show_request(m, rq, "\t\t", 0);
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 3d87674477da..721a66ef301a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4551,151 +4551,6 @@ static int live_virtual_bond(void *arg)
 	return 0;
 }
 
-static int reset_virtual_engine(struct intel_gt *gt,
-				struct intel_engine_cs **siblings,
-				unsigned int nsibling)
-{
-	struct intel_engine_cs *engine;
-	struct intel_context *ve;
-	struct igt_spinner spin;
-	struct i915_request *rq;
-	struct i915_sched *se;
-	unsigned int n;
-	int err = 0;
-
-	/*
-	 * In order to support offline error capture for fast preempt reset,
-	 * we need to decouple the guilty request and ensure that it and its
-	 * descendents are not executed while the capture is in progress.
-	 */
-
-	if (igt_spinner_init(&spin, gt))
-		return -ENOMEM;
-
-	ve = intel_execlists_create_virtual(siblings, nsibling);
-	if (IS_ERR(ve)) {
-		err = PTR_ERR(ve);
-		goto out_spin;
-	}
-
-	for (n = 0; n < nsibling; n++)
-		st_engine_heartbeat_disable(siblings[n]);
-
-	rq = igt_spinner_create_request(&spin, ve, MI_ARB_CHECK);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto out_heartbeat;
-	}
-	i915_request_add(rq);
-
-	if (!igt_wait_for_spinner(&spin, rq)) {
-		intel_gt_set_wedged(gt);
-		err = -ETIME;
-		goto out_heartbeat;
-	}
-
-	engine = rq->engine;
-	GEM_BUG_ON(engine == ve->engine);
-	se = intel_engine_get_scheduler(engine);
-
-	/* Take ownership of the reset and tasklet */
-	local_bh_disable();
-	if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
-			     &gt->reset.flags)) {
-		local_bh_enable();
-		intel_gt_set_wedged(gt);
-		err = -EBUSY;
-		goto out_heartbeat;
-	}
-	tasklet_disable(&se->tasklet);
-
-	se->tasklet.callback(&se->tasklet);
-	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
-
-	/* Fake a preemption event; failed of course */
-	spin_lock_irq(&se->lock);
-	__i915_sched_rewind_requests(engine);
-	spin_unlock_irq(&se->lock);
-	GEM_BUG_ON(rq->engine != engine);
-
-	/* Reset the engine while keeping our active request on hold */
-	i915_sched_suspend_request(engine, rq);
-	GEM_BUG_ON(!i915_request_on_hold(rq));
-
-	__intel_engine_reset_bh(engine, NULL);
-	GEM_BUG_ON(rq->fence.error != -EIO);
-
-	/* Release our grasp on the engine, letting CS flow again */
-	tasklet_enable(&se->tasklet);
-	clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags);
-	local_bh_enable();
-
-	/* Check that we do not resubmit the held request */
-	i915_request_get(rq);
-	if (!i915_request_wait(rq, 0, HZ / 5)) {
-		pr_err("%s: on hold request completed!\n",
-		       engine->name);
-		intel_gt_set_wedged(gt);
-		err = -EIO;
-		goto out_rq;
-	}
-	GEM_BUG_ON(!i915_request_on_hold(rq));
-
-	/* But is resubmitted on release */
-	i915_sched_resume_request(engine, rq);
-	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
-		pr_err("%s: held request did not complete!\n",
-		       engine->name);
-		intel_gt_set_wedged(gt);
-		err = -ETIME;
-	}
-
-out_rq:
-	i915_request_put(rq);
-out_heartbeat:
-	for (n = 0; n < nsibling; n++)
-		st_engine_heartbeat_enable(siblings[n]);
-
-	intel_context_put(ve);
-out_spin:
-	igt_spinner_fini(&spin);
-	return err;
-}
-
-static int live_virtual_reset(void *arg)
-{
-	struct intel_gt *gt = arg;
-	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
-	unsigned int class;
-
-	/*
-	 * Check that we handle a reset event within a virtual engine.
-	 * Only the physical engine is reset, but we have to check the flow
-	 * of the virtual requests around the reset, and make sure it is not
-	 * forgotten.
-	 */
-
-	if (intel_uc_uses_guc_submission(&gt->uc))
-		return 0;
-
-	if (!intel_has_reset_engine(gt))
-		return 0;
-
-	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
-		int nsibling, err;
-
-		nsibling = select_siblings(gt, class, siblings);
-		if (nsibling < 2)
-			continue;
-
-		err = reset_virtual_engine(gt, siblings, nsibling);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
 int intel_execlists_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
@@ -4727,7 +4582,6 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_virtual_preserved),
 		SUBTEST(live_virtual_slice),
 		SUBTEST(live_virtual_bond),
-		SUBTEST(live_virtual_reset),
 	};
 
 	if (i915->gt.submission_method != INTEL_SUBMISSION_ELSP)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index ce828dc73402..aa12289ea14b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1290,6 +1290,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 
 	GEM_BUG_ON(to == from);
 	GEM_BUG_ON(to->timeline == from->timeline);
+	GEM_BUG_ON(to->context == from->context);
 
 	if (i915_request_completed(from)) {
 		i915_sw_fence_set_error_once(&to->submit, from->fence.error);
@@ -1436,6 +1437,15 @@ i915_request_await_object(struct i915_request *to,
 	return ret;
 }
 
+static bool in_order_submission(const struct i915_request *prev,
+				const struct i915_request *rq)
+{
+	if (likely(prev->context == rq->context))
+		return true;
+
+	return is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask);
+}
+
 static struct i915_request *
 __i915_request_add_to_timeline(struct i915_request *rq)
 {
@@ -1475,7 +1485,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			   i915_seqno_passed(prev->fence.seqno,
 					     rq->fence.seqno));
 
-		if (is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask))
+		if (in_order_submission(prev, rq))
 			i915_sw_fence_await_sw_fence(&rq->submit,
 						     &prev->submit,
 						     &rq->submitq);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 5b68a5f07f64..de65e747e809 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -494,7 +494,9 @@ static void remove_from_priolist(struct i915_sched *se,
 	GEM_BUG_ON(!i915_request_in_priority_queue(rq));
 
 	__list_del_entry(&rq->sched.link);
-	if (tail)
+	if (!list)
+		INIT_LIST_HEAD(&rq->sched.link);
+	else if (tail)
 		list_add_tail(&rq->sched.link, list);
 	else
 		list_add(&rq->sched.link, list);
@@ -703,7 +705,7 @@ static u64 virtual_deadline(u64 kt, int priority)
 	return i915_sched_to_ticks(kt + prio_slice(priority));
 }
 
-u64 i915_scheduler_next_virtual_deadline(int priority)
+static u64 next_virtual_deadline(int priority)
 {
 	return virtual_deadline(ktime_get_mono_fast_ns(), priority);
 }
@@ -943,15 +945,13 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	spin_unlock_irqrestore(&engine->sched.lock, flags);
 }
 
-void __i915_sched_defer_request(struct intel_engine_cs *engine,
-				struct i915_request *rq)
+static void __defer_request(struct intel_engine_cs *engine,
+			    struct i915_request *rq,
+			    const u64 deadline)
 {
 	struct list_head *pos = &rq->sched.waiters_list;
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rn;
-	const u64 deadline =
-		max(rq_deadline(rq),
-		    i915_scheduler_next_virtual_deadline(adj_prio(rq)));
 	LIST_HEAD(dfs);
 
 	SCHED_TRACE(se, "defer request " RQ_FMT "\n", RQ_ARG(rq));
@@ -1025,6 +1025,14 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 	}
 }
 
+void __i915_sched_defer_request(struct intel_engine_cs *engine,
+				struct i915_request *rq)
+{
+	__defer_request(engine, rq,
+			max(rq_deadline(rq),
+			    next_virtual_deadline(adj_prio(rq))));
+}
+
 static bool queue_request(struct i915_request *rq)
 {
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
@@ -1064,6 +1072,48 @@ static bool ancestor_on_hold(const struct i915_sched *se,
 	return unlikely(!list_empty(&se->hold)) && hold_request(rq);
 }
 
+bool __i915_request_requeue(struct i915_request *rq,
+			    struct intel_engine_cs *engine)
+{
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
+
+	RQ_TRACE(rq, "transfer from %s to %s\n",
+		 rq->engine->name, engine->name);
+
+	lockdep_assert_held(&se->lock);
+	lockdep_assert_held(&i915_request_get_scheduler(rq)->lock);
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+	GEM_BUG_ON(rq->engine == engine);
+
+	remove_from_priolist(i915_request_get_scheduler(rq), rq, NULL, false);
+	WRITE_ONCE(rq->engine, engine);
+
+	if (__i915_request_is_complete(rq)) {
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
+		return false;
+	}
+
+	if (unlikely(ancestor_on_hold(se, rq))) {
+		RQ_TRACE(rq, "ancestor on hold\n");
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_add_tail(&rq->sched.link, &se->hold);
+		i915_request_set_hold(rq);
+	} else {
+		u64 deadline = min(earliest_deadline(rq), rq_deadline(rq));
+
+		/* Maintain request ordering wrt to existing on target */
+		__i915_request_set_deadline(rq, deadline);
+		if (!list_empty(&rq->sched.waiters_list))
+			__defer_request(engine, rq, deadline);
+
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+	}
+
+	GEM_BUG_ON(list_empty(&rq->sched.link));
+	return true;
+}
+
 void i915_request_enqueue(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
@@ -1115,9 +1165,9 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 		__i915_request_unsubmit(rq);
 
 		if (__i915_request_has_started(rq)) {
-			u64 deadline =
-				i915_scheduler_next_virtual_deadline(rq_prio(rq));
-			rq->sched.deadline = min(rq_deadline(rq), deadline);
+			rq->sched.deadline =
+				min(rq_deadline(rq),
+				    next_virtual_deadline(rq_prio(rq)));
 		}
 		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index f8057abed1e7..c5612dd4a081 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -51,9 +51,9 @@ void i915_request_set_deadline(struct i915_request *request, u64 deadline);
 
 void i915_request_update_deadline(struct i915_request *request);
 
-u64 i915_scheduler_next_virtual_deadline(int priority);
-
 void i915_request_enqueue(struct i915_request *request);
+bool __i915_request_requeue(struct i915_request *rq,
+			    struct intel_engine_cs *engine);
 
 struct i915_request *
 __i915_sched_rewind_requests(struct intel_engine_cs *engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
