Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792691D9015
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 08:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C9B6E500;
	Tue, 19 May 2020 06:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 100646E4F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 06:31:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21237972-1500050 
 for multiple; Tue, 19 May 2020 07:31:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 07:31:21 +0100
Message-Id: <20200519063123.20673-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519063123.20673-1-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/gt: Use virtual_engine during
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
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 217 +++++++++++++---------------
 1 file changed, 104 insertions(+), 113 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 42cb0cae2845..fe9e31a25a76 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -454,7 +454,7 @@ static int queue_prio(const struct intel_engine_execlists *execlists)
 
 static inline bool need_preempt(const struct intel_engine_cs *engine,
 				const struct i915_request *rq,
-				struct rb_node *rb)
+				struct virtual_engine *ve)
 {
 	int last_prio;
 
@@ -491,9 +491,7 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
 		return true;
 
-	if (rb) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	if (ve) {
 		bool preempt = false;
 
 		if (engine == ve->siblings[0]) { /* only preempt one sibling */
@@ -1815,6 +1813,35 @@ static bool virtual_matches(const struct virtual_engine *ve,
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
+		if (!rq) { /* lazily cleanup after another engine handled rq */
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
+
+		return ve;
+	}
+
+	return NULL;
+}
+
 static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
 {
 	/*
@@ -1899,7 +1926,7 @@ static void defer_active(struct intel_engine_cs *engine)
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
 	       const struct i915_request *rq,
-	       const struct rb_node *rb)
+	       struct virtual_engine *ve)
 {
 	int hint;
 
@@ -1908,9 +1935,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 
 	hint = engine->execlists.queue_priority_hint;
 
-	if (rb) {
-		const struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	if (ve) {
 		const struct intel_engine_cs *inflight =
 			intel_context_inflight(&ve->context);
 
@@ -2060,7 +2085,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request * const *active;
+	struct i915_request * const *active = READ_ONCE(execlists->active);
+	struct virtual_engine *ve = first_virtual_engine(engine);
 	struct i915_request *last;
 	struct rb_node *rb;
 	bool submit = false;
@@ -2087,26 +2113,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
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
@@ -2114,10 +2120,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * the active context to interject the preemption request,
 	 * i.e. we will retrigger preemption following the ack in case
 	 * of trouble.
-	 */
-	active = READ_ONCE(execlists->active);
-
-	/*
+	 *
 	 * In theory we can skip over completed contexts that have not
 	 * yet been processed by events (as those events are in flight):
 	 *
@@ -2128,9 +2131,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * find itself trying to jump back into a context it has just
 	 * completed and barf.
 	 */
-
 	if ((last = *active)) {
-		if (need_preempt(engine, last, rb)) {
+		if (need_preempt(engine, last, ve)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
@@ -2161,7 +2163,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last, rb) &&
+		} else if (need_timeslice(engine, last, ve) &&
 			   timeslice_expired(execlists, last)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
@@ -2215,110 +2217,99 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	while (rb) { /* XXX virtual is always taking precedence */
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	while (ve) { /* XXX virtual is always taking precedence */
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
 
 		GEM_BUG_ON(rq != ve->request);
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
-				start_timeslice(engine, rq_prio(rq));
-				return; /* leave this for another sibling */
-			}
+		GEM_BUG_ON(!virtual_matches(ve, rq, engine));
 
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
+		if (last && !can_merge_rq(last, rq)) {
+			spin_unlock(&ve->base.active.lock);
+			start_timeslice(engine, rq_prio(rq));
+			return; /* leave this for another sibling */
+		}
 
-			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
-			WRITE_ONCE(rq->engine, engine);
+		ENGINE_TRACE(engine,
+			     "virtual rq=%llx:%lld%s, new engine? %s\n",
+			     rq->fence.context,
+			     rq->fence.seqno,
+			     i915_request_completed(rq) ? "!" :
+			     i915_request_started(rq) ? "*" :
+			     "",
+			     yesno(engine != ve->siblings[0]));
 
-			if (engine != ve->siblings[0]) {
-				u32 *regs = ve->context.lrc_reg_state;
-				unsigned int n;
+		WRITE_ONCE(ve->request, NULL);
+		WRITE_ONCE(ve->base.execlists.queue_priority_hint,
+			   INT_MIN);
 
-				GEM_BUG_ON(READ_ONCE(ve->context.inflight));
+		rb = &ve->nodes[engine->id].rb;
+		rb_erase_cached(rb, &execlists->virtual);
+		RB_CLEAR_NODE(rb);
 
-				if (!intel_engine_has_relative_mmio(engine))
-					virtual_update_register_offsets(regs,
-									engine);
+		GEM_BUG_ON(!(rq->execution_mask & engine->mask));
+		WRITE_ONCE(rq->engine, engine);
 
-				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve);
+		if (engine != ve->siblings[0]) {
+			u32 *regs = ve->context.lrc_reg_state;
+			unsigned int n;
 
-				/*
-				 * Move the bound engine to the top of the list
-				 * for future execution. We then kick this
-				 * tasklet first before checking others, so that
-				 * we preferentially reuse this set of bound
-				 * registers.
-				 */
-				for (n = 1; n < ve->num_siblings; n++) {
-					if (ve->siblings[n] == engine) {
-						swap(ve->siblings[n],
-						     ve->siblings[0]);
-						break;
-					}
-				}
+			GEM_BUG_ON(READ_ONCE(ve->context.inflight));
 
-				GEM_BUG_ON(ve->siblings[0] != engine);
-			}
+			if (!intel_engine_has_relative_mmio(engine))
+				virtual_update_register_offsets(regs,
+								engine);
 
-			if (__i915_request_submit(rq)) {
-				submit = true;
-				last = rq;
-			}
-			i915_request_put(rq);
+			if (!list_empty(&ve->context.signals))
+				virtual_xfer_breadcrumbs(ve);
 
 			/*
-			 * Hmm, we have a bunch of virtual engine requests,
-			 * but the first one was already completed (thanks
-			 * preempt-to-busy!). Keep looking at the veng queue
-			 * until we have no more relevant requests (i.e.
-			 * the normal submit queue has higher priority).
+			 * Move the bound engine to the top of the list for
+			 * future execution. We then kick this tasklet first
+			 * before checking others, so that we preferentially
+			 * reuse this set of bound registers.
 			 */
-			if (!submit) {
-				spin_unlock(&ve->base.active.lock);
-				rb = rb_first_cached(&execlists->virtual);
-				continue;
+			for (n = 1; n < ve->num_siblings; n++) {
+				if (ve->siblings[n] == engine) {
+					swap(ve->siblings[n],
+					     ve->siblings[0]);
+					break;
+				}
 			}
+
+			GEM_BUG_ON(ve->siblings[0] != engine);
 		}
 
+		if (__i915_request_submit(rq)) {
+			submit = true;
+			last = rq;
+		}
+
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
+		ve = submit ? NULL : first_virtual_engine(engine);
 	}
 
 	while ((rb = rb_first_cached(&execlists->queue))) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
