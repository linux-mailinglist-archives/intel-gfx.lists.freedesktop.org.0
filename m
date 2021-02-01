Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E5330A3DB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF706E528;
	Mon,  1 Feb 2021 08:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E646E508
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757742-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:47 +0000
Message-Id: <20210201085715.27435-29-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/57] drm/i915: Move scheduler flags
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
own existence.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 21 +++++++------------
 .../drm/i915/gt/intel_execlists_submission.c  |  6 +++++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         |  2 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 10 +++++++++
 7 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index c530839627bb..4f0163457aed 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -261,6 +261,12 @@ intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.heartbeat_interval_ms);
 }
 
+static inline bool
+intel_engine_has_scheduler(struct intel_engine_cs *engine)
+{
+	return i915_sched_is_active(intel_engine_get_scheduler(engine));
+}
+
 static inline void
 intel_engine_kick_scheduler(struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 6b0bde292916..a3024a0de1de 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -440,14 +440,13 @@ struct intel_engine_cs {
 
 #define I915_ENGINE_USING_CMD_PARSER BIT(0)
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
-#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
-#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
-#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
-#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(6)
-#define I915_ENGINE_IS_VIRTUAL       BIT(7)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(8)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(9)
+#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
+#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
+#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
+#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
+#define I915_ENGINE_IS_VIRTUAL       BIT(6)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
 	unsigned int flags;
 
 	/*
@@ -530,12 +529,6 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
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
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index b1007e560527..3217cb4369ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2913,7 +2913,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		 */
 	}
 
-	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
@@ -2981,6 +2980,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	engine->sched.is_executing = execlists_is_executing;
 	engine->sched.show = execlists_show;
 	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
+	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
@@ -3386,6 +3386,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			       unsigned int count)
 {
 	struct virtual_engine *ve;
+	unsigned long sched;
 	unsigned int n;
 	int err;
 
@@ -3444,6 +3445,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		goto err_put;
 	}
 
+	sched = ~0U;
 	for (n = 0; n < count; n++) {
 		struct intel_engine_cs *sibling = siblings[n];
 
@@ -3473,6 +3475,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 		ve->siblings[ve->num_siblings++] = sibling;
 		ve->base.mask |= sibling->mask;
+		sched &= sibling->sched.flags;
 
 		/*
 		 * All physical engines must be compatible for their emission
@@ -3514,6 +3517,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			ve->base.name,
 			ve->base.mask,
 			ENGINE_VIRTUAL);
+	ve->base.sched.flags = sched;
 
 	ve->base.sched.submit_request = virtual_submit_request;
 	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index db6ac5a12834..887f38fb671f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -606,7 +606,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	engine->set_default_submission = guc_set_default_submission;
 
-	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 
@@ -656,6 +655,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 	GEM_BUG_ON(INTEL_GEN(i915) < 11);
 
 	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
+	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
 
 	guc_default_vfuncs(engine);
 	guc_default_irqs(engine);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 8d9e59e3cdcb..8eea25cb043e 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -626,7 +626,7 @@ i915_request_active_timeline(const struct i915_request *rq)
 
 static inline bool i915_request_use_scheduler(const struct i915_request *rq)
 {
-	return intel_engine_has_scheduler(rq->engine);
+	return i915_sched_is_active(i915_request_get_scheduler(rq));
 }
 
 static inline bool i915_request_is_executing(const struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index af3a12d6f6d2..48336434bff3 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -550,7 +550,7 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	if (__i915_request_is_complete(rq))
 		goto unlock;
 
-	if (!intel_engine_has_scheduler(engine)) {
+	if (!i915_sched_is_active(&engine->sched)) {
 		rq->sched.attr.priority = prio;
 		goto unlock;
 	}
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 685280d61581..cb1eddb7edc8 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -16,6 +16,10 @@
 struct drm_printer;
 struct i915_request;
 
+enum {
+	I915_SCHED_ACTIVE_BIT = 0,
+};
+
 /**
  * struct i915_sched - funnels requests towards hardware
  *
@@ -27,6 +31,7 @@ struct i915_request;
 struct i915_sched {
 	spinlock_t lock; /* protects the scheduling lists and queue */
 
+	unsigned long flags;
 	unsigned long mask; /* available scheduling channels */
 
 	/*
@@ -174,4 +179,9 @@ struct i915_dependency {
 				&(rq__)->sched.signalers_list, \
 				signal_link)
 
+static inline bool i915_sched_is_active(const struct i915_sched *se)
+{
+	return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
