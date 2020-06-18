Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4211FEF39
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DFD6EB46;
	Thu, 18 Jun 2020 10:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17EE36EB39
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 10:04:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21535916-1500050 
 for multiple; Thu, 18 Jun 2020 11:04:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:03:56 +0100
Message-Id: <20200618100356.15744-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/gt: Resubmit the virtual engine
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 118 ++++++++++++++++---------
 drivers/gpu/drm/i915/gt/selftest_lrc.c |   2 +-
 2 files changed, 75 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8d3a6d995c45..b67977424d80 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1120,53 +1120,23 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 
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
-
-			list_move(&rq->sched.link, pl);
-			set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
+		if (rq_prio(rq) != prio) {
+			prio = rq_prio(rq);
+			pl = i915_sched_lookup_priolist(engine, prio);
+		}
+		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
-			/* Check in case we rollback so far we wrap [size/2] */
-			if (intel_ring_direction(rq->ring,
-						 intel_ring_wrap(rq->ring,
-								 rq->tail),
-						 rq->ring->tail) > 0)
-				rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
+		list_move(&rq->sched.link, pl);
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
-			active = rq;
-		} else {
-			struct intel_engine_cs *owner = rq->context->engine;
+		/* Check in case we rollback so far we wrap [size/2] */
+		if (intel_ring_direction(rq->ring,
+					 intel_ring_wrap(rq->ring, rq->tail),
+					 rq->ring->tail) > 0)
+			rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
 
-			/*
-			 * Decouple the virtual breadcrumb before moving it
-			 * back to the virtual engine -- we don't want the
-			 * request to complete in the background and try
-			 * and cancel the breadcrumb on the virtual engine
-			 * (instead of the old engine where it is linked)!
-			 */
-			if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
-				     &rq->fence.flags)) {
-				spin_lock_nested(&rq->lock,
-						 SINGLE_DEPTH_NESTING);
-				i915_request_cancel_breadcrumb(rq);
-				spin_unlock(&rq->lock);
-			}
-			WRITE_ONCE(rq->engine, owner);
-			owner->submit_request(rq);
-			active = NULL;
-		}
+		active = rq;
 	}
 
 	return active;
@@ -1376,12 +1346,49 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	return i915_request_get(rq);
 }
 
+static void
+resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	unsigned long flags;
+
+	spin_lock_irqsave(&engine->active.lock, flags);
+
+	/*
+	 * Decouple the virtual breadcrumb before moving it back to the virtual
+	 * engine -- we don't want the request to complete in the background
+	 * and then try and cancel the breadcrumb on the virtual engine
+	 * (instead of the old engine where it is linked)!
+	 */
+	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags)) {
+		spin_lock_nested(&rq->lock, SINGLE_DEPTH_NESTING);
+		i915_request_cancel_breadcrumb(rq);
+		spin_unlock(&rq->lock);
+	}
+
+	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+	WRITE_ONCE(rq->engine, &ve->base);
+	ve->base.submit_request(rq);
+
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+}
+
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
+
+	/*
+	 * This engine is now too busy to run this virtual request, so
+	 * see if we can find an alternative engine for it to execute on.
+	 * Once a request has become bonded to this engine, we treat it the
+	 * same as other native request.
+	 */
+	if (i915_request_in_priority_queue(rq) &&
+	    rq->execution_mask != rq->engine->mask)
+		resubmit_virtual_request(rq, ve);
 }
 
 static inline void __execlists_schedule_out(struct i915_request *rq)
@@ -1621,6 +1628,20 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
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
@@ -2319,6 +2340,15 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index daa4aabab9a7..0178524818ba 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4587,7 +4587,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
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
