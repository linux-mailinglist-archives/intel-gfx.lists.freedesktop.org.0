Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF7C39AC57
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 23:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528096F509;
	Thu,  3 Jun 2021 21:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C776EADD;
 Thu,  3 Jun 2021 21:09:38 +0000 (UTC)
IronPort-SDR: OrdQbn9bwTCAYqGikP+MwdP2uJ5UjEoxj5jknoJZq4JhWAvCdXr0ZdIp8If14pavdt8g/PWwX8
 umZMzsnuRkIQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="203966014"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="203966014"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:09:35 -0700
IronPort-SDR: +902QuRyXMD5Nx5TdjTg0kTL6Y91A7d+W92syV+dNw9SxW+REG3n3QPg7VWBmFTGfdesYWIAuj
 rwxHWy2FFszg==
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="448015276"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:09:35 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  3 Jun 2021 14:27:18 -0700
Message-Id: <20210603212722.59719-6-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210603212722.59719-1-matthew.brost@intel.com>
References: <20210603212722.59719-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Move engine->schedule to
 i915_sched_engine
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The schedule function should be in the schedule object.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c         |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c        |  3 ---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h     |  8 --------
 drivers/gpu/drm/i915/gt/intel_engine_user.c      |  2 +-
 .../gpu/drm/i915/gt/intel_execlists_submission.c |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_execlists.c     | 16 ++++++++--------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c     |  4 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    |  2 +-
 drivers/gpu/drm/i915/i915_request.c              | 10 +++++-----
 drivers/gpu/drm/i915/i915_scheduler_types.h      |  8 ++++++++
 11 files changed, 31 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 4b9856d5ba14..af1fbf8e2a9a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -104,8 +104,8 @@ static void fence_set_priority(struct dma_fence *fence,
 	engine = rq->engine;
 
 	rcu_read_lock(); /* RCU serialisation for set-wedged protection */
-	if (engine->schedule)
-		engine->schedule(rq, attr);
+	if (engine->sched_engine->schedule)
+		engine->sched_engine->schedule(rq, attr);
 	rcu_read_unlock();
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 33d879137908..b480fcb1aad1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -326,9 +326,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	if (engine->context_size)
 		DRIVER_CAPS(i915)->has_logical_contexts = true;
 
-	/* Nothing to do here, execute in order of dependencies */
-	engine->schedule = NULL;
-
 	ewma__engine_latency_init(&engine->latency);
 	seqcount_init(&engine->stats.lock);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index b99ac41695f3..b6a305e6a974 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -121,7 +121,7 @@ static void heartbeat(struct work_struct *wrk)
 			 * but all other contexts, including the kernel
 			 * context are stuck waiting for the signal.
 			 */
-		} else if (engine->schedule &&
+		} else if (engine->sched_engine->schedule &&
 			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
 			/*
 			 * Gradually raise the priority of the heartbeat to
@@ -136,7 +136,7 @@ static void heartbeat(struct work_struct *wrk)
 				attr.priority = I915_PRIORITY_BARRIER;
 
 			local_bh_disable();
-			engine->schedule(rq, &attr);
+			engine->sched_engine->schedule(rq, &attr);
 			local_bh_enable();
 		} else {
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 7197b9fa5e35..f1b14aff5118 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -426,14 +426,6 @@ struct intel_engine_cs {
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
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 3cca7ea2d6ea..84142127ebd8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -108,7 +108,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
 		int i;
 
-		if (engine->schedule)
+		if (engine->sched_engine->schedule)
 			enabled |= (I915_SCHEDULER_CAP_ENABLED |
 				    I915_SCHEDULER_CAP_PRIORITY);
 		else
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0413ba87cc1e..23fd03815ad0 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3119,7 +3119,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
-	engine->schedule = i915_schedule;
+	engine->sched_engine->schedule = i915_schedule;
 	engine->execlists.tasklet.callback = execlists_submission_tasklet;
 }
 
@@ -3701,7 +3701,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
 
-	ve->base.schedule = i915_schedule;
+	ve->base.sched_engine->schedule = i915_schedule;
 	ve->base.submit_request = virtual_submit_request;
 	ve->base.bond_execute = virtual_bond_execute;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index fd824fa329c2..5cc7648d1e5a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -273,7 +273,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 			};
 
 			/* Alternatively preempt the spinner with ce[1] */
-			engine->schedule(rq[1], &attr);
+			engine->sched_engine->schedule(rq[1], &attr);
 		}
 
 		/* And switch back to ce[0] for good measure */
@@ -900,7 +900,7 @@ release_queue(struct intel_engine_cs *engine,
 	i915_request_add(rq);
 
 	local_bh_disable();
-	engine->schedule(rq, &attr);
+	engine->sched_engine->schedule(rq, &attr);
 	local_bh_enable(); /* kick tasklet */
 
 	i915_request_put(rq);
@@ -1325,7 +1325,7 @@ static int live_timeslice_queue(void *arg)
 			err = PTR_ERR(rq);
 			goto err_heartbeat;
 		}
-		engine->schedule(rq, &attr);
+		engine->sched_engine->schedule(rq, &attr);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1867,7 +1867,7 @@ static int live_late_preempt(void *arg)
 		}
 
 		attr.priority = I915_PRIORITY_MAX;
-		engine->schedule(rq, &attr);
+		engine->sched_engine->schedule(rq, &attr);
 
 		if (!igt_wait_for_spinner(&spin_hi, rq)) {
 			pr_err("High priority context failed to preempt the low priority context\n");
@@ -2480,7 +2480,7 @@ static int live_suppress_self_preempt(void *arg)
 			i915_request_add(rq_b);
 
 			GEM_BUG_ON(i915_request_completed(rq_a));
-			engine->schedule(rq_a, &attr);
+			engine->sched_engine->schedule(rq_a, &attr);
 			igt_spinner_end(&a.spin);
 
 			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
@@ -2612,7 +2612,7 @@ static int live_chain_preempt(void *arg)
 
 			i915_request_get(rq);
 			i915_request_add(rq);
-			engine->schedule(rq, &attr);
+			engine->sched_engine->schedule(rq, &attr);
 
 			igt_spinner_end(&hi.spin);
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
@@ -2971,7 +2971,7 @@ static int live_preempt_gang(void *arg)
 				break;
 
 			/* Submit each spinner at increasing priority */
-			engine->schedule(rq, &attr);
+			engine->sched_engine->schedule(rq, &attr);
 		} while (prio <= I915_PRIORITY_MAX &&
 			 !__igt_timeout(end_time, NULL));
 		pr_debug("%s: Preempt chain of %d requests\n",
@@ -3219,7 +3219,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	engine->schedule(rq, &attr);
+	engine->sched_engine->schedule(rq, &attr);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 5b63d4df8c93..e57dc900ae8d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -858,12 +858,12 @@ static int active_engine(void *data)
 		rq[idx] = i915_request_get(new);
 		i915_request_add(new);
 
-		if (engine->schedule && arg->flags & TEST_PRIORITY) {
+		if (engine->sched_engine->schedule && arg->flags & TEST_PRIORITY) {
 			struct i915_sched_attr attr = {
 				.priority =
 					i915_prandom_u32_max_state(512, &prng),
 			};
-			engine->schedule(rq[idx], &attr);
+			engine->sched_engine->schedule(rq[idx], &attr);
 		}
 
 		err = active_request_put(old);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 2551019ee217..4c5bbec0775d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -641,7 +641,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->cops = &guc_context_ops;
 	engine->request_alloc = guc_request_alloc;
 
-	engine->schedule = i915_schedule;
+	engine->sched_engine->schedule = i915_schedule;
 
 	engine->reset.prepare = guc_reset_prepare;
 	engine->reset.rewind = guc_reset_rewind;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 95e859c319ca..f0cb8820fb97 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1343,7 +1343,7 @@ __i915_request_await_execution(struct i915_request *to,
 	}
 
 	/* Couple the dependency tree for PI on this exposed to->fence */
-	if (to->engine->schedule) {
+	if (to->engine->sched_engine->schedule) {
 		err = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_WEAK);
@@ -1484,7 +1484,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 		return 0;
 	}
 
-	if (to->engine->schedule) {
+	if (to->engine->sched_engine->schedule) {
 		ret = i915_sched_node_add_dependency(&to->sched,
 						     &from->sched,
 						     I915_DEPENDENCY_EXTERNAL);
@@ -1671,7 +1671,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			__i915_sw_fence_await_dma_fence(&rq->submit,
 							&prev->fence,
 							&rq->dmaq);
-		if (rq->engine->schedule)
+		if (rq->engine->sched_engine->schedule)
 			__i915_sched_node_add_dependency(&rq->sched,
 							 &prev->sched,
 							 &rq->dep,
@@ -1743,8 +1743,8 @@ void __i915_request_queue(struct i915_request *rq,
 	 * decide whether to preempt the entire chain so that it is ready to
 	 * run at the earliest possible convenience.
 	 */
-	if (attr && rq->engine->schedule)
-		rq->engine->schedule(rq, attr);
+	if (attr && rq->engine->sched_engine->schedule)
+		rq->engine->sched_engine->schedule(rq, attr);
 
 	local_bh_disable();
 	__i915_request_queue_bh(rq);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 5cb0b1c98d6b..3f462f8b06f2 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -131,6 +131,14 @@ struct i915_sched_engine {
 	 * @no_priolist: priority lists disabled
 	 */
 	bool no_priolist;
+
+	/*
+	 * Call when the priority on a request has changed and it and its
+	 * dependencies may need rescheduling. Note the request itself may
+	 * not be ready to run!
+	 */
+	void	(*schedule)(struct i915_request *request,
+			    const struct i915_sched_attr *attr);
 };
 
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
