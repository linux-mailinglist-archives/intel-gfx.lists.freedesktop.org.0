Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF9B3025F3
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51A66E16F;
	Mon, 25 Jan 2021 14:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4494D6E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693640-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:13 +0000
Message-Id: <20210125140136.10494-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/41] drm/i915: Move tasklet from execlists to
 sched
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the scheduling tasklists out of the execlists backend into the
per-engine scheduling bookkeeping.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        | 14 ----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 11 ++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 --
 .../drm/i915/gt/intel_execlists_submission.c  | 65 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 16 ++---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  6 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 18 ++---
 drivers/gpu/drm/i915/i915_scheduler.c         | 14 ++--
 drivers/gpu/drm/i915/i915_scheduler.h         | 20 ++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  6 ++
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 16 ++---
 14 files changed, 99 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 20974415e7d8..801ae54cf60d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -122,20 +122,6 @@ execlists_active(const struct intel_engine_execlists *execlists)
 	return active;
 }
 
-static inline void
-execlists_active_lock_bh(struct intel_engine_execlists *execlists)
-{
-	local_bh_disable(); /* prevent local softirq and lock recursion */
-	tasklet_lock(&execlists->tasklet);
-}
-
-static inline void
-execlists_active_unlock_bh(struct intel_engine_execlists *execlists)
-{
-	tasklet_unlock(&execlists->tasklet);
-	local_bh_enable(); /* restore softirq, and kick ksoftirqd! */
-}
-
 static inline u32
 intel_read_status_page(const struct intel_engine_cs *engine, int reg)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ef225da35399..cdd07aeada05 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -902,7 +902,6 @@ int intel_engines_init(struct intel_gt *gt)
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
 	i915_sched_fini_engine(&engine->active);
-	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
 
@@ -1187,7 +1186,7 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
 
 void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync)
 {
-	struct tasklet_struct *t = &engine->execlists.tasklet;
+	struct tasklet_struct *t = &engine->active.tasklet;
 
 	if (!t->func)
 		return;
@@ -1454,8 +1453,8 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 
 		drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
 			   yesno(test_bit(TASKLET_STATE_SCHED,
-					  &engine->execlists.tasklet.state)),
-			   enableddisabled(!atomic_read(&engine->execlists.tasklet.count)),
+					  &engine->active.tasklet.state)),
+			   enableddisabled(!atomic_read(&engine->active.tasklet.count)),
 			   repr_timer(&engine->execlists.preempt),
 			   repr_timer(&engine->execlists.timer));
 
@@ -1479,7 +1478,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 				   idx, hws[idx * 2], hws[idx * 2 + 1]);
 		}
 
-		execlists_active_lock_bh(execlists);
+		i915_sched_lock_bh(&engine->active);
 		rcu_read_lock();
 		for (port = execlists->active; (rq = *port); port++) {
 			char hdr[160];
@@ -1510,7 +1509,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			i915_request_show(m, rq, hdr, 0);
 		}
 		rcu_read_unlock();
-		execlists_active_unlock_bh(execlists);
+		i915_sched_unlock_bh(&engine->active);
 	} else if (INTEL_GEN(dev_priv) > 6) {
 		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
 			   ENGINE_READ(engine, RING_PP_DIR_BASE));
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c46d70b7e484..76d561c2c6aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -138,11 +138,6 @@ struct st_preempt_hang {
  * driver and the hardware state for execlist mode of submission.
  */
 struct intel_engine_execlists {
-	/**
-	 * @tasklet: softirq tasklet for bottom handler
-	 */
-	struct tasklet_struct tasklet;
-
 	/**
 	 * @timer: kick the current context if its timeslice expires
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 756ac388a4a8..1103c8a00af1 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -513,7 +513,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 		resubmit_virtual_request(rq, ve);
 
 	if (READ_ONCE(ve->request))
-		tasklet_hi_schedule(&ve->base.execlists.tasklet);
+		i915_sched_kick(&ve->base.active);
 }
 
 static void __execlists_schedule_out(struct i915_request * const rq,
@@ -679,10 +679,9 @@ trace_ports(const struct intel_engine_execlists *execlists,
 		     dump_port(p1, sizeof(p1), ", ", ports[1]));
 }
 
-static bool
-reset_in_progress(const struct intel_engine_execlists *execlists)
+static bool reset_in_progress(const struct intel_engine_cs *engine)
 {
-	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
+	return unlikely(!__tasklet_is_enabled(&engine->active.tasklet));
 }
 
 static __maybe_unused noinline bool
@@ -699,7 +698,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 	trace_ports(execlists, msg, execlists->pending);
 
 	/* We may be messing around with the lists during reset, lalala */
-	if (reset_in_progress(execlists))
+	if (reset_in_progress(engine))
 		return true;
 
 	if (!execlists->pending[0]) {
@@ -1084,7 +1083,7 @@ static void start_timeslice(struct intel_engine_cs *engine)
 			 * its timeslice, so recheck.
 			 */
 			if (!timer_pending(&el->timer))
-				tasklet_hi_schedule(&el->tasklet);
+				i915_sched_kick(&engine->active);
 			return;
 		}
 
@@ -1664,8 +1663,8 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 	 * access. Either we are inside the tasklet, or the tasklet is disabled
 	 * and we assume that is only inside the reset paths and so serialised.
 	 */
-	GEM_BUG_ON(!tasklet_is_locked(&execlists->tasklet) &&
-		   !reset_in_progress(execlists));
+	GEM_BUG_ON(!tasklet_is_locked(&engine->active.tasklet) &&
+		   !reset_in_progress(engine));
 	GEM_BUG_ON(!intel_engine_in_execlists_submission_mode(engine));
 
 	/*
@@ -2077,13 +2076,13 @@ static noinline void execlists_reset(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "reset for %s\n", msg);
 
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
-	tasklet_disable_nosync(&engine->execlists.tasklet);
+	tasklet_disable_nosync(&engine->active.tasklet);
 
 	ring_set_paused(engine, 1); /* Freeze the current request in place */
 	execlists_capture(engine);
 	intel_engine_reset(engine, msg);
 
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 	clear_and_wake_up_bit(bit, lock);
 }
 
@@ -2133,8 +2132,10 @@ static void execlists_submission_tasklet(unsigned long data)
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
 {
-	/* Kick the tasklet for some interrupt coalescing and reset handling */
-	tasklet_hi_schedule(&execlists->tasklet);
+	struct intel_engine_cs *engine =
+		container_of(execlists, typeof(*engine), execlists);
+
+	i915_sched_kick(&engine->active);
 }
 
 #define execlists_kick(t, member) \
@@ -2457,10 +2458,8 @@ static int execlists_resume(struct intel_engine_cs *engine)
 
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
 	ENGINE_TRACE(engine, "depth<-%d\n",
-		     atomic_read(&execlists->tasklet.count));
+		     atomic_read(&engine->active.tasklet.count));
 
 	/*
 	 * Prevent request submission to the hardware until we have
@@ -2471,8 +2470,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * Turning off the execlists->tasklet until the reset is over
 	 * prevents the race.
 	 */
-	__tasklet_disable_sync_once(&execlists->tasklet);
-	GEM_BUG_ON(!reset_in_progress(execlists));
+	__tasklet_disable_sync_once(&engine->active.tasklet);
+	GEM_BUG_ON(!reset_in_progress(engine));
 
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
@@ -2706,8 +2705,8 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists->queue_priority_hint = INT_MIN;
 	engine->active.queue = RB_ROOT_CACHED;
 
-	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
-	execlists->tasklet.func = nop_submission_tasklet;
+	GEM_BUG_ON(__tasklet_is_enabled(&engine->active.tasklet));
+	engine->active.tasklet.func = nop_submission_tasklet;
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 	rcu_read_unlock();
@@ -2715,8 +2714,6 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 static void execlists_reset_finish(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
 	/*
 	 * After a GPU reset, we may have requests to replay. Do so now while
 	 * we still have the forcewake to be sure that the GPU is not allowed
@@ -2727,14 +2724,14 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	 * reset as the next level of recovery, and as a final resort we
 	 * will declare the device wedged.
 	 */
-	GEM_BUG_ON(!reset_in_progress(execlists));
+	GEM_BUG_ON(!reset_in_progress(engine));
 
 	/* And kick in case we missed a new request submission. */
-	if (__tasklet_enable(&execlists->tasklet))
-		__execlists_kick(execlists);
+	if (__tasklet_enable(&engine->active.tasklet))
+		i915_sched_kick(&engine->active);
 
 	ENGINE_TRACE(engine, "depth->%d\n",
-		     atomic_read(&execlists->tasklet.count));
+		     atomic_read(&engine->active.tasklet.count));
 }
 
 static void gen8_logical_ring_enable_irq(struct intel_engine_cs *engine)
@@ -2767,7 +2764,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = i915_request_enqueue;
-	engine->execlists.tasklet.func = execlists_submission_tasklet;
+	engine->active.tasklet.func = execlists_submission_tasklet;
 
 	engine->reset.prepare = execlists_reset_prepare;
 	engine->reset.rewind = execlists_reset_rewind;
@@ -2799,7 +2796,7 @@ static void execlists_shutdown(struct intel_engine_cs *engine)
 	/* Synchronise with residual timers and any softirq they raise */
 	del_timer_sync(&engine->execlists.timer);
 	del_timer_sync(&engine->execlists.preempt);
-	tasklet_kill(&engine->execlists.tasklet);
+	tasklet_kill(&engine->active.tasklet);
 }
 
 static void execlists_release(struct intel_engine_cs *engine)
@@ -2891,7 +2888,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
 
-	tasklet_init(&engine->execlists.tasklet,
+	tasklet_init(&engine->active.tasklet,
 		     execlists_submission_tasklet, (unsigned long)engine);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
@@ -2974,7 +2971,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	 * rbtrees as in the case it is running in parallel, it may reinsert
 	 * the rb_node into a sibling.
 	 */
-	tasklet_kill(&ve->base.execlists.tasklet);
+	tasklet_kill(&ve->base.active.tasklet);
 
 	/* Decouple ourselves from the siblings, no more access allowed. */
 	for (n = 0; n < ve->num_siblings; n++) {
@@ -2992,7 +2989,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 
 		spin_unlock_irq(&sibling->active.lock);
 	}
-	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
+	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.active.tasklet));
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 
 	lrc_fini(&ve->context);
@@ -3206,7 +3203,7 @@ static void virtual_submission_tasklet(unsigned long data)
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
 		node->prio = prio;
 		if (first && prio > sibling->execlists.queue_priority_hint)
-			tasklet_hi_schedule(&sibling->execlists.tasklet);
+			i915_sched_kick(&sibling->active);
 
 unlock_engine:
 		spin_unlock_irq(&sibling->active.lock);
@@ -3247,7 +3244,7 @@ static void virtual_submit_request(struct i915_request *rq)
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 	list_move_tail(&rq->sched.link, virtual_queue(ve));
 
-	tasklet_hi_schedule(&ve->base.execlists.tasklet);
+	i915_sched_kick(&ve->base.active);
 
 unlock:
 	spin_unlock_irqrestore(&ve->base.active.lock, flags);
@@ -3345,7 +3342,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
-	tasklet_init(&ve->base.execlists.tasklet,
+	tasklet_init(&ve->base.active.tasklet,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
 
@@ -3375,7 +3372,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		 * layering if we handle cloning of the requests and
 		 * submitting a copy into each backend.
 		 */
-		if (sibling->execlists.tasklet.func !=
+		if (sibling->active.tasklet.func !=
 		    execlists_submission_tasklet) {
 			err = -ENODEV;
 			goto err_put;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 9fc6c912a4e5..5f5e96da09b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -59,7 +59,7 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 	}
 
 	if (tasklet)
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(&engine->active);
 }
 
 static u32
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index e34858b111c8..d2036e16274d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -43,7 +43,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   unsigned long timeout)
 {
 	/* Ignore our own attempts to suppress excess tasklets */
-	tasklet_hi_schedule(&engine->execlists.tasklet);
+	i915_sched_kick(&engine->active);
 
 	timeout += jiffies;
 	do {
@@ -602,9 +602,9 @@ static int live_hold_reset(void *arg)
 			err = -EBUSY;
 			goto out;
 		}
-		tasklet_disable(&engine->execlists.tasklet);
+		tasklet_disable(&engine->active.tasklet);
 
-		engine->execlists.tasklet.func(engine->execlists.tasklet.data);
+		engine->active.tasklet.func(engine->active.tasklet.data);
 		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 		i915_request_get(rq);
@@ -614,7 +614,7 @@ static int live_hold_reset(void *arg)
 		__intel_engine_reset_bh(engine, NULL);
 		GEM_BUG_ON(rq->fence.error != -EIO);
 
-		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_enable(&engine->active.tasklet);
 		clear_and_wake_up_bit(I915_RESET_ENGINE + id,
 				      &gt->reset.flags);
 		local_bh_enable();
@@ -1176,7 +1176,7 @@ static int live_timeslice_rewind(void *arg)
 		while (i915_request_is_active(rq[A2])) { /* semaphore yield! */
 			/* Wait for the timeslice to kick in */
 			del_timer(&engine->execlists.timer);
-			tasklet_hi_schedule(&engine->execlists.tasklet);
+			i915_sched_kick(&engine->active);
 			intel_engine_flush_submission(engine);
 		}
 		/* -> ELSP[] = { { A:rq1 }, { B:rq1 } } */
@@ -4575,9 +4575,9 @@ static int reset_virtual_engine(struct intel_gt *gt,
 		err = -EBUSY;
 		goto out_heartbeat;
 	}
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&engine->active.tasklet);
 
-	engine->execlists.tasklet.func(engine->execlists.tasklet.data);
+	engine->active.tasklet.func(engine->active.tasklet.data);
 	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 	/* Fake a preemption event; failed of course */
@@ -4594,7 +4594,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(rq->fence.error != -EIO);
 
 	/* Release our grasp on the engine, letting CS flow again */
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 	clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags);
 	local_bh_enable();
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 8cad102922e7..3d3f41b1271a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1701,7 +1701,7 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 				     const struct igt_atomic_section *p,
 				     const char *mode)
 {
-	struct tasklet_struct * const t = &engine->execlists.tasklet;
+	struct tasklet_struct * const t = &engine->active.tasklet;
 	int err;
 
 	GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e97adf1b7729..0a40f6b574f8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -49,7 +49,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   unsigned long timeout)
 {
 	/* Ignore our own attempts to suppress excess tasklets */
-	tasklet_hi_schedule(&engine->execlists.tasklet);
+	i915_sched_kick(&engine->active);
 
 	timeout += jiffies;
 	do {
@@ -1857,12 +1857,12 @@ static void garbage_reset(struct intel_engine_cs *engine,
 
 	local_bh_disable();
 	if (!test_and_set_bit(bit, lock)) {
-		tasklet_disable(&engine->execlists.tasklet);
+		tasklet_disable(&engine->active.tasklet);
 
 		if (!rq->fence.error)
 			__intel_engine_reset_bh(engine, NULL);
 
-		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_enable(&engine->active.tasklet);
 		clear_and_wake_up_bit(bit, lock);
 	}
 	local_bh_enable();
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 8784257ec808..154a09ef075a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -321,7 +321,7 @@ static int igt_atomic_engine_reset(void *arg)
 		goto out_unlock;
 
 	for_each_engine(engine, gt, id) {
-		struct tasklet_struct *t = &engine->execlists.tasklet;
+		struct tasklet_struct *t = &engine->active.tasklet;
 
 		if (t->func)
 			tasklet_disable(t);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 70b2e23a9644..2d7339ef3b4c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -265,8 +265,6 @@ static void guc_submission_tasklet(unsigned long data)
 
 static void guc_reset_prepare(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
 	ENGINE_TRACE(engine, "\n");
 
 	/*
@@ -278,7 +276,7 @@ static void guc_reset_prepare(struct intel_engine_cs *engine)
 	 * Turning off the execlists->tasklet until the reset is over
 	 * prevents the race.
 	 */
-	__tasklet_disable_sync_once(&execlists->tasklet);
+	__tasklet_disable_sync_once(&engine->active.tasklet);
 }
 
 static void guc_reset_state(struct intel_context *ce,
@@ -382,14 +380,12 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 
 static void guc_reset_finish(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	if (__tasklet_enable(&execlists->tasklet))
+	if (__tasklet_enable(&engine->active.tasklet))
 		/* And kick in case we missed a new request submission. */
-		tasklet_hi_schedule(&execlists->tasklet);
+		tasklet_hi_schedule(&engine->active.tasklet);
 
 	ENGINE_TRACE(engine, "depth->%d\n",
-		     atomic_read(&execlists->tasklet.count));
+		     atomic_read(&engine->active.tasklet.count));
 }
 
 /*
@@ -579,7 +575,7 @@ static int guc_resume(struct intel_engine_cs *engine)
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = i915_request_enqueue;
-	engine->execlists.tasklet.func = guc_submission_tasklet;
+	engine->active.tasklet.func = guc_submission_tasklet;
 
 	engine->reset.prepare = guc_reset_prepare;
 	engine->reset.rewind = guc_reset_rewind;
@@ -613,7 +609,7 @@ static void guc_release(struct intel_engine_cs *engine)
 {
 	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
 
-	tasklet_kill(&engine->execlists.tasklet);
+	tasklet_kill(&engine->active.tasklet);
 
 	intel_engine_cleanup_common(engine);
 	lrc_fini_wa_ctx(engine);
@@ -671,7 +667,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 	 */
 	GEM_BUG_ON(INTEL_GEN(i915) < 11);
 
-	tasklet_init(&engine->execlists.tasklet,
+	tasklet_init(&engine->active.tasklet,
 		     guc_submission_tasklet, (unsigned long)engine);
 
 	guc_default_vfuncs(engine);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 76a11452c361..a3ee06cb66d7 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -125,6 +125,7 @@ void i915_sched_park_engine(struct i915_sched_engine *se)
 void i915_sched_fini_engine(struct i915_sched_engine *se)
 {
 	GEM_BUG_ON(!list_empty(&se->requests));
+	tasklet_kill(&se->tasklet); /* flush the callback */
 }
 
 static void __ipi_add(struct i915_request *rq)
@@ -339,7 +340,7 @@ static void kick_submission(struct intel_engine_cs *engine,
 
 	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(&engine->active);
 }
 
 static void ipi_priority(struct i915_request *rq, int prio)
@@ -621,16 +622,17 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
 void i915_request_enqueue(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
+	struct i915_sched_engine *se = &engine->active;
 	unsigned long flags;
 	bool kick = false;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&se->lock, flags);
 	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
 	if (unlikely(ancestor_on_hold(engine, rq))) {
 		RQ_TRACE(rq, "ancestor on hold\n");
-		list_add_tail(&rq->sched.link, &engine->active.hold);
+		list_add_tail(&rq->sched.link, &se->hold);
 		i915_request_set_hold(rq);
 	} else {
 		queue_request(engine, rq);
@@ -641,9 +643,9 @@ void i915_request_enqueue(struct i915_request *rq)
 	}
 
 	GEM_BUG_ON(list_empty(&rq->sched.link));
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&se->lock, flags);
 	if (kick)
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(se);
 }
 
 struct i915_request *
@@ -776,7 +778,7 @@ void __intel_engine_resume_request(struct intel_engine_cs *engine,
 
 	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
 		engine->execlists.queue_priority_hint = rq_prio(rq);
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(&engine->active);
 	}
 
 	if (!i915_request_on_hold(rq))
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index e89bf5ed61b3..0ab47cbf0e9c 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -79,6 +79,26 @@ i915_sched_is_last_request(const struct i915_sched_engine *se,
 	return list_is_last_rcu(&rq->sched.link, &se->requests);
 }
 
+static inline void
+i915_sched_lock_bh(struct i915_sched_engine *se)
+{
+	local_bh_disable(); /* prevent local softirq and lock recursion */
+	tasklet_lock(&se->tasklet);
+}
+
+static inline void
+i915_sched_unlock_bh(struct i915_sched_engine *se)
+{
+	tasklet_unlock(&se->tasklet);
+	local_bh_enable(); /* restore softirq, and kick ksoftirqd! */
+}
+
+static inline void i915_sched_kick(struct i915_sched_engine *se)
+{
+	/* Kick the tasklet for some interrupt coalescing and reset handling */
+	tasklet_hi_schedule(&se->tasklet);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index aa8a2d1e890a..f668c680d290 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -7,6 +7,7 @@
 #ifndef _I915_SCHEDULER_TYPES_H_
 #define _I915_SCHEDULER_TYPES_H_
 
+#include <linux/interrupt.h>
 #include <linux/list.h>
 #include <linux/workqueue.h>
 
@@ -101,6 +102,11 @@ struct i915_sched_engine {
 	 * @no_priolist: priority lists disabled
 	 */
 	bool no_priolist;
+
+	/**
+	 * @tasklet: softirq tasklet for bottom half
+	 */
+	struct tasklet_struct tasklet;
 };
 
 struct i915_dependency {
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 000b68a40d4c..de44a66210b7 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -172,12 +172,12 @@ static int __single_chain(struct intel_engine_cs *engine, unsigned long length,
 	}
 	intel_engine_flush_submission(engine);
 
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&engine->active.tasklet);
 	local_bh_disable();
 	if (fn(rq, count, count - 1) && !check_context_order(engine))
 		err = -EINVAL;
 	local_bh_enable();
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 
 	igt_spinner_end(&spin);
 err_context:
@@ -258,12 +258,12 @@ static int __wide_chain(struct intel_engine_cs *engine, unsigned long width,
 	}
 	intel_engine_flush_submission(engine);
 
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&engine->active.tasklet);
 	local_bh_disable();
 	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
 		err = -EINVAL;
 	local_bh_enable();
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 
 	igt_spinner_end(&spin);
 err_free:
@@ -348,12 +348,12 @@ static int __inv_chain(struct intel_engine_cs *engine, unsigned long width,
 	}
 	intel_engine_flush_submission(engine);
 
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&engine->active.tasklet);
 	local_bh_disable();
 	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
 		err = -EINVAL;
 	local_bh_enable();
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 
 	igt_spinner_end(&spin);
 err_free:
@@ -455,12 +455,12 @@ static int __sparse_chain(struct intel_engine_cs *engine, unsigned long width,
 	}
 	intel_engine_flush_submission(engine);
 
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&engine->active.tasklet);
 	local_bh_disable();
 	if (fn(rq[i - 1], i, count) && !check_context_order(engine))
 		err = -EINVAL;
 	local_bh_enable();
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&engine->active.tasklet);
 
 	igt_spinner_end(&spin);
 err_free:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
