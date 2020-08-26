Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EE6252FB1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B216E95E;
	Wed, 26 Aug 2020 13:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AB76E391
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244754-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:28:00 +0100
Message-Id: <20200826132811.17577-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/39] drm/i915/gt: Use virtual_engine during
 execlists_dequeue
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

Rather than going back and forth between the rb_node entry and the
virtual_engine type, store the ve local and reuse it. As the
container_of conversion from rb_node to virtual_engine requires a
variable offset, performing that conversion just once shaves off a bit
of code.

v2: Keep a single virtual engine lookup, for typical use.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 238 ++++++++++++----------------
 1 file changed, 104 insertions(+), 134 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 231fe39c88d5..10f1f945f097 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -454,9 +454,15 @@ static int queue_prio(const struct intel_engine_execlists *execlists)
 	return ((p->priority + 1) << I915_USER_PRIORITY_SHIFT) - ffs(p->used);
 }
 
+static int virtual_prio(const struct intel_engine_execlists *el)
+{
+	struct rb_node *rb = rb_first_cached(&el->virtual);
+
+	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
+}
+
 static inline bool need_preempt(const struct intel_engine_cs *engine,
-				const struct i915_request *rq,
-				struct rb_node *rb)
+				const struct i915_request *rq)
 {
 	int last_prio;
 
@@ -493,25 +499,6 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
 		return true;
 
-	if (rb) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		bool preempt = false;
-
-		if (engine == ve->siblings[0]) { /* only preempt one sibling */
-			struct i915_request *next;
-
-			rcu_read_lock();
-			next = READ_ONCE(ve->request);
-			if (next)
-				preempt = rq_prio(next) > last_prio;
-			rcu_read_unlock();
-		}
-
-		if (preempt)
-			return preempt;
-	}
-
 	/*
 	 * If the inflight context did not trigger the preemption, then maybe
 	 * it was the set of queued requests? Pick the highest priority in
@@ -522,7 +509,8 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	 * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
-	return queue_prio(&engine->execlists) > last_prio;
+	return max(virtual_prio(&engine->execlists),
+		   queue_prio(&engine->execlists)) > last_prio;
 }
 
 __maybe_unused static inline bool
@@ -1805,6 +1793,35 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
+static struct virtual_engine *
+first_virtual_engine(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists *el = &engine->execlists;
+	struct rb_node *rb = rb_first_cached(&el->virtual);
+
+	while (rb) {
+		struct virtual_engine *ve =
+			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+		struct i915_request *rq = READ_ONCE(ve->request);
+
+		/* lazily cleanup after another engine handled rq */
+		if (!rq) {
+			rb_erase_cached(rb, &el->virtual);
+			RB_CLEAR_NODE(rb);
+			rb = rb_first_cached(&el->virtual);
+			continue;
+		}
+
+		if (!virtual_matches(ve, rq, engine)) {
+			rb = rb_next(rb);
+			continue;
+		}
+		return ve;
+	}
+
+	return NULL;
+}
+
 static void virtual_xfer_context(struct virtual_engine *ve,
 				 struct intel_engine_cs *engine)
 {
@@ -1903,32 +1920,15 @@ static void defer_active(struct intel_engine_cs *engine)
 
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
-	       const struct i915_request *rq,
-	       const struct rb_node *rb)
+	       const struct i915_request *rq)
 {
 	int hint;
 
 	if (!intel_engine_has_timeslices(engine))
 		return false;
 
-	hint = engine->execlists.queue_priority_hint;
-
-	if (rb) {
-		const struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		const struct intel_engine_cs *inflight =
-			intel_context_inflight(&ve->context);
-
-		if (!inflight || inflight == engine) {
-			struct i915_request *next;
-
-			rcu_read_lock();
-			next = READ_ONCE(ve->request);
-			if (next)
-				hint = max(hint, rq_prio(next));
-			rcu_read_unlock();
-		}
-	}
+	hint = max(engine->execlists.queue_priority_hint,
+		   virtual_prio(&engine->execlists));
 
 	if (!list_is_last(&rq->sched.link, &engine->active.requests))
 		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
@@ -2075,6 +2075,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request *last = *execlists->active;
+	struct virtual_engine *ve;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -2102,26 +2103,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 	spin_lock(&engine->active.lock);
 
-	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		struct i915_request *rq = READ_ONCE(ve->request);
-
-		if (!rq) { /* lazily cleanup after another engine handled rq */
-			rb_erase_cached(rb, &execlists->virtual);
-			RB_CLEAR_NODE(rb);
-			rb = rb_first_cached(&execlists->virtual);
-			continue;
-		}
-
-		if (!virtual_matches(ve, rq, engine)) {
-			rb = rb_next(rb);
-			continue;
-		}
-
-		break;
-	}
-
 	/*
 	 * If the queue is higher priority than the last
 	 * request in the currently active context, submit afresh.
@@ -2144,7 +2125,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	if (last) {
 		if (i915_request_completed(last)) {
 			goto check_secondary;
-		} else if (need_preempt(engine, last, rb)) {
+		} else if (need_preempt(engine, last)) {
 			ENGINE_TRACE(engine,
 				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
@@ -2170,7 +2151,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last, rb) &&
+		} else if (need_timeslice(engine, last) &&
 			   timeslice_expired(execlists, last)) {
 			ENGINE_TRACE(engine,
 				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
@@ -2221,96 +2202,85 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	while (rb) { /* XXX virtual is always taking precedence */
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	/* XXX virtual is always taking precedence */
+	while ((ve = first_virtual_engine(engine))) {
 		struct i915_request *rq;
 
 		spin_lock(&ve->base.active.lock);
 
 		rq = ve->request;
-		if (unlikely(!rq)) { /* lost the race to a sibling */
-			spin_unlock(&ve->base.active.lock);
-			rb_erase_cached(rb, &execlists->virtual);
-			RB_CLEAR_NODE(rb);
-			rb = rb_first_cached(&execlists->virtual);
-			continue;
-		}
+		if (unlikely(!rq)) /* lost the race to a sibling */
+			goto unlock;
 
-		GEM_BUG_ON(rq != ve->request);
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (rq_prio(rq) >= queue_prio(execlists)) {
-			if (!virtual_matches(ve, rq, engine)) {
-				spin_unlock(&ve->base.active.lock);
-				rb = rb_next(rb);
-				continue;
-			}
+		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
+			spin_unlock(&ve->base.active.lock);
+			break;
+		}
 
-			if (last && !can_merge_rq(last, rq)) {
-				spin_unlock(&ve->base.active.lock);
-				spin_unlock(&engine->active.lock);
-				start_timeslice(engine, rq_prio(rq));
-				return; /* leave this for another sibling */
-			}
+		if (last && !can_merge_rq(last, rq)) {
+			spin_unlock(&ve->base.active.lock);
+			spin_unlock(&engine->active.lock);
+			start_timeslice(engine, rq_prio(rq));
+			return; /* leave this for another sibling */
+		}
 
-			ENGINE_TRACE(engine,
-				     "virtual rq=%llx:%lld%s, new engine? %s\n",
-				     rq->fence.context,
-				     rq->fence.seqno,
-				     i915_request_completed(rq) ? "!" :
-				     i915_request_started(rq) ? "*" :
-				     "",
-				     yesno(engine != ve->siblings[0]));
-
-			WRITE_ONCE(ve->request, NULL);
-			WRITE_ONCE(ve->base.execlists.queue_priority_hint,
-				   INT_MIN);
-			rb_erase_cached(rb, &execlists->virtual);
-			RB_CLEAR_NODE(rb);
+		ENGINE_TRACE(engine,
+			     "virtual rq=%llx:%lld%s, new engine? %s\n",
+			     rq->fence.context,
+			     rq->fence.seqno,
+			     i915_request_completed(rq) ? "!" :
+			     i915_request_started(rq) ? "*" :
+			     "",
+			     yesno(engine != ve->siblings[0]));
+		GEM_BUG_ON(!virtual_matches(ve, rq, engine));
 
-			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
-			WRITE_ONCE(rq->engine, engine);
+		WRITE_ONCE(ve->request, NULL);
+		WRITE_ONCE(ve->base.execlists.queue_priority_hint, INT_MIN);
 
-			if (__i915_request_submit(rq)) {
-				/*
-				 * Only after we confirm that we will submit
-				 * this request (i.e. it has not already
-				 * completed), do we want to update the context.
-				 *
-				 * This serves two purposes. It avoids
-				 * unnecessary work if we are resubmitting an
-				 * already completed request after timeslicing.
-				 * But more importantly, it prevents us altering
-				 * ve->siblings[] on an idle context, where
-				 * we may be using ve->siblings[] in
-				 * virtual_context_enter / virtual_context_exit.
-				 */
-				virtual_xfer_context(ve, engine);
-				GEM_BUG_ON(ve->siblings[0] != engine);
+		rb = &ve->nodes[engine->id].rb;
+		rb_erase_cached(rb, &execlists->virtual);
+		RB_CLEAR_NODE(rb);
 
-				submit = true;
-				last = rq;
-			}
-			i915_request_put(rq);
+		GEM_BUG_ON(!(rq->execution_mask & engine->mask));
+		WRITE_ONCE(rq->engine, engine);
 
+		if (__i915_request_submit(rq)) {
 			/*
-			 * Hmm, we have a bunch of virtual engine requests,
-			 * but the first one was already completed (thanks
-			 * preempt-to-busy!). Keep looking at the veng queue
-			 * until we have no more relevant requests (i.e.
-			 * the normal submit queue has higher priority).
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
 			 */
-			if (!submit) {
-				spin_unlock(&ve->base.active.lock);
-				rb = rb_first_cached(&execlists->virtual);
-				continue;
-			}
+			virtual_xfer_context(ve, engine);
+			GEM_BUG_ON(ve->siblings[0] != engine);
+
+			submit = true;
+			last = rq;
 		}
 
+		i915_request_put(rq);
+unlock:
 		spin_unlock(&ve->base.active.lock);
-		break;
+
+		/*
+		 * Hmm, we have a bunch of virtual engine requests,
+		 * but the first one was already completed (thanks
+		 * preempt-to-busy!). Keep looking at the veng queue
+		 * until we have no more relevant requests (i.e.
+		 * the normal submit queue has higher priority).
+		 */
+		if (submit)
+			break;
 	}
 
 	while ((rb = rb_first_cached(&execlists->queue))) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
