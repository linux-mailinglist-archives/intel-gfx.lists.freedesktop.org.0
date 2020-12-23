Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8E2E1B7B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1786E911;
	Wed, 23 Dec 2020 11:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846736E088
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412230-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:11:09 +0000
Message-Id: <20201223111126.3338-45-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 45/62] drm/i915/gt: Support virtual engine queues
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
 .../drm/i915/gt/intel_execlists_submission.c  | 396 +++++++++---------
 drivers/gpu/drm/i915/i915_request.c           |   3 +-
 drivers/gpu/drm/i915/i915_scheduler.c         |  57 ++-
 drivers/gpu/drm/i915/i915_scheduler.h         |   2 +
 4 files changed, 256 insertions(+), 202 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 019be45b1eb4..b48ab6dab738 100644
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
@@ -272,17 +261,27 @@ static struct i915_request *first_request(struct i915_sched_engine *se)
 	return NULL;
 }
 
-static struct i915_request *first_virtual(const struct intel_engine_cs *engine)
+static struct virtual_engine *
+first_virtual_engine(struct intel_engine_cs *engine)
 {
-	struct rb_node *rb;
+	return rb_entry_safe(rb_first_cached(&engine->execlists.virtual),
+			     struct virtual_engine,
+			     nodes[engine->id].rb);
+}
 
-	rb = rb_first_cached(&engine->execlists.virtual);
-	if (!rb)
-		return NULL;
+static const struct i915_request *first_virtual(struct intel_engine_cs *engine)
+{
+	struct i915_request *rq = NULL;
+	struct virtual_engine *ve;
+
+	ve = first_virtual_engine(engine);
+	if (ve) {
+		spin_lock(&ve->base.active.lock);
+		rq = first_request(&ve->base.active);
+		spin_unlock(&ve->base.active.lock);
+	}
 
-	return READ_ONCE(rb_entry(rb,
-				  struct virtual_engine,
-				  nodes[engine->id].rb)->request);
+	return rq;
 }
 
 static const struct i915_request *
@@ -379,7 +378,15 @@ assert_priority_queue(const struct i915_request *prev,
 	if (i915_request_is_active(prev))
 		return true;
 
-	return rq_deadline(prev) <= rq_deadline(next);
+	if (rq_deadline(prev) <= rq_deadline(next))
+		return true;
+
+	ENGINE_TRACE(prev->engine,
+		     "next %llx:%lld dl %lld is before prev %llx:%lld dl %lld\n",
+		     next->fence.context, next->fence.seqno, rq_deadline(next),
+		     prev->fence.context, prev->fence.seqno, rq_deadline(prev));
+
+	return false;
 }
 
 static inline void
@@ -485,7 +492,7 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 	trace_i915_request_in(rq, idx);
 
 	old = ce->inflight;
-	if (!old)
+	if (!__intel_context_inflight_count(old))
 		old = __execlists_schedule_in(rq);
 	WRITE_ONCE(ce->inflight, ptr_inc(old));
 
@@ -493,9 +500,11 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 }
 
 static void
-resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
+__resubmit_virtual_request(struct i915_request *rq,
+			   struct intel_engine_cs *engine,
+			   struct virtual_engine *ve)
 {
-	struct intel_engine_cs *engine = rq->engine;
+	GEM_BUG_ON(rq->engine != engine);
 
 	/* Flush concurrent rcu iterators in signal_irq_work */
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags)) {
@@ -512,12 +521,42 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 			cpu_relax();
 	}
 
+	__i915_request_requeue(rq, &ve->base);
+}
+
+static void
+resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct i915_request *pos = rq;
+	struct intel_timeline *tl;
+
 	spin_lock_irq(&engine->active.lock);
 
-	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-	WRITE_ONCE(rq->engine, &ve->base);
-	ve->base.submit_request(rq);
+	if (__i915_request_is_complete(rq))
+		goto unlock;
+
+	tl = i915_request_active_timeline(rq);
+
+	/* Rewind back to the start of this virtual engine queue */
+	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
+		if (__i915_request_is_complete(rq))
+			break;
 
+		pos = rq;
+	}
+
+	/* Resubmit the queue in execution order */
+	spin_lock(&ve->base.active.lock);
+	list_for_each_entry_from(pos, &tl->requests, link) {
+		if (pos->engine != engine)
+			break;
+
+		__resubmit_virtual_request(pos, engine, ve);
+	}
+	spin_unlock(&ve->base.active.lock);
+
+unlock:
 	spin_unlock_irq(&engine->active.lock);
 }
 
@@ -536,7 +575,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 	    rq->execution_mask != engine->mask)
 		resubmit_virtual_request(rq, ve);
 
-	if (READ_ONCE(ve->request))
+	if (!i915_sched_is_idle(&ve->base.active))
 		i915_sched_kick(&ve->base.active);
 }
 
@@ -883,10 +922,16 @@ static bool ctx_single_port_submission(const struct intel_context *ce)
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
@@ -935,6 +980,9 @@ static bool virtual_matches(const struct virtual_engine *ve,
 {
 	const struct intel_engine_cs *inflight;
 
+	if (!rq)
+		return false;
+
 	if (!(rq->execution_mask & engine->mask)) /* We peeked too soon! */
 		return false;
 
@@ -954,31 +1002,6 @@ static bool virtual_matches(const struct virtual_engine *ve,
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
@@ -1137,15 +1160,124 @@ static bool completed(const struct i915_request *rq)
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
+	rq = first_request(&ve->base.active);
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
+		first_request(&engine->active);
+	struct virtual_engine *ve;
+
+	while ((ve = first_virtual_engine(engine))) {
+		struct i915_request *rq;
+
+		spin_lock(&ve->base.active.lock);
+
+		rq = first_request(&ve->base.active);
+		if (unlikely(!virtual_matches(ve, rq, engine)))
+			/* lost the race to a sibling */
+			goto unlock;
+
+		GEM_BUG_ON(rq->engine != &ve->base);
+		GEM_BUG_ON(rq->context != &ve->context);
+
+		if (!dl_before(rq, first)) {
+			spin_unlock(&ve->base.active.lock);
+			break;
+		}
+
+		if (last && !__can_merge_ctx(last->context, rq->context)) {
+			spin_unlock(&ve->base.active.lock);
+			break; /* leave this for another sibling? */
+		}
+
+		ENGINE_TRACE(engine,
+			     "virtual rq=%llx:%lld%s, dl %llx, new engine? %s\n",
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
+		spin_unlock(&ve->base.active.lock);
+	}
+}
+
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request *last, * const *active;
-	struct virtual_engine *ve;
 	struct i915_priolist *pl;
-	struct rb_node *rb;
 	bool submit = false;
 
 	/*
@@ -1262,85 +1394,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	/* XXX virtual is always taking precedence */
-	while ((ve = first_virtual_engine(engine))) {
-		struct i915_request *rq;
-
-		spin_lock(&ve->base.active.lock);
-
-		rq = ve->request;
-		if (unlikely(!rq)) /* lost the race to a sibling */
-			goto unlock;
-
-		GEM_BUG_ON(rq->engine != &ve->base);
-		GEM_BUG_ON(rq->context != &ve->context);
-
-		if (!dl_before(rq, first_request(&engine->active))) {
-			spin_unlock(&ve->base.active.lock);
-			break;
-		}
-
-		GEM_BUG_ON(!virtual_matches(ve, rq, engine));
-
-		if (last && !can_merge_rq(last, rq)) {
-			spin_unlock(&ve->base.active.lock);
-			spin_unlock(&engine->active.lock);
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
-		spin_unlock(&ve->base.active.lock);
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
+	virtual_requeue(engine, last);
 
 	for_each_priolist(pl, &engine->active.queue) {
 		struct i915_request *rq, *rn;
@@ -1348,6 +1402,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		priolist_for_each_request_safe(rq, rn, pl) {
 			bool merge = true;
 
+			GEM_BUG_ON(rq->engine != engine);
+
 			/*
 			 * Can we combine this request with the current port?
 			 * It has to be the same context/ringbuffer and not
@@ -2679,13 +2735,11 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		RB_CLEAR_NODE(rb);
 
 		spin_lock(&ve->base.active.lock);
-		rq = fetch_and_zero(&ve->request);
-		if (rq) {
+		while ((rq = first_request(&ve->base.active))) {
 			mark_eio(rq);
 
 			rq->engine = engine;
 			__i915_request_submit(rq);
-			i915_request_put(rq);
 		}
 		spin_unlock(&ve->base.active.lock);
 	}
@@ -2919,11 +2973,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-static struct list_head *virtual_queue(struct virtual_engine *ve)
-{
-	return &ve->base.active.default_priolist.requests;
-}
-
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
 {
 	struct virtual_engine *ve =
@@ -2933,17 +2982,13 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	GEM_BUG_ON(ve->context.inflight);
 
 	/* Preempt-to-busy may leave a stale request behind. */
-	if (unlikely(ve->request)) {
+	if (unlikely(!i915_sched_is_idle(&ve->base.active))) {
 		struct i915_request *old;
 
 		spin_lock_irq(&ve->base.active.lock);
 
-		old = fetch_and_zero(&ve->request);
-		if (old) {
-			GEM_BUG_ON(!i915_request_completed(old));
+		while ((old = first_request(&ve->base.active)))
 			__i915_request_submit(old);
-			i915_request_put(old);
-		}
 
 		spin_unlock_irq(&ve->base.active.lock);
 	}
@@ -2974,7 +3019,6 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 		spin_unlock_irq(&sibling->active.lock);
 	}
 	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.active.tasklet));
-	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 
 	lrc_fini(&ve->context);
 	intel_context_fini(&ve->context);
@@ -3097,7 +3141,9 @@ virtual_submission_mask(struct virtual_engine *ve, u64 *deadline)
 	struct i915_request *rq;
 	intel_engine_mask_t mask;
 
-	rq = READ_ONCE(ve->request);
+	spin_lock_irq(&ve->base.active.lock);
+	rq = first_request(&ve->base.active);
+	spin_unlock_irq(&ve->base.active.lock);
 	if (!rq)
 		return 0;
 
@@ -3137,9 +3183,6 @@ static void virtual_submission_tasklet(unsigned long data)
 		struct rb_node **parent, *rb;
 		bool first;
 
-		if (!READ_ONCE(ve->request))
-			break; /* already handled by a sibling's tasklet */
-
 		spin_lock_irq(&sibling->active.lock);
 
 		if (unlikely(!(mask & sibling->mask))) {
@@ -3201,45 +3244,6 @@ static void virtual_submission_tasklet(unsigned long data)
 	}
 }
 
-static void virtual_submit_request(struct i915_request *rq)
-{
-	struct virtual_engine *ve = to_virtual_engine(rq->engine);
-	unsigned long flags;
-
-	ENGINE_TRACE(&ve->base, "rq=%llx:%lld\n",
-		     rq->fence.context,
-		     rq->fence.seqno);
-
-	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
-
-	spin_lock_irqsave(&ve->base.active.lock, flags);
-
-	/* By the time we resubmit a request, it may be completed */
-	if (__i915_request_is_complete(rq)) {
-		__i915_request_submit(rq);
-		goto unlock;
-	}
-
-	if (ve->request) { /* background completion from preempt-to-busy */
-		GEM_BUG_ON(!i915_request_completed(ve->request));
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
-	i915_sched_kick(&ve->base.active);
-
-unlock:
-	spin_unlock_irqrestore(&ve->base.active.lock, flags);
-}
-
 static struct ve_bond *
 virtual_find_bond(struct virtual_engine *ve,
 		  const struct intel_engine_cs *master)
@@ -3327,10 +3331,9 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
 
-	ve->base.submit_request = virtual_submit_request;
+	ve->base.submit_request = i915_request_enqueue;
 	ve->base.bond_execute = virtual_bond_execute;
 
-	INIT_LIST_HEAD(virtual_queue(ve));
 	tasklet_init(&ve->base.active.tasklet,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
@@ -3538,14 +3541,17 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 	for (rb = rb_first_cached(&execlists->virtual); rb; rb = rb_next(rb)) {
 		struct virtual_engine *ve =
 			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		struct i915_request *rq = READ_ONCE(ve->request);
+		struct i915_request *rq;
 
+		spin_lock(&ve->base.active.lock);
+		rq = first_request(&ve->base.active);
 		if (rq) {
 			if (count++ < max - 1)
 				show_request(m, rq, "\t\t", 0);
 			else
 				last = rq;
 		}
+		spin_unlock(&ve->base.active.lock);
 	}
 	if (last) {
 		if (count > max) {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c72a8710fe98..e636c68d4776 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1346,6 +1346,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 
 	GEM_BUG_ON(to == from);
 	GEM_BUG_ON(to->timeline == from->timeline);
+	GEM_BUG_ON(to->context == from->context);
 
 	if (i915_request_completed(from)) {
 		i915_sw_fence_set_error_once(&to->submit, from->fence.error);
@@ -1531,7 +1532,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			   i915_seqno_passed(prev->fence.seqno,
 					     rq->fence.seqno));
 
-		if (is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask))
+		if (prev->context == rq->context)
 			i915_sw_fence_await_sw_fence(&rq->submit,
 						     &prev->submit,
 						     &rq->submitq);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 238656b37d86..b1e9fb4cec26 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -766,20 +766,17 @@ bool __intel_engine_queue_request(struct intel_engine_cs *engine,
 	return set_earliest_deadline(rq, I915_DEADLINE_NEVER);
 }
 
-void __intel_engine_defer_request(struct intel_engine_cs *engine,
-				  struct i915_request *rq)
+static void __defer_request(struct intel_engine_cs *engine,
+			    struct i915_request *rq,
+			    u64 deadline)
 {
 	struct list_head *pos = &rq->sched.waiters_list;
 	struct i915_request *rn;
 	LIST_HEAD(dfs);
-	u64 deadline;
 
 	lockdep_assert_held(&engine->active.lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
-	deadline = max(rq_deadline(rq),
-		       i915_scheduler_next_virtual_deadline(adj_prio(rq)));
-
 	/*
 	 * When we defer a request, we must maintain its order with respect
 	 * to those that are waiting upon it. So we traverse its chain of
@@ -847,6 +844,14 @@ void __intel_engine_defer_request(struct intel_engine_cs *engine,
 	}
 }
 
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq)
+{
+	__defer_request(engine, rq,
+			max(rq_deadline(rq),
+			    i915_scheduler_next_virtual_deadline(adj_prio(rq))));
+}
+
 static bool hold_request(const struct i915_request *rq)
 {
 	struct i915_dependency *p;
@@ -880,6 +885,46 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
 	return unlikely(!list_empty(&engine->active.hold)) && hold_request(rq);
 }
 
+bool __i915_request_requeue(struct i915_request *rq,
+			    struct intel_engine_cs *engine)
+{
+	RQ_TRACE(rq, "transfer from %s to %s\n",
+		 rq->engine->name, engine->name);
+
+	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&rq->engine->active.lock);
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+	GEM_BUG_ON(rq->engine == engine);
+
+	list_del_init(&rq->sched.link);
+	WRITE_ONCE(rq->engine, engine);
+
+	if (__i915_request_is_complete(rq)) {
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
+		return false;
+	}
+
+	if (unlikely(ancestor_on_hold(engine, rq))) {
+		RQ_TRACE(rq, "ancestor on hold\n");
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_add_tail(&rq->sched.link, &engine->active.hold);
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
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index a19c6970cc5c..5df3cf385bd1 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -44,6 +44,8 @@ u64 i915_scheduler_virtual_deadline(u64 kt, int priority);
 u64 i915_scheduler_next_virtual_deadline(int priority);
 
 void i915_request_enqueue(struct i915_request *request);
+bool __i915_request_requeue(struct i915_request *rq,
+			    struct intel_engine_cs *engine);
 
 bool __intel_engine_queue_request(struct intel_engine_cs *engine,
 				  struct i915_request *request);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
