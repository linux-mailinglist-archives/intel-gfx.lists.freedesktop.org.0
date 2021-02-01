Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AFD30A3CE
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968326E4BA;
	Mon,  1 Feb 2021 08:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4A86E4D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757733-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:38 +0000
Message-Id: <20210201085715.27435-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/57] drm/i915: Wrap access to
 intel_engine.active
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

As we are about to shuffle the lists around to consolidate new control
objects, reduce the code movement by wrapping access to the scheduler
lists ahead of time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 17 +++---
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 11 +++-
 .../drm/i915/gt/intel_execlists_submission.c  | 58 +++++++++++--------
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 14 +++--
 drivers/gpu/drm/i915/gt/mock_engine.c         |  7 ++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 20 ++++---
 drivers/gpu/drm/i915/i915_gpu_error.c         |  5 +-
 drivers/gpu/drm/i915/i915_request.c           | 23 +++-----
 drivers/gpu/drm/i915/i915_request.h           |  8 ++-
 drivers/gpu/drm/i915/i915_scheduler.c         | 47 ++++++++-------
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  4 +-
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 19 +++---
 13 files changed, 141 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e55e57b6edf6..a2916c7fcc48 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -725,6 +725,7 @@ struct measure_breadcrumb {
 static int measure_breadcrumb_dw(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct measure_breadcrumb *frame;
 	int dw;
 
@@ -747,11 +748,11 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	frame->rq.ring = &frame->ring;
 
 	mutex_lock(&ce->timeline->mutex);
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&se->lock);
 
 	dw = engine->emit_fini_breadcrumb(&frame->rq, frame->cs) - frame->cs;
 
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 	mutex_unlock(&ce->timeline->mutex);
 
 	GEM_BUG_ON(dw & 1); /* RING_TAIL must be qword aligned */
@@ -1627,6 +1628,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		       const char *header, ...)
 {
 	struct i915_gpu_error * const error = &engine->i915->gpu_error;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq;
 	intel_wakeref_t wakeref;
 	unsigned long flags;
@@ -1668,7 +1670,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 	drm_printf(m, "\tRequests:\n");
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	rq = intel_engine_find_active_request(engine);
 	if (rq) {
 		struct intel_timeline *tl = get_timeline(rq);
@@ -1699,8 +1701,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
 		}
 	}
-	drm_printf(m, "\tOn hold?: %lu\n", list_count(&engine->active.hold));
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	drm_printf(m, "\tOn hold?: %lu\n", list_count(&se->hold));
+	spin_unlock_irqrestore(&se->lock, flags);
 
 	drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
 	wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
@@ -1759,6 +1761,7 @@ static bool match_ring(struct i915_request *rq)
 struct i915_request *
 intel_engine_find_active_request(struct intel_engine_cs *engine)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *request, *active = NULL;
 
 	/*
@@ -1772,7 +1775,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	 * At all other times, we must assume the GPU is still running, but
 	 * we only care about the snapshot of this moment.
 	 */
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 
 	rcu_read_lock();
 	request = execlists_active(&engine->execlists);
@@ -1790,7 +1793,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	if (active)
 		return active;
 
-	list_for_each_entry(request, &engine->active.requests, sched.link) {
+	list_for_each_entry(request, &se->requests, sched.link) {
 		if (__i915_request_is_complete(request))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 71ceaa5dcf40..e5637e831d28 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -329,7 +329,7 @@ struct intel_engine_cs {
 
 	struct intel_sseu sseu;
 
-	struct {
+	struct i915_sched {
 		spinlock_t lock;
 		struct list_head requests;
 		struct list_head hold; /* ready requests, but on hold */
@@ -621,5 +621,12 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 	     (slice_) += ((subslice_) == 0)) \
 		for_each_if((instdone_has_slice(dev_priv_, sseu_, slice_)) && \
 			    (instdone_has_subslice(dev_priv_, sseu_, slice_, \
-						    subslice_)))
+						   subslice_)))
+
+static inline struct i915_sched *
+intel_engine_get_scheduler(struct intel_engine_cs *engine)
+{
+	return &engine->active;
+}
+
 #endif /* __INTEL_ENGINE_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index b56e321ef003..280d84c4e4b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -293,6 +293,7 @@ static int virtual_prio(const struct intel_engine_execlists *el)
 static bool need_preempt(const struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
+	const struct i915_sched *se = &engine->active;
 	int last_prio;
 
 	if (!intel_engine_has_semaphores(engine))
@@ -324,7 +325,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
 	 * Check against the first request in ELSP[1], it will, thanks to the
 	 * power of PI, be the highest priority of that context.
 	 */
-	if (!list_is_last(&rq->sched.link, &engine->active.requests) &&
+	if (!list_is_last(&rq->sched.link, &se->requests) &&
 	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
 		return true;
 
@@ -476,15 +477,15 @@ static void execlists_schedule_in(struct i915_request *rq, int idx)
 static void
 resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 {
-	struct intel_engine_cs *engine = rq->engine;
+	struct i915_sched *se = i915_request_get_scheduler(rq);
 
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&se->lock);
 
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	WRITE_ONCE(rq->engine, &ve->base);
 	ve->base.submit_request(rq);
 
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 }
 
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
@@ -1018,6 +1019,8 @@ timeslice_yield(const struct intel_engine_execlists *el,
 static bool needs_timeslice(const struct intel_engine_cs *engine,
 			    const struct i915_request *rq)
 {
+	const struct i915_sched *se = &engine->active;
+
 	if (!intel_engine_has_timeslices(engine))
 		return false;
 
@@ -1030,7 +1033,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	/* If ELSP[1] is occupied, always check to see if worth slicing */
-	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests)) {
+	if (!list_is_last_rcu(&rq->sched.link, &se->requests)) {
 		ENGINE_TRACE(engine, "timeslice required for second inflight context\n");
 		return true;
 	}
@@ -1133,6 +1136,7 @@ static bool completed(const struct i915_request *rq)
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request *last, * const *active;
@@ -1162,7 +1166,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
-	spin_lock(&engine->active.lock);
+	spin_lock(&se->lock);
 
 	/*
 	 * If the queue is higher priority than the last
@@ -1262,7 +1266,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				spin_unlock(&engine->active.lock);
+				spin_unlock(&se->lock);
 				return;
 			}
 		}
@@ -1288,7 +1292,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 		if (last && !can_merge_rq(last, rq)) {
 			spin_unlock(&ve->base.active.lock);
-			spin_unlock(&engine->active.lock);
+			spin_unlock(&se->lock);
 			return; /* leave this for another sibling */
 		}
 
@@ -1449,7 +1453,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
-	spin_unlock(&engine->active.lock);
+	spin_unlock(&se->lock);
 
 	/*
 	 * We can skip poking the HW if we ended up with exactly the same set
@@ -2614,6 +2618,7 @@ static void execlists_reset_csb(struct intel_engine_cs *engine, bool stalled)
 
 static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	unsigned long flags;
 
 	ENGINE_TRACE(engine, "\n");
@@ -2623,9 +2628,9 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	/* Push back any incomplete requests for replay after the reset. */
 	rcu_read_lock();
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	__i915_sched_rewind_requests(engine);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 	rcu_read_unlock();
 }
 
@@ -2641,6 +2646,7 @@ static void nop_submission_tasklet(struct tasklet_struct *t)
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq, *rn;
 	struct rb_node *rb;
 	unsigned long flags;
@@ -2664,10 +2670,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists_reset_csb(engine, true);
 
 	rcu_read_lock();
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* Mark all executing requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link)
+	list_for_each_entry(rq, &se->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
@@ -2687,7 +2693,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* On-hold requests will be flushed to timeline upon their release */
-	list_for_each_entry(rq, &engine->active.hold, sched.link)
+	list_for_each_entry(rq, &se->hold, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 
 	/* Cancel all attached virtual engines */
@@ -2721,7 +2727,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.callback = nop_submission_tasklet;
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 	rcu_read_unlock();
 }
 
@@ -2958,6 +2964,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 {
 	struct virtual_engine *ve =
 		container_of(wrk, typeof(*ve), rcu.work);
+	struct i915_sched *se = intel_engine_get_scheduler(&ve->base);
 	unsigned int n;
 
 	GEM_BUG_ON(ve->context.inflight);
@@ -2966,7 +2973,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	if (unlikely(ve->request)) {
 		struct i915_request *old;
 
-		spin_lock_irq(&ve->base.active.lock);
+		spin_lock_irq(&se->lock);
 
 		old = fetch_and_zero(&ve->request);
 		if (old) {
@@ -2975,7 +2982,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 			i915_request_put(old);
 		}
 
-		spin_unlock_irq(&ve->base.active.lock);
+		spin_unlock_irq(&se->lock);
 	}
 
 	/*
@@ -3161,6 +3168,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 
 	for (n = 0; n < ve->num_siblings; n++) {
 		struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
+		struct i915_sched *se = intel_engine_get_scheduler(sibling);
 		struct ve_node * const node = &ve->nodes[sibling->id];
 		struct rb_node **parent, *rb;
 		bool first;
@@ -3168,7 +3176,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 		if (!READ_ONCE(ve->request))
 			break; /* already handled by a sibling's tasklet */
 
-		spin_lock_irq(&sibling->active.lock);
+		spin_lock_irq(&se->lock);
 
 		if (unlikely(!(mask & sibling->mask))) {
 			if (!RB_EMPTY_NODE(&node->rb)) {
@@ -3221,7 +3229,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 			tasklet_hi_schedule(&sibling->execlists.tasklet);
 
 unlock_engine:
-		spin_unlock_irq(&sibling->active.lock);
+		spin_unlock_irq(&se->lock);
 
 		if (intel_context_inflight(&ve->context))
 			break;
@@ -3231,6 +3239,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 static void virtual_submit_request(struct i915_request *rq)
 {
 	struct virtual_engine *ve = to_virtual_engine(rq->engine);
+	struct i915_sched *se = intel_engine_get_scheduler(&ve->base);
 	unsigned long flags;
 
 	ENGINE_TRACE(&ve->base, "rq=%llx:%lld\n",
@@ -3239,7 +3248,7 @@ static void virtual_submit_request(struct i915_request *rq)
 
 	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
 
-	spin_lock_irqsave(&ve->base.active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* By the time we resubmit a request, it may be completed */
 	if (__i915_request_is_complete(rq)) {
@@ -3262,7 +3271,7 @@ static void virtual_submit_request(struct i915_request *rq)
 	tasklet_hi_schedule(&ve->base.execlists.tasklet);
 
 unlock:
-	spin_unlock_irqrestore(&ve->base.active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static struct ve_bond *
@@ -3513,16 +3522,17 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   unsigned int max)
 {
 	const struct intel_engine_execlists *execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq, *last;
 	unsigned long flags;
 	unsigned int count;
 	struct rb_node *rb;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	last = NULL;
 	count = 0;
-	list_for_each_entry(rq, &engine->active.requests, sched.link) {
+	list_for_each_entry(rq, &se->requests, sched.link) {
 		if (count++ < max - 1)
 			show_request(m, rq, "\t\t", 0);
 		else
@@ -3585,7 +3595,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 		show_request(m, last, "\t\t", 0);
 	}
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 3cb2ce503544..8af1bc77e15e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -322,14 +322,15 @@ static void reset_prepare(struct intel_engine_cs *engine)
 
 static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *pos, *rq;
 	unsigned long flags;
 	u32 head;
 
 	rq = NULL;
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	rcu_read_lock();
-	list_for_each_entry(pos, &engine->active.requests, sched.link) {
+	list_for_each_entry(pos, &se->requests, sched.link) {
 		if (!__i915_request_is_complete(pos)) {
 			rq = pos;
 			break;
@@ -384,7 +385,7 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	}
 	engine->legacy.ring->head = intel_ring_wrap(engine->legacy.ring, head);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void reset_finish(struct intel_engine_cs *engine)
@@ -393,19 +394,20 @@ static void reset_finish(struct intel_engine_cs *engine)
 
 static void reset_cancel(struct intel_engine_cs *engine)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *request;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(request, &engine->active.requests, sched.link)
+	list_for_each_entry(request, &se->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(request));
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void i9xx_submit_request(struct i915_request *request)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index cf1269e74998..b4d26d3bf39f 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -230,15 +230,16 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct mock_engine *mock =
 		container_of(engine, typeof(*mock), base);
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq;
 	unsigned long flags;
 
 	del_timer_sync(&mock->hw_delay);
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link)
+	list_for_each_entry(rq, &se->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
@@ -251,7 +252,7 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 	}
 	INIT_LIST_HEAD(&mock->hw_queue);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void mock_reset_finish(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 64f6a49a5c22..0395f9053a43 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4548,6 +4548,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	struct intel_context *ve;
 	struct igt_spinner spin;
 	struct i915_request *rq;
+	struct i915_sched *se;
 	unsigned int n;
 	int err = 0;
 
@@ -4584,6 +4585,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 
 	engine = rq->engine;
 	GEM_BUG_ON(engine == ve->engine);
+	se = intel_engine_get_scheduler(engine);
 
 	/* Take ownership of the reset and tasklet */
 	local_bh_disable();
@@ -4600,9 +4602,9 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 	/* Fake a preemption event; failed of course */
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&se->lock);
 	__i915_sched_rewind_requests(engine);
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 	GEM_BUG_ON(rq->engine != engine);
 
 	/* Reset the engine while keeping our active request on hold */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index aecede4f0943..45f6d38341ef 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -181,6 +181,7 @@ static void schedule_out(struct i915_request *rq)
 static void __guc_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request **first = execlists->inflight;
 	struct i915_request ** const last_port = first + execlists->port_mask;
 	struct i915_request *last = first[0];
@@ -188,7 +189,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	bool submit = false;
 	struct rb_node *rb;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 
 	if (last) {
 		if (*++first)
@@ -241,11 +242,12 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 {
 	struct intel_engine_cs * const engine =
 		from_tasklet(engine, t, execlists.tasklet);
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port, *rq;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	for (port = execlists->inflight; (rq = *port); port++) {
 		if (!i915_request_completed(rq))
@@ -261,7 +263,7 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 
 	__guc_dequeue(engine);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void guc_reset_prepare(struct intel_engine_cs *engine)
@@ -306,10 +308,11 @@ static void guc_reset_state(struct intel_context *ce,
 
 static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* Push back any incomplete requests for replay after the reset. */
 	rq = __i915_sched_rewind_requests(engine);
@@ -323,12 +326,13 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	guc_reset_state(rq->context, engine, rq->head, stalled);
 
 out_unlock:
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void guc_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq, *rn;
 	struct rb_node *rb;
 	unsigned long flags;
@@ -349,10 +353,10 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	 * submission's irq state, we also wish to remind ourselves that
 	 * it is irq state.)
 	 */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	/* Mark all executing requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link) {
+	list_for_each_entry(rq, &se->requests, sched.link) {
 		i915_request_set_error_once(rq, -EIO);
 		i915_request_mark_complete(rq);
 	}
@@ -377,7 +381,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	execlists->queue_priority_hint = INT_MIN;
 	execlists->queue = RB_ROOT_CACHED;
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static void guc_reset_finish(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0cb3686ed91d..f2e4f0232b87 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1433,6 +1433,7 @@ static struct intel_engine_coredump *
 capture_engine(struct intel_engine_cs *engine,
 	       struct i915_vma_compress *compress)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
 	struct i915_request *rq;
@@ -1442,12 +1443,12 @@ capture_engine(struct intel_engine_cs *engine,
 	if (!ee)
 		return NULL;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	rq = intel_engine_find_active_request(engine);
 	if (rq)
 		capture = intel_engine_coredump_add_request(ee, rq,
 							    ATOMIC_MAYFAIL);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 	if (!capture) {
 		kfree(ee);
 		return NULL;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 916e74fbab6c..947e4fad7cf0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -533,12 +533,12 @@ struct i915_request *i915_request_mark_eio(struct i915_request *rq)
 bool __i915_request_submit(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	bool result = false;
 
 	RQ_TRACE(request, "\n");
 
-	GEM_BUG_ON(!irqs_disabled());
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 
 	/*
 	 * With the advent of preempt-to-busy, we frequently encounter
@@ -595,7 +595,7 @@ bool __i915_request_submit(struct i915_request *request)
 	result = true;
 
 	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
-	list_move_tail(&request->sched.link, &engine->active.requests);
+	list_move_tail(&request->sched.link, &se->requests);
 active:
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 	set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
@@ -621,30 +621,25 @@ bool __i915_request_submit(struct i915_request *request)
 
 void i915_request_submit(struct i915_request *request)
 {
-	struct intel_engine_cs *engine = request->engine;
+	struct i915_sched *se = i915_request_get_scheduler(request);
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	__i915_request_submit(request);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 void __i915_request_unsubmit(struct i915_request *request)
 {
-	struct intel_engine_cs *engine = request->engine;
-
 	/*
 	 * Only unwind in reverse order, required so that the per-context list
 	 * is kept in seqno/ring order.
 	 */
 	RQ_TRACE(request, "\n");
 
-	GEM_BUG_ON(!irqs_disabled());
-	lockdep_assert_held(&engine->active.lock);
-
 	/*
 	 * Before we remove this breadcrumb from the signal list, we have
 	 * to ensure that a concurrent dma_fence_enable_signaling() does not
@@ -672,15 +667,15 @@ void __i915_request_unsubmit(struct i915_request *request)
 
 void i915_request_unsubmit(struct i915_request *request)
 {
-	struct intel_engine_cs *engine = request->engine;
+	struct i915_sched *se = i915_request_get_scheduler(request);
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 
 	__i915_request_unsubmit(request);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 }
 
 static int __i915_sw_fence_call
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 9ce074ffc1dd..e320edd718f3 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -589,6 +589,12 @@ static inline void i915_request_clear_hold(struct i915_request *rq)
 	clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
 }
 
+static inline struct i915_sched *
+i915_request_get_scheduler(const struct i915_request *rq)
+{
+	return intel_engine_get_scheduler(rq->engine);
+}
+
 static inline struct intel_timeline *
 i915_request_timeline(const struct i915_request *rq)
 {
@@ -613,7 +619,7 @@ i915_request_active_timeline(const struct i915_request *rq)
 	 * this submission.
 	 */
 	return rcu_dereference_protected(rq->timeline,
-					 lockdep_is_held(&rq->engine->active.lock));
+					 lockdep_is_held(&i915_request_get_scheduler(rq)->lock));
 }
 
 static inline bool i915_request_use_scheduler(const struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 694ca3a3b563..663db3c36762 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -183,11 +183,12 @@ static struct list_head *
 lookup_priolist(struct intel_engine_cs *engine, int prio)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_priolist *p;
 	struct rb_node **parent, *rb;
 	bool first = true;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 	assert_priolists(execlists);
 
 	if (unlikely(execlists->no_priolist))
@@ -467,11 +468,12 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 				struct i915_request *rq)
 {
 	struct list_head *pos = &rq->sched.waiters_list;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	const int prio = rq_prio(rq);
 	struct i915_request *rn;
 	LIST_HEAD(dfs);
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
 	/*
@@ -585,26 +587,27 @@ static bool hold_request(const struct i915_request *rq)
 	return result;
 }
 
-static bool ancestor_on_hold(const struct intel_engine_cs *engine,
+static bool ancestor_on_hold(const struct i915_sched *se,
 			     const struct i915_request *rq)
 {
 	GEM_BUG_ON(i915_request_on_hold(rq));
-	return unlikely(!list_empty(&engine->active.hold)) && hold_request(rq);
+	return unlikely(!list_empty(&se->hold)) && hold_request(rq);
 }
 
 void i915_request_enqueue(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	unsigned long flags;
 	bool kick = false;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
-	if (unlikely(ancestor_on_hold(engine, rq))) {
+	if (unlikely(ancestor_on_hold(se, rq))) {
 		RQ_TRACE(rq, "ancestor on hold\n");
-		list_add_tail(&rq->sched.link, &engine->active.hold);
+		list_add_tail(&rq->sched.link, &se->hold);
 		i915_request_set_hold(rq);
 	} else {
 		queue_request(engine, rq);
@@ -615,7 +618,7 @@ void i915_request_enqueue(struct i915_request *rq)
 	}
 
 	GEM_BUG_ON(list_empty(&rq->sched.link));
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 	if (kick)
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 }
@@ -623,15 +626,14 @@ void i915_request_enqueue(struct i915_request *rq)
 struct i915_request *
 __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq, *rn, *active = NULL;
 	struct list_head *pl;
 	int prio = I915_PRIORITY_INVALID;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 
-	list_for_each_entry_safe_reverse(rq, rn,
-					 &engine->active.requests,
-					 sched.link) {
+	list_for_each_entry_safe_reverse(rq, rn, &se->requests, sched.link) {
 		if (__i915_request_is_complete(rq)) {
 			list_del_init(&rq->sched.link);
 			continue;
@@ -664,9 +666,10 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 				  struct i915_request *rq)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	LIST_HEAD(list);
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 	GEM_BUG_ON(rq->engine != engine);
 
 	if (__i915_request_is_complete(rq)) /* too late! */
@@ -690,7 +693,7 @@ bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 		if (i915_request_is_active(rq))
 			__i915_request_unsubmit(rq);
 
-		list_move_tail(&rq->sched.link, &engine->active.hold);
+		list_move_tail(&rq->sched.link, &se->hold);
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 		i915_request_set_hold(rq);
 		RQ_TRACE(rq, "on hold\n");
@@ -721,7 +724,7 @@ bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
 	} while (rq);
 
-	GEM_BUG_ON(list_empty(&engine->active.hold));
+	GEM_BUG_ON(list_empty(&se->hold));
 
 	return true;
 }
@@ -729,14 +732,15 @@ bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 bool i915_sched_suspend_request(struct intel_engine_cs *engine,
 				struct i915_request *rq)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	bool result;
 
 	if (i915_request_on_hold(rq))
 		return false;
 
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&se->lock);
 	result = __i915_sched_suspend_request(engine, rq);
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 
 	return result;
 }
@@ -744,9 +748,10 @@ bool i915_sched_suspend_request(struct intel_engine_cs *engine,
 void __i915_sched_resume_request(struct intel_engine_cs *engine,
 				 struct i915_request *rq)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	LIST_HEAD(list);
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&se->lock);
 
 	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
 		engine->execlists.queue_priority_hint = rq_prio(rq);
@@ -809,9 +814,11 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 void i915_sched_resume_request(struct intel_engine_cs *engine,
 			       struct i915_request *rq)
 {
-	spin_lock_irq(&engine->active.lock);
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
+
+	spin_lock_irq(&se->lock);
 	__i915_sched_resume_request(engine, rq);
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 }
 
 void i915_sched_node_init(struct i915_sched_node *node)
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 28138c3fcc81..f2b0ac3a05a5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -68,12 +68,12 @@ struct i915_sched_node {
 
 	struct list_head signalers_list; /* those before us, we depend upon */
 	struct list_head waiters_list; /* those after us, they depend upon us */
-	struct list_head link; /* guarded by engine->active.lock */
+	struct list_head link; /* guarded by i915_sched.lock */
 	struct i915_sched_stack {
 		/* Branch memoization used during depth-first search */
 		struct i915_request *prev;
 		struct list_head *pos;
-	} dfs; /* guarded by engine->active.lock */
+	} dfs; /* guarded by i915_sched.lock */
 	struct i915_sched_attr attr;
 	unsigned long flags;
 #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index acc666f755d7..35a479184fee 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -77,7 +77,8 @@ static int all_engines(struct drm_i915_private *i915,
 	return 0;
 }
 
-static bool check_context_order(struct intel_engine_cs *engine)
+static bool check_context_order(struct i915_sched *se,
+				struct intel_engine_cs *engine)
 {
 	u64 last_seqno, last_context;
 	unsigned long count;
@@ -86,7 +87,7 @@ static bool check_context_order(struct intel_engine_cs *engine)
 	int last_prio;
 
 	/* We expect the execution order to follow ascending fence-context */
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&se->lock);
 
 	count = 0;
 	last_context = 0;
@@ -119,7 +120,7 @@ static bool check_context_order(struct intel_engine_cs *engine)
 	}
 	result = true;
 out_unlock:
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&se->lock);
 
 	return result;
 }
@@ -128,6 +129,7 @@ static int __single_chain(struct intel_engine_cs *engine, unsigned long length,
 			  bool (*fn)(struct i915_request *rq,
 				     unsigned long v, unsigned long e))
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_context *ce;
 	struct igt_spinner spin;
 	struct i915_request *rq;
@@ -173,7 +175,7 @@ static int __single_chain(struct intel_engine_cs *engine, unsigned long length,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq, count, count - 1) && !check_context_order(engine))
+	if (fn(rq, count, count - 1) && !check_context_order(se, engine))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -191,6 +193,7 @@ static int __wide_chain(struct intel_engine_cs *engine, unsigned long width,
 			bool (*fn)(struct i915_request *rq,
 				   unsigned long v, unsigned long e))
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_context **ce;
 	struct i915_request **rq;
 	struct igt_spinner spin;
@@ -257,7 +260,7 @@ static int __wide_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -279,6 +282,7 @@ static int __inv_chain(struct intel_engine_cs *engine, unsigned long width,
 		       bool (*fn)(struct i915_request *rq,
 				  unsigned long v, unsigned long e))
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_context **ce;
 	struct i915_request **rq;
 	struct igt_spinner spin;
@@ -345,7 +349,7 @@ static int __inv_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -367,6 +371,7 @@ static int __sparse_chain(struct intel_engine_cs *engine, unsigned long width,
 			  bool (*fn)(struct i915_request *rq,
 				     unsigned long v, unsigned long e))
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_context **ce;
 	struct i915_request **rq;
 	struct igt_spinner spin;
@@ -450,7 +455,7 @@ static int __sparse_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
