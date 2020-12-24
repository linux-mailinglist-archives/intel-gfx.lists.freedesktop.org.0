Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB612E277B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 14:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C3589C80;
	Thu, 24 Dec 2020 13:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CC089C46
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:55:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23423423-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:55:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 13:55:36 +0000
Message-Id: <20201224135544.1713-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/9] drm/i915/gt: Replace direct submit with direct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than having special case code for opportunistically calling
process_csb() and performing a direct submit while holding the engine
spinlock for submitting the request, simply call the tasklet directly.
This allows us to retain the direct submission path, including the CS
draining to allow fast/immediate submissions, without requiring any
duplicated code paths, and most importantly greatly simplifying the
control flow by removing reentrancy. This will enable us to close a few
races in the virtual engines in the next few patches.

The trickiest part here is to ensure that paired operations (such as
schedule_in/schedule_out) remain under consistent locking domains,
e.g. when pulled outside of the engine->active.lock

v2: Use bh kicking, see commit 3c53776e29f8 ("Mark HI and TASKLET
softirq synchronous").
v3: Update engine-reset to be tasklet aware

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  35 +++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   3 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 140 +++++++-----------
 drivers/gpu/drm/i915/gt/intel_reset.c         |  60 +++++---
 drivers/gpu/drm/i915/gt/intel_reset.h         |   2 +
 drivers/gpu/drm/i915/gt/selftest_context.c    |   2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  10 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   7 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  17 ++-
 drivers/gpu/drm/i915/gt/selftest_reset.c      |   8 +-
 drivers/gpu/drm/i915/i915_request.c           |  12 +-
 drivers/gpu/drm/i915/i915_request.h           |   1 +
 drivers/gpu/drm/i915/i915_scheduler.c         |   4 -
 drivers/gpu/drm/i915/selftests/i915_request.c |   6 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |   3 +
 16 files changed, 162 insertions(+), 150 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 8acb922b69f9..1847d3c2ea99 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1019,32 +1019,39 @@ static unsigned long stop_timeout(const struct intel_engine_cs *engine)
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
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 8b353bc8c100..2843db731b7d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -144,7 +144,7 @@ __queue_and_release_pm(struct i915_request *rq,
 		list_add_tail(&tl->link, &timelines->active_list);
 
 	/* Hand the request over to HW and so engine_retire() */
-	__i915_request_queue(rq, NULL);
+	__i915_request_queue_bh(rq);
 
 	/* Let new submissions commence (and maybe retire this timeline) */
 	__intel_wakeref_defer_park(&engine->wakeref);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 02ee1e736982..c28f4e190fe6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -184,7 +184,8 @@ struct intel_engine_execlists {
 	 * Reserve the upper 16b for tracking internal errors.
 	 */
 	u32 error_interrupt;
-#define ERROR_CSB BIT(31)
+#define ERROR_CSB	BIT(31)
+#define ERROR_PREEMPT	BIT(30)
 
 	/**
 	 * @reset_ccid: Active CCID [EXECLISTS_STATUS_HI] at the time of reset
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 695a2d566d76..ac3e19da1a7d 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -571,8 +571,7 @@ __execlists_schedule_in(struct i915_request *rq)
 	return engine;
 }
 
-static inline struct i915_request *
-execlists_schedule_in(struct i915_request *rq, int idx)
+static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 {
 	struct intel_context * const ce = rq->context;
 	struct intel_engine_cs *old;
@@ -589,7 +588,6 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
 
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
-	return i915_request_get(rq);
 }
 
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
@@ -1257,8 +1255,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request * const *active;
-	struct i915_request *last;
+	struct i915_request *last = *execlists->active;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -1284,6 +1281,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
+	spin_lock(&engine->active.lock);
+
 	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
 		struct virtual_engine *ve =
 			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
@@ -1311,10 +1310,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -1326,7 +1322,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * completed and barf.
 	 */
 
-	if ((last = *active)) {
+	if (last) {
 		if (i915_request_completed(last)) {
 			goto check_secondary;
 		} else if (need_preempt(engine, last, rb)) {
@@ -1399,6 +1395,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
+				spin_unlock(&engine->active.lock);
 				start_timeslice(engine, queue_prio(execlists));
 				return;
 			}
@@ -1434,6 +1431,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
+				spin_unlock(&engine->active.lock);
 				start_timeslice(engine, rq_prio(rq));
 				return; /* leave this for another sibling */
 			}
@@ -1551,8 +1549,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (__i915_request_submit(rq)) {
 				if (!merge) {
-					*port = execlists_schedule_in(last, port - execlists->pending);
-					port++;
+					*port++ = i915_request_get(last);
 					last = NULL;
 				}
 
@@ -1571,8 +1568,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -1590,36 +1588,45 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
+	spin_unlock(&engine->active.lock);
 
 	if (submit) {
-		*port = execlists_schedule_in(last, port - execlists->pending);
-		execlists->switch_priority_hint =
-			switch_prio(engine, *execlists->pending);
-
 		/*
 		 * Skip if we ended up with exactly the same set of requests,
 		 * e.g. trying to timeslice a pair of ordered contexts
 		 */
-		if (!memcmp(active, execlists->pending,
-			    (port - execlists->pending + 1) * sizeof(*port))) {
-			do
-				execlists_schedule_out(fetch_and_zero(port));
-			while (port-- != execlists->pending);
-
+		if (!memcmp(execlists->active,
+			    execlists->pending,
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
-		set_preempt_timeout(engine, *active);
+		set_preempt_timeout(engine, *execlists->active);
 		execlists_submit_ports(engine);
 	} else {
 		start_timeslice(engine, execlists->queue_priority_hint);
 skip_submit:
 		ring_set_paused(engine, 0);
+		while (port-- != execlists->pending)
+			i915_request_put(*port);
+		*execlists->pending = NULL;
 	}
 }
 
+static void execlists_dequeue_irq(struct intel_engine_cs *engine)
+{
+	local_irq_disable(); /* Suspend interrupts across request submission */
+	execlists_dequeue(engine);
+	local_irq_enable(); /* flush irq_work (e.g. breadcrumb enabling) */
+}
+
 static void
 cancel_port_requests(struct intel_engine_execlists * const execlists)
 {
@@ -1962,16 +1969,6 @@ static void process_csb(struct intel_engine_cs *engine)
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
@@ -2363,7 +2360,7 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 	if (!timer_expired(t))
 		return false;
 
-	return READ_ONCE(engine->execlists.pending[0]);
+	return engine->execlists.pending[0];
 }
 
 /*
@@ -2373,10 +2370,14 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
 
+	if (unlikely(preempt_timeout(engine))) {
+		cancel_timer(&engine->execlists.preempt);
+		engine->execlists.error_interrupt |= ERROR_PREEMPT;
+	}
+
 	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
 		const char *msg;
 
@@ -2385,6 +2386,8 @@ static void execlists_submission_tasklet(unsigned long data)
 			msg = "CS error"; /* thrown by a user payload */
 		else if (engine->execlists.error_interrupt & ERROR_CSB)
 			msg = "invalid CSB event";
+		else if (engine->execlists.error_interrupt & ERROR_PREEMPT)
+			msg = "preemption time out";
 		else
 			msg = "internal error";
 
@@ -2392,19 +2395,8 @@ static void execlists_submission_tasklet(unsigned long data)
 		execlists_reset(engine, msg);
 	}
 
-	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
-		unsigned long flags;
-
-		spin_lock_irqsave(&engine->active.lock, flags);
-		__execlists_submission_tasklet(engine);
-		spin_unlock_irqrestore(&engine->active.lock, flags);
-
-		/* Recheck after serialising with direct-submission */
-		if (unlikely(timeout && preempt_timeout(engine))) {
-			cancel_timer(&engine->execlists.preempt);
-			execlists_reset(engine, "preemption time out");
-		}
-	}
+	if (!engine->execlists.pending[0])
+		execlists_dequeue_irq(engine);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -2435,26 +2427,16 @@ static void queue_request(struct intel_engine_cs *engine,
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
@@ -2464,25 +2446,11 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
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
 
@@ -2496,7 +2464,8 @@ static void execlists_submit_request(struct i915_request *request)
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 		GEM_BUG_ON(list_empty(&request->sched.link));
 
-		submit_queue(engine, request);
+		if (submit_queue(engine, request))
+			__execlists_kick(&engine->execlists);
 	}
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
@@ -2837,7 +2806,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	unsigned long flags;
 
 	ENGINE_TRACE(engine, "depth<-%d\n",
 		     atomic_read(&execlists->tasklet.count));
@@ -2854,10 +2822,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	__tasklet_disable_sync_once(&execlists->tasklet);
 	GEM_BUG_ON(!reset_in_progress(execlists));
 
-	/* And flush any current direct submission. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
 	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
@@ -3082,12 +3046,12 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
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
index 000d63588e9e..b85b6f3dcd60 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -40,20 +40,19 @@ static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
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
@@ -160,7 +159,7 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 		i915_request_set_error_once(rq, -EIO);
 		__i915_request_skip(rq);
 		if (mark_guilty(rq))
-			engine_skip_context(rq);
+			skip_context(rq);
 	} else {
 		i915_request_set_error_once(rq, -EAGAIN);
 		mark_innocent(rq);
@@ -753,8 +752,10 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
 	if (err)
 		return err;
 
+	local_bh_disable();
 	for_each_engine(engine, gt, id)
 		__intel_engine_reset(engine, stalled_mask & engine->mask);
+	local_bh_enable();
 
 	intel_ggtt_restore_fences(gt->ggtt);
 
@@ -832,9 +833,11 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	set_bit(I915_WEDGED, &gt->reset.flags);
 
 	/* Mark all executing requests as skipped */
+	local_bh_disable();
 	for_each_engine(engine, gt, id)
 		if (engine->reset.cancel)
 			engine->reset.cancel(engine);
+	local_bh_enable();
 
 	reset_finish(gt, awake);
 
@@ -1109,20 +1112,7 @@ static inline int intel_gt_reset_engine(struct intel_engine_cs *engine)
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
index a0eec7c11c0c..7dbf5cc8a333 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
@@ -34,6 +34,8 @@ void intel_gt_reset(struct intel_gt *gt,
 		    const char *reason);
 int intel_engine_reset(struct intel_engine_cs *engine,
 		       const char *reason);
+int __intel_engine_reset_bh(struct intel_engine_cs *engine,
+			    const char *reason);
 
 void __i915_request_reset(struct i915_request *rq, bool guilty);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 1f4020e906a8..db738d400168 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -25,7 +25,7 @@ static int request_sync(struct i915_request *rq)
 	/* Opencode i915_request_add() so we can keep the timeline locked. */
 	__i915_request_commit(rq);
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
-	__i915_request_queue(rq, NULL);
+	__i915_request_queue_bh(rq);
 
 	timeout = i915_request_wait(rq, 0, HZ / 10);
 	if (timeout < 0)
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index fa51cf6d840a..47b12ce4b132 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -599,8 +599,10 @@ static int live_hold_reset(void *arg)
 
 		/* We have our request executing, now remove it and reset */
 
+		local_bh_disable();
 		if (test_and_set_bit(I915_RESET_ENGINE + id,
 				     &gt->reset.flags)) {
+			local_bh_enable();
 			intel_gt_set_wedged(gt);
 			err = -EBUSY;
 			goto out;
@@ -614,12 +616,13 @@ static int live_hold_reset(void *arg)
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
@@ -4546,8 +4549,10 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(engine == ve->engine);
 
 	/* Take ownership of the reset and tasklet */
+	local_bh_disable();
 	if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
 			     &gt->reset.flags)) {
+		local_bh_enable();
 		intel_gt_set_wedged(gt);
 		err = -EBUSY;
 		goto out_heartbeat;
@@ -4567,12 +4572,13 @@ static int reset_virtual_engine(struct intel_gt *gt,
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
index d55421f6a250..ba6c2be5c8ff 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1607,16 +1607,17 @@ static void garbage_reset(struct intel_engine_cs *engine,
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
 
-	if (test_and_set_bit(bit, lock))
-		return;
+	local_bh_disable();
+	if (!test_and_set_bit(bit, lock)) {
+		tasklet_disable(&engine->execlists.tasklet);
 
-	tasklet_disable(&engine->execlists.tasklet);
+		if (!rq->fence.error)
+			__intel_engine_reset_bh(engine, NULL);
 
-	if (!rq->fence.error)
-		intel_engine_reset(engine, NULL);
-
-	tasklet_enable(&engine->execlists.tasklet);
-	clear_and_wake_up_bit(bit, lock);
+		tasklet_enable(&engine->execlists.tasklet);
+		clear_and_wake_up_bit(bit, lock);
+	}
+	local_bh_enable();
 }
 
 static struct i915_request *garbage(struct intel_context *ce,
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index e4645c8bb00a..5ec8d4e9983f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -327,11 +327,16 @@ static int igt_atomic_engine_reset(void *arg)
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
@@ -341,6 +346,7 @@ static int igt_atomic_engine_reset(void *arg)
 
 		intel_engine_pm_put(engine);
 		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_hi_schedule(&engine->execlists.tasklet);
 		if (err)
 			break;
 	}
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 45744c3ef7c4..6578faf6eed8 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1584,6 +1584,12 @@ struct i915_request *__i915_request_commit(struct i915_request *rq)
 	return __i915_request_add_to_timeline(rq);
 }
 
+void __i915_request_queue_bh(struct i915_request *rq)
+{
+	i915_sw_fence_commit(&rq->semaphore);
+	i915_sw_fence_commit(&rq->submit);
+}
+
 void __i915_request_queue(struct i915_request *rq,
 			  const struct i915_sched_attr *attr)
 {
@@ -1600,8 +1606,10 @@ void __i915_request_queue(struct i915_request *rq,
 	 */
 	if (attr && rq->engine->schedule)
 		rq->engine->schedule(rq, attr);
-	i915_sw_fence_commit(&rq->semaphore);
-	i915_sw_fence_commit(&rq->submit);
+
+	local_bh_disable();
+	__i915_request_queue_bh(rq);
+	local_bh_enable(); /* kick tasklets */
 }
 
 void i915_request_add(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 7c4453e60323..a8c413203f72 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -315,6 +315,7 @@ void __i915_request_skip(struct i915_request *rq);
 struct i915_request *__i915_request_commit(struct i915_request *request);
 void __i915_request_queue(struct i915_request *rq,
 			  const struct i915_sched_attr *attr);
+void __i915_request_queue_bh(struct i915_request *rq);
 
 bool i915_request_retire(struct i915_request *rq);
 void i915_request_retire_upto(struct i915_request *rq);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index b9cf9931ebd7..318e359bf5c3 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -458,14 +458,10 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	if (!dep)
 		return -ENOMEM;
 
-	local_bh_disable();
-
 	if (!__i915_sched_node_add_dependency(node, signal, dep,
 					      flags | I915_DEPENDENCY_ALLOC))
 		i915_dependency_free(dep);
 
-	local_bh_enable(); /* kick submission tasklet */
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index ddf76069066e..d2a678a2497e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1933,9 +1933,7 @@ static int measure_inter_request(struct intel_context *ce)
 		intel_ring_advance(rq, cs);
 		i915_request_add(rq);
 	}
-	local_bh_disable();
 	i915_sw_fence_commit(submit);
-	local_bh_enable();
 	intel_engine_flush_submission(ce->engine);
 	heap_fence_put(submit);
 
@@ -2221,11 +2219,9 @@ static int measure_completion(struct intel_context *ce)
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
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 1216d919185e..83f6e5f31fb3 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -220,6 +220,9 @@ void igt_spinner_fini(struct igt_spinner *spin)
 
 bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request *rq)
 {
+	if (i915_request_is_ready(rq))
+		intel_engine_flush_submission(rq->engine);
+
 	return !(wait_for_us(i915_seqno_passed(hws_seqno(spin, rq),
 					       rq->fence.seqno),
 			     100) &&
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
