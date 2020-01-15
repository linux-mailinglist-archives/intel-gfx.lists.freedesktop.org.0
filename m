Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D6613BE2F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 12:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4557C89A4B;
	Wed, 15 Jan 2020 11:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136D189A4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 11:10:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19886734-1500050 
 for multiple; Wed, 15 Jan 2020 11:10:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 11:10:07 +0000
Message-Id: <20200115111007.2602806-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200115083346.2601512-2-chris@chris-wilson.co.uk>
References: <20200115083346.2601512-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/gt: Allow temporary suspension of
 inflight requests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to support out-of-line error capture, we need to remove the
active request from HW and put it to one side while a worker compresses
and stores all the details associated with that request. (As that
compression may take an arbitrary user-controlled amount of time, we
want to let the engine continue running on other workloads while the
hanging request is dumped.) Not only do we need to remove the active
request, but we also have to remove its context and all requests that
were dependent on it (both in flight, queued and future submission).

Finally once the capture is complete, we need to be able to resubmit the
request and its dependents and allow them to execute.

v2: Replace stack recursion with a simple list.
v3: Check all the parents, not just the first, when searching for a
stuck ancestor!

References: https://gitlab.freedesktop.org/drm/intel/issues/738
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 160 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 103 ++++++++++++
 drivers/gpu/drm/i915/i915_request.h          |  22 +++
 5 files changed, 283 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f451ef376548..c296aaf381e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -671,6 +671,7 @@ void
 intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
 {
 	INIT_LIST_HEAD(&engine->active.requests);
+	INIT_LIST_HEAD(&engine->active.hold);
 
 	spin_lock_init(&engine->active.lock);
 	lockdep_set_subclass(&engine->active.lock, subclass);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 00287515e7af..77e68c7643de 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -295,6 +295,7 @@ struct intel_engine_cs {
 	struct {
 		spinlock_t lock;
 		struct list_head requests;
+		struct list_head hold; /* ready requests, but on hold */
 	} active;
 
 	struct llist_head barrier_tasks;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f0cbd240a8c2..05a05ceeac6a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2353,6 +2353,146 @@ static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
 	}
 }
 
+static void __execlists_hold(struct i915_request *rq)
+{
+	LIST_HEAD(list);
+
+	do {
+		struct i915_dependency *p;
+
+		if (i915_request_is_active(rq))
+			__i915_request_unsubmit(rq);
+
+		RQ_TRACE(rq, "on hold\n");
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
+		i915_request_set_hold(rq);
+
+		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+			struct i915_request *w =
+				container_of(p->waiter, typeof(*w), sched);
+
+			/* Leave semaphores spinning on the other engines */
+			if (w->engine != rq->engine)
+				continue;
+
+			if (list_empty(&w->sched.link))
+				continue; /* Not yet submitted */
+
+			if (i915_request_completed(w))
+				continue;
+
+			if (i915_request_has_hold(rq))
+				continue;
+
+			list_move_tail(&w->sched.link, &list);
+		}
+
+		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
+	} while (rq);
+}
+
+__maybe_unused
+static void execlists_hold(struct intel_engine_cs *engine,
+			   struct i915_request *rq)
+{
+	spin_lock_irq(&engine->active.lock);
+
+	/*
+	 * Transfer this request onto the hold queue to prevent it
+	 * being resumbitted to HW (and potentially completed) before we have
+	 * released it. Since we may have already submitted following
+	 * requests, we need to remove those as well.
+	 */
+	GEM_BUG_ON(i915_request_completed(rq));
+	GEM_BUG_ON(i915_request_has_hold(rq));
+	GEM_BUG_ON(rq->engine != engine);
+	__execlists_hold(rq);
+
+	spin_unlock_irq(&engine->active.lock);
+}
+
+static bool hold_request(const struct i915_request *rq)
+{
+	struct i915_dependency *p;
+
+	/*
+	 * If one of our ancestors is on hold, we must also be on hold,
+	 * otherwise we will bypass it and execute before it.
+	 */
+	list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+
+		if (s->engine != rq->engine)
+			continue;
+
+		if (i915_request_has_hold(s))
+			return true;
+	}
+
+	return false;
+}
+
+static void __execlists_unhold(struct i915_request *rq)
+{
+	LIST_HEAD(list);
+
+	do {
+		struct i915_dependency *p;
+
+		GEM_BUG_ON(!i915_request_has_hold(rq));
+		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
+
+		i915_request_clear_hold(rq);
+		list_move_tail(&rq->sched.link,
+			       i915_sched_lookup_priolist(rq->engine,
+							  rq_prio(rq)));
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		RQ_TRACE(rq, "hold release\n");
+
+		/* Also release any children on this engine that are ready */
+		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+			struct i915_request *w =
+				container_of(p->waiter, typeof(*w), sched);
+
+			if (w->engine != rq->engine)
+				continue;
+
+			if (!i915_request_has_hold(rq))
+				continue;
+
+			/* Check that no other parents are on hold */
+			if (hold_request(rq))
+				continue;
+
+			list_move_tail(&w->sched.link, &list);
+		}
+
+		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
+	} while (rq);
+}
+
+__maybe_unused
+static void execlists_unhold(struct intel_engine_cs *engine,
+			     struct i915_request *rq)
+{
+	spin_lock_irq(&engine->active.lock);
+
+	/*
+	 * Move this request back to the priority queue, and all of its
+	 * children and grandchildren that were suspended along with it.
+	 */
+	__execlists_unhold(rq);
+
+	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
+		engine->execlists.queue_priority_hint = rq_prio(rq);
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+	}
+
+	spin_unlock_irq(&engine->active.lock);
+}
+
 static noinline void preempt_reset(struct intel_engine_cs *engine)
 {
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
@@ -2465,6 +2605,13 @@ static void submit_queue(struct intel_engine_cs *engine,
 	__submit_queue_imm(engine);
 }
 
+static bool on_hold(const struct intel_engine_cs *engine,
+		    const struct i915_request *rq)
+{
+	GEM_BUG_ON(i915_request_has_hold(rq));
+	return !list_empty(&engine->active.hold) && hold_request(rq);
+}
+
 static void execlists_submit_request(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
@@ -2473,12 +2620,17 @@ static void execlists_submit_request(struct i915_request *request)
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-	queue_request(engine, request);
+	if (unlikely(on_hold(engine, request))) { /* ancestor is suspended */
+		list_add_tail(&request->sched.link, &engine->active.hold);
+		i915_request_set_hold(request);
+	} else {
+		queue_request(engine, request);
 
-	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
-	GEM_BUG_ON(list_empty(&request->sched.link));
+		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(list_empty(&request->sched.link));
 
-	submit_queue(engine, request);
+		submit_queue(engine, request);
+	}
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 15cda024e3e4..78501d79c0ea 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -285,6 +285,108 @@ static int live_unlite_preempt(void *arg)
 	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
 }
 
+static int live_hold_reset(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	/*
+	 * In order to support offline error capture for fast preempt reset,
+	 * we need to decouple the guilty request and ensure that it and its
+	 * descendents are not executed while the capture is in progress.
+	 */
+
+	if (!intel_has_reset_engine(gt))
+		return 0;
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		unsigned long heartbeat;
+		struct i915_request *rq;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			break;
+		}
+
+		engine_heartbeat_disable(engine, &heartbeat);
+
+		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out;
+		}
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			intel_gt_set_wedged(gt);
+			err = -ETIME;
+			goto out;
+		}
+
+		/* We have our request executing, now remove it and reset */
+
+		if (test_and_set_bit(I915_RESET_ENGINE + id,
+				     &gt->reset.flags)) {
+			spin_unlock_irq(&engine->active.lock);
+			intel_gt_set_wedged(gt);
+			err = -EBUSY;
+			goto out;
+		}
+		tasklet_disable(&engine->execlists.tasklet);
+
+		engine->execlists.tasklet.func(engine->execlists.tasklet.data);
+		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
+
+		execlists_hold(engine, rq);
+		GEM_BUG_ON(!i915_request_has_hold(rq));
+
+		intel_engine_reset(engine, NULL);
+		GEM_BUG_ON(rq->fence.error != -EIO);
+
+		tasklet_enable(&engine->execlists.tasklet);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id,
+				      &gt->reset.flags);
+
+		/* Check that we do not resubmit the held request */
+		i915_request_get(rq);
+		if (!i915_request_wait(rq, 0, HZ / 5)) {
+			pr_err("%s: on hold request completed!\n",
+			       engine->name);
+			i915_request_put(rq);
+			err = -EIO;
+			goto out;
+		}
+		GEM_BUG_ON(!i915_request_has_hold(rq));
+
+		/* But is resubmitted on release */
+		execlists_unhold(engine, rq);
+		if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+			pr_err("%s: held request did not complete!\n",
+			       engine->name);
+			intel_gt_set_wedged(gt);
+			err = -ETIME;
+		}
+		i915_request_put(rq);
+
+out:
+		engine_heartbeat_enable(engine, heartbeat);
+		intel_context_put(ce);
+		if (err)
+			break;
+	}
+
+	igt_spinner_fini(&spin);
+	return err;
+}
+
 static int
 emit_semaphore_chain(struct i915_request *rq, struct i915_vma *vma, int idx)
 {
@@ -3315,6 +3417,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_sanitycheck),
 		SUBTEST(live_unlite_switch),
 		SUBTEST(live_unlite_preempt),
+		SUBTEST(live_hold_reset),
 		SUBTEST(live_timeslice_preempt),
 		SUBTEST(live_timeslice_queue),
 		SUBTEST(live_busywait_preempt),
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index a9f0d3c8d8b7..47fa5419c74f 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -90,6 +90,13 @@ enum {
 	 */
 	I915_FENCE_FLAG_SIGNAL,
 
+	/*
+	 * I915_FENCE_FLAG_HOLD - this request is currently on hold
+	 *
+	 * This request has been suspended, pending an ongoing investigation.
+	 */
+	I915_FENCE_FLAG_HOLD,
+
 	/*
 	 * I915_FENCE_FLAG_NOPREEMPT - this request should not be preempted
 	 *
@@ -500,6 +507,21 @@ static inline bool i915_request_has_sentinel(const struct i915_request *rq)
 	return unlikely(test_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags));
 }
 
+static inline bool i915_request_has_hold(const struct i915_request *rq)
+{
+	return unlikely(test_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags));
+}
+
+static inline void i915_request_set_hold(struct i915_request *rq)
+{
+	set_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
+}
+
+static inline void i915_request_clear_hold(struct i915_request *rq)
+{
+	clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
+}
+
 static inline struct intel_timeline *
 i915_request_timeline(struct i915_request *rq)
 {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
