Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9002539AC5A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 23:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0568D6F511;
	Thu,  3 Jun 2021 21:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDAE6EEA0;
 Thu,  3 Jun 2021 21:09:38 +0000 (UTC)
IronPort-SDR: Bko4xGknZb+1YeiyF4ZGd5Q9rndb7s7fjwR9LZQKmCkt6H6LMjEDmyD0PraN9pIaWbo8o5fctz
 IFBgWHRU+cqA==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="203966013"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="203966013"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:09:35 -0700
IronPort-SDR: EJXTJULNLPPr6Fg6CEGcvBxv0mfH+UjSew+hQWjHyYUJaTwHRzg+3JwrU/rcqF2hmmjN9y6Mw7
 /KkkZgtAncJg==
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="448015273"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:09:35 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  3 Jun 2021 14:27:17 -0700
Message-Id: <20210603212722.59719-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210603212722.59719-1-matthew.brost@intel.com>
References: <20210603212722.59719-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Move active tracking to
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

Move active request tracking and its lock to i915_sched_engine. This
lock is also the submission lock so having it in the i915_sched_engine
is the correct place.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  2 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 43 +++-----
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  6 --
 .../drm/i915/gt/intel_execlists_submission.c  | 98 ++++++++++---------
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 12 +--
 drivers/gpu/drm/i915/gt/mock_engine.c         |  7 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 20 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 +-
 drivers/gpu/drm/i915/i915_request.c           | 32 +++---
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 30 ++++--
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  9 ++
 13 files changed, 134 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 8d9184920c51..a8b2174b4395 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -257,8 +257,6 @@ intel_engine_find_active_request(struct intel_engine_cs *engine);
 
 u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
 
-void intel_engine_init_active(struct intel_engine_cs *engine,
-			      unsigned int subclass);
 #define ENGINE_PHYSICAL	0
 #define ENGINE_MOCK	1
 #define ENGINE_VIRTUAL	2
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 85f2effe9dc6..33d879137908 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -719,7 +719,6 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 	if (err)
 		goto err_cmd_parser;
 
-	intel_engine_init_active(engine, ENGINE_PHYSICAL);
 	intel_engine_init_execlists(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
@@ -778,11 +777,11 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	frame->rq.ring = &frame->ring;
 
 	mutex_lock(&ce->timeline->mutex);
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 
 	dw = engine->emit_fini_breadcrumb(&frame->rq, frame->cs) - frame->cs;
 
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 	mutex_unlock(&ce->timeline->mutex);
 
 	GEM_BUG_ON(dw & 1); /* RING_TAIL must be qword aligned */
@@ -791,28 +790,6 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	return dw;
 }
 
-void
-intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
-{
-	INIT_LIST_HEAD(&engine->active.requests);
-	INIT_LIST_HEAD(&engine->active.hold);
-
-	spin_lock_init(&engine->active.lock);
-	lockdep_set_subclass(&engine->active.lock, subclass);
-
-	/*
-	 * Due to an interesting quirk in lockdep's internal debug tracking,
-	 * after setting a subclass we must ensure the lock is used. Otherwise,
-	 * nr_unused_locks is incremented once too often.
-	 */
-#ifdef CONFIG_DEBUG_LOCK_ALLOC
-	local_irq_disable();
-	lock_map_acquire(&engine->active.lock.dep_map);
-	lock_map_release(&engine->active.lock.dep_map);
-	local_irq_enable();
-#endif
-}
-
 static struct intel_context *
 create_pinned_context(struct intel_engine_cs *engine,
 		      unsigned int hwsp,
@@ -960,7 +937,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	GEM_BUG_ON(!list_empty(&engine->sched_engine->requests));
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	i915_sched_engine_put(engine->sched_engine);
@@ -1353,7 +1330,7 @@ static struct intel_timeline *get_timeline(struct i915_request *rq)
 	struct intel_timeline *tl;
 
 	/*
-	 * Even though we are holding the engine->active.lock here, there
+	 * Even though we are holding the engine->sched_engine->lock here, there
 	 * is no control over the submission queue per-se and we are
 	 * inspecting the active state at a random point in time, with an
 	 * unknown queue. Play safe and make sure the timeline remains valid.
@@ -1700,7 +1677,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 	drm_printf(m, "\tRequests:\n");
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 	rq = intel_engine_find_active_request(engine);
 	if (rq) {
 		struct intel_timeline *tl = get_timeline(rq);
@@ -1731,8 +1708,9 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
 		}
 	}
-	drm_printf(m, "\tOn hold?: %lu\n", list_count(&engine->active.hold));
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	drm_printf(m, "\tOn hold?: %lu\n",
+		   list_count(&engine->sched_engine->hold));
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 
 	drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
 	wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
@@ -1812,7 +1790,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	 * At all other times, we must assume the GPU is still running, but
 	 * we only care about the snapshot of this moment.
 	 */
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&engine->sched_engine->lock);
 
 	rcu_read_lock();
 	request = execlists_active(&engine->execlists);
@@ -1830,7 +1808,8 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	if (active)
 		return active;
 
-	list_for_each_entry(request, &engine->active.requests, sched.link) {
+	list_for_each_entry(request, &engine->sched_engine->requests,
+			    sched.link) {
 		if (__i915_request_is_complete(request))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 86b41ddec373..7197b9fa5e35 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -302,12 +302,6 @@ struct intel_engine_cs {
 
 	struct intel_sseu sseu;
 
-	struct {
-		spinlock_t lock;
-		struct list_head requests;
-		struct list_head hold; /* ready requests, but on hold */
-	} active;
-
 	struct i915_sched_engine *sched_engine;
 
 	/* keep a request in reserve for a [pm] barrier under oom */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 609753b5401a..0413ba87cc1e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -325,7 +325,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
 	 * Check against the first request in ELSP[1], it will, thanks to the
 	 * power of PI, be the highest priority of that context.
 	 */
-	if (!list_is_last(&rq->sched.link, &engine->active.requests) &&
+	if (!list_is_last(&rq->sched.link, &engine->sched_engine->requests) &&
 	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
 		return true;
 
@@ -367,10 +367,10 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 	struct list_head *pl;
 	int prio = I915_PRIORITY_INVALID;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&engine->sched_engine->lock);
 
 	list_for_each_entry_safe_reverse(rq, rn,
-					 &engine->active.requests,
+					 &engine->sched_engine->requests,
 					 sched.link) {
 		if (__i915_request_is_complete(rq)) {
 			list_del_init(&rq->sched.link);
@@ -534,13 +534,13 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 {
 	struct intel_engine_cs *engine = rq->engine;
 
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	WRITE_ONCE(rq->engine, &ve->base);
 	ve->base.submit_request(rq);
 
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 }
 
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
@@ -579,7 +579,7 @@ static void __execlists_schedule_out(struct i915_request * const rq,
 	unsigned int ccid;
 
 	/*
-	 * NB process_csb() is not under the engine->active.lock and hence
+	 * NB process_csb() is not under the engine->sched_engine->lock and hence
 	 * schedule_out can race with schedule_in meaning that we should
 	 * refrain from doing non-trivial work here.
 	 */
@@ -1133,7 +1133,8 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	/* If ELSP[1] is occupied, always check to see if worth slicing */
-	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests)) {
+	if (!list_is_last_rcu(&rq->sched.link,
+			      &engine->sched_engine->requests)) {
 		ENGINE_TRACE(engine, "timeslice required for second inflight context\n");
 		return true;
 	}
@@ -1266,7 +1267,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
-	spin_lock(&engine->active.lock);
+	spin_lock(&sched_engine->lock);
 
 	/*
 	 * If the queue is higher priority than the last
@@ -1366,7 +1367,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				spin_unlock(&engine->active.lock);
+				spin_unlock(&sched_engine->lock);
 				return;
 			}
 		}
@@ -1376,7 +1377,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	while ((ve = first_virtual_engine(engine))) {
 		struct i915_request *rq;
 
-		spin_lock(&ve->base.active.lock);
+		spin_lock(&ve->base.sched_engine->lock);
 
 		rq = ve->request;
 		if (unlikely(!virtual_matches(ve, rq, engine)))
@@ -1386,13 +1387,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->context != &ve->context);
 
 		if (unlikely(rq_prio(rq) < queue_prio(sched_engine))) {
-			spin_unlock(&ve->base.active.lock);
+			spin_unlock(&ve->base.sched_engine->lock);
 			break;
 		}
 
 		if (last && !can_merge_rq(last, rq)) {
-			spin_unlock(&ve->base.active.lock);
-			spin_unlock(&engine->active.lock);
+			spin_unlock(&ve->base.sched_engine->lock);
+			spin_unlock(&engine->sched_engine->lock);
 			return; /* leave this for another sibling */
 		}
 
@@ -1438,7 +1439,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 		i915_request_put(rq);
 unlock:
-		spin_unlock(&ve->base.active.lock);
+		spin_unlock(&ve->base.sched_engine->lock);
 
 		/*
 		 * Hmm, we have a bunch of virtual engine requests,
@@ -1554,7 +1555,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 */
 	sched_engine->queue_priority_hint = queue_prio(sched_engine);
 	i915_sched_engine_reset_on_empty(sched_engine);
-	spin_unlock(&engine->active.lock);
+	spin_unlock(&sched_engine->lock);
 
 	/*
 	 * We can skip poking the HW if we ended up with exactly the same set
@@ -1981,7 +1982,8 @@ static void __execlists_hold(struct i915_request *rq)
 			__i915_request_unsubmit(rq);
 
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
+		list_move_tail(&rq->sched.link,
+			       &rq->engine->sched_engine->hold);
 		i915_request_set_hold(rq);
 		RQ_TRACE(rq, "on hold\n");
 
@@ -2018,7 +2020,7 @@ static bool execlists_hold(struct intel_engine_cs *engine,
 	if (i915_request_on_hold(rq))
 		return false;
 
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 
 	if (__i915_request_is_complete(rq)) { /* too late! */
 		rq = NULL;
@@ -2034,10 +2036,10 @@ static bool execlists_hold(struct intel_engine_cs *engine,
 	GEM_BUG_ON(i915_request_on_hold(rq));
 	GEM_BUG_ON(rq->engine != engine);
 	__execlists_hold(rq);
-	GEM_BUG_ON(list_empty(&engine->active.hold));
+	GEM_BUG_ON(list_empty(&engine->sched_engine->hold));
 
 unlock:
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 	return rq;
 }
 
@@ -2117,7 +2119,7 @@ static void __execlists_unhold(struct i915_request *rq)
 static void execlists_unhold(struct intel_engine_cs *engine,
 			     struct i915_request *rq)
 {
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 
 	/*
 	 * Move this request back to the priority queue, and all of its
@@ -2130,7 +2132,7 @@ static void execlists_unhold(struct intel_engine_cs *engine,
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 	}
 
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 }
 
 struct execlists_capture {
@@ -2260,13 +2262,13 @@ static void execlists_capture(struct intel_engine_cs *engine)
 	if (!cap)
 		return;
 
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 	cap->rq = active_context(engine, active_ccid(engine));
 	if (cap->rq) {
 		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
 		cap->rq = i915_request_get_rcu(cap->rq);
 	}
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 	if (!cap->rq)
 		goto err_free;
 
@@ -2470,7 +2472,7 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
 			     const struct i915_request *rq)
 {
 	GEM_BUG_ON(i915_request_on_hold(rq));
-	return !list_empty(&engine->active.hold) && hold_request(rq);
+	return !list_empty(&engine->sched_engine->hold) && hold_request(rq);
 }
 
 static void execlists_submit_request(struct i915_request *request)
@@ -2479,11 +2481,12 @@ static void execlists_submit_request(struct i915_request *request)
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	if (unlikely(ancestor_on_hold(engine, request))) {
 		RQ_TRACE(request, "ancestor on hold\n");
-		list_add_tail(&request->sched.link, &engine->active.hold);
+		list_add_tail(&request->sched.link,
+			      &engine->sched_engine->hold);
 		i915_request_set_hold(request);
 	} else {
 		queue_request(engine, request);
@@ -2495,7 +2498,7 @@ static void execlists_submit_request(struct i915_request *request)
 			__execlists_kick(&engine->execlists);
 	}
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static int
@@ -2959,9 +2962,9 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	/* Push back any incomplete requests for replay after the reset. */
 	rcu_read_lock();
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 	__unwind_incomplete_requests(engine);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 	rcu_read_unlock();
 }
 
@@ -3001,10 +3004,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists_reset_csb(engine, true);
 
 	rcu_read_lock();
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	/* Mark all executing requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link)
+	list_for_each_entry(rq, &engine->sched_engine->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
@@ -3024,7 +3027,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* On-hold requests will be flushed to timeline upon their release */
-	list_for_each_entry(rq, &engine->active.hold, sched.link)
+	list_for_each_entry(rq, &sched_engine->hold, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 
 	/* Cancel all attached virtual engines */
@@ -3035,7 +3038,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		rb_erase_cached(rb, &execlists->virtual);
 		RB_CLEAR_NODE(rb);
 
-		spin_lock(&ve->base.active.lock);
+		spin_lock(&ve->base.sched_engine->lock);
 		rq = fetch_and_zero(&ve->request);
 		if (rq) {
 			if (i915_request_mark_eio(rq)) {
@@ -3047,7 +3050,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 			ve->base.sched_engine->queue_priority_hint = INT_MIN;
 		}
-		spin_unlock(&ve->base.active.lock);
+		spin_unlock(&ve->base.sched_engine->lock);
 	}
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
@@ -3058,7 +3061,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.callback = nop_submission_tasklet;
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 	rcu_read_unlock();
 }
 
@@ -3304,7 +3307,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 	if (unlikely(ve->request)) {
 		struct i915_request *old;
 
-		spin_lock_irq(&ve->base.active.lock);
+		spin_lock_irq(&ve->base.sched_engine->lock);
 
 		old = fetch_and_zero(&ve->request);
 		if (old) {
@@ -3313,7 +3316,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 			i915_request_put(old);
 		}
 
-		spin_unlock_irq(&ve->base.active.lock);
+		spin_unlock_irq(&ve->base.sched_engine->lock);
 	}
 
 	/*
@@ -3333,13 +3336,13 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 		if (RB_EMPTY_NODE(node))
 			continue;
 
-		spin_lock_irq(&sibling->active.lock);
+		spin_lock_irq(&sibling->sched_engine->lock);
 
 		/* Detachment is lazily performed in the execlists tasklet */
 		if (!RB_EMPTY_NODE(node))
 			rb_erase_cached(node, &sibling->execlists.virtual);
 
-		spin_unlock_irq(&sibling->active.lock);
+		spin_unlock_irq(&sibling->sched_engine->lock);
 	}
 	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
@@ -3509,7 +3512,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 		if (!READ_ONCE(ve->request))
 			break; /* already handled by a sibling's tasklet */
 
-		spin_lock_irq(&sibling->active.lock);
+		spin_lock_irq(&sibling->sched_engine->lock);
 
 		if (unlikely(!(mask & sibling->mask))) {
 			if (!RB_EMPTY_NODE(&node->rb)) {
@@ -3562,7 +3565,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 			tasklet_hi_schedule(&sibling->execlists.tasklet);
 
 unlock_engine:
-		spin_unlock_irq(&sibling->active.lock);
+		spin_unlock_irq(&sibling->sched_engine->lock);
 
 		if (intel_context_inflight(&ve->context))
 			break;
@@ -3580,7 +3583,7 @@ static void virtual_submit_request(struct i915_request *rq)
 
 	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
 
-	spin_lock_irqsave(&ve->base.active.lock, flags);
+	spin_lock_irqsave(&ve->base.sched_engine->lock, flags);
 
 	/* By the time we resubmit a request, it may be completed */
 	if (__i915_request_is_complete(rq)) {
@@ -3603,7 +3606,7 @@ static void virtual_submit_request(struct i915_request *rq)
 	tasklet_hi_schedule(&ve->base.execlists.tasklet);
 
 unlock:
-	spin_unlock_irqrestore(&ve->base.active.lock, flags);
+	spin_unlock_irqrestore(&ve->base.sched_engine->lock, flags);
 }
 
 static struct ve_bond *
@@ -3687,7 +3690,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
 
-	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
 	intel_engine_init_execlists(&ve->base);
 
 	ve->base.sched_engine = i915_sched_engine_create(ENGINE_VIRTUAL);
@@ -3860,17 +3862,17 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   unsigned int max)
 {
 	const struct intel_engine_execlists *execlists = &engine->execlists;
-	const struct i915_sched_engine *sched_engine = engine->sched_engine;
+	struct i915_sched_engine *sched_engine = engine->sched_engine;
 	struct i915_request *rq, *last;
 	unsigned long flags;
 	unsigned int count;
 	struct rb_node *rb;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&sched_engine->lock, flags);
 
 	last = NULL;
 	count = 0;
-	list_for_each_entry(rq, &engine->active.requests, sched.link) {
+	list_for_each_entry(rq, &sched_engine->requests, sched.link) {
 		if (count++ < max - 1)
 			show_request(m, rq, "\t\t", 0);
 		else
@@ -3933,7 +3935,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 		show_request(m, last, "\t\t", 0);
 	}
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 2b6dffcc2262..c98ae0f58790 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -339,9 +339,9 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	u32 head;
 
 	rq = NULL;
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 	rcu_read_lock();
-	list_for_each_entry(pos, &engine->active.requests, sched.link) {
+	list_for_each_entry(pos, &engine->sched_engine->requests, sched.link) {
 		if (!__i915_request_is_complete(pos)) {
 			rq = pos;
 			break;
@@ -396,7 +396,7 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	}
 	engine->legacy.ring->head = intel_ring_wrap(engine->legacy.ring, head);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void reset_finish(struct intel_engine_cs *engine)
@@ -408,16 +408,16 @@ static void reset_cancel(struct intel_engine_cs *engine)
 	struct i915_request *request;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(request, &engine->active.requests, sched.link)
+	list_for_each_entry(request, &engine->sched_engine->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(request));
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void i9xx_submit_request(struct i915_request *request)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index b1fdba13e900..a49fd3039f13 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -253,10 +253,10 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 
 	del_timer_sync(&mock->hw_delay);
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link)
+	list_for_each_entry(rq, &engine->sched_engine->requests, sched.link)
 		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
@@ -269,7 +269,7 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 	}
 	INIT_LIST_HEAD(&mock->hw_queue);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void mock_reset_finish(struct intel_engine_cs *engine)
@@ -350,7 +350,6 @@ int mock_engine_init(struct intel_engine_cs *engine)
 	if (!engine->sched_engine)
 		return -ENOMEM;
 
-	intel_engine_init_active(engine, ENGINE_MOCK);
 	intel_engine_init_execlists(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 1f93591a8c69..fd824fa329c2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4599,9 +4599,9 @@ static int reset_virtual_engine(struct intel_gt *gt,
 	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 	/* Fake a preemption event; failed of course */
-	spin_lock_irq(&engine->active.lock);
+	spin_lock_irq(&engine->sched_engine->lock);
 	__unwind_incomplete_requests(engine);
-	spin_unlock_irq(&engine->active.lock);
+	spin_unlock_irq(&engine->sched_engine->lock);
 	GEM_BUG_ON(rq->engine != engine);
 
 	/* Reset the engine while keeping our active request on hold */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index f4a6fbfaf82e..2551019ee217 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -190,7 +190,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	bool submit = false;
 	struct rb_node *rb;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&sched_engine->lock);
 
 	if (last) {
 		if (*++first)
@@ -247,7 +247,7 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 	struct i915_request **port, *rq;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	for (port = execlists->inflight; (rq = *port); port++) {
 		if (!i915_request_completed(rq))
@@ -265,7 +265,7 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 
 	i915_sched_engine_reset_on_empty(engine->sched_engine);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void cs_irq_handler(struct intel_engine_cs *engine, u16 iir)
@@ -322,7 +322,7 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	struct i915_request *rq;
 	unsigned long flags;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	/* Push back any incomplete requests for replay after the reset. */
 	rq = execlists_unwind_incomplete_requests(execlists);
@@ -336,7 +336,7 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	guc_reset_state(rq->context, engine, rq->head, stalled);
 
 out_unlock:
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void guc_reset_cancel(struct intel_engine_cs *engine)
@@ -362,10 +362,10 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	 * submission's irq state, we also wish to remind ourselves that
 	 * it is irq state.)
 	 */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&sched_engine->lock, flags);
 
 	/* Mark all executing requests as skipped. */
-	list_for_each_entry(rq, &engine->active.requests, sched.link) {
+	list_for_each_entry(rq, &sched_engine->requests, sched.link) {
 		i915_request_set_error_once(rq, -EIO);
 		i915_request_mark_complete(rq);
 	}
@@ -390,7 +390,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	sched_engine->queue_priority_hint = INT_MIN;
 	sched_engine->queue = RB_ROOT_CACHED;
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
 static void guc_reset_finish(struct intel_engine_cs *engine)
@@ -539,7 +539,7 @@ static void guc_submit_request(struct i915_request *rq)
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	queue_request(engine, rq, rq_prio(rq));
 
@@ -548,7 +548,7 @@ static void guc_submit_request(struct i915_request *rq)
 
 	tasklet_hi_schedule(&engine->execlists.tasklet);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void sanitize_hwsp(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 833d3e8b7631..cd005f0a203c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1436,12 +1436,12 @@ capture_engine(struct intel_engine_cs *engine,
 	if (!ee)
 		return NULL;
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 	rq = intel_engine_find_active_request(engine);
 	if (rq)
 		capture = intel_engine_coredump_add_request(ee, rq,
 							    ATOMIC_MAYFAIL);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 	if (!capture) {
 		kfree(ee);
 		return NULL;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 970d8f4986bb..95e859c319ca 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -272,11 +272,11 @@ i915_request_active_engine(struct i915_request *rq,
 	 * check that we have acquired the lock on the final engine.
 	 */
 	locked = READ_ONCE(rq->engine);
-	spin_lock_irq(&locked->active.lock);
+	spin_lock_irq(&locked->sched_engine->lock);
 	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
-		spin_unlock(&locked->active.lock);
+		spin_unlock(&locked->sched_engine->lock);
 		locked = engine;
-		spin_lock(&locked->active.lock);
+		spin_lock(&locked->sched_engine->lock);
 	}
 
 	if (i915_request_is_active(rq)) {
@@ -285,7 +285,7 @@ i915_request_active_engine(struct i915_request *rq,
 		ret = true;
 	}
 
-	spin_unlock_irq(&locked->active.lock);
+	spin_unlock_irq(&locked->sched_engine->lock);
 
 	return ret;
 }
@@ -302,10 +302,10 @@ static void remove_from_engine(struct i915_request *rq)
 	 * check that the rq still belongs to the newly locked engine.
 	 */
 	locked = READ_ONCE(rq->engine);
-	spin_lock_irq(&locked->active.lock);
+	spin_lock_irq(&locked->sched_engine->lock);
 	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
-		spin_unlock(&locked->active.lock);
-		spin_lock(&engine->active.lock);
+		spin_unlock(&locked->sched_engine->lock);
+		spin_lock(&engine->sched_engine->lock);
 		locked = engine;
 	}
 	list_del_init(&rq->sched.link);
@@ -316,7 +316,7 @@ static void remove_from_engine(struct i915_request *rq)
 	/* Prevent further __await_execution() registering a cb, then flush */
 	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 
-	spin_unlock_irq(&locked->active.lock);
+	spin_unlock_irq(&locked->sched_engine->lock);
 
 	__notify_execute_cb_imm(rq);
 }
@@ -637,7 +637,7 @@ bool __i915_request_submit(struct i915_request *request)
 	RQ_TRACE(request, "\n");
 
 	GEM_BUG_ON(!irqs_disabled());
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&engine->sched_engine->lock);
 
 	/*
 	 * With the advent of preempt-to-busy, we frequently encounter
@@ -649,7 +649,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 *
 	 * We must remove the request from the caller's priority queue,
 	 * and the caller must only call us when the request is in their
-	 * priority queue, under the active.lock. This ensures that the
+	 * priority queue, under the sched_engine->lock. This ensures that the
 	 * request has *not* yet been retired and we can safely move
 	 * the request into the engine->active.list where it will be
 	 * dropped upon retiring. (Otherwise if resubmit a *retired*
@@ -694,7 +694,7 @@ bool __i915_request_submit(struct i915_request *request)
 	result = true;
 
 	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
-	list_move_tail(&request->sched.link, &engine->active.requests);
+	list_move_tail(&request->sched.link, &engine->sched_engine->requests);
 active:
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 	set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
@@ -724,11 +724,11 @@ void i915_request_submit(struct i915_request *request)
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	__i915_request_submit(request);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 void __i915_request_unsubmit(struct i915_request *request)
@@ -742,7 +742,7 @@ void __i915_request_unsubmit(struct i915_request *request)
 	RQ_TRACE(request, "\n");
 
 	GEM_BUG_ON(!irqs_disabled());
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&engine->sched_engine->lock);
 
 	/*
 	 * Before we remove this breadcrumb from the signal list, we have
@@ -775,11 +775,11 @@ void i915_request_unsubmit(struct i915_request *request)
 	unsigned long flags;
 
 	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 
 	__i915_request_unsubmit(request);
 
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
 }
 
 static void __cancel_request(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 270f6cd37650..239964bec1fa 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -613,7 +613,7 @@ i915_request_active_timeline(const struct i915_request *rq)
 	 * this submission.
 	 */
 	return rcu_dereference_protected(rq->timeline,
-					 lockdep_is_held(&rq->engine->active.lock));
+					 lockdep_is_held(&rq->engine->sched_engine->lock));
 }
 
 static inline u32
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 4953874a9ba6..4bc6969f6a97 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -68,7 +68,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	struct rb_node **parent, *rb;
 	bool first = true;
 
-	lockdep_assert_held(&engine->active.lock);
+	lockdep_assert_held(&engine->sched_engine->lock);
 	assert_priolists(sched_engine);
 
 	if (unlikely(sched_engine->no_priolist))
@@ -147,9 +147,9 @@ sched_lock_engine(const struct i915_sched_node *node,
 	 * check that the rq still belongs to the newly locked engine.
 	 */
 	while (locked != (engine = READ_ONCE(rq->engine))) {
-		spin_unlock(&locked->active.lock);
+		spin_unlock(&locked->sched_engine->lock);
 		memset(cache, 0, sizeof(*cache));
-		spin_lock(&engine->active.lock);
+		spin_lock(&engine->sched_engine->lock);
 		locked = engine;
 	}
 
@@ -296,7 +296,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 
 	memset(&cache, 0, sizeof(cache));
 	engine = node_to_request(node)->engine;
-	spin_lock(&engine->active.lock);
+	spin_lock(&engine->sched_engine->lock);
 
 	/* Fifo and depth-first replacement ensure our deps execute before us */
 	engine = sched_lock_engine(node, engine, &cache);
@@ -305,7 +305,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 
 		node = dep->signaler;
 		engine = sched_lock_engine(node, engine, &cache);
-		lockdep_assert_held(&engine->active.lock);
+		lockdep_assert_held(&engine->sched_engine->lock);
 
 		/* Recheck after acquiring the engine->timeline.lock */
 		if (prio <= node->attr.priority || node_signaled(node))
@@ -338,7 +338,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 		kick_submission(engine, node_to_request(node), prio);
 	}
 
-	spin_unlock(&engine->active.lock);
+	spin_unlock(&engine->sched_engine->lock);
 }
 
 void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
@@ -511,6 +511,24 @@ i915_sched_engine_create(unsigned int subclass)
 	sched_engine->queue = RB_ROOT_CACHED;
 	sched_engine->queue_priority_hint = INT_MIN;
 
+	INIT_LIST_HEAD(&sched_engine->requests);
+	INIT_LIST_HEAD(&sched_engine->hold);
+
+	spin_lock_init(&sched_engine->lock);
+	lockdep_set_subclass(&sched_engine->lock, subclass);
+
+	/*
+	 * Due to an interesting quirk in lockdep's internal debug tracking,
+	 * after setting a subclass we must ensure the lock is used. Otherwise,
+	 * nr_unused_locks is incremented once too often.
+	 */
+#ifdef CONFIG_DEBUG_LOCK_ALLOC
+	local_irq_disable();
+	lock_map_acquire(&sched_engine->lock.dep_map);
+	lock_map_release(&sched_engine->lock.dep_map);
+	local_irq_enable();
+#endif
+
 	return sched_engine;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 16a054e67760..5cb0b1c98d6b 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -94,6 +94,15 @@ struct i915_dependency {
 struct i915_sched_engine {
 	struct kref ref;
 
+	/**
+	 * @lock: protects requests in priority lists, requests, hold and
+	 * tasklet while running
+	 */
+	spinlock_t lock;
+
+	struct list_head requests;
+	struct list_head hold; /* ready requests, but on hold */
+
 	/**
 	 * @default_priolist: priority list for I915_PRIORITY_NORMAL
 	 */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
