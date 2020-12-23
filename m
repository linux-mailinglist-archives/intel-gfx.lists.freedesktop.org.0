Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7F92E1BA9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083B26E928;
	Wed, 23 Dec 2020 11:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A24F56E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412183-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:10:31 +0000
Message-Id: <20201223111126.3338-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/62] drm/i915/gt: Resubmit the virtual engine
 on schedule-out
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

Having recognised that we do not change the sibling until we schedule
out, we can then defer the decision to resubmit the virtual engine from
the unwind of the active queue to scheduling out of the virtual context.
This improves our resilence in virtual engine scheduling, and should
eliminate the rare cases of gem_exec_balance failing.

By keeping the unwind order intact on the local engine, we can preserve
data dependency ordering while doing a preempt-to-busy pass until we
have determined the new ELSP. This means that if we try to timeslice
between a virtual engine and a data-dependent ordinary request, the pair
will maintain their relative ordering and we will avoid the
resubmission, cancelling the timeslicing until further change.

The dilemma though is that we then may end up in a situation where the
'demotion' of the virtual request to an ordinary request in the engine
queue results in filling the ELSP[] with virtual requests instead of
spreading the load across the engines. To compensate for this, we mark
each virtual request and refuse to resubmit a virtual request in the
secondary ELSP slots, thus forcing subsequent virtual requests to be
scheduled out after timeslicing. By delaying the decision until we
schedule out, we will avoid unnecessary resubmission.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2079
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2098
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 126 +++++++++++-------
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   2 +-
 2 files changed, 79 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index ba8229c0c75a..2d7a1440c31a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -388,38 +388,23 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 
 		__i915_request_unsubmit(rq);
 
-		/*
-		 * Push the request back into the queue for later resubmission.
-		 * If this request is not native to this physical engine (i.e.
-		 * it came from a virtual source), push it back onto the virtual
-		 * engine so that it can be moved across onto another physical
-		 * engine as load dictates.
-		 */
-		if (likely(rq->execution_mask == engine->mask)) {
-			GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
-			if (rq_prio(rq) != prio) {
-				prio = rq_prio(rq);
-				pl = i915_sched_lookup_priolist(engine, prio);
-			}
-			GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
+		if (rq_prio(rq) != prio) {
+			prio = rq_prio(rq);
+			pl = i915_sched_lookup_priolist(engine, prio);
+		}
+		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
-			list_move(&rq->sched.link, pl);
-			set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_move(&rq->sched.link, pl);
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
-			/* Check in case we rollback so far we wrap [size/2] */
-			if (intel_ring_direction(rq->ring,
-						 rq->tail,
-						 rq->ring->tail + 8) > 0)
-				rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
+		/* Check in case we rollback so far we wrap [size/2] */
+		if (intel_ring_direction(rq->ring,
+					 rq->tail,
+					 rq->ring->tail + 8) > 0)
+			rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
 
-			active = rq;
-		} else {
-			struct intel_engine_cs *owner = rq->context->engine;
-
-			WRITE_ONCE(rq->engine, owner);
-			owner->submit_request(rq);
-			active = NULL;
-		}
+		active = rq;
 	}
 
 	return active;
@@ -578,9 +563,9 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
 }
 
-static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
+static void
+resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 {
-	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	struct intel_engine_cs *engine = rq->engine;
 
 	/* Flush concurrent rcu iterators in signal_irq_work */
@@ -598,6 +583,30 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 			cpu_relax();
 	}
 
+	spin_lock_irq(&engine->active.lock);
+
+	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+	WRITE_ONCE(rq->engine, &ve->base);
+	ve->base.submit_request(rq);
+
+	spin_unlock_irq(&engine->active.lock);
+}
+
+static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
+{
+	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
+	struct intel_engine_cs *engine = rq->engine;
+
+	/*
+	 * This engine is now too busy to run this virtual request, so
+	 * see if we can find an alternative engine for it to execute on.
+	 * Once a request has become bonded to this engine, we treat it the
+	 * same as other native request.
+	 */
+	if (i915_request_in_priority_queue(rq) &&
+	    rq->execution_mask != engine->mask)
+		resubmit_virtual_request(rq, ve);
+
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
 }
@@ -843,6 +852,20 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		}
 		sentinel = i915_request_has_sentinel(rq);
 
+		/*
+		 * We want virtual requests to only be in the first slot so
+		 * that they are never stuck behind a hog and can be immediately
+		 * transferred onto the next idle engine.
+		 */
+		if (rq->execution_mask != engine->mask &&
+		    port != execlists->pending) {
+			GEM_TRACE_ERR("%s: virtual engine:%llx not in prime position[%zd]\n",
+				      engine->name,
+				      ce->timeline->fence_context,
+				      port - execlists->pending);
+			return false;
+		}
+
 		/* Hold tightly onto the lock to prevent concurrent retires! */
 		if (!spin_trylock_irqsave(&rq->lock, flags))
 			continue;
@@ -1502,6 +1525,15 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				if (i915_request_has_sentinel(last))
 					goto done;
 
+				/*
+				 * We avoid submitting virtual requests into
+				 * the secondary ports so that we can migrate
+				 * the request immediately to another engine
+				 * rather than wait for the primary request.
+				 */
+				if (rq->execution_mask != engine->mask)
+					goto done;
+
 				/*
 				 * If GVT overrides us we only ever submit
 				 * port[0], leaving port[1] empty. Note that we
@@ -3562,7 +3594,6 @@ static void virtual_submission_tasklet(unsigned long data)
 static void virtual_submit_request(struct i915_request *rq)
 {
 	struct virtual_engine *ve = to_virtual_engine(rq->engine);
-	struct i915_request *old;
 	unsigned long flags;
 
 	ENGINE_TRACE(&ve->base, "rq=%llx:%lld\n",
@@ -3573,28 +3604,27 @@ static void virtual_submit_request(struct i915_request *rq)
 
 	spin_lock_irqsave(&ve->base.active.lock, flags);
 
-	old = ve->request;
-	if (old) { /* background completion event from preempt-to-busy */
-		GEM_BUG_ON(!__i915_request_is_complete(old));
-		__i915_request_submit(old);
-		i915_request_put(old);
-	}
-
+	/* By the time we resubmit a request, it may be completed */
 	if (__i915_request_is_complete(rq)) {
 		__i915_request_submit(rq);
+		goto unlock;
+	}
 
-		ve->base.execlists.queue_priority_hint = INT_MIN;
-		ve->request = NULL;
-	} else {
-		ve->base.execlists.queue_priority_hint = rq_prio(rq);
-		ve->request = i915_request_get(rq);
+	if (ve->request) { /* background completion from preempt-to-busy */
+		GEM_BUG_ON(!i915_request_completed(ve->request));
+		__i915_request_submit(ve->request);
+		i915_request_put(ve->request);
+	}
 
-		GEM_BUG_ON(!list_empty(virtual_queue(ve)));
-		list_move_tail(&rq->sched.link, virtual_queue(ve));
+	ve->base.execlists.queue_priority_hint = rq_prio(rq);
+	ve->request = i915_request_get(rq);
 
-		tasklet_hi_schedule(&ve->base.execlists.tasklet);
-	}
+	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
+	list_move_tail(&rq->sched.link, virtual_queue(ve));
+
+	tasklet_hi_schedule(&ve->base.execlists.tasklet);
 
+unlock:
 	spin_unlock_irqrestore(&ve->base.active.lock, flags);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 47b12ce4b132..080b63000a4e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4566,7 +4566,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	spin_lock_irq(&engine->active.lock);
 	__unwind_incomplete_requests(engine);
 	spin_unlock_irq(&engine->active.lock);
-	GEM_BUG_ON(rq->engine != ve->engine);
+	GEM_BUG_ON(rq->engine != engine);
 
 	/* Reset the engine while keeping our active request on hold */
 	execlists_hold(engine, rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
