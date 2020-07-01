Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C34F210699
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B80A6E436;
	Wed,  1 Jul 2020 08:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6C96E865
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671933-1500050 
 for multiple; Wed, 01 Jul 2020 09:40:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:25 +0100
Message-Id: <20200701084053.6086-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/33] drm/i915/gt: Replace direct submit with
 direct call to tasklet
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

Rather than having special case code for opportunistically calling
process_csb() and performing a direct submit while holding the engine
spinlock for submitting the request, simply call the tasklet directly.
This allows us to retain the direct submission path, including the CS
draining to allow fast/immediate submissions, without requiring any
duplicated code paths.

The trickiest part here is to ensure that paired operations (such as
schedule_in/schedule_out) remain under consistent locking domains,
e.g. when pulled outside of the engine->active.lock

v2: Use bh kicking, see commit 3c53776e29f8 ("Mark HI and TASKLET
softirq synchronous").
v3: Update engine-reset to be tasklet aware

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   4 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  35 +++---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  20 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 119 ++++++------------
 drivers/gpu/drm/i915/gt/intel_reset.c         |  60 +++++----
 drivers/gpu/drm/i915/gt/intel_reset.h         |   2 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   7 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  27 ++--
 drivers/gpu/drm/i915/gt/selftest_reset.c      |   8 +-
 drivers/gpu/drm/i915/i915_request.c           |   2 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   6 +-
 12 files changed, 149 insertions(+), 143 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5c13809dc3c8..5ca8f84d8de8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -399,12 +399,14 @@ static bool __reset_engine(struct intel_engine_cs *engine)
 	if (!intel_has_reset_engine(gt))
 		return false;
 
+	local_bh_disable();
 	if (!test_and_set_bit(I915_RESET_ENGINE + engine->id,
 			      &gt->reset.flags)) {
-		success = intel_engine_reset(engine, NULL) == 0;
+		success = __intel_engine_reset_bh(engine, NULL) == 0;
 		clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id,
 				      &gt->reset.flags);
 	}
+	local_bh_enable();
 
 	return success;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c38ab51e82f0..ef425fd990c4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2355,7 +2355,9 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		__i915_request_skip(rq);
 	}
 
+	local_bh_disable();
 	__i915_request_queue(rq, &attr);
+	local_bh_enable();
 
 	/* Try to clean up the client's timeline after submitting the request */
 	if (prev)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7bf2f76212f0..b024ac1debc7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -903,32 +903,39 @@ static unsigned long stop_timeout(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.stop_timeout_ms);
 }
 
-int intel_engine_stop_cs(struct intel_engine_cs *engine)
+static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
+				  int fast_timeout_us,
+				  int slow_timeout_ms)
 {
 	struct intel_uncore *uncore = engine->uncore;
-	const u32 base = engine->mmio_base;
-	const i915_reg_t mode = RING_MI_MODE(base);
+	const i915_reg_t mode = RING_MI_MODE(engine->mmio_base);
 	int err;
 
+	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
+	err = __intel_wait_for_register_fw(engine->uncore, mode,
+					   MODE_IDLE, MODE_IDLE,
+					   fast_timeout_us,
+					   slow_timeout_ms,
+					   NULL);
+
+	/* A final mmio read to let GPU writes be hopefully flushed to memory */
+	intel_uncore_posting_read_fw(uncore, mode);
+	return err;
+}
+
+int intel_engine_stop_cs(struct intel_engine_cs *engine)
+{
+	int err = 0;
+
 	if (INTEL_GEN(engine->i915) < 3)
 		return -ENODEV;
 
 	ENGINE_TRACE(engine, "\n");
-
-	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
-
-	err = 0;
-	if (__intel_wait_for_register_fw(uncore,
-					 mode, MODE_IDLE, MODE_IDLE,
-					 1000, stop_timeout(engine),
-					 NULL)) {
+	if (__intel_engine_stop_cs(engine, 1000, stop_timeout(engine))) {
 		ENGINE_TRACE(engine, "timed out on STOP_RING -> IDLE\n");
 		err = -ETIMEDOUT;
 	}
 
-	/* A final mmio read to let GPU writes be hopefully flushed to memory */
-	intel_uncore_posting_read_fw(uncore, mode);
-
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 3699fa8a79e8..2a3bbf460437 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -43,6 +43,17 @@ static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 	i915_request_add_active_barriers(rq);
 }
 
+static void heartbeat_commit(struct i915_request *rq,
+			     const struct i915_sched_attr *attr)
+{
+	idle_pulse(rq->engine, rq);
+	__i915_request_commit(rq);
+
+	local_bh_disable();
+	__i915_request_queue(rq, attr);
+	local_bh_enable();
+}
+
 static void show_heartbeat(const struct i915_request *rq,
 			   struct intel_engine_cs *engine)
 {
@@ -143,12 +154,10 @@ static void heartbeat(struct work_struct *wrk)
 	if (IS_ERR(rq))
 		goto unlock;
 
-	idle_pulse(engine, rq);
 	if (engine->i915->params.enable_hangcheck)
 		engine->heartbeat.systole = i915_request_get(rq);
 
-	__i915_request_commit(rq);
-	__i915_request_queue(rq, &attr);
+	heartbeat_commit(rq, &attr);
 
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
@@ -229,10 +238,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 	}
 
 	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
-	idle_pulse(engine, rq);
-
-	__i915_request_commit(rq);
-	__i915_request_queue(rq, &attr);
+	heartbeat_commit(rq, &attr);
 	GEM_BUG_ON(rq->sched.attr.priority < I915_PRIORITY_BARRIER);
 	err = 0;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7bdbfac26d7b..358b0b801d7c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1390,8 +1390,7 @@ __execlists_schedule_in(struct i915_request *rq)
 	return engine;
 }
 
-static inline struct i915_request *
-execlists_schedule_in(struct i915_request *rq, int idx)
+static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 {
 	struct intel_context * const ce = rq->context;
 	struct intel_engine_cs *old;
@@ -1408,7 +1407,6 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
 
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
-	return i915_request_get(rq);
 }
 
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
@@ -2067,8 +2065,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request * const *active;
+	struct i915_request * const *active = execlists->active;
 	struct i915_request *last;
+	unsigned long flags;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -2093,6 +2092,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * sequence of requests as being the most optimal (fewest wake ups
 	 * and context switches) submission.
 	 */
+	spin_lock_irqsave(&engine->active.lock, flags);
 
 	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
 		struct virtual_engine *ve =
@@ -2121,10 +2121,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -2138,8 +2135,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 	if ((last = *active)) {
 		if (i915_request_completed(last) &&
-		    !list_is_last(&last->sched.link, &engine->active.requests))
+		    !list_is_last(&last->sched.link, &engine->active.requests)) {
+			spin_unlock_irqrestore(&engine->active.lock, flags);
 			return;
+		}
 
 		if (need_preempt(engine, last, rb)) {
 			ENGINE_TRACE(engine,
@@ -2210,6 +2209,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
+				spin_unlock_irqrestore(&engine->active.lock, flags);
 				start_timeslice(engine, queue_prio(execlists));
 				return;
 			}
@@ -2245,6 +2245,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
+				spin_unlock_irqrestore(&engine->active.lock, flags);
 				start_timeslice(engine, rq_prio(rq));
 				return; /* leave this for another sibling */
 			}
@@ -2377,8 +2378,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (__i915_request_submit(rq)) {
 				if (!merge) {
-					*port = execlists_schedule_in(last, port - execlists->pending);
-					port++;
+					*port++ = i915_request_get(last);
 					last = NULL;
 				}
 
@@ -2397,8 +2397,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		rb_erase_cached(&p->node, &execlists->queue);
 		i915_priolist_free(p);
 	}
-
 done:
+	*port++ = i915_request_get(last);
+
 	/*
 	 * Here be a bit of magic! Or sleight-of-hand, whichever you prefer.
 	 *
@@ -2416,25 +2417,23 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
+	spin_unlock_irqrestore(&engine->active.lock, flags);
 
 	if (submit) {
-		*port = execlists_schedule_in(last, port - execlists->pending);
-		execlists->switch_priority_hint =
-			switch_prio(engine, *execlists->pending);
-
 		/*
 		 * Skip if we ended up with exactly the same set of requests,
 		 * e.g. trying to timeslice a pair of ordered contexts
 		 */
 		if (!memcmp(active, execlists->pending,
-			    (port - execlists->pending + 1) * sizeof(*port))) {
-			do
-				execlists_schedule_out(fetch_and_zero(port));
-			while (port-- != execlists->pending);
-
+			    (port - execlists->pending) * sizeof(*port)))
 			goto skip_submit;
-		}
-		clear_ports(port + 1, last_port - port);
+
+		*port = NULL;
+		while (port-- != execlists->pending)
+			execlists_schedule_in(*port, port - execlists->pending);
+
+		execlists->switch_priority_hint =
+			switch_prio(engine, *execlists->pending);
 
 		WRITE_ONCE(execlists->yield, -1);
 		set_preempt_timeout(engine, *active);
@@ -2443,6 +2442,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		start_timeslice(engine, execlists->queue_priority_hint);
 skip_submit:
 		ring_set_paused(engine, 0);
+		*execlists->pending = NULL;
 	}
 }
 
@@ -2699,16 +2699,6 @@ static void process_csb(struct intel_engine_cs *engine)
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
 }
 
-static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
-{
-	lockdep_assert_held(&engine->active.lock);
-	if (!READ_ONCE(engine->execlists.pending[0])) {
-		rcu_read_lock(); /* protect peeking at execlists->active */
-		execlists_dequeue(engine);
-		rcu_read_unlock();
-	}
-}
-
 static void __execlists_hold(struct i915_request *rq)
 {
 	LIST_HEAD(list);
@@ -3098,7 +3088,7 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 	if (!timer_expired(t))
 		return false;
 
-	return READ_ONCE(engine->execlists.pending[0]);
+	return engine->execlists.pending[0];
 }
 
 /*
@@ -3108,7 +3098,6 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
 
@@ -3118,17 +3107,11 @@ static void execlists_submission_tasklet(unsigned long data)
 			execlists_reset(engine, "CS error");
 	}
 
-	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
-		unsigned long flags;
-
-		spin_lock_irqsave(&engine->active.lock, flags);
-		__execlists_submission_tasklet(engine);
-		spin_unlock_irqrestore(&engine->active.lock, flags);
+	if (unlikely(preempt_timeout(engine)))
+		execlists_reset(engine, "preemption time out");
 
-		/* Recheck after serialising with direct-submission */
-		if (unlikely(timeout && preempt_timeout(engine)))
-			execlists_reset(engine, "preemption time out");
-	}
+	if (!engine->execlists.pending[0])
+		execlists_dequeue(engine);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -3159,26 +3142,16 @@ static void queue_request(struct intel_engine_cs *engine,
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
-static void __submit_queue_imm(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	if (reset_in_progress(execlists))
-		return; /* defer until we restart the engine following reset */
-
-	__execlists_submission_tasklet(engine);
-}
-
-static void submit_queue(struct intel_engine_cs *engine,
+static bool submit_queue(struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
 	struct intel_engine_execlists *execlists = &engine->execlists;
 
 	if (rq_prio(rq) <= execlists->queue_priority_hint)
-		return;
+		return false;
 
 	execlists->queue_priority_hint = rq_prio(rq);
-	__submit_queue_imm(engine);
+	return true;
 }
 
 static bool ancestor_on_hold(const struct intel_engine_cs *engine,
@@ -3188,25 +3161,11 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
 	return !list_empty(&engine->active.hold) && hold_request(rq);
 }
 
-static void flush_csb(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists *el = &engine->execlists;
-
-	if (READ_ONCE(el->pending[0]) && tasklet_trylock(&el->tasklet)) {
-		if (!reset_in_progress(el))
-			process_csb(engine);
-		tasklet_unlock(&el->tasklet);
-	}
-}
-
 static void execlists_submit_request(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
 
-	/* Hopefully we clear execlists->pending[] to let us through */
-	flush_csb(engine);
-
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
@@ -3220,7 +3179,8 @@ static void execlists_submit_request(struct i915_request *request)
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 		GEM_BUG_ON(list_empty(&request->sched.link));
 
-		submit_queue(engine, request);
+		if (submit_queue(engine, request))
+			__execlists_kick(&engine->execlists);
 	}
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
@@ -4109,7 +4069,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	unsigned long flags;
 
 	ENGINE_TRACE(engine, "depth<-%d\n",
 		     atomic_read(&execlists->tasklet.count));
@@ -4126,10 +4085,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	__tasklet_disable_sync_once(&execlists->tasklet);
 	GEM_BUG_ON(!reset_in_progress(execlists));
 
-	/* And flush any current direct submission. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
 	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
@@ -4373,12 +4328,12 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	 * to sleep before we restart and reload a context.
 	 */
 	GEM_BUG_ON(!reset_in_progress(execlists));
-	if (!RB_EMPTY_ROOT(&execlists->queue.rb_root))
-		execlists->tasklet.func(execlists->tasklet.data);
+	GEM_BUG_ON(engine->execlists.pending[0]);
 
+	/* And kick in case we missed a new request submission. */
 	if (__tasklet_enable(&execlists->tasklet))
-		/* And kick in case we missed a new request submission. */
-		tasklet_hi_schedule(&execlists->tasklet);
+		__execlists_kick(execlists);
+
 	ENGINE_TRACE(engine, "depth->%d\n",
 		     atomic_read(&execlists->tasklet.count));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 0156f1f5c736..b086aabfae6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -38,20 +38,19 @@ static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
 	intel_uncore_rmw_fw(uncore, reg, clr, 0);
 }
 
-static void engine_skip_context(struct i915_request *rq)
+static void skip_context(struct i915_request *rq)
 {
-	struct intel_engine_cs *engine = rq->engine;
 	struct intel_context *hung_ctx = rq->context;
 
-	if (!i915_request_is_active(rq))
-		return;
+	list_for_each_entry_from_rcu(rq, &hung_ctx->timeline->requests, link) {
+		if (!i915_request_is_active(rq))
+			return;
 
-	lockdep_assert_held(&engine->active.lock);
-	list_for_each_entry_continue(rq, &engine->active.requests, sched.link)
 		if (rq->context == hung_ctx) {
 			i915_request_set_error_once(rq, -EIO);
 			__i915_request_skip(rq);
 		}
+	}
 }
 
 static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
@@ -158,7 +157,7 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 		i915_request_set_error_once(rq, -EIO);
 		__i915_request_skip(rq);
 		if (mark_guilty(rq))
-			engine_skip_context(rq);
+			skip_context(rq);
 	} else {
 		i915_request_set_error_once(rq, -EAGAIN);
 		mark_innocent(rq);
@@ -752,8 +751,10 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
 	if (err)
 		return err;
 
+	local_bh_disable();
 	for_each_engine(engine, gt, id)
 		__intel_engine_reset(engine, stalled_mask & engine->mask);
+	local_bh_enable();
 
 	intel_ggtt_restore_fences(gt->ggtt);
 
@@ -831,9 +832,11 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	set_bit(I915_WEDGED, &gt->reset.flags);
 
 	/* Mark all executing requests as skipped */
+	local_bh_disable();
 	for_each_engine(engine, gt, id)
 		if (engine->reset.cancel)
 			engine->reset.cancel(engine);
+	local_bh_enable();
 
 	reset_finish(gt, awake);
 
@@ -1108,20 +1111,7 @@ static inline int intel_gt_reset_engine(struct intel_engine_cs *engine)
 	return __intel_gt_reset(engine->gt, engine->mask);
 }
 
-/**
- * intel_engine_reset - reset GPU engine to recover from a hang
- * @engine: engine to reset
- * @msg: reason for GPU reset; or NULL for no drm_notice()
- *
- * Reset a specific GPU engine. Useful if a hang is detected.
- * Returns zero on successful reset or otherwise an error code.
- *
- * Procedure is:
- *  - identifies the request that caused the hang and it is dropped
- *  - reset engine (which will force the engine to idle)
- *  - re-init/configure engine
- */
-int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
+int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
 {
 	struct intel_gt *gt = engine->gt;
 	bool uses_guc = intel_engine_in_guc_submission_mode(engine);
@@ -1172,6 +1162,30 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	return ret;
 }
 
+/**
+ * intel_engine_reset - reset GPU engine to recover from a hang
+ * @engine: engine to reset
+ * @msg: reason for GPU reset; or NULL for no drm_notice()
+ *
+ * Reset a specific GPU engine. Useful if a hang is detected.
+ * Returns zero on successful reset or otherwise an error code.
+ *
+ * Procedure is:
+ *  - identifies the request that caused the hang and it is dropped
+ *  - reset engine (which will force the engine to idle)
+ *  - re-init/configure engine
+ */
+int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
+{
+	int err;
+
+	local_bh_disable();
+	err = __intel_engine_reset_bh(engine, msg);
+	local_bh_enable();
+
+	return err;
+}
+
 static void intel_gt_reset_global(struct intel_gt *gt,
 				  u32 engine_mask,
 				  const char *reason)
@@ -1258,18 +1272,20 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	 * single reset fails.
 	 */
 	if (intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
+		local_bh_disable();
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
 			BUILD_BUG_ON(I915_RESET_MODESET >= I915_RESET_ENGINE);
 			if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
 					     &gt->reset.flags))
 				continue;
 
-			if (intel_engine_reset(engine, msg) == 0)
+			if (__intel_engine_reset_bh(engine, msg) == 0)
 				engine_mask &= ~engine->mask;
 
 			clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id,
 					      &gt->reset.flags);
 		}
+		local_bh_enable();
 	}
 
 	if (!engine_mask)
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
index 8e8d5f761166..675910ca1a35 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
@@ -34,6 +34,8 @@ void intel_gt_reset(struct intel_gt *gt,
 		    const char *reason);
 int intel_engine_reset(struct intel_engine_cs *engine,
 		       const char *reason);
+int __intel_engine_reset_bh(struct intel_engine_cs *engine,
+			    const char *reason);
 
 void __i915_request_reset(struct i915_request *rq, bool guilty);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index fb5ebf930ab2..c28d1fcad673 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1576,12 +1576,17 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 		  engine->name, mode, p->name);
 
 	tasklet_disable(t);
+	if (strcmp(p->name, "softirq"))
+		local_bh_disable();
 	p->critical_section_begin();
 
-	err = intel_engine_reset(engine, NULL);
+	err = __intel_engine_reset_bh(engine, NULL);
 
 	p->critical_section_end();
+	if (strcmp(p->name, "softirq"))
+		local_bh_enable();
 	tasklet_enable(t);
+	tasklet_hi_schedule(t);
 
 	if (err)
 		pr_err("i915_reset_engine(%s:%s) failed under %s\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index daa4aabab9a7..aa98d351dfcc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -623,8 +623,10 @@ static int live_hold_reset(void *arg)
 
 		/* We have our request executing, now remove it and reset */
 
+		local_bh_disable();
 		if (test_and_set_bit(I915_RESET_ENGINE + id,
 				     &gt->reset.flags)) {
+			local_bh_enable();
 			intel_gt_set_wedged(gt);
 			err = -EBUSY;
 			goto out;
@@ -638,12 +640,13 @@ static int live_hold_reset(void *arg)
 		execlists_hold(engine, rq);
 		GEM_BUG_ON(!i915_request_on_hold(rq));
 
-		intel_engine_reset(engine, NULL);
+		__intel_engine_reset_bh(engine, NULL);
 		GEM_BUG_ON(rq->fence.error != -EIO);
 
 		tasklet_enable(&engine->execlists.tasklet);
 		clear_and_wake_up_bit(I915_RESET_ENGINE + id,
 				      &gt->reset.flags);
+		local_bh_enable();
 
 		/* Check that we do not resubmit the held request */
 		if (!i915_request_wait(rq, 0, HZ / 5)) {
@@ -4572,8 +4575,10 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(engine == ve->engine);
 
 	/* Take ownership of the reset and tasklet */
+	local_bh_disable();
 	if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
 			     &gt->reset.flags)) {
+		local_bh_enable();
 		intel_gt_set_wedged(gt);
 		err = -EBUSY;
 		goto out_heartbeat;
@@ -4593,12 +4598,13 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	execlists_hold(engine, rq);
 	GEM_BUG_ON(!i915_request_on_hold(rq));
 
-	intel_engine_reset(engine, NULL);
+	__intel_engine_reset_bh(engine, NULL);
 	GEM_BUG_ON(rq->fence.error != -EIO);
 
 	/* Release our grasp on the engine, letting CS flow again */
 	tasklet_enable(&engine->execlists.tasklet);
 	clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags);
+	local_bh_enable();
 
 	/* Check that we do not resubmit the held request */
 	i915_request_get(rq);
@@ -6236,16 +6242,17 @@ static void garbage_reset(struct intel_engine_cs *engine,
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
 
-	if (test_and_set_bit(bit, lock))
-		return;
-
-	tasklet_disable(&engine->execlists.tasklet);
+	local_bh_disable();
+	if (!test_and_set_bit(bit, lock)) {
+		tasklet_disable(&engine->execlists.tasklet);
 
-	if (!rq->fence.error)
-		intel_engine_reset(engine, NULL);
+		if (!rq->fence.error)
+			__intel_engine_reset_bh(engine, NULL);
 
-	tasklet_enable(&engine->execlists.tasklet);
-	clear_and_wake_up_bit(bit, lock);
+		tasklet_enable(&engine->execlists.tasklet);
+		clear_and_wake_up_bit(bit, lock);
+	}
+	local_bh_enable();
 }
 
 static struct i915_request *garbage(struct intel_context *ce,
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 35406ecdf0b2..19dd0c347874 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -132,11 +132,16 @@ static int igt_atomic_engine_reset(void *arg)
 		for (p = igt_atomic_phases; p->name; p++) {
 			GEM_TRACE("intel_engine_reset(%s) under %s\n",
 				  engine->name, p->name);
+			if (strcmp(p->name, "softirq"))
+				local_bh_disable();
 
 			p->critical_section_begin();
-			err = intel_engine_reset(engine, NULL);
+			err = __intel_engine_reset_bh(engine, NULL);
 			p->critical_section_end();
 
+			if (strcmp(p->name, "softirq"))
+				local_bh_enable();
+
 			if (err) {
 				pr_err("intel_engine_reset(%s) failed under %s\n",
 				       engine->name, p->name);
@@ -146,6 +151,7 @@ static int igt_atomic_engine_reset(void *arg)
 
 		intel_engine_pm_put(engine);
 		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_hi_schedule(&engine->execlists.tasklet);
 		if (err)
 			break;
 	}
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3bb7320249ae..0dad1f0fbd32 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1599,7 +1599,9 @@ void i915_request_add(struct i915_request *rq)
 		attr = ctx->sched;
 	rcu_read_unlock();
 
+	local_bh_disable();
 	__i915_request_queue(rq, &attr);
+	local_bh_enable();
 
 	mutex_unlock(&tl->mutex);
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 9271aad7f779..66564f37fd06 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1926,9 +1926,7 @@ static int measure_inter_request(struct intel_context *ce)
 		intel_ring_advance(rq, cs);
 		i915_request_add(rq);
 	}
-	local_bh_disable();
 	i915_sw_fence_commit(submit);
-	local_bh_enable();
 	intel_engine_flush_submission(ce->engine);
 	heap_fence_put(submit);
 
@@ -2214,11 +2212,9 @@ static int measure_completion(struct intel_context *ce)
 		intel_ring_advance(rq, cs);
 
 		dma_fence_add_callback(&rq->fence, &cb.base, signal_cb);
-
-		local_bh_disable();
 		i915_request_add(rq);
-		local_bh_enable();
 
+		intel_engine_flush_submission(ce->engine);
 		if (wait_for(READ_ONCE(sema[i]) == -1, 50)) {
 			err = -EIO;
 			goto err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
