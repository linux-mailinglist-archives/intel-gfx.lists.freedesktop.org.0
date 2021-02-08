Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF7E312F9E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863486E871;
	Mon,  8 Feb 2021 10:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE056E86D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809210-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:08 +0000
Message-Id: <20210208105236.28498-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/31] drm/i915: Introduce the scheduling mode
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

Start extracting the scheduling flags from the engine. We begin with its
own existence by declaring whether or not the scheduler supports any
task reordering. This information can then be passed directly to the
user (using the SCHEDULER_CAPS) without having to infer in the user
interface.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  7 +++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 19 +++-----
 drivers/gpu/drm/i915/gt/intel_engine_user.c   | 34 +++++++++------
 .../drm/i915/gt/intel_execlists_submission.c  |  7 ++-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  8 +++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 +-
 drivers/gpu/drm/i915/i915_request.h           |  3 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 16 ++++++-
 drivers/gpu/drm/i915/i915_scheduler.h         | 18 ++++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 43 +++++++++++++++++++
 11 files changed, 126 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index c530839627bb..875fde52bcb6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -261,6 +261,13 @@ intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.heartbeat_interval_ms);
 }
 
+static inline bool
+intel_engine_has_scheduler(struct intel_engine_cs *engine)
+{
+	/* Is there an active scheduler attached to this engine? */
+	return i915_sched_is_active(intel_engine_get_scheduler(engine));
+}
+
 static inline void
 intel_engine_kick_scheduler(struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 577ebd4a324f..da2447f18daa 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1245,6 +1245,7 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
 			engine->sanitize(engine);
 
 		engine->set_default_submission(engine);
+		i915_sched_enable(intel_engine_get_scheduler(engine));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index d27a44070cb1..ce5732099815 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -442,13 +442,12 @@ struct intel_engine_cs {
 
 #define I915_ENGINE_USING_CMD_PARSER BIT(0)
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
-#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
-#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
-#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
-#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
-#define I915_ENGINE_IS_VIRTUAL       BIT(6)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
+#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
+#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
+#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
+#define I915_ENGINE_IS_VIRTUAL       BIT(5)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
 	unsigned int flags;
 
 	/*
@@ -531,12 +530,6 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_SUPPORTS_STATS;
 }
 
-static inline bool
-intel_engine_has_scheduler(const struct intel_engine_cs *engine)
-{
-	return engine->flags & I915_ENGINE_HAS_SCHEDULER;
-}
-
 static inline bool
 intel_engine_has_preemption(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 64eccdf32a22..3d3cdc080c32 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -90,13 +90,18 @@ static void sort_engines(struct drm_i915_private *i915,
 static void set_scheduler_caps(struct drm_i915_private *i915)
 {
 	static const struct {
-		u8 engine;
-		u8 sched;
-	} map[] = {
+		u8 flag;
+		u8 cap;
+	} engine_map[] = {
 #define MAP(x, y) { ilog2(I915_ENGINE_##x), ilog2(I915_SCHEDULER_CAP_##y) }
 		MAP(HAS_PREEMPTION, PREEMPTION),
 		MAP(HAS_SEMAPHORES, SEMAPHORES),
 		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
+#undef MAP
+	}, sched_map[] = {
+#define MAP(x, y) { I915_SCHED_##x, ilog2(I915_SCHEDULER_CAP_##y) }
+		MAP(ACTIVE_BIT, ENABLED),
+		MAP(PRIORITY_BIT, PRIORITY),
 #undef MAP
 	};
 	struct intel_engine_cs *engine;
@@ -105,20 +110,21 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 	enabled = 0;
 	disabled = 0;
 	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
+		struct i915_sched *se = intel_engine_get_scheduler(engine);
 		int i;
 
-		if (intel_engine_has_scheduler(engine))
-			enabled |= (I915_SCHEDULER_CAP_ENABLED |
-				    I915_SCHEDULER_CAP_PRIORITY);
-		else
-			disabled |= (I915_SCHEDULER_CAP_ENABLED |
-				     I915_SCHEDULER_CAP_PRIORITY);
-
-		for (i = 0; i < ARRAY_SIZE(map); i++) {
-			if (engine->flags & BIT(map[i].engine))
-				enabled |= BIT(map[i].sched);
+		for (i = 0; i < ARRAY_SIZE(engine_map); i++) {
+			if (engine->flags & BIT(engine_map[i].flag))
+				enabled |= BIT(engine_map[i].cap);
 			else
-				disabled |= BIT(map[i].sched);
+				disabled |= BIT(engine_map[i].cap);
+		}
+
+		for (i = 0; i < ARRAY_SIZE(sched_map); i++) {
+			if (se->flags & BIT(sched_map[i].flag))
+				enabled |= BIT(sched_map[i].cap);
+			else
+				disabled |= BIT(sched_map[i].cap);
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e51112302fb8..0f2c3c62cac9 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2891,7 +2891,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	intel_engine_set_irq_handler(engine, execlists_irq_handler);
 
-	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
@@ -2960,6 +2959,8 @@ static void init_execlists(struct intel_engine_cs *engine)
 	engine->sched.show = execlists_show;
 	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
 
+	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_PRIORITY);
+
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
@@ -3370,6 +3371,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			       unsigned int count)
 {
 	struct virtual_engine *ve;
+	unsigned long sched;
 	unsigned int n;
 	int err;
 
@@ -3428,6 +3430,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		goto err_put;
 	}
 
+	sched = ~0U;
 	for (n = 0; n < count; n++) {
 		struct intel_engine_cs *sibling = siblings[n];
 
@@ -3457,6 +3460,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 		ve->siblings[ve->num_siblings++] = sibling;
 		ve->base.mask |= sibling->mask;
+		sched &= sibling->sched.flags;
 
 		/*
 		 * All physical engines must be compatible for their emission
@@ -3498,6 +3502,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			ve->base.name,
 			ve->base.mask,
 			ENGINE_VIRTUAL);
+	ve->base.sched.flags = sched;
 
 	ve->base.sched.submit_request = virtual_submit_request;
 	ve->base.sched.revoke_context = execlists_revoke_context;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 990cb4adbb9a..fbcebc7b4d77 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -819,8 +819,12 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
 		__intel_gt_reset(gt, ALL_ENGINES);
 
-	for_each_engine(engine, gt, id)
-		engine->sched.submit_request = nop_submit_request;
+	for_each_engine(engine, gt, id) {
+		struct i915_sched *se = intel_engine_get_scheduler(engine);
+
+		i915_sched_disable(se);
+		se->submit_request = nop_submit_request;
+	}
 
 	/*
 	 * Make sure no request can slip through without getting completed by
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c66c867ada23..d14b9db77df8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -592,7 +592,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	engine->set_default_submission = guc_set_default_submission;
 
-	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 
 	/*
@@ -643,6 +642,8 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 
 	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
 
+	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_PRIORITY);
+
 	guc_default_vfuncs(engine);
 	guc_default_irqs(engine);
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index dd10a6db3d21..dde868e9ee5f 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -594,6 +594,7 @@ static inline void i915_request_clear_hold(struct i915_request *rq)
 static inline struct i915_sched *
 i915_request_get_scheduler(const struct i915_request *rq)
 {
+	/* Is there an active scheduler for this request? */
 	return intel_engine_get_scheduler(rq->engine);
 }
 
@@ -626,7 +627,7 @@ i915_request_active_timeline(const struct i915_request *rq)
 
 static inline bool i915_request_use_scheduler(const struct i915_request *rq)
 {
-	return intel_engine_has_scheduler(rq->engine);
+	return i915_sched_is_active(i915_request_get_scheduler(rq));
 }
 
 static inline bool i915_request_is_executing(const struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 7855601a4958..a42d8b5bf1f9 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -154,6 +154,20 @@ i915_sched_default_revoke_context(struct intel_context *ce,
 				      "context revoked from %s", force);
 }
 
+void i915_sched_select_mode(struct i915_sched *se, enum i915_sched_mode mode)
+{
+	switch (mode) {
+	case I915_SCHED_MODE_PRIORITY:
+		__set_bit(I915_SCHED_PRIORITY_BIT, &se->flags);
+		fallthrough;
+	case I915_SCHED_MODE_FIFO:
+		__set_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
+		fallthrough;
+	case I915_SCHED_MODE_NONE:
+		break;
+	}
+}
+
 void i915_sched_init(struct i915_sched *se,
 		     struct device *dev,
 		     const char *name,
@@ -534,7 +548,7 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	if (__i915_request_is_complete(rq))
 		goto unlock;
 
-	if (!intel_engine_has_scheduler(engine)) {
+	if (!i915_sched_has_priorities(&engine->sched)) {
 		rq->sched.attr.priority = prio;
 		goto unlock;
 	}
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index a12083721c84..fe392109b112 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -49,6 +49,7 @@ void i915_sched_init(struct i915_sched *se,
 		     const char *name,
 		     unsigned long mask,
 		     unsigned int subclass);
+void i915_sched_select_mode(struct i915_sched *se, enum i915_sched_mode mode);
 void i915_sched_park(struct i915_sched *se);
 void i915_sched_fini(struct i915_sched *se);
 
@@ -73,6 +74,23 @@ void i915_sched_resume_request(struct intel_engine_cs *engine,
 
 void __i915_sched_cancel_queue(struct i915_sched *se);
 
+/*
+ * Control whether the scheduler accepts any more requests. While
+ * disabled all incoming [ready] requests will be dropped and marked
+ * as completed in error (-EIO).
+ * Typically used when the device fails to recover from a GPU hang
+ * and declared wedged.
+ */
+static inline void i915_sched_enable(struct i915_sched *se)
+{
+	set_bit(I915_SCHED_ENABLE_BIT, &se->flags);
+}
+
+static inline void i915_sched_disable(struct i915_sched *se)
+{
+	clear_bit(I915_SCHED_ENABLE_BIT, &se->flags);
+}
+
 void __i915_priolist_free(struct i915_priolist *p);
 static inline void i915_priolist_free(struct i915_priolist *p)
 {
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 84232a07163f..2cb46b2e1ac8 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -17,6 +17,38 @@ struct drm_printer;
 struct i915_request;
 struct intel_context;
 
+enum {
+	I915_SCHED_ENABLE_BIT = 0,
+	I915_SCHED_ACTIVE_BIT, /* can reorder the request flow */
+	I915_SCHED_PRIORITY_BIT, /* priority sorting of queue */
+};
+
+/**
+ * enum i915_sched_mode - how the scheduler may reorder requests
+ *
+ * The foundational principle of scheduling is that it controls the order
+ * of execution of tasks within the system. Given a set of ready requests,
+ * we may choose not to reorder them [FIFO] or submit them in a priority
+ * order. The basic ordering is by user assigned priority [PRIORITY], the
+ * highest priority requests are executed first. A revision of that is
+ * to execute them in order of a virtual deadline, which is a fair, budget
+ * conserving exection order [DEADLINE]. In both PRIORITY and DEADLINE, we
+ * have to consider priority inversion that may arise when higher priority
+ * work depends on low priority work, and so we track the work dependencies
+ * and when we need to execute higher priority work, we raise the priority
+ * of all of its dependecies so that it is not block.
+ *
+ * With no active scheduler [NONE], the execution order is fixed by order of
+ * submission, due to ordering via a global resource such as the legacy
+ * shared ringbuffer. Since we cannot reorder the requests at all, we
+ * mark this as an inactive scheduler, and do not track any dependencies.
+ */
+enum i915_sched_mode {
+	I915_SCHED_MODE_NONE = -1, /* inactive, no bubble prevention */
+	I915_SCHED_MODE_FIFO, /* pass-through of ready, first in first out */
+	I915_SCHED_MODE_PRIORITY, /* reorder strictly by priority */
+};
+
 /**
  * struct i915_sched - funnels requests towards hardware
  *
@@ -28,6 +60,7 @@ struct intel_context;
 struct i915_sched {
 	spinlock_t lock; /* protects the scheduling lists and queue */
 
+	unsigned long flags;
 	unsigned long mask; /* available scheduling channels */
 
 	/*
@@ -197,4 +230,14 @@ struct i915_dependency {
 				&(rq__)->sched.signalers_list, \
 				signal_link)
 
+static inline bool i915_sched_is_active(const struct i915_sched *se)
+{
+	return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
+}
+
+static inline bool i915_sched_has_priorities(const struct i915_sched *se)
+{
+	return test_bit(I915_SCHED_PRIORITY_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
