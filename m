Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C82C30A3BB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC126E511;
	Mon,  1 Feb 2021 08:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A8F6E48B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757747-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:50 +0000
Message-Id: <20210201085715.27435-32-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/57] drm/i915: Move needs-breadcrumb flags to
 scheduler
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

Whether the scheduler depends on interrupt delivery for forward progress
is a property of the scheduler backend not of the underlying engine, so
move the flag from inside the engine to i915_sched_engine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h            |  6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 13 +++----------
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h       |  7 +++++++
 4 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index ca3a9cb06328..db5419ba1dc8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -285,4 +285,10 @@ intel_engine_has_timeslices(struct intel_engine_cs *engine)
 	return i915_sched_has_timeslices(intel_engine_get_scheduler(engine));
 }
 
+static inline bool
+intel_engine_needs_breadcrumb_tasklet(struct intel_engine_cs *engine)
+{
+	return i915_sched_needs_breadcrumb_tasklet(intel_engine_get_scheduler(engine));
+}
+
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 96a0aec29672..f856bd9b7dae 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -442,10 +442,9 @@ struct intel_engine_cs {
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
 #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
 #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
-#define I915_ENGINE_IS_VIRTUAL       BIT(5)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
+#define I915_ENGINE_IS_VIRTUAL       BIT(4)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(5)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(6)
 	unsigned int flags;
 
 	/*
@@ -540,12 +539,6 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
 }
 
-static inline bool
-intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
-{
-	return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
-}
-
 static inline bool
 intel_engine_is_virtual(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 887f38fb671f..e8c66d868c59 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -606,7 +606,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	engine->set_default_submission = guc_set_default_submission;
 
-	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 
 	/*
@@ -656,6 +655,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 
 	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
 	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
+	__set_bit(I915_SCHED_NEEDS_BREADCRUMB_BIT, &engine->sched.flags);
 
 	guc_default_vfuncs(engine);
 	guc_default_irqs(engine);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index dfb29b8c2bee..b4a0e4e26bfd 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -20,6 +20,7 @@ struct i915_request;
 enum {
 	I915_SCHED_ACTIVE_BIT = 0,
 	I915_SCHED_HAS_TIMESLICES_BIT,
+	I915_SCHED_NEEDS_BREADCRUMB_BIT,
 };
 
 /**
@@ -194,4 +195,10 @@ static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
 	return test_bit(I915_SCHED_HAS_TIMESLICES_BIT, &se->flags);
 }
 
+static inline bool
+i915_sched_needs_breadcrumb_tasklet(const struct i915_sched *se)
+{
+	return test_bit(I915_SCHED_NEEDS_BREADCRUMB_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
