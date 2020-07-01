Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA41210688
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271A76E87F;
	Wed,  1 Jul 2020 08:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B40C6E857
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671946-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:38 +0100
Message-Id: <20200701084053.6086-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/33] drm/i915: Replace engine->schedule() with
 a known request operation
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

Looking to the future, we want to set the scheduling attributes
explicitly and so replace the generic engine->schedule() with the more
direct i915_request_set_priority()

What it loses in removing the 'schedule' name from the function, it
gains in having an explicit entry point with a stated goal.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +----
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      | 27 +++++----------
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 --
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  4 +--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 29 ++++++++--------
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  3 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 11 +++----
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 33 +++++--------------
 drivers/gpu/drm/i915/i915_request.c           | 11 ++++---
 drivers/gpu/drm/i915/i915_scheduler.c         | 15 +++++----
 drivers/gpu/drm/i915/i915_scheduler.h         |  3 +-
 13 files changed, 57 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59536eb1ee50..6ad91f8649fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15906,13 +15906,6 @@ static void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 		intel_unpin_fb_vma(vma, old_plane_state->flags);
 }
 
-static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
-{
-	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
-
-	i915_gem_object_wait_priority(obj, 0, &attr);
-}
-
 /**
  * intel_prepare_plane_fb - Prepare fb for usage on plane
  * @_plane: drm plane to prepare for
@@ -15989,7 +15982,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret)
 		return ret;
 
-	fb_obj_bump_render_priority(obj);
+	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..876c34982555 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -476,7 +476,7 @@ int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 long timeout);
 int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
-				  const struct i915_sched_attr *attr);
+				  int prio);
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 8af55cd3e690..cefbbb3d9b52 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -93,28 +93,17 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	return timeout;
 }
 
-static void __fence_set_priority(struct dma_fence *fence,
-				 const struct i915_sched_attr *attr)
+static void __fence_set_priority(struct dma_fence *fence, int prio)
 {
-	struct i915_request *rq;
-	struct intel_engine_cs *engine;
-
 	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
 		return;
 
-	rq = to_request(fence);
-	engine = rq->engine;
-
 	local_bh_disable();
-	rcu_read_lock(); /* RCU serialisation for set-wedged protection */
-	if (engine->schedule)
-		engine->schedule(rq, attr);
-	rcu_read_unlock();
+	i915_request_set_priority(to_request(fence), prio);
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
 }
 
-static void fence_set_priority(struct dma_fence *fence,
-			       const struct i915_sched_attr *attr)
+static void fence_set_priority(struct dma_fence *fence, int prio)
 {
 	/* Recurse once into a fence-array */
 	if (dma_fence_is_array(fence)) {
@@ -122,16 +111,16 @@ static void fence_set_priority(struct dma_fence *fence,
 		int i;
 
 		for (i = 0; i < array->num_fences; i++)
-			__fence_set_priority(array->fences[i], attr);
+			__fence_set_priority(array->fences[i], prio);
 	} else {
-		__fence_set_priority(fence, attr);
+		__fence_set_priority(fence, prio);
 	}
 }
 
 int
 i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
-			      const struct i915_sched_attr *attr)
+			      int prio)
 {
 	struct dma_fence *excl;
 
@@ -146,7 +135,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			return ret;
 
 		for (i = 0; i < count; i++) {
-			fence_set_priority(shared[i], attr);
+			fence_set_priority(shared[i], prio);
 			dma_fence_put(shared[i]);
 		}
 
@@ -156,7 +145,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 	}
 
 	if (excl) {
-		fence_set_priority(excl, attr);
+		fence_set_priority(excl, prio);
 		dma_fence_put(excl);
 	}
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 06a65b280111..40237a9e139b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -334,9 +334,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	if (engine->context_size)
 		DRIVER_CAPS(i915)->has_logical_contexts = true;
 
-	/* Nothing to do here, execute in order of dependencies */
-	engine->schedule = NULL;
-
 	ewma__engine_latency_init(&engine->latency);
 	seqcount_init(&engine->stats.lock);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 8e1abd037a94..d119e4e12755 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -103,7 +103,7 @@ static void heartbeat(struct work_struct *wrk)
 			 * but all other contexts, including the kernel
 			 * context are stuck waiting for the signal.
 			 */
-		} else if (engine->schedule &&
+		} else if (intel_engine_has_scheduler(engine) &&
 			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
 			/*
 			 * Gradually raise the priority of the heartbeat to
@@ -118,7 +118,7 @@ static void heartbeat(struct work_struct *wrk)
 				attr.priority = I915_PRIORITY_BARRIER;
 
 			local_bh_disable();
-			engine->schedule(rq, &attr);
+			i915_request_set_priority(rq, attr.priority);
 			local_bh_enable();
 		} else {
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 242b6bbd7fe3..c371961d09e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -483,14 +483,6 @@ struct intel_engine_cs {
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
@@ -508,13 +500,14 @@ struct intel_engine_cs {
 
 #define I915_ENGINE_USING_CMD_PARSER BIT(0)
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
-#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
-#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
-#define I915_ENGINE_IS_VIRTUAL       BIT(6)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
+#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
+#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
+#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
+#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
+#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(6)
+#define I915_ENGINE_IS_VIRTUAL       BIT(7)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(8)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(9)
 	unsigned int flags;
 
 	/*
@@ -600,6 +593,12 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
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
index 848decee9066..1c0a7f3ec0bd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -108,7 +108,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
 		int i;
 
-		if (engine->schedule)
+		if (intel_engine_has_scheduler(engine))
 			enabled |= (I915_SCHEDULER_CAP_ENABLED |
 				    I915_SCHEDULER_CAP_PRIORITY);
 		else
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 27cabb305317..6b3d5d3dd0d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4877,7 +4877,6 @@ static void execlists_park(struct intel_engine_cs *engine)
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
-	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.func = execlists_submission_tasklet;
 
 	engine->reset.prepare = execlists_reset_prepare;
@@ -4888,6 +4887,7 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 	engine->park = execlists_park;
 	engine->unpark = NULL;
 
+	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
@@ -5622,7 +5622,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
 
-	ve->base.schedule = i915_schedule;
 	ve->base.submit_request = virtual_submit_request;
 	ve->base.bond_execute = virtual_bond_execute;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index c28d1fcad673..927d54c702f4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -726,12 +726,11 @@ static int active_engine(void *data)
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
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 46d400640188..418c1c2e54a1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -293,12 +293,8 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
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
@@ -898,9 +894,6 @@ release_queue(struct intel_engine_cs *engine,
 	      struct i915_vma *vma,
 	      int idx, int prio)
 {
-	struct i915_sched_attr attr = {
-		.priority = prio,
-	};
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -925,7 +918,7 @@ release_queue(struct intel_engine_cs *engine,
 	i915_request_add(rq);
 
 	local_bh_disable();
-	engine->schedule(rq, &attr);
+	i915_request_set_priority(rq, prio);
 	local_bh_enable(); /* kick tasklet */
 
 	i915_request_put(rq);
@@ -1332,7 +1325,6 @@ static int live_timeslice_queue(void *arg)
 		goto err_pin;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct i915_request *rq, *nop;
 
 		if (!intel_engine_has_preemption(engine))
@@ -1347,7 +1339,7 @@ static int live_timeslice_queue(void *arg)
 			err = PTR_ERR(rq);
 			goto err_heartbeat;
 		}
-		engine->schedule(rq, &attr);
+		i915_request_set_priority(rq, I915_PRIORITY_MAX);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1834,7 +1826,6 @@ static int live_late_preempt(void *arg)
 	struct i915_gem_context *ctx_hi, *ctx_lo;
 	struct igt_spinner spin_hi, spin_lo;
 	struct intel_engine_cs *engine;
-	struct i915_sched_attr attr = {};
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
@@ -1897,8 +1888,7 @@ static int live_late_preempt(void *arg)
 			goto err_wedged;
 		}
 
-		attr.priority = I915_PRIORITY_MAX;
-		engine->schedule(rq, &attr);
+		i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 		if (!igt_wait_for_spinner(&spin_hi, rq)) {
 			pr_err("High priority context failed to preempt the low priority context\n");
@@ -2374,7 +2364,6 @@ static int live_preempt_cancel(void *arg)
 
 static int live_suppress_self_preempt(void *arg)
 {
-	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	struct preempt_client a, b;
@@ -2445,7 +2434,7 @@ static int live_suppress_self_preempt(void *arg)
 			i915_request_add(rq_b);
 
 			GEM_BUG_ON(i915_request_completed(rq_a));
-			engine->schedule(rq_a, &attr);
+			i915_request_set_priority(rq_a, I915_PRIORITY_MAX);
 			igt_spinner_end(&a.spin);
 
 			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
@@ -2513,7 +2502,6 @@ static int live_chain_preempt(void *arg)
 		goto err_client_hi;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct igt_live_test t;
 		struct i915_request *rq;
 		int ring_size, count, i;
@@ -2580,7 +2568,7 @@ static int live_chain_preempt(void *arg)
 
 			i915_request_get(rq);
 			i915_request_add(rq);
-			engine->schedule(rq, &attr);
+			i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 			igt_spinner_end(&hi.spin);
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
@@ -2931,14 +2919,12 @@ static int live_preempt_gang(void *arg)
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
@@ -3160,9 +3146,6 @@ static int preempt_user(struct intel_engine_cs *engine,
 			struct i915_vma *global,
 			int id)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_PRIORITY_MAX
-	};
 	struct i915_request *rq;
 	int err = 0;
 	u32 *cs;
@@ -3187,7 +3170,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	engine->schedule(rq, &attr);
+	i915_request_set_priority(rq, I915_PRIORITY_MAX);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0dad1f0fbd32..295c0c63039e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1180,7 +1180,7 @@ __i915_request_await_execution(struct i915_request *to,
 	}
 
 	/* Couple the dependency tree for PI on this exposed to->fence */
-	if (to->engine->schedule) {
+	if (intel_engine_has_scheduler(to->engine)) {
 		err = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_WEAK);
@@ -1321,7 +1321,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 		return 0;
 	}
 
-	if (to->engine->schedule) {
+	if (intel_engine_has_scheduler(to->engine)) {
 		ret = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_EXTERNAL);
@@ -1508,7 +1508,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			__i915_sw_fence_await_dma_fence(&rq->submit,
 							&prev->fence,
 							&rq->dmaq);
-		if (rq->engine->schedule)
+		if (intel_engine_has_scheduler(rq->engine))
 			__i915_sched_node_add_dependency(&rq->sched,
 							 &prev->sched,
 							 &rq->dep,
@@ -1574,8 +1574,9 @@ void __i915_request_queue(struct i915_request *rq,
 	 * decide whether to preempt the entire chain so that it is ready to
 	 * run at the earliest possible convenience.
 	 */
-	if (attr && rq->engine->schedule)
-		rq->engine->schedule(rq, attr);
+	if (attr)
+		i915_request_set_priority(rq, attr->priority);
+
 	i915_sw_fence_commit(&rq->semaphore);
 	i915_sw_fence_commit(&rq->submit);
 }
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a9973d7a724c..9f744f470556 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -216,10 +216,8 @@ static void kick_submission(struct intel_engine_cs *engine,
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
@@ -233,6 +231,8 @@ static void __i915_schedule(struct i915_sched_node *node,
 	if (node_signaled(node))
 		return;
 
+	prio = max(prio, node->attr.priority);
+
 	stack.signaler = node;
 	list_add(&stack.dfs_link, &dfs);
 
@@ -286,7 +286,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 	 */
 	if (node->attr.priority == I915_PRIORITY_INVALID) {
 		GEM_BUG_ON(!list_empty(&node->link));
-		node->attr = *attr;
+		node->attr.priority = prio;
 
 		if (stack.dfs_link.next == stack.dfs_link.prev)
 			return;
@@ -341,10 +341,13 @@ static void __i915_schedule(struct i915_sched_node *node,
 	spin_unlock(&engine->active.lock);
 }
 
-void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
+void i915_request_set_priority(struct i915_request *rq, int prio)
 {
+	if (!intel_engine_has_scheduler(rq->engine))
+		return;
+
 	spin_lock_irq(&schedule_lock);
-	__i915_schedule(&rq->sched, attr);
+	__i915_schedule(&rq->sched, prio);
 	spin_unlock_irq(&schedule_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index b089d5cace1d..c30bf8af045d 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -33,8 +33,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 void i915_sched_node_fini(struct i915_sched_node *node);
 
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
