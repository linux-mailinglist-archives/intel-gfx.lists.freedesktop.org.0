Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93938312432
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Feb 2021 13:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38446E7D0;
	Sun,  7 Feb 2021 12:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6696E5CC
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Feb 2021 12:00:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23811053-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Feb 2021 12:00:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Feb 2021 12:00:20 +0000
Message-Id: <20210207120022.2901-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210207120022.2901-1-chris@chris-wilson.co.uk>
References: <20210207120022.2901-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915: Move finding the current active
 request to the scheduler
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

Since finding the currently active request starts by walking the
scheduler lists under the scheduler lock, move the routine to the
scheduler.

v2: Wrap se->active() with i915_sched_get_active_request()

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |   3 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 112 +++---------------
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  32 ++++-
 .../drm/i915/gt/intel_execlists_submission.c  |  17 ++-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  18 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  18 ++-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   4 +-
 drivers/gpu/drm/i915/i915_request.c           |  71 +----------
 drivers/gpu/drm/i915/i915_request.h           |  16 +++
 drivers/gpu/drm/i915/i915_scheduler.c         |  24 ++++
 drivers/gpu/drm/i915/i915_scheduler.h         |  12 ++
 drivers/gpu/drm/i915/i915_scheduler_types.h   |   2 +
 12 files changed, 138 insertions(+), 191 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 52bba16c62e8..c530839627bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -230,9 +230,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine,
 				   ktime_t *now);
 
-struct i915_request *
-intel_engine_find_active_request(struct intel_engine_cs *engine);
-
 u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
 
 void intel_engine_init_active(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3b299339fb62..f6596d454d46 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1175,31 +1175,6 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 	}
 }
 
-static bool ring_is_idle(struct intel_engine_cs *engine)
-{
-	bool idle = true;
-
-	if (I915_SELFTEST_ONLY(!engine->mmio_base))
-		return true;
-
-	if (!intel_engine_pm_get_if_awake(engine))
-		return true;
-
-	/* First check that no commands are left in the ring */
-	if ((ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) !=
-	    (ENGINE_READ(engine, RING_TAIL) & TAIL_ADDR))
-		idle = false;
-
-	/* No bit for gen2, so assume the CS parser is idle */
-	if (INTEL_GEN(engine->i915) > 2 &&
-	    !(ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE))
-		idle = false;
-
-	intel_engine_pm_put(engine);
-
-	return idle;
-}
-
 /**
  * intel_engine_is_idle() - Report if the engine has finished process all work
  * @engine: the intel_engine_cs
@@ -1210,14 +1185,12 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
 bool intel_engine_is_idle(struct intel_engine_cs *engine)
 {
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
+	struct i915_request *rq = NULL;
 
 	/* More white lies, if wedged, hw state is inconsistent */
 	if (intel_gt_is_wedged(engine->gt))
 		return true;
 
-	if (!intel_engine_pm_is_awake(engine))
-		return true;
-
 	/* Waiting to drain ELSP? */
 	synchronize_hardirq(to_pci_dev(engine->i915->drm.dev)->irq);
 	i915_sched_flush(se);
@@ -1226,8 +1199,16 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	if (!i915_sched_is_idle(se))
 		return false;
 
-	/* Ring stopped? */
-	return ring_is_idle(engine);
+	/* Execution complete? */
+	if (intel_engine_pm_get_if_awake(engine)) {
+		spin_lock_irq(&se->lock);
+		rq = i915_sched_get_active_request(se);
+		spin_unlock_irq(&se->lock);
+
+		intel_engine_pm_put(engine);
+	}
+
+	return !rq;
 }
 
 bool intel_engines_are_idle(struct intel_gt *gt)
@@ -1284,7 +1265,7 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
 }
 
-static struct intel_timeline *get_timeline(struct i915_request *rq)
+static struct intel_timeline *get_timeline(const struct i915_request *rq)
 {
 	struct intel_timeline *tl;
 
@@ -1512,7 +1493,8 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 	}
 }
 
-static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
+static void
+print_request_ring(struct drm_printer *m, const struct i915_request *rq)
 {
 	void *ring;
 	int size;
@@ -1597,7 +1579,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 {
 	struct i915_gpu_error * const error = &engine->i915->gpu_error;
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
-	struct i915_request *rq;
+	const struct i915_request *rq;
 	intel_wakeref_t wakeref;
 	unsigned long flags;
 	ktime_t dummy;
@@ -1638,8 +1620,9 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 	drm_printf(m, "\tRequests:\n");
 
+	rcu_read_lock();
 	spin_lock_irqsave(&se->lock, flags);
-	rq = intel_engine_find_active_request(engine);
+	rq = i915_sched_get_active_request(se);
 	if (rq) {
 		struct intel_timeline *tl = get_timeline(rq);
 
@@ -1671,6 +1654,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	}
 	drm_printf(m, "\tOn hold?: %lu\n", list_count(&se->hold));
 	spin_unlock_irqrestore(&se->lock, flags);
+	rcu_read_unlock();
 
 	drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
 	wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
@@ -1719,66 +1703,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 	return ktime_add(total, start);
 }
 
-static bool match_ring(struct i915_request *rq)
-{
-	u32 ring = ENGINE_READ(rq->engine, RING_START);
-
-	return ring == i915_ggtt_offset(rq->ring->vma);
-}
-
-struct i915_request *
-intel_engine_find_active_request(struct intel_engine_cs *engine)
-{
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
-	struct i915_request *request, *active = NULL;
-
-	/*
-	 * We are called by the error capture, reset and to dump engine
-	 * state at random points in time. In particular, note that neither is
-	 * crucially ordered with an interrupt. After a hang, the GPU is dead
-	 * and we assume that no more writes can happen (we waited long enough
-	 * for all writes that were in transaction to be flushed) - adding an
-	 * extra delay for a recent interrupt is pointless. Hence, we do
-	 * not need an engine->irq_seqno_barrier() before the seqno reads.
-	 * At all other times, we must assume the GPU is still running, but
-	 * we only care about the snapshot of this moment.
-	 */
-	lockdep_assert_held(&se->lock);
-
-	rcu_read_lock();
-	request = execlists_active(&engine->execlists);
-	if (request) {
-		struct intel_timeline *tl = request->context->timeline;
-
-		list_for_each_entry_from_reverse(request, &tl->requests, link) {
-			if (__i915_request_is_complete(request))
-				break;
-
-			active = request;
-		}
-	}
-	rcu_read_unlock();
-	if (active)
-		return active;
-
-	list_for_each_entry(request, &se->requests, sched.link) {
-		if (__i915_request_is_complete(request))
-			continue;
-
-		if (!__i915_request_has_started(request))
-			continue;
-
-		/* More than one preemptible request may match! */
-		if (!match_ring(request))
-			continue;
-
-		active = request;
-		break;
-	}
-
-	return active;
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "mock_engine.c"
 #include "selftest_engine.c"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index b6dbd1150ba9..0b062fad1837 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -78,6 +78,21 @@ static void show_heartbeat(const struct i915_request *rq,
 			  rq->sched.attr.priority);
 }
 
+static bool is_wait(struct intel_engine_cs *engine)
+{
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
+	struct i915_request *rq;
+	bool wait = true;
+
+	spin_lock_irq(&se->lock);
+	rq = i915_sched_get_active_request(se);
+	if (rq)
+		wait = !i915_sw_fence_signaled(&rq->submit);
+	spin_unlock_irq(&se->lock);
+
+	return wait;
+}
+
 static void heartbeat(struct work_struct *wrk)
 {
 	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MIN };
@@ -92,6 +107,9 @@ static void heartbeat(struct work_struct *wrk)
 
 	rq = engine->heartbeat.systole;
 	if (rq && i915_request_completed(rq)) {
+		ENGINE_TRACE(engine,
+			     "heartbeat " RQ_FMT "completed\n",
+			     RQ_ARG(rq));
 		i915_request_put(rq);
 		engine->heartbeat.systole = NULL;
 	}
@@ -110,7 +128,7 @@ static void heartbeat(struct work_struct *wrk)
 				rq->emitted_jiffies + msecs_to_jiffies(delay)))
 			goto out;
 
-		if (!i915_sw_fence_signaled(&rq->submit)) {
+		if (!i915_sw_fence_signaled(&rq->submit) && is_wait(engine)) {
 			/*
 			 * Not yet submitted, system is stalled.
 			 *
@@ -121,6 +139,9 @@ static void heartbeat(struct work_struct *wrk)
 			 * but all other contexts, including the kernel
 			 * context are stuck waiting for the signal.
 			 */
+			ENGINE_TRACE(engine,
+				     "heartbeat " RQ_FMT " pending\n",
+				     RQ_ARG(rq));
 		} else if (rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
 			/*
 			 * Gradually raise the priority of the heartbeat to
@@ -134,10 +155,18 @@ static void heartbeat(struct work_struct *wrk)
 			if (rq->sched.attr.priority >= attr.priority)
 				attr.priority = I915_PRIORITY_BARRIER;
 
+			ENGINE_TRACE(engine,
+				     "bumping heartbeat " RQ_FMT " prio:%d\n",
+				     RQ_ARG(rq), attr.priority);
+
 			local_bh_disable();
 			i915_request_set_priority(rq, attr.priority);
 			local_bh_enable();
 		} else {
+			ENGINE_TRACE(engine,
+				     "heartbeat " RQ_FMT " stuck\n",
+				     RQ_ARG(rq));
+
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 				show_heartbeat(rq, engine);
 
@@ -169,6 +198,7 @@ static void heartbeat(struct work_struct *wrk)
 	if (IS_ERR(rq))
 		goto unlock;
 
+	ENGINE_TRACE(engine, "heartbeat " RQ_FMT "started\n", RQ_ARG(rq));
 	heartbeat_commit(rq, &attr);
 
 unlock:
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 02aa3eba4ebb..f110348f2ae2 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2376,7 +2376,7 @@ static void sanitize_hwsp(struct intel_engine_cs *engine)
 
 static void execlists_sanitize(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(execlists_active(&engine->execlists));
+	GEM_BUG_ON(*engine->execlists.active);
 
 	/*
 	 * Poison residual state on resume, in case the suspend didn't!
@@ -2752,6 +2752,20 @@ static void execlists_park(struct intel_engine_cs *engine)
 	cancel_timer(&engine->execlists.preempt);
 }
 
+static struct i915_request *
+execlists_active_request(const struct i915_sched *se)
+{
+	const struct intel_engine_cs *engine =
+		container_of(se, typeof(*engine), sched);
+	struct i915_request *rq;
+
+	rq = execlists_active(&engine->execlists);
+	if (rq)
+		rq = active_request(rq->context->timeline, rq);
+
+	return rq;
+}
+
 static bool can_preempt(struct intel_engine_cs *engine)
 {
 	if (INTEL_GEN(engine->i915) > 8)
@@ -2888,6 +2902,7 @@ static void init_execlists(struct intel_engine_cs *engine)
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
 
+	engine->sched.active_request = execlists_active_request;
 	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
 
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index cf3bbcbe7520..a4ab9863e921 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -324,20 +324,11 @@ static void reset_prepare(struct intel_engine_cs *engine)
 static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
-	struct i915_request *pos, *rq;
+	struct i915_request *rq;
 	unsigned long flags;
 	u32 head;
 
-	rq = NULL;
 	spin_lock_irqsave(&se->lock, flags);
-	rcu_read_lock();
-	list_for_each_entry(pos, &se->requests, sched.link) {
-		if (!__i915_request_is_complete(pos)) {
-			rq = pos;
-			break;
-		}
-	}
-	rcu_read_unlock();
 
 	/*
 	 * The guilty request will get skipped on a hung engine.
@@ -361,6 +352,7 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	 * subsequent hangs.
 	 */
 
+	rq = i915_sched_get_active_request(se);
 	if (rq) {
 		/*
 		 * Try to restore the logical GPU state to match the
@@ -379,9 +371,15 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 		 */
 		__i915_request_reset(rq, stalled);
 
+		ENGINE_TRACE(engine,
+			     "active (guilty:%s) request, replaying HEAD:%x\n",
+			     yesno(stalled), rq->head);
+
 		GEM_BUG_ON(rq->ring != engine->legacy.ring);
 		head = rq->head;
 	} else {
+		ENGINE_TRACE(engine, "idle reset, clearing ring, HEAD:%x\n",
+			     engine->legacy.ring->tail);
 		head = engine->legacy.ring->tail;
 	}
 	engine->legacy.ring->head = intel_ring_wrap(engine->legacy.ring, head);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f8c50195b330..291f5b818925 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1262,15 +1262,11 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	struct i915_gem_context *ctx;
 	bool simulated;
 
-	rcu_read_lock();
-
 	ctx = rcu_dereference(rq->context->gem_context);
 	if (ctx && !kref_get_unless_zero(&ctx->ref))
 		ctx = NULL;
-	if (!ctx) {
-		rcu_read_unlock();
+	if (!ctx)
 		return true;
-	}
 
 	if (I915_SELFTEST_ONLY(!ctx->client)) {
 		strcpy(e->comm, "[kernel]");
@@ -1279,8 +1275,6 @@ static bool record_context(struct i915_gem_context_coredump *e,
 		e->pid = pid_nr(i915_drm_client_pid(ctx->client));
 	}
 
-	rcu_read_unlock();
-
 	e->sched_attr = ctx->sched;
 	e->guilty = atomic_read(&ctx->guilty_count);
 	e->active = atomic_read(&ctx->active_count);
@@ -1368,12 +1362,14 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
-				  struct i915_request *rq,
+				  const struct i915_request *rq,
 				  gfp_t gfp)
 {
 	struct intel_engine_capture_vma *vma = NULL;
 
+	rcu_read_lock();
 	ee->simulated |= record_context(&ee->context, rq);
+	rcu_read_unlock();
 	if (ee->simulated)
 		return NULL;
 
@@ -1436,19 +1432,21 @@ capture_engine(struct intel_engine_cs *engine,
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
-	struct i915_request *rq;
+	const struct i915_request *rq;
 	unsigned long flags;
 
 	ee = intel_engine_coredump_alloc(engine, GFP_KERNEL);
 	if (!ee)
 		return NULL;
 
+	rcu_read_lock();
 	spin_lock_irqsave(&se->lock, flags);
-	rq = intel_engine_find_active_request(engine);
+	rq = i915_sched_get_active_request(se);
 	if (rq)
 		capture = intel_engine_coredump_add_request(ee, rq,
 							    ATOMIC_MAYFAIL);
 	spin_unlock_irqrestore(&se->lock, flags);
+	rcu_read_unlock();
 	if (!capture) {
 		kfree(ee);
 		return NULL;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 1764fd254df3..2d8debabfe28 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -235,7 +235,7 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp);
 
 struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
-				  struct i915_request *rq,
+				  const struct i915_request *rq,
 				  gfp_t gfp);
 
 void intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
@@ -299,7 +299,7 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 static inline struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
-				  struct i915_request *rq,
+				  const struct i915_request *rq,
 				  gfp_t gfp)
 {
 	return NULL;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c03d3cedf497..792dd0bbea3b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -349,74 +349,6 @@ void i915_request_retire_upto(struct i915_request *rq)
 	} while (i915_request_retire(tmp) && tmp != rq);
 }
 
-static struct i915_request * const *
-__engine_active(struct intel_engine_cs *engine)
-{
-	return READ_ONCE(engine->execlists.active);
-}
-
-static bool __request_in_flight(const struct i915_request *signal)
-{
-	struct i915_request * const *port, *rq;
-	bool inflight = false;
-
-	if (!i915_request_is_ready(signal))
-		return false;
-
-	/*
-	 * Even if we have unwound the request, it may still be on
-	 * the GPU (preempt-to-busy). If that request is inside an
-	 * unpreemptible critical section, it will not be removed. Some
-	 * GPU functions may even be stuck waiting for the paired request
-	 * (__await_execution) to be submitted and cannot be preempted
-	 * until the bond is executing.
-	 *
-	 * As we know that there are always preemption points between
-	 * requests, we know that only the currently executing request
-	 * may be still active even though we have cleared the flag.
-	 * However, we can't rely on our tracking of ELSP[0] to know
-	 * which request is currently active and so maybe stuck, as
-	 * the tracking maybe an event behind. Instead assume that
-	 * if the context is still inflight, then it is still active
-	 * even if the active flag has been cleared.
-	 *
-	 * To further complicate matters, if there a pending promotion, the HW
-	 * may either perform a context switch to the second inflight execlists,
-	 * or it may switch to the pending set of execlists. In the case of the
-	 * latter, it may send the ACK and we process the event copying the
-	 * pending[] over top of inflight[], _overwriting_ our *active. Since
-	 * this implies the HW is arbitrating and not struck in *active, we do
-	 * not worry about complete accuracy, but we do require no read/write
-	 * tearing of the pointer [the read of the pointer must be valid, even
-	 * as the array is being overwritten, for which we require the writes
-	 * to avoid tearing.]
-	 *
-	 * Note that the read of *execlists->active may race with the promotion
-	 * of execlists->pending[] to execlists->inflight[], overwritting
-	 * the value at *execlists->active. This is fine. The promotion implies
-	 * that we received an ACK from the HW, and so the context is not
-	 * stuck -- if we do not see ourselves in *active, the inflight status
-	 * is valid. If instead we see ourselves being copied into *active,
-	 * we are inflight and may signal the callback.
-	 */
-	if (!intel_context_inflight(signal->context))
-		return false;
-
-	rcu_read_lock();
-	for (port = __engine_active(signal->engine);
-	     (rq = READ_ONCE(*port)); /* may race with promotion of pending[] */
-	     port++) {
-		if (rq->context == signal->context) {
-			inflight = i915_seqno_passed(rq->fence.seqno,
-						     signal->fence.seqno);
-			break;
-		}
-	}
-	rcu_read_unlock();
-
-	return inflight;
-}
-
 static int
 __await_execution(struct i915_request *rq,
 		  struct i915_request *signal,
@@ -460,8 +392,7 @@ __await_execution(struct i915_request *rq,
 	 * the completed/retired request.
 	 */
 	if (llist_add(&cb->work.node.llist, &signal->execute_cb)) {
-		if (i915_request_is_active(signal) ||
-		    __request_in_flight(signal))
+		if (i915_request_is_executing(signal))
 			__notify_execute_cb_imm(signal);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index c41582b96b46..7e722ccc9c4b 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -629,4 +629,20 @@ static inline bool i915_request_use_scheduler(const struct i915_request *rq)
 	return intel_engine_has_scheduler(rq->engine);
 }
 
+static inline bool i915_request_is_executing(const struct i915_request *rq)
+{
+	/* Is the request presently on the HW execution queue? */
+	if (i915_request_is_active(rq))
+		return true;
+
+	/*
+	 * However, if it is not presently on the HW execution queue, it
+	 * may have been recently removed from the queue, but is in fact
+	 * still executing until the HW has completed a preemption. We
+	 * need to double check with the backend for it to query the HW
+	 * to see if the request is still executing.
+	 */
+	return intel_context_inflight(rq->context);
+}
+
 #endif /* I915_REQUEST_H */
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index e8db7e614ff5..c1674a84ea74 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -112,6 +112,29 @@ static void init_ipi(struct i915_sched_ipi *ipi)
 	ipi->list = NULL;
 }
 
+static struct i915_request *
+i915_sched_default_active_request(const struct i915_sched *se)
+{
+	struct i915_request *rq, *active = NULL;
+
+	/*
+	 * We assume the simplest in-order execution queue with no preemption,
+	 * i.e. the order of se->erquests matches exactly the execution order
+	 * of the HW.
+	 */
+	list_for_each_entry(rq, &se->requests, sched.link) {
+		if (__i915_request_is_complete(rq))
+			continue;
+
+		if (__i915_request_has_started(rq))
+			active = rq;
+
+		break;
+	}
+
+	return active;
+}
+
 void i915_sched_init(struct i915_sched *se,
 		     struct device *dev,
 		     const char *name,
@@ -134,6 +157,7 @@ void i915_sched_init(struct i915_sched *se,
 	init_ipi(&se->ipi);
 
 	se->submit_request = i915_request_enqueue;
+	se->active_request = i915_sched_default_active_request;
 }
 
 void i915_sched_park(struct i915_sched *se)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 1803fc37bada..1095f2e9fb1b 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -138,6 +138,18 @@ static inline void i915_sched_flush(struct i915_sched *se)
 	__i915_sched_flush(se, true);
 }
 
+/* Find the currently executing request on the backend */
+static inline struct i915_request *
+i915_sched_get_active_request(const struct i915_sched *se)
+{
+	lockdep_assert_held(&se->lock);
+
+	if (se->active_request)
+		return se->active_request(se);
+
+	return NULL;
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 2d746af501d6..05579f61e6bd 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -37,6 +37,8 @@ struct i915_sched {
 	 */
 	void (*submit_request)(struct i915_request *rq);
 
+	struct i915_request *(*active_request)(const struct i915_sched *se);
+
 	struct list_head requests; /* active request, on HW */
 	struct list_head hold; /* ready requests, but on hold */
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
