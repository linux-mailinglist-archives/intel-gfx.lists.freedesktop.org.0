Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 400A230A3C3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8EC6E4BB;
	Mon,  1 Feb 2021 08:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7759E6E4C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757736-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:41 +0000
Message-Id: <20210201085715.27435-23-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/57] drm/i915: Move tasklet from execlists to
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the scheduling tasklists out of the execlists backend into the
per-engine scheduling bookkeeping.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        | 33 +++-----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 33 ++------
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 --
 .../drm/i915/gt/intel_execlists_submission.c  | 82 +++++++------------
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 49 +++++------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  3 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 13 +--
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  3 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 23 ++----
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 45 +++++++++-
 drivers/gpu/drm/i915/i915_scheduler.h         | 34 ++++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  9 ++
 drivers/gpu/drm/i915/selftests/i915_request.c | 10 +--
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 24 +++---
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  2 +-
 21 files changed, 200 insertions(+), 180 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index cc2df80eb449..52bba16c62e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -12,6 +12,7 @@
 #include "i915_pmu.h"
 #include "i915_reg.h"
 #include "i915_request.h"
+#include "i915_scheduler.h"
 #include "i915_selftest.h"
 #include "intel_engine_types.h"
 #include "intel_gt_types.h"
@@ -123,20 +124,6 @@ execlists_active(const struct intel_engine_execlists *execlists)
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
@@ -231,12 +218,6 @@ static inline void __intel_engine_reset(struct intel_engine_cs *engine,
 bool intel_engines_are_idle(struct intel_gt *gt);
 bool intel_engine_is_idle(struct intel_engine_cs *engine);
 
-void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync);
-static inline void intel_engine_flush_submission(struct intel_engine_cs *engine)
-{
-	__intel_engine_flush_submission(engine, true);
-}
-
 void intel_engines_reset_default_submission(struct intel_gt *gt);
 
 bool intel_engine_can_store_dword(struct intel_engine_cs *engine);
@@ -283,4 +264,16 @@ intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.heartbeat_interval_ms);
 }
 
+static inline void
+intel_engine_kick_scheduler(struct intel_engine_cs *engine)
+{
+	i915_sched_kick(intel_engine_get_scheduler(engine));
+}
+
+static inline void
+intel_engine_flush_scheduler(struct intel_engine_cs *engine)
+{
+	i915_sched_flush(intel_engine_get_scheduler(engine));
+}
+
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4c07c6f61924..b5b957283f2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -911,7 +911,6 @@ int intel_engines_init(struct intel_gt *gt)
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
 	i915_sched_fini(intel_engine_get_scheduler(engine));
-	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
 
@@ -1194,27 +1193,6 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
 	return idle;
 }
 
-void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync)
-{
-	struct tasklet_struct *t = &engine->execlists.tasklet;
-
-	if (!t->callback)
-		return;
-
-	local_bh_disable();
-	if (tasklet_trylock(t)) {
-		/* Must wait for any GPU reset in progress. */
-		if (__tasklet_is_enabled(t))
-			t->callback(t);
-		tasklet_unlock(t);
-	}
-	local_bh_enable();
-
-	/* Synchronise and wait for the tasklet on another CPU */
-	if (sync)
-		tasklet_unlock_wait(t);
-}
-
 /**
  * intel_engine_is_idle() - Report if the engine has finished process all work
  * @engine: the intel_engine_cs
@@ -1235,7 +1213,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 
 	/* Waiting to drain ELSP? */
 	synchronize_hardirq(engine->i915->drm.pdev->irq);
-	intel_engine_flush_submission(engine);
+	i915_sched_flush(se);
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
 	if (!i915_sched_is_idle(se))
@@ -1450,6 +1428,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 	if (intel_engine_uses_guc(engine)) {
 		/* nothing to print yet */
 	} else if (HAS_EXECLISTS(dev_priv)) {
+		struct i915_sched *se = intel_engine_get_scheduler(engine);
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
@@ -1459,8 +1438,8 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 
 		drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
 			   yesno(test_bit(TASKLET_STATE_SCHED,
-					  &engine->execlists.tasklet.state)),
-			   enableddisabled(!atomic_read(&engine->execlists.tasklet.count)),
+					  &se->tasklet.state)),
+			   enableddisabled(!atomic_read(&se->tasklet.count)),
 			   repr_timer(&engine->execlists.preempt),
 			   repr_timer(&engine->execlists.timer));
 
@@ -1484,7 +1463,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 				   idx, hws[idx * 2], hws[idx * 2 + 1]);
 		}
 
-		execlists_active_lock_bh(execlists);
+		i915_sched_lock_bh(se);
 		rcu_read_lock();
 		for (port = execlists->active; (rq = *port); port++) {
 			char hdr[160];
@@ -1515,7 +1494,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			i915_request_show(m, rq, hdr, 0);
 		}
 		rcu_read_unlock();
-		execlists_active_unlock_bh(execlists);
+		i915_sched_unlock_bh(se);
 	} else if (INTEL_GEN(dev_priv) > 6) {
 		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
 			   ENGINE_READ(engine, RING_PP_DIR_BASE));
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 48a91c0dbad6..fce86bd4b47f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -88,7 +88,7 @@ static void heartbeat(struct work_struct *wrk)
 	unsigned long serial;
 
 	/* Just in case everything has gone horribly wrong, give it a kick */
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 
 	rq = engine->heartbeat.systole;
 	if (rq && i915_request_completed(rq)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 3510c9236334..27d9d17b35cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -53,7 +53,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 		/* Flush all pending HW writes before we touch the context */
 		while (unlikely(intel_context_inflight(ce)))
-			intel_engine_flush_submission(engine);
+			intel_engine_flush_scheduler(engine);
 
 		/* First poison the image to verify we never fully trust it */
 		dbg_poison_ce(ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c36bdd957f8f..97fe5e395a85 100644
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
index 95208d45ffb1..be79a352e512 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -514,7 +514,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 		resubmit_virtual_request(rq, ve);
 
 	if (READ_ONCE(ve->request))
-		tasklet_hi_schedule(&ve->base.execlists.tasklet);
+		intel_engine_kick_scheduler(&ve->base);
 }
 
 static void __execlists_schedule_out(struct i915_request * const rq,
@@ -680,12 +680,6 @@ trace_ports(const struct intel_engine_execlists *execlists,
 		     dump_port(p1, sizeof(p1), ", ", ports[1]));
 }
 
-static bool
-reset_in_progress(const struct intel_engine_execlists *execlists)
-{
-	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
-}
-
 static __maybe_unused noinline bool
 assert_pending_valid(const struct intel_engine_execlists *execlists,
 		     const char *msg)
@@ -700,7 +694,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 	trace_ports(execlists, msg, execlists->pending);
 
 	/* We may be messing around with the lists during reset, lalala */
-	if (reset_in_progress(execlists))
+	if (i915_sched_is_disabled(intel_engine_get_scheduler(engine)))
 		return true;
 
 	if (!execlists->pending[0]) {
@@ -1087,7 +1081,7 @@ static void start_timeslice(struct intel_engine_cs *engine)
 			 * its timeslice, so recheck.
 			 */
 			if (!timer_pending(&el->timer))
-				tasklet_hi_schedule(&el->tasklet);
+				intel_engine_kick_scheduler(engine);
 			return;
 		}
 
@@ -1663,14 +1657,6 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 	struct i915_request **prev;
 	u8 head, tail;
 
-	/*
-	 * As we modify our execlists state tracking we require exclusive
-	 * access. Either we are inside the tasklet, or the tasklet is disabled
-	 * and we assume that is only inside the reset paths and so serialised.
-	 */
-	GEM_BUG_ON(!tasklet_is_locked(&execlists->tasklet) &&
-		   !reset_in_progress(execlists));
-
 	/*
 	 * Note that csb_write, csb_status may be either in HWSP or mmio.
 	 * When reading from the csb_write mmio register, we have to be
@@ -2066,6 +2052,7 @@ static void execlists_capture(struct intel_engine_cs *engine)
 
 static noinline void execlists_reset(struct intel_engine_cs *engine)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
 	unsigned long eir = fetch_and_zero(&engine->execlists.error_interrupt);
@@ -2089,13 +2076,13 @@ static noinline void execlists_reset(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "reset for %s\n", msg);
 
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
-	tasklet_disable_nosync(&engine->execlists.tasklet);
+	tasklet_disable_nosync(&se->tasklet);
 
 	ring_set_paused(engine, 1); /* Freeze the current request in place */
 	execlists_capture(engine);
 	intel_engine_reset(engine, msg);
 
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&se->tasklet);
 	clear_and_wake_up_bit(bit, lock);
 }
 
@@ -2119,10 +2106,16 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(struct tasklet_struct *t)
 {
 	struct intel_engine_cs * const engine =
-		from_tasklet(engine, t, execlists.tasklet);
+		from_tasklet(engine, t, sched.tasklet);
 	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
 	struct i915_request **inactive;
 
+	/*
+	 * As we modify our execlists state tracking we require exclusive
+	 * access. Either we are inside the tasklet, or the tasklet is disabled
+	 * and we assume that is only inside the reset paths and so serialised.
+	 */
+
 	rcu_read_lock();
 	inactive = process_csb(engine, post);
 	GEM_BUG_ON(inactive - post > ARRAY_SIZE(post));
@@ -2146,8 +2139,10 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
 {
-	/* Kick the tasklet for some interrupt coalescing and reset handling */
-	tasklet_hi_schedule(&execlists->tasklet);
+	struct intel_engine_cs *engine =
+		container_of(execlists, typeof(*engine), execlists);
+
+	intel_engine_kick_scheduler(engine);
 }
 
 #define execlists_kick(t, member) \
@@ -2470,11 +2465,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
 
 static void execlists_reset_prepare(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	ENGINE_TRACE(engine, "depth<-%d\n",
-		     atomic_read(&execlists->tasklet.count));
-
 	/*
 	 * Prevent request submission to the hardware until we have
 	 * completed the reset in i915_gem_reset_finish(). If a request
@@ -2484,8 +2474,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * Turning off the execlists->tasklet until the reset is over
 	 * prevents the race.
 	 */
-	__tasklet_disable_sync_once(&execlists->tasklet);
-	GEM_BUG_ON(!reset_in_progress(execlists));
+	i915_sched_disable(intel_engine_get_scheduler(engine));
 
 	/*
 	 * We stop engines, otherwise we might get failed reset and a
@@ -2637,7 +2626,7 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 static void nop_submission_tasklet(struct tasklet_struct *t)
 {
 	struct intel_engine_cs * const engine =
-		from_tasklet(engine, t, execlists.tasklet);
+		from_tasklet(engine, t, sched.tasklet);
 
 	/* The driver is wedged; don't process any more events. */
 	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
@@ -2725,8 +2714,8 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists->queue_priority_hint = INT_MIN;
 	se->queue = RB_ROOT_CACHED;
 
-	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
-	execlists->tasklet.callback = nop_submission_tasklet;
+	GEM_BUG_ON(__tasklet_is_enabled(&se->tasklet));
+	se->tasklet.callback = nop_submission_tasklet;
 
 	spin_unlock_irqrestore(&se->lock, flags);
 	rcu_read_unlock();
@@ -2734,8 +2723,6 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 static void execlists_reset_finish(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
 	/*
 	 * After a GPU reset, we may have requests to replay. Do so now while
 	 * we still have the forcewake to be sure that the GPU is not allowed
@@ -2746,14 +2733,8 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	 * reset as the next level of recovery, and as a final resort we
 	 * will declare the device wedged.
 	 */
-	GEM_BUG_ON(!reset_in_progress(execlists));
 
-	/* And kick in case we missed a new request submission. */
-	if (__tasklet_enable(&execlists->tasklet))
-		__execlists_kick(execlists);
-
-	ENGINE_TRACE(engine, "depth->%d\n",
-		     atomic_read(&execlists->tasklet.count));
+	i915_sched_enable(intel_engine_get_scheduler(engine));
 }
 
 static void gen8_logical_ring_enable_irq(struct intel_engine_cs *engine)
@@ -2786,7 +2767,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = i915_request_enqueue;
-	engine->execlists.tasklet.callback = execlists_submission_tasklet;
+	engine->sched.tasklet.callback = execlists_submission_tasklet;
 }
 
 static void execlists_shutdown(struct intel_engine_cs *engine)
@@ -2794,7 +2775,6 @@ static void execlists_shutdown(struct intel_engine_cs *engine)
 	/* Synchronise with residual timers and any softirq they raise */
 	del_timer_sync(&engine->execlists.timer);
 	del_timer_sync(&engine->execlists.preempt);
-	tasklet_kill(&engine->execlists.tasklet);
 }
 
 static void execlists_release(struct intel_engine_cs *engine)
@@ -2910,7 +2890,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
 
-	tasklet_setup(&engine->execlists.tasklet, execlists_submission_tasklet);
+	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
@@ -2993,7 +2973,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	 * rbtrees as in the case it is running in parallel, it may reinsert
 	 * the rb_node into a sibling.
 	 */
-	tasklet_kill(&ve->base.execlists.tasklet);
+	i915_sched_fini(se);
 
 	/* Decouple ourselves from the siblings, no more access allowed. */
 	for (n = 0; n < ve->num_siblings; n++) {
@@ -3011,7 +2991,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 
 		spin_unlock_irq(&sibling->sched.lock);
 	}
-	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
+	GEM_BUG_ON(__tasklet_is_scheduled(&se->tasklet));
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 
 	lrc_fini(&ve->context);
@@ -3156,7 +3136,7 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 static void virtual_submission_tasklet(struct tasklet_struct *t)
 {
 	struct virtual_engine * const ve =
-		from_tasklet(ve, t, base.execlists.tasklet);
+		from_tasklet(ve, t, base.sched.tasklet);
 	const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
 	intel_engine_mask_t mask;
 	unsigned int n;
@@ -3227,7 +3207,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
 		node->prio = prio;
 		if (first && prio > sibling->execlists.queue_priority_hint)
-			tasklet_hi_schedule(&sibling->execlists.tasklet);
+			i915_sched_kick(se);
 
 unlock_engine:
 		spin_unlock_irq(&se->lock);
@@ -3269,7 +3249,7 @@ static void virtual_submit_request(struct i915_request *rq)
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 	list_move_tail(&rq->sched.link, virtual_queue(ve));
 
-	tasklet_hi_schedule(&ve->base.execlists.tasklet);
+	intel_engine_kick_scheduler(&ve->base);
 
 unlock:
 	spin_unlock_irqrestore(&se->lock, flags);
@@ -3366,7 +3346,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
-	tasklet_setup(&ve->base.execlists.tasklet, virtual_submission_tasklet);
+	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
 
 	intel_context_init(&ve->context, &ve->base);
 
@@ -3394,7 +3374,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		 * layering if we handle cloning of the requests and
 		 * submitting a copy into each backend.
 		 */
-		if (sibling->execlists.tasklet.callback !=
+		if (sibling->sched.tasklet.callback !=
 		    execlists_submission_tasklet) {
 			err = -ENODEV;
 			goto err_put;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 9fc6c912a4e5..6ce5bd28a23d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -59,7 +59,7 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 	}
 
 	if (tasklet)
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		intel_engine_kick_scheduler(engine);
 }
 
 static u32
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 14c7b18090f3..36ec97f79174 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -43,7 +43,7 @@ static bool flush_submission(struct intel_gt *gt, long timeout)
 		return false;
 
 	for_each_engine(engine, gt, id) {
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 
 		/* Flush the background retirement and idle barriers */
 		flush_work(&engine->retire_work);
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 41dc1a542cd6..3ce8cb3329f3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -103,7 +103,7 @@ static int __measure_timestamps(struct intel_context *ce,
 	intel_ring_advance(rq, cs);
 	i915_request_get(rq);
 	i915_request_add(rq);
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 
 	/* Wait for the request to start executing, that then waits for us */
 	while (READ_ONCE(sema[2]) == 0)
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 0395f9053a43..cfc0f4b9fbc5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -43,7 +43,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   unsigned long timeout)
 {
 	/* Ignore our own attempts to suppress excess tasklets */
-	tasklet_hi_schedule(&engine->execlists.tasklet);
+	intel_engine_kick_scheduler(engine);
 
 	timeout += jiffies;
 	do {
@@ -53,7 +53,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			return 0;
 
 		/* Wait until the HW has acknowleged the submission (or err) */
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		if (!READ_ONCE(engine->execlists.pending[0]) && is_active(rq))
 			return 0;
 
@@ -72,7 +72,7 @@ static int wait_for_reset(struct intel_engine_cs *engine,
 
 	do {
 		cond_resched();
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 
 		if (READ_ONCE(engine->execlists.pending[0]))
 			continue;
@@ -288,7 +288,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		i915_request_put(rq[0]);
 
 err_ce:
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		igt_spinner_end(&spin);
 		for (n = 0; n < ARRAY_SIZE(ce); n++) {
 			if (IS_ERR_OR_NULL(ce[n]))
@@ -409,10 +409,10 @@ static int live_unlite_ring(void *arg)
 			}
 
 			i915_request_add(tmp);
-			intel_engine_flush_submission(engine);
+			intel_engine_flush_scheduler(engine);
 			n++;
 		}
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		pr_debug("%s: Filled ring with %d nop tails {size:%x, tail:%x, emit:%x, rq.tail:%x}\n",
 			 engine->name, n,
 			 ce[0]->ring->size,
@@ -449,7 +449,7 @@ static int live_unlite_ring(void *arg)
 			 ce[1]->ring->tail, ce[1]->ring->emit);
 
 err_ce:
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		igt_spinner_end(&spin);
 		for (n = 0; n < ARRAY_SIZE(ce); n++) {
 			if (IS_ERR_OR_NULL(ce[n]))
@@ -568,6 +568,7 @@ static int live_hold_reset(void *arg)
 		return -ENOMEM;
 
 	for_each_engine(engine, gt, id) {
+		struct i915_sched *se = intel_engine_get_scheduler(engine);
 		struct intel_context *ce;
 		struct i915_request *rq;
 
@@ -602,9 +603,9 @@ static int live_hold_reset(void *arg)
 			err = -EBUSY;
 			goto out;
 		}
-		tasklet_disable(&engine->execlists.tasklet);
+		tasklet_disable(&se->tasklet);
 
-		engine->execlists.tasklet.callback(&engine->execlists.tasklet);
+		se->tasklet.callback(&se->tasklet);
 		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 		i915_request_get(rq);
@@ -614,7 +615,7 @@ static int live_hold_reset(void *arg)
 		__intel_engine_reset_bh(engine, NULL);
 		GEM_BUG_ON(rq->fence.error != -EIO);
 
-		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_enable(&se->tasklet);
 		clear_and_wake_up_bit(I915_RESET_ENGINE + id,
 				      &gt->reset.flags);
 		local_bh_enable();
@@ -762,7 +763,7 @@ static int live_error_interrupt(void *arg)
 				}
 
 				/* Kick the tasklet to process the error */
-				intel_engine_flush_submission(engine);
+				intel_engine_flush_scheduler(engine);
 				if (client[i]->fence.error != p->error[i]) {
 					pr_err("%s: %s request (%s) with wrong error code: %d\n",
 					       engine->name,
@@ -1180,8 +1181,8 @@ static int live_timeslice_rewind(void *arg)
 		       time_before(jiffies, timeout)) { /* semaphore yield! */
 			/* Wait for the timeslice to kick in */
 			del_timer(&engine->execlists.timer);
-			tasklet_hi_schedule(&engine->execlists.tasklet);
-			intel_engine_flush_submission(engine);
+			intel_engine_kick_scheduler(engine);
+			intel_engine_flush_scheduler(engine);
 
 			/*
 			 * Unfortunately this assumes that during the
@@ -1369,7 +1370,7 @@ static int live_timeslice_queue(void *arg)
 		/* Wait until we ack the release_queue and start timeslicing */
 		do {
 			cond_resched();
-			intel_engine_flush_submission(engine);
+			intel_engine_flush_scheduler(engine);
 		} while (READ_ONCE(engine->execlists.pending[0]));
 
 		/* Timeslice every jiffy, so within 2 we should signal */
@@ -2339,9 +2340,9 @@ static int __cancel_fail(struct live_preempt_cancel *arg)
 
 	/* force preempt reset [failure] */
 	while (!engine->execlists.pending[0])
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 	del_timer_sync(&engine->execlists.preempt);
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 
 	cancel_reset_timeout(engine);
 
@@ -2845,10 +2846,10 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 		}
 
 		i915_request_add(tmp);
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		n++;
 	}
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 	pr_debug("%s: Filled %d with %d nop tails {size:%x, tail:%x, emit:%x, rq.tail:%x}\n",
 		 engine->name, queue_sz, n,
 		 ce[0]->ring->size,
@@ -2882,7 +2883,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 		 ce[1]->ring->tail, ce[1]->ring->emit);
 
 err_ce:
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 	igt_spinner_end(spin);
 	for (n = 0; n < ARRAY_SIZE(ce); n++) {
 		if (IS_ERR_OR_NULL(ce[n]))
@@ -3417,7 +3418,7 @@ static int live_preempt_timeout(void *arg)
 		i915_request_get(rq);
 		i915_request_add(rq);
 
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		engine->props.preempt_timeout_ms = saved_timeout;
 
 		if (i915_request_wait(rq, 0, HZ / 10) < 0) {
@@ -4457,7 +4458,7 @@ static int bond_virtual_engine(struct intel_gt *gt,
 			}
 		}
 		onstack_fence_fini(&fence);
-		intel_engine_flush_submission(master);
+		intel_engine_flush_scheduler(master);
 		igt_spinner_end(&spin);
 
 		if (i915_request_wait(rq[0], 0, HZ / 10) < 0) {
@@ -4596,9 +4597,9 @@ static int reset_virtual_engine(struct intel_gt *gt,
 		err = -EBUSY;
 		goto out_heartbeat;
 	}
-	tasklet_disable(&engine->execlists.tasklet);
+	tasklet_disable(&se->tasklet);
 
-	engine->execlists.tasklet.callback(&engine->execlists.tasklet);
+	se->tasklet.callback(&se->tasklet);
 	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 	/* Fake a preemption event; failed of course */
@@ -4615,7 +4616,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(rq->fence.error != -EIO);
 
 	/* Release our grasp on the engine, letting CS flow again */
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&se->tasklet);
 	clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags);
 	local_bh_enable();
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 8cad102922e7..cdb0ceff3be1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1701,7 +1701,8 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 				     const struct igt_atomic_section *p,
 				     const char *mode)
 {
-	struct tasklet_struct * const t = &engine->execlists.tasklet;
+	struct tasklet_struct * const t =
+		&intel_engine_get_scheduler(engine)->tasklet;
 	int err;
 
 	GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e97adf1b7729..279091e41b41 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -49,7 +49,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   unsigned long timeout)
 {
 	/* Ignore our own attempts to suppress excess tasklets */
-	tasklet_hi_schedule(&engine->execlists.tasklet);
+	intel_engine_kick_scheduler(engine);
 
 	timeout += jiffies;
 	do {
@@ -59,7 +59,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			return 0;
 
 		/* Wait until the HW has acknowleged the submission (or err) */
-		intel_engine_flush_submission(engine);
+		intel_engine_flush_scheduler(engine);
 		if (!READ_ONCE(engine->execlists.pending[0]) && is_active(rq))
 			return 0;
 
@@ -417,7 +417,7 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	if (err)
 		goto err_rq;
 
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 	expected[RING_TAIL_IDX] = ce->ring->tail;
 
 	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
@@ -1852,17 +1852,18 @@ static int live_lrc_indirect_ctx_bb(void *arg)
 static void garbage_reset(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
 
 	local_bh_disable();
 	if (!test_and_set_bit(bit, lock)) {
-		tasklet_disable(&engine->execlists.tasklet);
+		tasklet_disable(&se->tasklet);
 
 		if (!rq->fence.error)
 			__intel_engine_reset_bh(engine, NULL);
 
-		tasklet_enable(&engine->execlists.tasklet);
+		tasklet_enable(&se->tasklet);
 		clear_and_wake_up_bit(bit, lock);
 	}
 	local_bh_enable();
@@ -1923,7 +1924,7 @@ static int __lrc_garbage(struct intel_engine_cs *engine, struct rnd_state *prng)
 	intel_context_set_banned(ce);
 	garbage_reset(engine, hang);
 
-	intel_engine_flush_submission(engine);
+	intel_engine_flush_scheduler(engine);
 	if (!hang->fence.error) {
 		i915_request_put(hang);
 		pr_err("%s: corrupted context was not reset\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 8784257ec808..08594309a96d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -321,7 +321,8 @@ static int igt_atomic_engine_reset(void *arg)
 		goto out_unlock;
 
 	for_each_engine(engine, gt, id) {
-		struct tasklet_struct *t = &engine->execlists.tasklet;
+		struct tasklet_struct *t =
+			&intel_engine_get_scheduler(engine)->tasklet;
 
 		if (t->func)
 			tasklet_disable(t);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 6f07f1124a13..15e4ec5ae73a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -240,9 +240,9 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 
 static void guc_submission_tasklet(struct tasklet_struct *t)
 {
+	struct i915_sched *se = from_tasklet(se, t, tasklet);
 	struct intel_engine_cs * const engine =
-		from_tasklet(engine, t, execlists.tasklet);
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
+		container_of(se, typeof(*engine), sched);
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port, *rq;
 	unsigned long flags;
@@ -268,10 +268,6 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 
 static void guc_reset_prepare(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	ENGINE_TRACE(engine, "\n");
-
 	/*
 	 * Prevent request submission to the hardware until we have
 	 * completed the reset in i915_gem_reset_finish(). If a request
@@ -281,7 +277,7 @@ static void guc_reset_prepare(struct intel_engine_cs *engine)
 	 * Turning off the execlists->tasklet until the reset is over
 	 * prevents the race.
 	 */
-	__tasklet_disable_sync_once(&execlists->tasklet);
+	i915_sched_enable(intel_engine_get_scheduler(engine));
 }
 
 static void guc_reset_state(struct intel_context *ce,
@@ -387,14 +383,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 
 static void guc_reset_finish(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	if (__tasklet_enable(&execlists->tasklet))
-		/* And kick in case we missed a new request submission. */
-		tasklet_hi_schedule(&execlists->tasklet);
-
-	ENGINE_TRACE(engine, "depth->%d\n",
-		     atomic_read(&execlists->tasklet.count));
+	i915_sched_enable(intel_engine_get_scheduler(engine));
 }
 
 /*
@@ -590,8 +579,6 @@ static void guc_release(struct intel_engine_cs *engine)
 {
 	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
 
-	tasklet_kill(&engine->execlists.tasklet);
-
 	intel_engine_cleanup_common(engine);
 	lrc_fini_wa_ctx(engine);
 }
@@ -668,7 +655,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 	 */
 	GEM_BUG_ON(INTEL_GEN(i915) < 11);
 
-	tasklet_setup(&engine->execlists.tasklet, guc_submission_tasklet);
+	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
 
 	guc_default_vfuncs(engine);
 	guc_default_irqs(engine);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d736c1aae6e5..1b52dcaa023d 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1847,7 +1847,7 @@ long i915_request_wait(struct i915_request *rq,
 	 * for unhappy HW.
 	 */
 	if (i915_request_is_ready(rq))
-		__intel_engine_flush_submission(rq->engine, false);
+		__i915_sched_flush(i915_request_get_scheduler(rq), false);
 
 	for (;;) {
 		set_current_state(state);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index aef14e4463c3..697127981249 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -134,6 +134,7 @@ void i915_sched_fini(struct i915_sched *se)
 {
 	GEM_BUG_ON(!list_empty(&se->requests));
 
+	tasklet_kill(&se->tasklet); /* flush the callback */
 	i915_sched_park(se);
 }
 
@@ -355,7 +356,7 @@ static void kick_submission(struct intel_engine_cs *engine,
 
 	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		intel_engine_kick_scheduler(engine);
 }
 
 static void ipi_priority(struct i915_request *rq, int prio)
@@ -671,7 +672,7 @@ void i915_request_enqueue(struct i915_request *rq)
 	GEM_BUG_ON(list_empty(&rq->sched.link));
 	spin_unlock_irqrestore(&se->lock, flags);
 	if (kick)
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(se);
 }
 
 struct i915_request *
@@ -809,7 +810,7 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 
 	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
 		engine->execlists.queue_priority_hint = rq_prio(rq);
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		i915_sched_kick(se);
 	}
 
 	if (!i915_request_on_hold(rq))
@@ -1005,6 +1006,44 @@ void i915_sched_node_retire(struct i915_sched_node *node)
 	}
 }
 
+void i915_sched_disable(struct i915_sched *se)
+{
+	__tasklet_disable_sync_once(&se->tasklet);
+	GEM_BUG_ON(!i915_sched_is_disabled(se));
+	SCHED_TRACE(se, "disable:%d\n", atomic_read(&se->tasklet.count));
+}
+
+void i915_sched_enable(struct i915_sched *se)
+{
+	SCHED_TRACE(se, "enable:%d\n", atomic_read(&se->tasklet.count));
+	GEM_BUG_ON(!i915_sched_is_disabled(se));
+
+	/* And kick in case we missed a new request submission. */
+	if (__tasklet_enable(&se->tasklet))
+		i915_sched_kick(se);
+}
+
+void __i915_sched_flush(struct i915_sched *se, bool sync)
+{
+	struct tasklet_struct *t = &se->tasklet;
+
+	if (!t->callback)
+		return;
+
+	local_bh_disable();
+	if (tasklet_trylock(t)) {
+		/* Must wait for any GPU reset in progress. */
+		if (__tasklet_is_enabled(t))
+			t->callback(t);
+		tasklet_unlock(t);
+	}
+	local_bh_enable();
+
+	/* Synchronise and wait for the tasklet on another CPU */
+	if (sync)
+		tasklet_unlock_wait(t);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 71bef75859b4..e2e8b90adb66 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -90,6 +90,40 @@ i915_sched_is_last_request(const struct i915_sched *se,
 	return list_is_last_rcu(&rq->sched.link, &se->requests);
 }
 
+static inline void
+i915_sched_lock_bh(struct i915_sched *se)
+{
+	local_bh_disable(); /* prevent local softirq and lock recursion */
+	tasklet_lock(&se->tasklet);
+}
+
+static inline void
+i915_sched_unlock_bh(struct i915_sched *se)
+{
+	tasklet_unlock(&se->tasklet);
+	local_bh_enable(); /* restore softirq, and kick ksoftirqd! */
+}
+
+static inline void i915_sched_kick(struct i915_sched *se)
+{
+	/* Kick the tasklet for some interrupt coalescing and reset handling */
+	tasklet_hi_schedule(&se->tasklet);
+}
+
+static inline bool i915_sched_is_disabled(const struct i915_sched *se)
+{
+	return unlikely(!__tasklet_is_enabled(&se->tasklet));
+}
+
+void i915_sched_disable(struct i915_sched *se);
+void i915_sched_enable(struct i915_sched *se);
+
+void __i915_sched_flush(struct i915_sched *se, bool sync);
+static inline void i915_sched_flush(struct i915_sched *se)
+{
+	__i915_sched_flush(se, true);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 44dae932e5af..9b09749358ad 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -7,6 +7,7 @@
 #ifndef _I915_SCHEDULER_TYPES_H_
 #define _I915_SCHEDULER_TYPES_H_
 
+#include <linux/interrupt.h>
 #include <linux/list.h>
 #include <linux/workqueue.h>
 
@@ -34,6 +35,14 @@ struct i915_sched {
 	 */
 	struct rb_root_cached queue;
 
+	/**
+	 * @tasklet: softirq tasklet for bottom half
+	 *
+	 * The tasklet is responsible for transferring the priority queue
+	 * to HW, and for handling responses from HW.
+	 */
+	struct tasklet_struct tasklet;
+
 	/* Inter-engine scheduling delegate */
 	struct i915_sched_ipi {
 		struct i915_request *list;
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index d2a678a2497e..39c619bccb74 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1517,7 +1517,7 @@ static int switch_to_kernel_sync(struct intel_context *ce, int err)
 	i915_request_put(rq);
 
 	while (!err && !intel_engine_is_idle(ce->engine))
-		intel_engine_flush_submission(ce->engine);
+		intel_engine_flush_scheduler(ce->engine);
 
 	return err;
 }
@@ -1902,7 +1902,7 @@ static int measure_inter_request(struct intel_context *ce)
 		return -ENOMEM;
 	}
 
-	intel_engine_flush_submission(ce->engine);
+	intel_engine_flush_scheduler(ce->engine);
 	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
 		struct i915_request *rq;
 		u32 *cs;
@@ -1934,7 +1934,7 @@ static int measure_inter_request(struct intel_context *ce)
 		i915_request_add(rq);
 	}
 	i915_sw_fence_commit(submit);
-	intel_engine_flush_submission(ce->engine);
+	intel_engine_flush_scheduler(ce->engine);
 	heap_fence_put(submit);
 
 	semaphore_set(sema, 1);
@@ -2030,7 +2030,7 @@ static int measure_context_switch(struct intel_context *ce)
 		}
 	}
 	i915_request_put(fence);
-	intel_engine_flush_submission(ce->engine);
+	intel_engine_flush_scheduler(ce->engine);
 
 	semaphore_set(sema, 1);
 	err = intel_gt_wait_for_idle(ce->engine->gt, HZ / 2);
@@ -2221,7 +2221,7 @@ static int measure_completion(struct intel_context *ce)
 		dma_fence_add_callback(&rq->fence, &cb.base, signal_cb);
 		i915_request_add(rq);
 
-		intel_engine_flush_submission(ce->engine);
+		intel_engine_flush_scheduler(ce->engine);
 		if (wait_for(READ_ONCE(sema[i]) == -1, 50)) {
 			err = -EIO;
 			goto err;
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 56d785581535..dbbefd0da2f2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -171,12 +171,12 @@ static int __single_chain(struct intel_engine_cs *engine, unsigned long length,
 		i915_request_add(rq);
 		count++;
 	}
-	intel_engine_flush_submission(engine);
+	i915_sched_flush(se);
 
-	execlists_active_lock_bh(&engine->execlists);
+	i915_sched_lock_bh(se);
 	if (fn(rq, count, count - 1) && !check_context_order(se))
 		err = -EINVAL;
-	execlists_active_unlock_bh(&engine->execlists);
+	i915_sched_unlock_bh(se);
 
 	igt_spinner_end(&spin);
 err_context:
@@ -256,12 +256,12 @@ static int __wide_chain(struct intel_engine_cs *engine, unsigned long width,
 		}
 		i915_request_add(rq[i]);
 	}
-	intel_engine_flush_submission(engine);
+	i915_sched_flush(se);
 
-	execlists_active_lock_bh(&engine->execlists);
+	i915_sched_lock_bh(se);
 	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
-	execlists_active_unlock_bh(&engine->execlists);
+	i915_sched_unlock_bh(se);
 
 	igt_spinner_end(&spin);
 err_free:
@@ -345,12 +345,12 @@ static int __inv_chain(struct intel_engine_cs *engine, unsigned long width,
 		}
 		i915_request_add(rq[i]);
 	}
-	intel_engine_flush_submission(engine);
+	i915_sched_flush(se);
 
-	execlists_active_lock_bh(&engine->execlists);
+	i915_sched_lock_bh(se);
 	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
-	execlists_active_unlock_bh(&engine->execlists);
+	i915_sched_unlock_bh(se);
 
 	igt_spinner_end(&spin);
 err_free:
@@ -451,12 +451,12 @@ static int __sparse_chain(struct intel_engine_cs *engine, unsigned long width,
 		if (err)
 			break;
 	}
-	intel_engine_flush_submission(engine);
+	i915_sched_flush(se);
 
-	execlists_active_lock_bh(&engine->execlists);
+	i915_sched_lock_bh(se);
 	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
-	execlists_active_unlock_bh(&engine->execlists);
+	i915_sched_unlock_bh(se);
 
 	igt_spinner_end(&spin);
 err_free:
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 83f6e5f31fb3..0e6c1ea0082a 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -221,7 +221,7 @@ void igt_spinner_fini(struct igt_spinner *spin)
 bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request *rq)
 {
 	if (i915_request_is_ready(rq))
-		intel_engine_flush_submission(rq->engine);
+		__i915_sched_flush(i915_request_get_scheduler(rq), false);
 
 	return !(wait_for_us(i915_seqno_passed(hws_seqno(spin, rq),
 					       rq->fence.seqno),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
