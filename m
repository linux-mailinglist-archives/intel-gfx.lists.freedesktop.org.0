Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 897D230D857
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397A46EA73;
	Wed,  3 Feb 2021 11:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9026EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 11:18:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23782025-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 11:18:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 11:17:58 +0000
Message-Id: <20210203111806.7311-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203111806.7311-1-chris@chris-wilson.co.uk>
References: <20210203111806.7311-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 04/12] drm/i915: Replace engine->schedule() with a
 known request operation
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

Looking to the future, we want to set the scheduling attributes
explicitly and so replace the generic engine->schedule() with the more
direct i915_request_set_priority()

What it loses in removing the 'schedule' name from the function, it
gains in having an explicit entry point with a stated goal.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  5 ++-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      | 29 +++++-----------
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 --
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  4 +--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 27 ++++++++-------
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  3 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 33 +++++--------------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 11 +++----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 +-
 drivers/gpu/drm/i915/i915_request.c           | 10 +++---
 drivers/gpu/drm/i915/i915_request.h           |  5 +++
 drivers/gpu/drm/i915/i915_scheduler.c         | 15 +++++----
 drivers/gpu/drm/i915/i915_scheduler.h         |  3 +-
 15 files changed, 64 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d8f10589e09e..aca964f7ba72 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13662,7 +13662,6 @@ int
 intel_prepare_plane_fb(struct drm_plane *_plane,
 		       struct drm_plane_state *_new_plane_state)
 {
-	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_plane_state *new_plane_state =
 		to_intel_plane_state(_new_plane_state);
@@ -13703,7 +13702,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 
 	if (new_plane_state->uapi.fence) { /* explicit fencing */
 		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
-					     &attr);
+					     I915_PRIORITY_DISPLAY);
 		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
 						    new_plane_state->uapi.fence,
 						    i915_fence_timeout(dev_priv),
@@ -13725,7 +13724,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret)
 		return ret;
 
-	i915_gem_object_wait_priority(obj, 0, &attr);
+	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3411ad197fa6..325766abca21 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -549,15 +549,14 @@ static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
 		obj->cache_dirty = true;
 }
 
-void i915_gem_fence_wait_priority(struct dma_fence *fence,
-				  const struct i915_sched_attr *attr);
+void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio);
 
 int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 unsigned int flags,
 			 long timeout);
 int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
-				  const struct i915_sched_attr *attr);
+				  int prio);
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 4b9856d5ba14..d79bf16083bd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -91,22 +91,12 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	return timeout;
 }
 
-static void fence_set_priority(struct dma_fence *fence,
-			       const struct i915_sched_attr *attr)
+static void fence_set_priority(struct dma_fence *fence, int prio)
 {
-	struct i915_request *rq;
-	struct intel_engine_cs *engine;
-
 	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
 		return;
 
-	rq = to_request(fence);
-	engine = rq->engine;
-
-	rcu_read_lock(); /* RCU serialisation for set-wedged protection */
-	if (engine->schedule)
-		engine->schedule(rq, attr);
-	rcu_read_unlock();
+	i915_request_set_priority(to_request(fence), prio);
 }
 
 static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
@@ -114,8 +104,7 @@ static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
 	return fence->ops == &dma_fence_chain_ops;
 }
 
-void i915_gem_fence_wait_priority(struct dma_fence *fence,
-				  const struct i915_sched_attr *attr)
+void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio)
 {
 	if (dma_fence_is_signaled(fence))
 		return;
@@ -128,19 +117,19 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
 		int i;
 
 		for (i = 0; i < array->num_fences; i++)
-			fence_set_priority(array->fences[i], attr);
+			fence_set_priority(array->fences[i], prio);
 	} else if (__dma_fence_is_chain(fence)) {
 		struct dma_fence *iter;
 
 		/* The chain is ordered; if we boost the last, we boost all */
 		dma_fence_chain_for_each(iter, fence) {
 			fence_set_priority(to_dma_fence_chain(iter)->fence,
-					   attr);
+					   prio);
 			break;
 		}
 		dma_fence_put(iter);
 	} else {
-		fence_set_priority(fence, attr);
+		fence_set_priority(fence, prio);
 	}
 
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
@@ -149,7 +138,7 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
 int
 i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
-			      const struct i915_sched_attr *attr)
+			      int prio)
 {
 	struct dma_fence *excl;
 
@@ -164,7 +153,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			return ret;
 
 		for (i = 0; i < count; i++) {
-			i915_gem_fence_wait_priority(shared[i], attr);
+			i915_gem_fence_wait_priority(shared[i], prio);
 			dma_fence_put(shared[i]);
 		}
 
@@ -174,7 +163,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 	}
 
 	if (excl) {
-		i915_gem_fence_wait_priority(excl, attr);
+		i915_gem_fence_wait_priority(excl, prio);
 		dma_fence_put(excl);
 	}
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 13ef5725ef51..2be0db187ee6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -326,9 +326,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	if (engine->context_size)
 		DRIVER_CAPS(i915)->has_logical_contexts = true;
 
-	/* Nothing to do here, execute in order of dependencies */
-	engine->schedule = NULL;
-
 	ewma__engine_latency_init(&engine->latency);
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&engine->context_status_notifier);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 778bcae5ef2c..0b026cde9f09 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -114,7 +114,7 @@ static void heartbeat(struct work_struct *wrk)
 			 * but all other contexts, including the kernel
 			 * context are stuck waiting for the signal.
 			 */
-		} else if (engine->schedule &&
+		} else if (intel_engine_has_scheduler(engine) &&
 			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
 			/*
 			 * Gradually raise the priority of the heartbeat to
@@ -129,7 +129,7 @@ static void heartbeat(struct work_struct *wrk)
 				attr.priority = I915_PRIORITY_BARRIER;
 
 			local_bh_disable();
-			engine->schedule(rq, &attr);
+			i915_request_set_priority(rq, attr.priority);
 			local_bh_enable();
 		} else {
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c9974de2dd00..7cc5f4ca3f56 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -454,14 +454,6 @@ struct intel_engine_cs {
 	void            (*bond_execute)(struct i915_request *rq,
 					struct dma_fence *signal);
 
-	/*
-	 * Call when the priority on a request has changed and it and its
-	 * dependencies may need rescheduling. Note the request itself may
-	 * not be ready to run!
-	 */
-	void		(*schedule)(struct i915_request *request,
-				    const struct i915_sched_attr *attr);
-
 	void		(*release)(struct intel_engine_cs *engine);
 
 	struct intel_engine_execlists execlists;
@@ -479,12 +471,13 @@ struct intel_engine_cs {
 
 #define I915_ENGINE_USING_CMD_PARSER BIT(0)
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
-#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
-#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
-#define I915_ENGINE_IS_VIRTUAL       BIT(5)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
+#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
+#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
+#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
+#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
+#define I915_ENGINE_IS_VIRTUAL       BIT(6)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
 	unsigned int flags;
 
 	/*
@@ -567,6 +560,12 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_SUPPORTS_STATS;
 }
 
+static inline bool
+intel_engine_has_scheduler(const struct intel_engine_cs *engine)
+{
+	return engine->flags & I915_ENGINE_HAS_SCHEDULER;
+}
+
 static inline bool
 intel_engine_has_preemption(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 1cbd84eb24e4..64eccdf32a22 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -107,7 +107,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
 		int i;
 
-		if (engine->schedule)
+		if (intel_engine_has_scheduler(engine))
 			enabled |= (I915_SCHEDULER_CAP_ENABLED |
 				    I915_SCHEDULER_CAP_PRIORITY);
 		else
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 554eaaa268a7..f95a35383f48 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3106,7 +3106,6 @@ static bool can_preempt(struct intel_engine_cs *engine)
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
-	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.callback = execlists_submission_tasklet;
 }
 
@@ -3168,6 +3167,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	intel_engine_set_irq_handler(engine, execlists_irq_handler);
 
+	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
@@ -3680,7 +3680,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
 
-	ve->base.schedule = i915_schedule;
 	ve->base.submit_request = virtual_submit_request;
 	ve->base.bond_execute = virtual_bond_execute;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 9304a35384aa..951e2bf867e1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -268,12 +268,8 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		i915_request_put(rq[0]);
 
 		if (prio) {
-			struct i915_sched_attr attr = {
-				.priority = prio,
-			};
-
 			/* Alternatively preempt the spinner with ce[1] */
-			engine->schedule(rq[1], &attr);
+			i915_request_set_priority(rq[1], prio);
 		}
 
 		/* And switch back to ce[0] for good measure */
@@ -873,9 +869,6 @@ release_queue(struct intel_engine_cs *engine,
 	      struct i915_vma *vma,
 	      int idx, int prio)
 {
-	struct i915_sched_attr attr = {
-		.priority = prio,
-	};
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -900,7 +893,7 @@ release_queue(struct intel_engine_cs *engine,
 	i915_request_add(rq);
 
 	local_bh_disable();
-	engine->schedule(rq, &attr);
+	i915_request_set_priority(rq, prio);
 	local_bh_enable(); /* kick tasklet */
 
 	i915_request_put(rq);
@@ -1310,7 +1303,6 @@ static int live_timeslice_queue(void *arg)
 		goto err_pin;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct i915_request *rq, *nop;
 
 		if (!intel_engine_has_preemption(engine))
@@ -1325,7 +1317,7 @@ static int live_timeslice_queue(void *arg)
 			err = PTR_ERR(rq);
 			goto err_heartbeat;
 		}
-		engine->schedule(rq, &attr);
+		i915_request_set_priority(rq, I915_PRIORITY_MAX);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1806,7 +1798,6 @@ static int live_late_preempt(void *arg)
 	struct i915_gem_context *ctx_hi, *ctx_lo;
 	struct igt_spinner spin_hi, spin_lo;
 	struct intel_engine_cs *engine;
-	struct i915_sched_attr attr = {};
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
@@ -1866,8 +1857,7 @@ static int live_late_preempt(void *arg)
 			goto err_wedged;
 		}
 
-		attr.priority = I915_PRIORITY_MAX;
-		engine->schedule(rq, &attr);
+		i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 		if (!igt_wait_for_spinner(&spin_hi, rq)) {
 			pr_err("High priority context failed to preempt the low priority context\n");
@@ -2412,7 +2402,6 @@ static int live_preempt_cancel(void *arg)
 
 static int live_suppress_self_preempt(void *arg)
 {
-	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	struct preempt_client a, b;
@@ -2480,7 +2469,7 @@ static int live_suppress_self_preempt(void *arg)
 			i915_request_add(rq_b);
 
 			GEM_BUG_ON(i915_request_completed(rq_a));
-			engine->schedule(rq_a, &attr);
+			i915_request_set_priority(rq_a, I915_PRIORITY_MAX);
 			igt_spinner_end(&a.spin);
 
 			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
@@ -2545,7 +2534,6 @@ static int live_chain_preempt(void *arg)
 		goto err_client_hi;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct igt_live_test t;
 		struct i915_request *rq;
 		int ring_size, count, i;
@@ -2612,7 +2600,7 @@ static int live_chain_preempt(void *arg)
 
 			i915_request_get(rq);
 			i915_request_add(rq);
-			engine->schedule(rq, &attr);
+			i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 			igt_spinner_end(&hi.spin);
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
@@ -2964,14 +2952,12 @@ static int live_preempt_gang(void *arg)
 			return -EIO;
 
 		do {
-			struct i915_sched_attr attr = { .priority = prio++ };
-
 			err = create_gang(engine, &rq);
 			if (err)
 				break;
 
 			/* Submit each spinner at increasing priority */
-			engine->schedule(rq, &attr);
+			i915_request_set_priority(rq, prio++);
 		} while (prio <= I915_PRIORITY_MAX &&
 			 !__igt_timeout(end_time, NULL));
 		pr_debug("%s: Preempt chain of %d requests\n",
@@ -3192,9 +3178,6 @@ static int preempt_user(struct intel_engine_cs *engine,
 			struct i915_vma *global,
 			int id)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_PRIORITY_MAX
-	};
 	struct i915_request *rq;
 	int err = 0;
 	u32 *cs;
@@ -3219,7 +3202,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	engine->schedule(rq, &attr);
+	i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index d6ce4075602c..8cad102922e7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -858,12 +858,11 @@ static int active_engine(void *data)
 		rq[idx] = i915_request_get(new);
 		i915_request_add(new);
 
-		if (engine->schedule && arg->flags & TEST_PRIORITY) {
-			struct i915_sched_attr attr = {
-				.priority =
-					i915_prandom_u32_max_state(512, &prng),
-			};
-			engine->schedule(rq[idx], &attr);
+		if (intel_engine_has_scheduler(engine) &&
+		    arg->flags & TEST_PRIORITY) {
+			int prio = i915_prandom_u32_max_state(512, &prng);
+
+			i915_request_set_priority(rq[idx], prio);
 		}
 
 		err = active_request_put(old);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 335719f17490..2f5c39091d49 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -638,8 +638,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->cops = &guc_context_ops;
 	engine->request_alloc = guc_request_alloc;
 
-	engine->schedule = i915_schedule;
-
 	engine->reset.prepare = guc_reset_prepare;
 	engine->reset.rewind = guc_reset_rewind;
 	engine->reset.cancel = guc_reset_cancel;
@@ -654,6 +652,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	engine->set_default_submission = guc_set_default_submission;
 
+	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a336d6c40d8b..916e74fbab6c 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1223,7 +1223,7 @@ __i915_request_await_execution(struct i915_request *to,
 	}
 
 	/* Couple the dependency tree for PI on this exposed to->fence */
-	if (to->engine->schedule) {
+	if (i915_request_use_scheduler(to)) {
 		err = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_WEAK);
@@ -1364,7 +1364,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 		return 0;
 	}
 
-	if (to->engine->schedule) {
+	if (i915_request_use_scheduler(to)) {
 		ret = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_EXTERNAL);
@@ -1551,7 +1551,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			__i915_sw_fence_await_dma_fence(&rq->submit,
 							&prev->fence,
 							&rq->dmaq);
-		if (rq->engine->schedule)
+		if (i915_request_use_scheduler(rq))
 			__i915_sched_node_add_dependency(&rq->sched,
 							 &prev->sched,
 							 &rq->dep,
@@ -1623,8 +1623,8 @@ void __i915_request_queue(struct i915_request *rq,
 	 * decide whether to preempt the entire chain so that it is ready to
 	 * run at the earliest possible convenience.
 	 */
-	if (attr && rq->engine->schedule)
-		rq->engine->schedule(rq, attr);
+	if (attr)
+		i915_request_set_priority(rq, attr->priority);
 
 	local_bh_disable();
 	__i915_request_queue_bh(rq);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index c0bd4cb8786a..9ce074ffc1dd 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -616,4 +616,9 @@ i915_request_active_timeline(const struct i915_request *rq)
 					 lockdep_is_held(&rq->engine->active.lock));
 }
 
+static inline bool i915_request_use_scheduler(const struct i915_request *rq)
+{
+	return intel_engine_has_scheduler(rq->engine);
+}
+
 #endif /* I915_REQUEST_H */
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 85d18037a915..84a55df88687 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -227,10 +227,8 @@ static void kick_submission(struct intel_engine_cs *engine,
 	rcu_read_unlock();
 }
 
-static void __i915_schedule(struct i915_sched_node *node,
-			    const struct i915_sched_attr *attr)
+static void __i915_schedule(struct i915_sched_node *node, int prio)
 {
-	const int prio = max(attr->priority, node->attr.priority);
 	struct intel_engine_cs *engine;
 	struct i915_dependency *dep, *p;
 	struct i915_dependency stack;
@@ -244,6 +242,8 @@ static void __i915_schedule(struct i915_sched_node *node,
 	if (node_signaled(node))
 		return;
 
+	prio = max(prio, node->attr.priority);
+
 	stack.signaler = node;
 	list_add(&stack.dfs_link, &dfs);
 
@@ -297,7 +297,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 	 */
 	if (node->attr.priority == I915_PRIORITY_INVALID) {
 		GEM_BUG_ON(!list_empty(&node->link));
-		node->attr = *attr;
+		node->attr.priority = prio;
 
 		if (stack.dfs_link.next == stack.dfs_link.prev)
 			return;
@@ -352,10 +352,13 @@ static void __i915_schedule(struct i915_sched_node *node,
 	spin_unlock(&engine->active.lock);
 }
 
-void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
+void i915_request_set_priority(struct i915_request *rq, int prio)
 {
+	if (!i915_request_use_scheduler(rq))
+		return;
+
 	spin_lock_irq(&schedule_lock);
-	__i915_schedule(&rq->sched, attr);
+	__i915_schedule(&rq->sched, prio);
 	spin_unlock_irq(&schedule_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 8c5ed6fe0994..a045be784c67 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -35,8 +35,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 void i915_sched_node_retire(struct i915_sched_node *node);
 
-void i915_schedule(struct i915_request *request,
-		   const struct i915_sched_attr *attr);
+void i915_request_set_priority(struct i915_request *request, int prio);
 
 struct list_head *
 i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
