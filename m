Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB41FF0F5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 13:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8566E0D3;
	Thu, 18 Jun 2020 11:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D760A6E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 11:48:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21537346-1500050 
 for multiple; Thu, 18 Jun 2020 12:48:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jun 2020 12:48:21 +0100
Message-Id: <20200618114821.8148-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618100356.15744-3-chris@chris-wilson.co.uk>
References: <20200618100356.15744-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Replace direct submit with direct
 call to tasklet
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

v2: Use bh kicking, see commit 3c53776e29f8 ("Mark HI and TASKLET
softirq synchronous").

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  35 +++---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  20 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 113 ++++++------------
 drivers/gpu/drm/i915/gt/intel_reset.c         |   4 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   1 +
 drivers/gpu/drm/i915/i915_request.c           |   2 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   6 +-
 8 files changed, 79 insertions(+), 104 deletions(-)

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
index c62b3cbdbbf9..60881c8b5b7c 100644
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
+	int err;
+
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
 	int err;
 
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
index cd20fb549b38..80e9f74040f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -42,6 +42,17 @@ static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
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
@@ -132,12 +143,10 @@ static void heartbeat(struct work_struct *wrk)
 	if (IS_ERR(rq))
 		goto unlock;
 
-	idle_pulse(engine, rq);
 	if (i915_modparams.enable_hangcheck)
 		engine->heartbeat.systole = i915_request_get(rq);
 
-	__i915_request_commit(rq);
-	__i915_request_queue(rq, &attr);
+	heartbeat_commit(rq, &attr);
 
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
@@ -218,10 +227,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
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
index 7bdbfac26d7b..70671dbdcc77 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2067,8 +2067,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request * const *active;
+	struct i915_request * const *active = execlists->active;
 	struct i915_request *last;
+	unsigned long flags;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -2093,6 +2094,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * sequence of requests as being the most optimal (fewest wake ups
 	 * and context switches) submission.
 	 */
+	spin_lock_irqsave(&engine->active.lock, flags);
 
 	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
 		struct virtual_engine *ve =
@@ -2121,10 +2123,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -2138,8 +2137,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 	if ((last = *active)) {
 		if (i915_request_completed(last) &&
-		    !list_is_last(&last->sched.link, &engine->active.requests))
+		    !list_is_last(&last->sched.link, &engine->active.requests)) {
+			spin_unlock_irqrestore(&engine->active.lock, flags);
 			return;
+		}
 
 		if (need_preempt(engine, last, rb)) {
 			ENGINE_TRACE(engine,
@@ -2210,6 +2211,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
+				spin_unlock_irqrestore(&engine->active.lock, flags);
 				start_timeslice(engine, queue_prio(execlists));
 				return;
 			}
@@ -2245,6 +2247,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
+				spin_unlock_irqrestore(&engine->active.lock, flags);
 				start_timeslice(engine, rq_prio(rq));
 				return; /* leave this for another sibling */
 			}
@@ -2377,8 +2380,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (__i915_request_submit(rq)) {
 				if (!merge) {
-					*port = execlists_schedule_in(last, port - execlists->pending);
-					port++;
+					*port++ = last;
 					last = NULL;
 				}
 
@@ -2416,25 +2418,24 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
+	spin_unlock_irqrestore(&engine->active.lock, flags);
 
 	if (submit) {
-		*port = execlists_schedule_in(last, port - execlists->pending);
-		execlists->switch_priority_hint =
-			switch_prio(engine, *execlists->pending);
-
+		*port++ = last;
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
+			*port = execlists_schedule_in(*port,
+						      port - execlists->pending);
+		execlists->switch_priority_hint =
+			switch_prio(engine, *execlists->pending);
 
 		WRITE_ONCE(execlists->yield, -1);
 		set_preempt_timeout(engine, *active);
@@ -2443,6 +2444,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		start_timeslice(engine, execlists->queue_priority_hint);
 skip_submit:
 		ring_set_paused(engine, 0);
+		*execlists->pending = NULL;
 	}
 }
 
@@ -2699,16 +2701,6 @@ static void process_csb(struct intel_engine_cs *engine)
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
@@ -3098,7 +3090,7 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 	if (!timer_expired(t))
 		return false;
 
-	return READ_ONCE(engine->execlists.pending[0]);
+	return engine->execlists.pending[0];
 }
 
 /*
@@ -3108,7 +3100,6 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
 
@@ -3118,17 +3109,11 @@ static void execlists_submission_tasklet(unsigned long data)
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
@@ -3159,26 +3144,16 @@ static void queue_request(struct intel_engine_cs *engine,
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
@@ -3188,25 +3163,11 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
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
 
@@ -3220,7 +3181,8 @@ static void execlists_submit_request(struct i915_request *request)
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 		GEM_BUG_ON(list_empty(&request->sched.link));
 
-		submit_queue(engine, request);
+		if (submit_queue(engine, request))
+			__execlists_kick(&engine->execlists);
 	}
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
@@ -4109,7 +4071,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	unsigned long flags;
 
 	ENGINE_TRACE(engine, "depth<-%d\n",
 		     atomic_read(&execlists->tasklet.count));
@@ -4126,10 +4087,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	__tasklet_disable_sync_once(&execlists->tasklet);
 	GEM_BUG_ON(!reset_in_progress(execlists));
 
-	/* And flush any current direct submission. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
 	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
@@ -4373,12 +4330,12 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
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
index 39070b514e65..b31e2f5ec70b 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -774,11 +774,13 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
+	local_bh_disable();
 	for_each_engine(engine, gt, id) {
 		reset_finish_engine(engine);
 		if (awake & engine->mask)
 			intel_engine_pm_put(engine);
 	}
+	local_bh_enable();
 }
 
 static void nop_submit_request(struct i915_request *request)
@@ -1167,7 +1169,9 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 
 out:
 	intel_engine_cancel_stop_cs(engine);
+	local_bh_disable();
 	reset_finish_engine(engine);
+	local_bh_enable();
 	intel_engine_pm_put_async(engine);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index fb5ebf930ab2..0fa23cb6bf1a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1582,6 +1582,7 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 
 	p->critical_section_end();
 	tasklet_enable(t);
+	tasklet_hi_schedule(t);
 
 	if (err)
 		pr_err("i915_reset_engine(%s:%s) failed under %s\n",
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
