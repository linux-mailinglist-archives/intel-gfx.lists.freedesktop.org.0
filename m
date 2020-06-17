Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CC21FCF58
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 16:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BF26E954;
	Wed, 17 Jun 2020 14:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B926E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 14:17:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21525931-1500050 
 for multiple; Wed, 17 Jun 2020 15:16:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 15:16:48 +0100
Message-Id: <20200617141656.24384-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617141656.24384-1-chris@chris-wilson.co.uk>
References: <20200617141656.24384-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/execlists: Replace direct submit
 with direct call to tasklet
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  3 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 35 ++++----
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 79 +++++++------------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  6 +-
 5 files changed, 56 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index a9249a23903a..e6991521cd54 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -210,6 +210,9 @@ int intel_engine_resume(struct intel_engine_cs *engine);
 
 int intel_ring_submission_setup(struct intel_engine_cs *engine);
 
+int __intel_engine_stop_cs(struct intel_engine_cs *engine,
+			   int fast_timeout_us,
+			   int slow_timeout_ms);
 int intel_engine_stop_cs(struct intel_engine_cs *engine);
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c62b3cbdbbf9..f30cdd591c8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -903,32 +903,39 @@ static unsigned long stop_timeout(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.stop_timeout_ms);
 }
 
-int intel_engine_stop_cs(struct intel_engine_cs *engine)
+int __intel_engine_stop_cs(struct intel_engine_cs *engine,
+			   int fast_timeout_us,
+			   int slow_timeout_ms)
 {
 	struct intel_uncore *uncore = engine->uncore;
-	const u32 base = engine->mmio_base;
-	const i915_reg_t mode = RING_MI_MODE(base);
+	const i915_reg_t mode = RING_MI_MODE(engine->mmio_base);
+	int err;
+
+	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
+	err =__intel_wait_for_register_fw(engine->uncore, mode,
+					  MODE_IDLE, MODE_IDLE,
+					  fast_timeout_us,
+					  slow_timeout_ms,
+					  NULL);
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
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4eb397b0e14d..c26f3fe17ebb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2705,16 +2705,6 @@ static void process_csb(struct intel_engine_cs *engine)
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
@@ -3104,7 +3094,7 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 	if (!timer_expired(t))
 		return false;
 
-	return READ_ONCE(engine->execlists.pending[0]);
+	return engine->execlists.pending[0];
 }
 
 /*
@@ -3114,7 +3104,6 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
 
@@ -3124,16 +3113,17 @@ static void execlists_submission_tasklet(unsigned long data)
 			execlists_reset(engine, "CS error");
 	}
 
-	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
+	if (unlikely(preempt_timeout(engine)))
+		execlists_reset(engine, "preemption time out");
+
+	if (!engine->execlists.pending[0]) {
 		unsigned long flags;
 
+		rcu_read_lock(); /* protect peeking at execlists->active */
 		spin_lock_irqsave(&engine->active.lock, flags);
-		__execlists_submission_tasklet(engine);
+		execlists_dequeue(engine);
 		spin_unlock_irqrestore(&engine->active.lock, flags);
-
-		/* Recheck after serialising with direct-submission */
-		if (unlikely(timeout && preempt_timeout(engine)))
-			execlists_reset(engine, "preemption time out");
+		rcu_read_unlock();
 	}
 }
 
@@ -3165,26 +3155,16 @@ static void queue_request(struct intel_engine_cs *engine,
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
@@ -3198,20 +3178,22 @@ static void flush_csb(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists *el = &engine->execlists;
 
-	if (READ_ONCE(el->pending[0]) && tasklet_trylock(&el->tasklet)) {
-		if (!reset_in_progress(el))
-			process_csb(engine);
-		tasklet_unlock(&el->tasklet);
+	if (!tasklet_trylock(&el->tasklet)) {
+		__execlists_kick(el);
+		return;
 	}
+
+	if (!reset_in_progress(el))
+		execlists_submission_tasklet((unsigned long)engine);
+
+	tasklet_unlock(&el->tasklet);
 }
 
 static void execlists_submit_request(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
-
-	/* Hopefully we clear execlists->pending[] to let us through */
-	flush_csb(engine);
+	bool submit = false;
 
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
@@ -3226,10 +3208,13 @@ static void execlists_submit_request(struct i915_request *request)
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 		GEM_BUG_ON(list_empty(&request->sched.link));
 
-		submit_queue(engine, request);
+		submit = submit_queue(engine, request);
 	}
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
+
+	if (submit)
+		flush_csb(engine);
 }
 
 static void __execlists_context_fini(struct intel_context *ce)
@@ -4115,7 +4100,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	unsigned long flags;
 
 	ENGINE_TRACE(engine, "depth<-%d\n",
 		     atomic_read(&execlists->tasklet.count));
@@ -4132,10 +4116,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	__tasklet_disable_sync_once(&execlists->tasklet);
 	GEM_BUG_ON(!reset_in_progress(execlists));
 
-	/* And flush any current direct submission. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
 	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
@@ -4149,7 +4129,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * FIXME: Wa for more modern gens needs to be validated
 	 */
 	ring_set_paused(engine, 1);
-	intel_engine_stop_cs(engine);
+	if (__intel_engine_stop_cs(engine, 1000, 0))
+		ENGINE_TRACE(engine, "stop-cs idling timed out\n");
 
 	engine->execlists.reset_ccid = active_ccid(engine);
 }
@@ -4379,12 +4360,12 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
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
+		flush_csb(engine);
+
 	ENGINE_TRACE(engine, "depth->%d\n",
 		     atomic_read(&execlists->tasklet.count));
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
