Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0623025F9
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF8A6E1B7;
	Mon, 25 Jan 2021 14:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A226E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693633-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:07 +0000
Message-Id: <20210125140136.10494-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/41] drm/i915: Extract request rewinding from
 execlists
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

In the process of preparing to reuse the request submission logic for
other backends, lift it out of the execlists backend.

While this operates on the common structs, we do have a bit of backend
knowledge, which is harmless for !lrc but still unsightly.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  3 -
 .../drm/i915/gt/intel_execlists_submission.c  | 58 ++-----------------
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |  3 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  3 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 44 ++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |  3 +
 7 files changed, 56 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 47ee8578e511..20974415e7d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -136,9 +136,6 @@ execlists_active_unlock_bh(struct intel_engine_execlists *execlists)
 	local_bh_enable(); /* restore softirq, and kick ksoftirqd! */
 }
 
-struct i915_request *
-execlists_unwind_incomplete_requests(struct intel_engine_execlists *execlists);
-
 static inline u32
 intel_read_status_page(const struct intel_engine_cs *engine, int reg)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e6acdd8dc361..f7d383dd5144 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -359,56 +359,6 @@ assert_priority_queue(const struct i915_request *prev,
 	return rq_prio(prev) >= rq_prio(next);
 }
 
-static struct i915_request *
-__unwind_incomplete_requests(struct intel_engine_cs *engine)
-{
-	struct i915_request *rq, *rn, *active = NULL;
-	struct list_head *pl;
-	int prio = I915_PRIORITY_INVALID;
-
-	lockdep_assert_held(&engine->active.lock);
-
-	list_for_each_entry_safe_reverse(rq, rn,
-					 &engine->active.requests,
-					 sched.link) {
-		if (__i915_request_is_complete(rq)) {
-			list_del_init(&rq->sched.link);
-			continue;
-		}
-
-		__i915_request_unsubmit(rq);
-
-		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
-		if (rq_prio(rq) != prio) {
-			prio = rq_prio(rq);
-			pl = i915_sched_lookup_priolist(engine, prio);
-		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
-
-		list_move(&rq->sched.link, pl);
-		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-
-		/* Check in case we rollback so far we wrap [size/2] */
-		if (intel_ring_direction(rq->ring,
-					 rq->tail,
-					 rq->ring->tail + 8) > 0)
-			rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
-
-		active = rq;
-	}
-
-	return active;
-}
-
-struct i915_request *
-execlists_unwind_incomplete_requests(struct intel_engine_execlists *execlists)
-{
-	struct intel_engine_cs *engine =
-		container_of(execlists, typeof(*engine), execlists);
-
-	return __unwind_incomplete_requests(engine);
-}
-
 static void
 execlists_context_status_change(struct i915_request *rq, unsigned long status)
 {
@@ -1080,7 +1030,7 @@ static void defer_active(struct intel_engine_cs *engine)
 {
 	struct i915_request *rq;
 
-	rq = __unwind_incomplete_requests(engine);
+	rq = __intel_engine_rewind_requests(engine);
 	if (!rq)
 		return;
 
@@ -1292,7 +1242,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * the preemption, some of the unwound requests may
 			 * complete!
 			 */
-			__unwind_incomplete_requests(engine);
+			__intel_engine_rewind_requests(engine);
 
 			last = NULL;
 		} else if (timeslice_expired(engine, last)) {
@@ -2279,7 +2229,7 @@ static void execlists_capture(struct intel_engine_cs *engine)
 	 * which we return it to the queue for signaling.
 	 *
 	 * By removing them from the execlists queue, we also remove the
-	 * requests from being processed by __unwind_incomplete_requests()
+	 * requests from being processed by __intel_engine_rewind_requests()
 	 * during the intel_engine_reset(), and so they will *not* be replayed
 	 * afterwards.
 	 *
@@ -2869,7 +2819,7 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	/* Push back any incomplete requests for replay after the reset. */
 	rcu_read_lock();
 	spin_lock_irqsave(&engine->active.lock, flags);
-	__unwind_incomplete_requests(engine);
+	__intel_engine_rewind_requests(engine);
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 	rcu_read_unlock();
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index 41e5350a7a05..364656bedec7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -92,4 +92,7 @@
 /* in Gen12 ID 0x7FF is reserved to indicate idle */
 #define GEN12_MAX_CONTEXT_HW_ID	(GEN11_MAX_CONTEXT_HW_ID - 1)
 
+#define CTX_DESC_RELOAD_PD BIT_ULL(1)
+#define CTX_DESC_FORCE_RESTORE BIT_ULL(2)
+
 #endif /* _INTEL_LRC_REG_H_ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index acb7c089d05b..84017eb9dd8b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4582,7 +4582,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 
 	/* Fake a preemption event; failed of course */
 	spin_lock_irq(&engine->active.lock);
-	__unwind_incomplete_requests(engine);
+	__intel_engine_rewind_requests(engine);
 	spin_unlock_irq(&engine->active.lock);
 	GEM_BUG_ON(rq->engine != engine);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 4f1eee4fbfb2..56ec738a9ce7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -305,14 +305,13 @@ static void guc_reset_state(struct intel_context *ce,
 
 static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request *rq;
 	unsigned long flags;
 
 	spin_lock_irqsave(&engine->active.lock, flags);
 
 	/* Push back any incomplete requests for replay after the reset. */
-	rq = execlists_unwind_incomplete_requests(execlists);
+	rq = __intel_engine_rewind_requests(engine);
 	if (!rq)
 		goto out_unlock;
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 3f5fc03908dc..bd687c891ab6 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -6,6 +6,9 @@
 
 #include <linux/mutex.h>
 
+#include "gt/intel_ring.h"
+#include "gt/intel_lrc_reg.h"
+
 #include "i915_drv.h"
 #include "i915_globals.h"
 #include "i915_request.h"
@@ -530,6 +533,47 @@ void i915_request_enqueue(struct i915_request *rq)
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 }
 
+struct i915_request *
+__intel_engine_rewind_requests(struct intel_engine_cs *engine)
+{
+	struct i915_request *rq, *rn, *active = NULL;
+	struct list_head *pl;
+	int prio = I915_PRIORITY_INVALID;
+
+	lockdep_assert_held(&engine->active.lock);
+
+	list_for_each_entry_safe_reverse(rq, rn,
+					 &engine->active.requests,
+					 sched.link) {
+		if (__i915_request_is_complete(rq)) {
+			list_del_init(&rq->sched.link);
+			continue;
+		}
+
+		__i915_request_unsubmit(rq);
+
+		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
+		if (rq_prio(rq) != prio) {
+			prio = rq_prio(rq);
+			pl = i915_sched_lookup_priolist(engine, prio);
+		}
+		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+
+		list_move(&rq->sched.link, pl);
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+
+		/* Check in case we rollback so far we wrap [size/2] */
+		if (intel_ring_direction(rq->ring,
+					 rq->tail,
+					 rq->ring->tail + 8) > 0)
+			rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
+
+		active = rq;
+	}
+
+	return active;
+}
+
 void i915_sched_node_init(struct i915_sched_node *node)
 {
 	spin_lock_init(&node->lock);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index c4c086d56f81..50fdc7168d38 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -41,6 +41,9 @@ void i915_request_set_priority(struct i915_request *request, int prio);
 
 void i915_request_enqueue(struct i915_request *request);
 
+struct i915_request *
+__intel_engine_rewind_requests(struct intel_engine_cs *engine);
+
 struct list_head *
 i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
