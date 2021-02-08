Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E143C312F8E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962656E87C;
	Mon,  8 Feb 2021 10:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BED6E866
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809211-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:09 +0000
Message-Id: <20210208105236.28498-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/31] drm/i915: Move timeslicing flag to
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

Whether a scheduler chooses to implement timeslicing is up to it, and
not an underlying property of the HW engine. The scheduler does depend
on the HW supporting preemption.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h           |  6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h     | 16 +++-------------
 .../gpu/drm/i915/gt/intel_execlists_submission.c |  8 +++++---
 drivers/gpu/drm/i915/gt/selftest_execlists.c     |  2 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h      | 10 ++++++++++
 5 files changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 875fde52bcb6..5d3bcbfe8f6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -280,4 +280,10 @@ intel_engine_flush_scheduler(struct intel_engine_cs *engine)
 	i915_sched_flush(intel_engine_get_scheduler(engine));
 }
 
+static inline bool
+intel_engine_has_timeslices(struct intel_engine_cs *engine)
+{
+	return i915_sched_has_timeslices(intel_engine_get_scheduler(engine));
+}
+
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index ce5732099815..08bddc5263aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -444,10 +444,9 @@ struct intel_engine_cs {
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
 #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
 #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
-#define I915_ENGINE_IS_VIRTUAL       BIT(5)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
+#define I915_ENGINE_IS_VIRTUAL       BIT(4)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(5)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(6)
 	unsigned int flags;
 
 	/*
@@ -542,15 +541,6 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
 }
 
-static inline bool
-intel_engine_has_timeslices(const struct intel_engine_cs *engine)
-{
-	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
-		return false;
-
-	return engine->flags & I915_ENGINE_HAS_TIMESLICES;
-}
-
 static inline bool
 intel_engine_is_virtual(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0f2c3c62cac9..aa1816d28def 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1025,7 +1025,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 {
 	const struct i915_sched *se = &engine->sched;
 
-	if (!intel_engine_has_timeslices(engine))
+	if (!i915_sched_has_timeslices(se))
 		return false;
 
 	/* If not currently active, or about to switch, wait for next event */
@@ -2896,8 +2896,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
 		if (can_preempt(engine)) {
 			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
-			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
-				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 		}
 	}
 
@@ -2961,6 +2959,10 @@ static void init_execlists(struct intel_engine_cs *engine)
 
 	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_PRIORITY);
 
+	if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION) &&
+	    intel_engine_has_preemption(engine))
+		__set_bit(I915_SCHED_TIMESLICE_BIT, &engine->sched.flags);
+
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 04ded3a2d491..be99fbd7cfab 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -3809,7 +3809,7 @@ static unsigned int
 __select_siblings(struct intel_gt *gt,
 		  unsigned int class,
 		  struct intel_engine_cs **siblings,
-		  bool (*filter)(const struct intel_engine_cs *))
+		  bool (*filter)(struct intel_engine_cs *))
 {
 	unsigned int n = 0;
 	unsigned int inst;
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 2cb46b2e1ac8..3c94378def52 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -12,6 +12,7 @@
 #include <linux/workqueue.h>
 
 #include "i915_priolist_types.h"
+#include "i915_utils.h"
 
 struct drm_printer;
 struct i915_request;
@@ -21,6 +22,7 @@ enum {
 	I915_SCHED_ENABLE_BIT = 0,
 	I915_SCHED_ACTIVE_BIT, /* can reorder the request flow */
 	I915_SCHED_PRIORITY_BIT, /* priority sorting of queue */
+	I915_SCHED_TIMESLICE_BIT, /* multitasking for long workloads */
 };
 
 /**
@@ -240,4 +242,12 @@ static inline bool i915_sched_has_priorities(const struct i915_sched *se)
 	return test_bit(I915_SCHED_PRIORITY_BIT, &se->flags);
 }
 
+static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
+{
+	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+		return false;
+
+	return test_bit(I915_SCHED_TIMESLICE_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
