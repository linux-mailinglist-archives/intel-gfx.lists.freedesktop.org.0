Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1961DACB6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 09:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E756E5C5;
	Wed, 20 May 2020 07:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E7B389F2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 07:55:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236596-1500050 
 for multiple; Wed, 20 May 2020 08:55:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 08:55:03 +0100
Message-Id: <20200520075503.10388-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/22] drm/i915: Micro-optimise
 i915_request_completed()
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

This is primarily focused on reducing the number of lockdep checks we
endure in CI, as each i915_request_completed() takes the rcu_read_lock()
and we use i915_request_completed() very, very frequently.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 11 +++-------
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 20 +++++++++----------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  4 ++--
 drivers/gpu/drm/i915/i915_request.c           | 10 +++++-----
 drivers/gpu/drm/i915/i915_request.h           |  5 +++++
 6 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d907d538176e..39335d5ceb5d 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -82,11 +82,6 @@ void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
-static inline bool __request_completed(const struct i915_request *rq)
-{
-	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
-}
-
 __maybe_unused static bool
 check_signal_order(struct intel_context *ce, struct i915_request *rq)
 {
@@ -177,7 +172,7 @@ static void signal_irq_work(struct irq_work *work)
 				list_entry(pos, typeof(*rq), signal_link);
 
 			GEM_BUG_ON(!check_signal_order(ce, rq));
-			if (!__request_completed(rq))
+			if (!__i915_request_completed(rq))
 				break;
 
 			/*
@@ -293,7 +288,7 @@ void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
 		/* Queue for executing the signal callbacks in the irq_work */
 		list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
 			GEM_BUG_ON(rq->engine != engine);
-			GEM_BUG_ON(!__request_completed(rq));
+			GEM_BUG_ON(!__i915_request_completed(rq));
 
 			__signal_request(rq, &b->signaled_requests);
 		}
@@ -356,7 +351,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 		spin_unlock(&b->irq_lock);
 	}
 
-	return !__request_completed(rq);
+	return !__i915_request_completed(rq);
 }
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f85a2be92dc6..80a4369b4ba9 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -374,7 +374,7 @@ active_request(const struct intel_timeline * const tl, struct i915_request *rq)
 
 	rcu_read_lock();
 	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
-		if (i915_request_completed(rq))
+		if (__i915_request_completed(rq))
 			break;
 
 		active = rq;
@@ -1112,7 +1112,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 	list_for_each_entry_safe_reverse(rq, rn,
 					 &engine->active.requests,
 					 sched.link) {
-		if (i915_request_completed(rq))
+		if (__i915_request_completed(rq))
 			continue; /* XXX */
 
 		__i915_request_unsubmit(rq);
@@ -1265,7 +1265,7 @@ static void reset_active(struct i915_request *rq,
 		     rq->fence.context, rq->fence.seqno);
 
 	/* On resubmission of the active request, payload will be scrubbed */
-	if (i915_request_completed(rq))
+	if (__i915_request_completed(rq))
 		head = rq->tail;
 	else
 		head = active_request(ce->timeline, rq)->head;
@@ -1424,7 +1424,7 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * idle and we want to re-enter powersaving.
 	 */
 	if (list_is_last_rcu(&rq->link, &ce->timeline->requests) &&
-	    i915_request_completed(rq))
+	    __i915_request_completed(rq))
 		intel_engine_add_retire(engine, ce->timeline);
 
 	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
@@ -1667,7 +1667,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		if (!spin_trylock_irqsave(&rq->lock, flags))
 			continue;
 
-		if (i915_request_completed(rq))
+		if (__i915_request_completed(rq))
 			goto unlock;
 
 		if (i915_active_is_idle(&ce->active) &&
@@ -1780,7 +1780,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 	 * contexts, despite the best efforts of preempt-to-busy to confuse
 	 * us.
 	 */
-	if (i915_request_completed(next))
+	if (__i915_request_completed(next))
 		return true;
 
 	if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
@@ -2011,7 +2011,7 @@ static unsigned long active_timeslice(const struct intel_engine_cs *engine)
 	const struct intel_engine_execlists *execlists = &engine->execlists;
 	const struct i915_request *rq = *execlists->active;
 
-	if (!rq || i915_request_completed(rq))
+	if (!rq || __i915_request_completed(rq))
 		return 0;
 
 	if (READ_ONCE(execlists->switch_priority_hint) < effective_prio(rq))
@@ -2142,7 +2142,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 */
 	if ((last = *active)) {
 		if (need_preempt(engine, last, ve)) {
-			if (i915_request_completed(last)) {
+			if (__i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
 			}
@@ -2174,7 +2174,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (need_timeslice(engine, last, ve) &&
 			   timeslice_expired(execlists, last)) {
-			if (i915_request_completed(last)) {
+			if (__i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
 			}
@@ -5579,7 +5579,7 @@ static void virtual_submit_request(struct i915_request *rq)
 		i915_request_put(old);
 	}
 
-	if (i915_request_completed(rq)) {
+	if (__i915_request_completed(rq)) {
 		__i915_request_submit(rq);
 
 		ve->base.execlists.queue_priority_hint = INT_MIN;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index ca7286e58409..d50470051404 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -805,7 +805,7 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	rq = NULL;
 	spin_lock_irqsave(&engine->active.lock, flags);
 	list_for_each_entry(pos, &engine->active.requests, sched.link) {
-		if (!i915_request_completed(pos)) {
+		if (!__i915_request_completed(pos)) {
 			rq = pos;
 			break;
 		}
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 4546284fede1..11529acf704c 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -544,11 +544,11 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 
 	rcu_read_lock();
 	cl = rcu_dereference(from->hwsp_cacheline);
-	if (i915_request_completed(from)) /* confirm cacheline is valid */
+	if (__i915_request_completed(from)) /* confirm cacheline is valid */
 		goto unlock;
 	if (unlikely(!i915_active_acquire_if_busy(&cl->active)))
 		goto unlock; /* seqno wrapped and completed! */
-	if (unlikely(i915_request_completed(from)))
+	if (unlikely(__i915_request_completed(from)))
 		goto release;
 	rcu_read_unlock();
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d71728edca57..eacfb026ddb6 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -271,7 +271,7 @@ static void remove_from_engine(struct i915_request *rq)
 
 bool i915_request_retire(struct i915_request *rq)
 {
-	if (!i915_request_completed(rq))
+	if (!__i915_request_completed(rq))
 		return false;
 
 	RQ_TRACE(rq, "\n");
@@ -340,7 +340,7 @@ void i915_request_retire_upto(struct i915_request *rq)
 
 	RQ_TRACE(rq, "\n");
 
-	GEM_BUG_ON(!i915_request_completed(rq));
+	GEM_BUG_ON(!__i915_request_completed(rq));
 
 	do {
 		tmp = list_first_entry(&tl->requests, typeof(*tmp), link);
@@ -464,7 +464,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 * dropped upon retiring. (Otherwise if resubmit a *retired*
 	 * request, this would be a horrible use-after-free.)
 	 */
-	if (i915_request_completed(request))
+	if (__i915_request_completed(request))
 		goto xfer;
 
 	if (unlikely(intel_context_is_banned(request->context)))
@@ -772,7 +772,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
-	GEM_BUG_ON(i915_request_completed(rq));
+	GEM_BUG_ON(__i915_request_completed(rq));
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
@@ -1588,7 +1588,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 	 */
 	prev = to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
-	if (prev && !i915_request_completed(prev)) {
+	if (prev && !__i915_request_completed(prev)) {
 		/*
 		 * The requests are supposed to be kept in order. However,
 		 * we need to be wary in case the timeline->last_request
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 5d4709a3dace..6a3bd8bed383 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -417,6 +417,11 @@ static inline u32 __hwsp_seqno(const struct i915_request *rq)
 	return READ_ONCE(*hwsp);
 }
 
+static inline bool __i915_request_completed(const struct i915_request *rq)
+{
+	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
+}
+
 /**
  * hwsp_seqno - the current breadcrumb value in the HW status page
  * @rq: the request, to chase the relevant HW status page
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
