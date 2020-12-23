Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9F02E1B88
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB136E931;
	Wed, 23 Dec 2020 11:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B355E6E904
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412222-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:11:05 +0000
Message-Id: <20201223111126.3338-41-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/62] drm/i915: Fair low-latency scheduling
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

The first "scheduler" was a topographical sorting of requests into
priority order. The execution order was deterministic, the earliest
submitted, highest priority request would be executed first. Priority
inheritance ensured that inversions were kept at bay, and allowed us to
dynamically boost priorities (e.g. for interactive pageflips).

The minimalistic timeslicing scheme was an attempt to introduce fairness
between long running requests, by evicting the active request at the end
of a timeslice and moving it to the back of its priority queue (while
ensuring that dependencies were kept in order). For short running
requests from many clients of equal priority, the scheme is still very
much FIFO submission ordering, and as unfair as before.

To impose fairness, we need an external metric that ensures that clients
are interpersed, so we don't execute one long chain from client A before
executing any of client B. This could be imposed by the clients
themselves by using fences based on an external clock, that is they only
submit work for a "frame" at frame-intervals, instead of submitting as
much work as they are able to. The standard SwapBuffers approach is akin
to double bufferring, where as one frame is being executed, the next is
being submitted, such that there is always a maximum of two frames per
client in the pipeline and so ideally maintains consistent input-output
latency. Even this scheme exhibits unfairness under load as a single
client will execute two frames back to back before the next, and with
enough clients, deadlines will be missed.

The idea introduced by BFS/MuQSS is that fairness is introduced by
metering with an external clock. Every request, when it becomes ready to
execute is assigned a virtual deadline, and execution order is then
determined by earliest deadline. Priority is used as a hint, rather than
strict ordering, where high priority requests have earlier deadlines,
but not necessarily earlier than outstanding work. Thus work is executed
in order of 'readiness', with timeslicing to demote long running work.

The Achille's heel of this scheduler is its strong preference for
low-latency and favouring of new queues. Whereas it was easy to dominate
the old scheduler by flooding it with many requests over a short period
of time, the new scheduler can be dominated by a 'synchronous' client
that waits for each of its requests to complete before submitting the
next. As such a client has no history, it is always considered
ready-to-run and receives an earlier deadline than the long running
requests. This is compensated for by refreshing the current execution's
deadline and by disallowing preemption for timeslice shuffling.

To check the impact on throughput (often the downfall of latency
sensitive schedulers), we used gem_wsim to simulate various transcode
workloads with different load balancers, and varying the number of
competing [heterogenous] clients.

+delta%------------------------------------------------------------------+
|                                a                                       |
|                                a                                       |
|                                aa                                      |
|                                aa                                      |
|                                aa                                      |
|                                aa                                      |
|                               aaa                                      |
|                              aaaa                                      |
|                           a  aaaaa                                     |
|                           a aaaaaa                                     |
|a              aa   a      aaaaaaaaaa aa               a               a|
|                                A_|                                     |
+------------------------------------------------------------------------+
   N          Min           Max        Median           Avg        Stddev
 108   -23.982194     28.421527  -0.077474828  -0.072650418    0.16179718

The impact was on average 0.1% under contention due to the change in
context execution order and number of context switches. The biggest
swings are due to the execution ordering favouring one client or another,
and maybe room for improvement.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 -
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  14 -
 .../drm/i915/gt/intel_execlists_submission.c  | 205 +++++----
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  30 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   5 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 -
 drivers/gpu/drm/i915/i915_priolist_types.h    |   7 +-
 drivers/gpu/drm/i915/i915_request.c           |  14 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 415 +++++++++++++-----
 drivers/gpu/drm/i915/i915_scheduler.h         |  19 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  23 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 136 ++++++
 16 files changed, 624 insertions(+), 257 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 74aa0bf8c087..f88e367d5201 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -591,8 +591,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 	memset(execlists->pending, 0, sizeof(execlists->pending));
 	execlists->active =
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
-
-	execlists->queue_priority_hint = INT_MIN;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index bccbb932a315..495e8d5e2bf4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -205,6 +205,7 @@ static int __intel_engine_pulse(struct intel_engine_cs *engine)
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
+	rq->sched.deadline = 0;
 	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
 
 	heartbeat_commit(rq, &attr);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 14378e3a7a50..511a379c794d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -212,6 +212,7 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	i915_request_add_active_barriers(rq);
 
 	/* Install ourselves as a preemption barrier */
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	if (likely(!__i915_request_commit(rq))) { /* engine should be idle! */
 		/*
@@ -272,9 +273,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	intel_engine_park_heartbeat(engine);
 	intel_breadcrumbs_park(engine->breadcrumbs);
 
-	/* Must be reset upon idling, or we may miss the busy wakeup. */
-	GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
-
 	if (engine->park)
 		engine->park(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 694d2e04ba6a..824a187b2803 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -224,20 +224,6 @@ struct intel_engine_execlists {
 	 */
 	unsigned int port_mask;
 
-	/**
-	 * @queue_priority_hint: Highest pending priority.
-	 *
-	 * When we add requests into the queue, or adjust the priority of
-	 * executing requests, we compute the maximum priority of those
-	 * pending requests. We can then use this value to determine if
-	 * we need to preempt the executing requests to service the queue.
-	 * However, since the we may have recorded the priority of an inflight
-	 * request we wanted to preempt but since completed, at the time of
-	 * dequeuing the priority hint may no longer may match the highest
-	 * available request priority.
-	 */
-	int queue_priority_hint;
-
 	struct rb_root_cached virtual;
 
 	/**
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index d99d682d8569..cdd6fce1c8bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -178,7 +178,7 @@ struct virtual_engine {
 	 */
 	struct ve_node {
 		struct rb_node rb;
-		int prio;
+		u64 deadline;
 	} nodes[I915_NUM_ENGINES];
 
 	/*
@@ -248,25 +248,12 @@ ring_set_paused(const struct intel_engine_cs *engine, int state)
 
 static inline int rq_prio(const struct i915_request *rq)
 {
-	return READ_ONCE(rq->sched.attr.priority);
+	return rq->sched.attr.priority;
 }
 
-static int effective_prio(const struct i915_request *rq)
+static inline u64 rq_deadline(const struct i915_request *rq)
 {
-	int prio = rq_prio(rq);
-
-	/*
-	 * If this request is special and must not be interrupted at any
-	 * cost, so be it. Note we are only checking the most recent request
-	 * in the context and so may be masking an earlier vip request. It
-	 * is hoped that under the conditions where nopreempt is used, this
-	 * will not matter (i.e. all requests to that context will be
-	 * nopreempt for as long as desired).
-	 */
-	if (i915_request_has_nopreempt(rq))
-		prio = I915_PRIORITY_UNPREEMPTABLE;
-
-	return prio;
+	return rq->sched.deadline;
 }
 
 static struct i915_request *first_request(struct i915_sched_engine *se)
@@ -285,61 +272,61 @@ static struct i915_request *first_request(struct i915_sched_engine *se)
 	return NULL;
 }
 
-static int queue_prio(struct i915_sched_engine *se)
+static struct i915_request *first_virtual(const struct intel_engine_cs *engine)
 {
-	struct i915_request *rq;
+	struct rb_node *rb;
 
-	rq = first_request(se);
-	if (!rq)
-		return INT_MIN;
+	rb = rb_first_cached(&engine->execlists.virtual);
+	if (!rb)
+		return NULL;
 
-	return rq_prio(rq);
+	return READ_ONCE(rb_entry(rb,
+				  struct virtual_engine,
+				  nodes[engine->id].rb)->request);
 }
 
-static int virtual_prio(const struct intel_engine_execlists *el)
+static const struct i915_request *
+next_elsp_request(struct intel_engine_cs *engine, const struct i915_request *rq)
 {
-	struct rb_node *rb = rb_first_cached(&el->virtual);
+	if (list_is_last(&rq->sched.link, &engine->active.requests))
+		return NULL;
 
-	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
+	return list_next_entry(rq, sched.link);
+}
+
+static inline bool
+dl_before(const struct i915_request *next, const struct i915_request *prev)
+{
+	return !prev || (next && rq_deadline(next) < rq_deadline(prev));
 }
 
 static inline bool need_preempt(struct intel_engine_cs *engine,
 				const struct i915_request *rq)
 {
-	int last_prio;
+	const struct i915_request *first = NULL;
+	const struct i915_request *next;
 
 	if (!intel_engine_has_semaphores(engine))
 		return false;
 
 	/*
-	 * Check if the current priority hint merits a preemption attempt.
-	 *
-	 * We record the highest value priority we saw during rescheduling
-	 * prior to this dequeue, therefore we know that if it is strictly
-	 * less than the current tail of ESLP[0], we do not need to force
-	 * a preempt-to-idle cycle.
-	 *
-	 * However, the priority hint is a mere hint that we may need to
-	 * preempt. If that hint is stale or we may be trying to preempt
-	 * ourselves, ignore the request.
-	 *
-	 * More naturally we would write
-	 *      prio >= max(0, last);
-	 * except that we wish to prevent triggering preemption at the same
-	 * priority level: the task that is running should remain running
-	 * to preserve FIFO ordering of dependencies.
+	 * If this request is special and must not be interrupted at any
+	 * cost, so be it. Note we are only checking the most recent request
+	 * in the context and so may be masking an earlier vip request. It
+	 * is hoped that under the conditions where nopreempt is used, this
+	 * will not matter (i.e. all requests to that context will be
+	 * nopreempt for as long as desired).
 	 */
-	last_prio = max(effective_prio(rq), I915_PRIORITY_NORMAL - 1);
-	if (engine->execlists.queue_priority_hint <= last_prio)
+	if (i915_request_has_nopreempt(rq))
 		return false;
 
 	/*
 	 * Check against the first request in ELSP[1], it will, thanks to the
 	 * power of PI, be the highest priority of that context.
 	 */
-	if (!list_is_last(&rq->sched.link, &engine->active.requests) &&
-	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
-		return true;
+	next = next_elsp_request(engine, rq);
+	if (dl_before(next, first))
+		first = next;
 
 	/*
 	 * If the inflight context did not trigger the preemption, then maybe
@@ -351,8 +338,31 @@ static inline bool need_preempt(struct intel_engine_cs *engine,
 	 * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
-	return max(virtual_prio(&engine->execlists),
-		   queue_prio(&engine->active)) > last_prio;
+	next = first_request(&engine->active);
+	if (dl_before(next, first))
+		first = next;
+
+	next = first_virtual(engine);
+	if (dl_before(next, first))
+		first = next;
+
+	if (!dl_before(first, rq))
+		return false;
+
+	/*
+	 * While a request may have been queued that has an earlier deadline
+	 * than is currently running, we only allow it to perform an urgent
+	 * preemption if it also has higher priority. The cost of frequently
+	 * switching between contexts is noticeable, so we try to keep
+	 * the deadline shuffling only to timeslice boundaries.
+	 */
+	ENGINE_TRACE(engine,
+		     "preempt for first=%llx:%llu, dl=%llu, prio=%d?\n",
+		     first->fence.context,
+		     first->fence.seqno,
+		     rq_deadline(first),
+		     rq_prio(first));
+	return rq_prio(first) > max(rq_prio(rq), I915_PRIORITY_NORMAL - 1);
 }
 
 __maybe_unused static inline bool
@@ -369,7 +379,7 @@ assert_priority_queue(const struct i915_request *prev,
 	if (i915_request_is_active(prev))
 		return true;
 
-	return rq_prio(prev) >= rq_prio(next);
+	return rq_deadline(prev) <= rq_deadline(next);
 }
 
 static inline void
@@ -551,9 +561,12 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
 	 */
-	if (list_is_last_rcu(&rq->link, &ce->timeline->requests) &&
-	    __i915_request_is_complete(rq))
-		intel_engine_add_retire(engine, ce->timeline);
+	if (__i915_request_is_complete(rq)) {
+		if (!list_is_last_rcu(&rq->link, &ce->timeline->requests))
+			i915_request_update_deadline(list_next_entry(rq, link));
+		else
+			intel_engine_add_retire(engine, ce->timeline);
+	}
 
 	ccid = ce->lrc.ccid;
 	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
@@ -667,14 +680,14 @@ dump_port(char *buf, int buflen, const char *prefix, struct i915_request *rq)
 	if (!rq)
 		return "";
 
-	snprintf(buf, buflen, "%sccid:%x %llx:%lld%s prio %d",
+	snprintf(buf, buflen, "%sccid:%x %llx:%lld%s dl:%llu",
 		 prefix,
 		 rq->context->lrc.ccid,
 		 rq->fence.context, rq->fence.seqno,
 		 __i915_request_is_complete(rq) ? "!" :
 		 __i915_request_has_started(rq) ? "*" :
 		 "",
-		 rq_prio(rq));
+		 rq_deadline(rq));
 
 	return buf;
 }
@@ -1175,11 +1188,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			goto check_secondary;
 		} else if (need_preempt(engine, last)) {
 			ENGINE_TRACE(engine,
-				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
+				     "preempting last=%llx:%llu, dl=%llu, prio=%d\n",
 				     last->fence.context,
 				     last->fence.seqno,
-				     last->sched.attr.priority,
-				     execlists->queue_priority_hint);
+				     rq_deadline(last),
+				     rq_prio(last));
 			record_preemption(execlists);
 
 			/*
@@ -1201,11 +1214,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (timeslice_expired(engine, last)) {
 			ENGINE_TRACE(engine,
-				     "expired:%s last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
+				     "expired:%s last=%llx:%llu, deadline=%llu, now=%llu, yield?=%s\n",
 				     yesno(timer_expired(&execlists->timer)),
 				     last->fence.context, last->fence.seqno,
-				     rq_prio(last),
-				     execlists->queue_priority_hint,
+				     rq_deadline(last),
+				     i915_sched_to_ticks(ktime_get()),
 				     yesno(timeslice_yield(execlists, last)));
 
 			ring_set_paused(engine, 1);
@@ -1261,7 +1274,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(&engine->active))) {
+		if (!dl_before(rq, first_request(&engine->active))) {
 			spin_unlock(&ve->base.active.lock);
 			break;
 		}
@@ -1275,16 +1288,15 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 
 		ENGINE_TRACE(engine,
-			     "virtual rq=%llx:%lld%s, new engine? %s\n",
+			     "virtual rq=%llx:%lld%s, dl %llx, new engine? %s\n",
 			     rq->fence.context,
 			     rq->fence.seqno,
 			     __i915_request_is_complete(rq) ? "!" :
 			     __i915_request_has_started(rq) ? "*" :
 			     "",
+			     rq_deadline(rq),
 			     yesno(engine != ve->siblings[0]));
-
 		WRITE_ONCE(ve->request, NULL);
-		WRITE_ONCE(ve->base.execlists.queue_priority_hint, INT_MIN);
 
 		rb = &ve->nodes[engine->id].rb;
 		rb_erase_cached(rb, &execlists->virtual);
@@ -1375,6 +1387,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				if (rq->execution_mask != engine->mask)
 					goto done;
 
+				if (unlikely(dl_before(first_virtual(engine),
+						       rq)))
+					goto done;
+
 				/*
 				 * If GVT overrides us we only ever submit
 				 * port[0], leaving port[1] empty. Note that we
@@ -1411,24 +1427,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	}
 done:
 	*port++ = i915_request_get(last);
-
-	/*
-	 * Here be a bit of magic! Or sleight-of-hand, whichever you prefer.
-	 *
-	 * We choose the priority hint such that if we add a request of greater
-	 * priority than this, we kick the submission tasklet to decide on
-	 * the right order of submitting the requests to hardware. We must
-	 * also be prepared to reorder requests as they are in-flight on the
-	 * HW. We derive the priority hint then as the first "hole" in
-	 * the HW submission ports and if there are no available slots,
-	 * the priority of the lowest executing request, i.e. last.
-	 *
-	 * When we do receive a higher priority request ready to run from the
-	 * user, see queue_request(), the priority hint is bumped to that
-	 * request triggering preemption on the next dequeue (or subsequent
-	 * interrupt for secondary ports).
-	 */
-	execlists->queue_priority_hint = queue_prio(&engine->active);
 	spin_unlock(&engine->active.lock);
 
 	/*
@@ -2621,10 +2619,6 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 static void nop_submission_tasklet(unsigned long data)
 {
-	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-
-	/* The driver is wedged; don't process any more events. */
-	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
 }
 
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
@@ -2691,16 +2685,12 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 			rq->engine = engine;
 			__i915_request_submit(rq);
 			i915_request_put(rq);
-
-			ve->base.execlists.queue_priority_hint = INT_MIN;
 		}
 		spin_unlock(&ve->base.active.lock);
 	}
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
-	execlists->queue_priority_hint = INT_MIN;
-
 	GEM_BUG_ON(__tasklet_is_enabled(&engine->active.tasklet));
 	engine->active.tasklet.func = nop_submission_tasklet;
 
@@ -3100,7 +3090,8 @@ static const struct intel_context_ops virtual_context_ops = {
 	.destroy = virtual_context_destroy,
 };
 
-static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
+static intel_engine_mask_t
+virtual_submission_mask(struct virtual_engine *ve, u64 *deadline)
 {
 	struct i915_request *rq;
 	intel_engine_mask_t mask;
@@ -3117,9 +3108,11 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 		mask = ve->siblings[0]->mask;
 	}
 
-	ENGINE_TRACE(&ve->base, "rq=%llx:%lld, mask=%x, prio=%d\n",
+	*deadline = rq_deadline(rq);
+
+	ENGINE_TRACE(&ve->base, "rq=%llx:%llu, mask=%x, dl=%llu\n",
 		     rq->fence.context, rq->fence.seqno,
-		     mask, ve->base.execlists.queue_priority_hint);
+		     mask, *deadline);
 
 	return mask;
 }
@@ -3127,12 +3120,12 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 static void virtual_submission_tasklet(unsigned long data)
 {
 	struct virtual_engine * const ve = (struct virtual_engine *)data;
-	const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
 	intel_engine_mask_t mask;
+	u64 deadline;
 	unsigned int n;
 
 	rcu_read_lock();
-	mask = virtual_submission_mask(ve);
+	mask = virtual_submission_mask(ve, &deadline);
 	rcu_read_unlock();
 	if (unlikely(!mask))
 		return;
@@ -3165,7 +3158,8 @@ static void virtual_submission_tasklet(unsigned long data)
 			 */
 			first = rb_first_cached(&sibling->execlists.virtual) ==
 				&node->rb;
-			if (prio == node->prio || (prio > node->prio && first))
+			if (deadline == node->deadline ||
+			    (deadline < node->deadline && first))
 				goto submit_engine;
 
 			rb_erase_cached(&node->rb, &sibling->execlists.virtual);
@@ -3179,7 +3173,7 @@ static void virtual_submission_tasklet(unsigned long data)
 
 			rb = *parent;
 			other = rb_entry(rb, typeof(*other), rb);
-			if (prio > other->prio) {
+			if (deadline < other->deadline) {
 				parent = &rb->rb_left;
 			} else {
 				parent = &rb->rb_right;
@@ -3194,8 +3188,8 @@ static void virtual_submission_tasklet(unsigned long data)
 
 submit_engine:
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
-		node->prio = prio;
-		if (first && prio > sibling->execlists.queue_priority_hint)
+		node->deadline = deadline;
+		if (first)
 			i915_sched_kick(&sibling->active);
 
 unlock_engine:
@@ -3231,7 +3225,9 @@ static void virtual_submit_request(struct i915_request *rq)
 		i915_request_put(ve->request);
 	}
 
-	ve->base.execlists.queue_priority_hint = rq_prio(rq);
+	rq->sched.deadline =
+		min(rq->sched.deadline,
+		    i915_scheduler_next_virtual_deadline(rq_prio(rq)));
 	ve->request = i915_request_get(rq);
 
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
@@ -3334,7 +3330,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
-	ve->base.execlists.queue_priority_hint = INT_MIN;
 	tasklet_init(&ve->base.active.tasklet,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
@@ -3518,10 +3513,6 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 		show_request(m, last, "\t\t", 0);
 	}
 
-	if (execlists->queue_priority_hint != INT_MIN)
-		drm_printf(m, "\t\tQueue priority hint: %d\n",
-			   READ_ONCE(execlists->queue_priority_hint));
-
 	last = NULL;
 	count = 0;
 	for_each_priolist(pl, &engine->active.queue) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 291fb04807b9..bd170ebc7e49 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -868,7 +868,7 @@ semaphore_queue(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
 static int
 release_queue(struct intel_engine_cs *engine,
 	      struct i915_vma *vma,
-	      int idx, int prio)
+	      int idx, u64 deadline)
 {
 	struct i915_request *rq;
 	u32 *cs;
@@ -893,10 +893,7 @@ release_queue(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	local_bh_disable();
-	i915_request_set_priority(rq, prio);
-	local_bh_enable(); /* kick tasklet */
-
+	i915_request_set_deadline(rq, deadline);
 	i915_request_put(rq);
 
 	return 0;
@@ -910,6 +907,7 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 	struct intel_engine_cs *engine;
 	struct i915_request *head;
 	enum intel_engine_id id;
+	long timeout;
 	int err, i, n = 0;
 
 	head = semaphore_queue(outer, vma, n++);
@@ -930,12 +928,16 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 		}
 	}
 
-	err = release_queue(outer, vma, n, I915_PRIORITY_BARRIER);
+	err = release_queue(outer, vma, n, 0);
 	if (err)
 		goto out;
 
-	if (i915_request_wait(head, 0,
-			      2 * outer->gt->info.num_engines * (count + 2) * (count + 3)) < 0) {
+	/* Expected number of pessimal slices required */
+	timeout = outer->gt->info.num_engines * (count + 2) * (count + 3);
+	timeout *= 4; /* safety factor, including bucketing */
+	timeout += HZ / 2; /* and include the request completion */
+
+	if (i915_request_wait(head, 0, timeout) < 0) {
 		pr_err("Failed to slice along semaphore chain of length (%d, %d)!\n",
 		       count, n);
 		GEM_TRACE_DUMP();
@@ -1040,6 +1042,8 @@ create_rewinder(struct intel_context *ce,
 		err = i915_request_await_dma_fence(rq, &wait->fence);
 		if (err)
 			goto err;
+
+		i915_request_set_deadline(rq, rq_deadline(wait));
 	}
 
 	cs = intel_ring_begin(rq, 14);
@@ -1316,6 +1320,7 @@ static int live_timeslice_queue(void *arg)
 			goto err_heartbeat;
 		}
 		i915_request_set_priority(rq, I915_PRIORITY_MAX);
+		i915_request_set_deadline(rq, 0);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1338,10 +1343,9 @@ static int live_timeslice_queue(void *arg)
 		}
 
 		GEM_BUG_ON(i915_request_completed(rq));
-		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 		/* Queue: semaphore signal, matching priority as semaphore */
-		err = release_queue(engine, vma, 1, effective_prio(rq));
+		err = release_queue(engine, vma, 1, rq_deadline(rq));
 		if (err)
 			goto err_rq;
 
@@ -1452,6 +1456,7 @@ static int live_timeslice_nopreempt(void *arg)
 			goto out_spin;
 		}
 
+		rq->sched.deadline = 0;
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 		i915_request_get(rq);
 		i915_request_add(rq);
@@ -1824,6 +1829,7 @@ static int live_late_preempt(void *arg)
 
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
 	ctx_lo->sched.priority = 1;
+	ctx_hi->sched.priority = I915_PRIORITY_MIN;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -2924,6 +2930,9 @@ static int live_preempt_gang(void *arg)
 		while (rq) { /* wait for each rq from highest to lowest prio */
 			struct i915_request *n = list_next_entry(rq, mock.link);
 
+			/* With deadlines, no strict priority ordering */
+			i915_request_set_deadline(rq, 0);
+
 			if (err == 0 && i915_request_wait(rq, 0, HZ / 5) < 0) {
 				struct drm_printer p =
 					drm_info_printer(engine->i915->drm.dev);
@@ -3146,6 +3155,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_add(rq);
 
 	i915_request_set_priority(rq, I915_PRIORITY_MAX);
+	i915_request_set_deadline(rq, 0);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index cc0120411d62..3201dc334268 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -878,7 +878,10 @@ static int __igt_reset_engines(struct intel_gt *gt,
 					break;
 				}
 
-				if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+				/* With deadlines, no strict priority */
+				i915_request_set_deadline(rq, 0);
+
+				if (i915_request_wait(rq, 0, HZ / 2) < 0) {
 					struct drm_printer p =
 						drm_info_printer(gt->i915->drm.dev);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e26f7f957468..88a61423385d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1171,6 +1171,7 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
 
 	intel_ring_advance(rq, cs);
 
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 err_rq:
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 34be8dc8949e..1d4045ade19c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -327,8 +327,6 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 		i915_priolist_advance(&engine->active.queue, pl);
 	}
 done:
-	execlists->queue_priority_hint =
-		pl != &engine->active.queue.sentinel ? pl->priority : INT_MIN;
 	if (submit) {
 		*port = schedule_in(last, port - execlists->inflight);
 		*++port = NULL;
@@ -487,8 +485,6 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
-	execlists->queue_priority_hint = INT_MIN;
-
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index 807cd8f65481..839c48f4b0e9 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -22,6 +22,8 @@ enum {
 
 	/* Interactive workload, scheduled for immediate pageflipping */
 	I915_PRIORITY_DISPLAY,
+
+	__I915_PRIORITY_KERNEL__
 };
 
 /* Smallest priority value that cannot be bumped. */
@@ -35,8 +37,7 @@ enum {
  * i.e. nothing can have higher priority and force us to usurp the
  * active request.
  */
-#define I915_PRIORITY_UNPREEMPTABLE INT_MAX
-#define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
+#define I915_PRIORITY_BARRIER INT_MAX
 
 #ifdef CONFIG_64BIT
 #define I915_PRIOLIST_HEIGHT 12
@@ -46,7 +47,7 @@ enum {
 
 struct i915_priolist {
 	struct list_head requests;
-	int priority;
+	u64 deadline;
 
 	int level;
 	struct i915_priolist *next[I915_PRIOLIST_HEIGHT];
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8408b7317ebc..c72a8710fe98 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -518,7 +518,7 @@ bool __i915_request_submit(struct i915_request *request)
 	struct intel_engine_cs *engine = request->engine;
 	bool result = false;
 
-	RQ_TRACE(request, "\n");
+	RQ_TRACE(request, "dl %llu\n", request->sched.deadline);
 
 	GEM_BUG_ON(!irqs_disabled());
 	lockdep_assert_held(&engine->active.lock);
@@ -711,6 +711,7 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
+		i915_request_update_deadline(rq);
 		break;
 
 	case FENCE_FREE:
@@ -1871,14 +1872,15 @@ long i915_request_wait(struct i915_request *rq,
 	return timeout;
 }
 
-static int print_sched_attr(const struct i915_sched_attr *attr,
-			    char *buf, int x, int len)
+static int print_sched(const struct i915_sched_node *node,
+		       char *buf, int x, int len)
 {
-	if (attr->priority == I915_PRIORITY_INVALID)
+	if (node->attr.priority == I915_PRIORITY_INVALID)
 		return x;
 
 	x += snprintf(buf + x, len - x,
-		      " prio=%d", attr->priority);
+		      " prio=%d, dl=%llu",
+		      node->attr.priority, node->deadline);
 
 	return x;
 }
@@ -1958,7 +1960,7 @@ void i915_request_show(struct drm_printer *m,
 	 *      from the lists
 	 */
 
-	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
+	x = print_sched(&rq->sched, buf, x, sizeof(buf));
 
 	drm_printf(m, "%s%.*s%c %llx:%lld%s%s %s @ %dms: %s\n",
 		   prefix, indent, "                ",
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a0e8ecd06d8d..238656b37d86 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -33,6 +33,11 @@ static void node_put(struct i915_sched_node *node)
 	i915_request_put(container_of(node, struct i915_request, sched));
 }
 
+static inline u64 rq_deadline(const struct i915_request *rq)
+{
+	return READ_ONCE(rq->sched.deadline);
+}
+
 static inline int rq_prio(const struct i915_request *rq)
 {
 	return READ_ONCE(rq->sched.attr.priority);
@@ -46,6 +51,14 @@ static int ipi_get_prio(struct i915_request *rq)
 	return xchg(&rq->sched.ipi_priority, I915_PRIORITY_INVALID);
 }
 
+static u64 ipi_get_deadline(struct i915_request *rq)
+{
+	if (READ_ONCE(rq->sched.ipi_deadline) == I915_DEADLINE_NEVER)
+		return I915_DEADLINE_NEVER;
+
+	return xchg64(&rq->sched.ipi_deadline, I915_DEADLINE_NEVER);
+}
+
 static void ipi_schedule(struct work_struct *wrk)
 {
 	struct i915_sched_ipi *ipi = container_of(wrk, typeof(*ipi), work);
@@ -53,9 +66,11 @@ static void ipi_schedule(struct work_struct *wrk)
 
 	do {
 		struct i915_request *rn = xchg(&rq->sched.ipi_link, NULL);
+		u64 deadline;
 		int prio;
 
 		prio = ipi_get_prio(rq);
+		deadline = ipi_get_deadline(rq);
 
 		/*
 		 * For cross-engine scheduling to work we rely on one of two
@@ -80,6 +95,7 @@ static void ipi_schedule(struct work_struct *wrk)
 		 */
 		local_bh_disable();
 		i915_request_set_priority(rq, prio);
+		i915_request_set_deadline(rq, deadline);
 		local_bh_enable();
 
 		i915_request_put(rq);
@@ -98,7 +114,7 @@ static void init_priolist(struct i915_priolist_root *const root)
 	struct i915_priolist *pl = &root->sentinel;
 
 	memset_p((void **)pl->next, pl, ARRAY_SIZE(pl->next));
-	pl->priority = INT_MIN;
+	pl->deadline = I915_DEADLINE_NEVER;
 	INIT_LIST_HEAD(&pl->requests);
 	pl->level = 0;
 }
@@ -231,7 +247,7 @@ static inline unsigned int random_level(struct i915_priolist_root *root)
 }
 
 static struct list_head *
-lookup_priolist(struct intel_engine_cs *engine, int prio)
+lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 {
 	struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
 	struct i915_sched_engine * const se = &engine->active;
@@ -239,12 +255,13 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	struct i915_priolist *pl, *tmp;
 	int lvl;
 
+	GEM_BUG_ON(deadline == I915_DEADLINE_NEVER);
 	lockdep_assert_held(&se->lock);
 	if (unlikely(se->no_priolist))
-		prio = I915_PRIORITY_NORMAL;
+		deadline = 0;
 
 	for_each_priolist(pl, root) { /* recycle any empty elements before us */
-		if (pl->priority >= prio || !list_empty(&pl->requests))
+		if (pl->deadline >= deadline || !list_empty(&pl->requests))
 			break;
 
 		i915_priolist_advance(root, pl);
@@ -254,14 +271,14 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	pl = &root->sentinel;
 	lvl = pl->level;
 	do {
-		while (tmp = pl->next[lvl], tmp->priority >= prio)
+		while (tmp = pl->next[lvl], tmp->deadline <= deadline)
 			pl = tmp;
-		if (pl->priority == prio)
+		if (pl->deadline == deadline)
 			goto out;
 		update[lvl] = pl;
 	} while (--lvl >= 0);
 
-	if (prio == I915_PRIORITY_NORMAL) {
+	if (!deadline) {
 		pl = &se->default_priolist;
 	} else if (!list_empty(&root->sentinel.requests)) {
 		pl = list_first_entry(&root->sentinel.requests,
@@ -272,7 +289,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 		pl = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
 		/* Convert an allocation failure to a priority bump */
 		if (unlikely(!pl)) {
-			prio = I915_PRIORITY_NORMAL; /* recurses just once */
+			deadline = 0; /* recurses just once */
 
 			/* To maintain ordering with all rendering, after an
 			 * allocation failure we have to disable all scheduling.
@@ -287,7 +304,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 		}
 	}
 
-	pl->priority = prio;
+	pl->deadline = deadline;
 	INIT_LIST_HEAD(&pl->requests);
 
 	lvl = random_level(root);
@@ -309,7 +326,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 		chk = &root->sentinel;
 		lvl = chk->level;
 		do {
-			while (tmp = chk->next[lvl], tmp->priority >= prio)
+			while (tmp = chk->next[lvl], tmp->deadline <= deadline)
 				chk = tmp;
 		} while (--lvl >= 0);
 
@@ -329,7 +346,7 @@ void i915_priolist_advance(struct i915_priolist_root *root,
 	GEM_BUG_ON(!list_empty(&pl->requests));
 	GEM_BUG_ON(pl == &root->sentinel);
 
-	if (pl->priority != I915_PRIORITY_NORMAL)
+	if (pl->deadline)
 		list_add(&pl->requests, &root->sentinel.requests);
 
 	for (lvl = 0; lvl <= pl->level; lvl++)
@@ -364,53 +381,236 @@ stack_pop(struct i915_request *rq,
 	return rq;
 }
 
-static inline bool need_preempt(int prio, int active)
+static void ipi_deadline(struct i915_request *rq, u64 deadline)
+{
+	u64 old = READ_ONCE(rq->sched.ipi_deadline);
+
+	do {
+		if (deadline >= old)
+			return;
+	} while (!try_cmpxchg64(&rq->sched.ipi_deadline, &old, deadline));
+
+	__ipi_add(rq);
+}
+
+static bool is_first_priolist(const struct intel_engine_cs *engine,
+			      const struct list_head *requests)
+{
+	return requests == &priolist_first(&engine->active.queue)->requests;
+}
+
+static bool __i915_request_set_deadline(struct i915_request *rq, u64 deadline)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct list_head *pos = &rq->sched.signalers_list;
+	struct list_head *plist;
+
+	/* Fifo and depth-first replacement ensure our deps execute first */
+	plist = lookup_priolist(engine, deadline);
+
+	rq->sched.dfs.next = NULL;
+	do {
+		list_for_each_continue(pos, &rq->sched.signalers_list) {
+			struct i915_dependency *p =
+				list_entry(pos, typeof(*p), signal_link);
+			struct i915_request *s =
+				container_of(p->signaler, typeof(*s), sched);
+
+			if (rq_deadline(s) <= deadline)
+				continue;
+
+			if (__i915_request_is_complete(s))
+				continue;
+
+			if (s->engine != engine) {
+				ipi_deadline(s, deadline);
+				continue;
+			}
+
+			/* Remember our position along this branch */
+			rq = stack_push(s, rq, pos);
+			pos = &rq->sched.signalers_list;
+		}
+
+		RQ_TRACE(rq, "set-deadline:%llu\n", deadline);
+		WRITE_ONCE(rq->sched.deadline, deadline);
+
+		/*
+		 * Once the request is ready, it will be placed into the
+		 * priority lists and then onto the HW runlist. Before the
+		 * request is ready, it does not contribute to our preemption
+		 * decisions and we can safely ignore it, as it will, and
+		 * any preemption required, be dealt with upon submission.
+		 * See engine->submit_request()
+		 */
+		GEM_BUG_ON(rq->engine != engine);
+		if (i915_request_in_priority_queue(rq))
+			list_move_tail(&rq->sched.link, plist);
+	} while ((rq = stack_pop(rq, &pos)));
+
+	return is_first_priolist(engine, plist);
+}
+
+void i915_request_set_deadline(struct i915_request *rq, u64 deadline)
+{
+	struct intel_engine_cs *engine;
+	unsigned long flags;
+
+	if (deadline >= rq_deadline(rq))
+		return;
+
+	engine = lock_engine_irqsave(rq, flags);
+	if (!intel_engine_has_scheduler(engine))
+		goto unlock;
+
+	if (i915_request_completed(rq))
+		goto unlock;
+
+	if (deadline >= rq_deadline(rq))
+		goto unlock;
+
+	rcu_read_lock();
+	if (__i915_request_set_deadline(rq, deadline))
+		i915_sched_kick(&engine->active);
+	rcu_read_unlock();
+	GEM_BUG_ON(rq_deadline(rq) != deadline);
+
+unlock:
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+}
+
+static u64 prio_slice(int prio)
 {
+	u64 slice;
+	int sf;
+
 	/*
-	 * Allow preemption of low -> normal -> high, but we do
-	 * not allow low priority tasks to preempt other low priority
-	 * tasks under the impression that latency for low priority
-	 * tasks does not matter (as much as background throughput),
-	 * so kiss.
+	 * This is the central heuristic to the virtual deadlines. By
+	 * imposing that each task takes an equal amount of time, we
+	 * let each client have an equal slice of the GPU time. By
+	 * bringing the virtual deadline forward, that client will then
+	 * have more GPU time, and vice versa a lower priority client will
+	 * have a later deadline and receive less GPU time.
+	 *
+	 * In BFS/MuQSS, the prio_ratios[] are based on the task nice range of
+	 * [-20, 20], with each lower priority having a ~10% longer deadline,
+	 * with the note that the proportion of CPU time between two clients
+	 * of different priority will be the square of the relative prio_slice.
+	 *
+	 * In contrast, this prio_slice() curve was chosen because it gave good
+	 * results with igt/gem_exec_schedule. It may not be the best choice!
+	 *
+	 * With a 1ms scheduling quantum:
+	 *
+	 *   MAX USER:  ~32us deadline
+	 *   0:         ~16ms deadline
+	 *   MIN_USER: 1000ms deadline
 	 */
-	return prio >= max(I915_PRIORITY_NORMAL, active);
+
+	if (prio >= __I915_PRIORITY_KERNEL__)
+		return INT_MAX - prio;
+
+	slice = __I915_PRIORITY_KERNEL__ - prio;
+	if (prio >= 0)
+		sf = 20 - 6;
+	else
+		sf = 20 - 1;
+
+	return slice << sf;
+}
+
+u64 i915_scheduler_virtual_deadline(u64 kt, int priority)
+{
+	return i915_sched_to_ticks(kt + prio_slice(priority));
+}
+
+u64 i915_scheduler_next_virtual_deadline(int priority)
+{
+	return i915_scheduler_virtual_deadline(ktime_get_mono_fast_ns(), priority);
 }
 
-static void kick_submission(struct intel_engine_cs *engine,
-			    const struct i915_request *rq,
-			    int prio)
+static u64 signal_deadline(const struct i915_request *rq)
 {
-	const struct i915_request *inflight;
+	u64 last = ktime_get_mono_fast_ns();
+	const struct i915_dependency *p;
 
 	/*
-	 * We only need to kick the tasklet once for the high priority
-	 * new context we add into the queue.
+	 * Find the earliest point at which we will become 'ready',
+	 * which we infer from the deadline of all active signalers.
+	 * We will position ourselves at the end of that chain of work.
 	 */
-	if (prio <= engine->execlists.queue_priority_hint)
-		return;
 
-	/* Nothing currently active? We're overdue for a submission! */
-	inflight = execlists_active(&engine->execlists);
-	if (!inflight)
-		return;
+	rcu_read_lock();
+	for_each_signaler(p, rq) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+		u64 deadline;
+		int prio;
+
+		if (__i915_request_is_complete(s))
+			continue;
+
+		if (s->timeline == rq->timeline &&
+		    __i915_request_has_started(s))
+			continue;
+
+		prio = rq_prio(s);
+		if (prio < rq_prio(rq))
+			continue;
+
+		deadline = rq_deadline(s);
+		if (deadline == I915_DEADLINE_NEVER) /* retired & reused */
+			continue;
+
+		deadline = i915_sched_to_ns(deadline);
+		if (p->flags & I915_DEPENDENCY_WEAK)
+			deadline -= prio_slice(prio);
+
+		last = max(last, deadline);
+	}
+	rcu_read_unlock();
+
+	return last;
+}
+
+static int adj_prio(const struct i915_request *rq)
+{
+	int prio = rq_prio(rq);
 
 	/*
-	 * If we are already the currently executing context, don't
-	 * bother evaluating if we should preempt ourselves.
+	 * Deprioritize semaphore waiters. We only want to run these if there
+	 * is nothing ready to run first.
+	 *
+	 * Note by giving a more distant deadline (due to a lower priority)
+	 * we do not prevent them from having a slice of the GPU, and if there
+	 * is still contention at that point, we expect to immediately yield
+	 * on the semaphore.
+	 *
+	 * When all semaphores are signaled, we will update the request
+	 * to remove the semaphore penalty.
 	 */
-	if (inflight->context == rq->context)
-		return;
+	if (rq->sched.semaphores && !i915_sw_fence_signaled(&rq->semaphore))
+		prio -= 1024;
 
-	ENGINE_TRACE(engine,
-		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
-		     prio,
-		     rq->fence.context, rq->fence.seqno,
-		     inflight->fence.context, inflight->fence.seqno,
-		     inflight->sched.attr.priority);
+	return prio;
+}
 
-	engine->execlists.queue_priority_hint = prio;
-	if (need_preempt(prio, rq_prio(inflight)))
-		i915_sched_kick(&engine->active);
+static u64 earliest_deadline(const struct i915_request *rq)
+{
+	return i915_scheduler_virtual_deadline(signal_deadline(rq),
+					       adj_prio(rq));
+}
+
+static bool set_earliest_deadline(struct i915_request *rq, u64 old)
+{
+	u64 dl;
+
+	/* Recompute our deadlines and promote after a priority change */
+	dl = min(earliest_deadline(rq), rq_deadline(rq));
+	if (dl >= old)
+		return false;
+
+	return __i915_request_set_deadline(rq, dl);
 }
 
 static void ipi_priority(struct i915_request *rq, int prio)
@@ -425,13 +625,11 @@ static void ipi_priority(struct i915_request *rq, int prio)
 	__ipi_add(rq);
 }
 
-static void __i915_request_set_priority(struct i915_request *rq, int prio)
+static bool __i915_request_set_priority(struct i915_request *rq, int prio)
 {
 	struct intel_engine_cs *engine = rq->engine;
 	struct list_head *pos = &rq->sched.signalers_list;
-	struct list_head *plist;
-
-	plist = lookup_priolist(engine, prio);
+	bool kick = false;
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -453,6 +651,8 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	 */
 	rq->sched.dfs.next = NULL;
 	do {
+		struct i915_request *next;
+
 		list_for_each_continue(pos, &rq->sched.signalers_list) {
 			struct i915_dependency *p =
 				list_entry(pos, typeof(*p), signal_link);
@@ -478,6 +678,8 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 		RQ_TRACE(rq, "set-priority:%d\n", prio);
 		WRITE_ONCE(rq->sched.attr.priority, prio);
 
+		next = stack_pop(rq, &pos);
+
 		/*
 		 * Once the request is ready, it will be placed into the
 		 * priority lists and then onto the HW runlist. Before the
@@ -486,16 +688,15 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 		 * any preemption required, be dealt with upon submission.
 		 * See engine->submit_request()
 		 */
-		if (!i915_request_is_ready(rq))
-			continue;
-
 		GEM_BUG_ON(rq->engine != engine);
-		if (i915_request_in_priority_queue(rq))
-			list_move_tail(&rq->sched.link, plist);
+		if (i915_request_is_ready(rq) &&
+		    set_earliest_deadline(rq, rq_deadline(rq)))
+			kick = true;
 
-		/* Defer (tasklet) submission until after all updates. */
-		kick_submission(engine, rq, prio);
-	} while ((rq = stack_pop(rq, &pos)));
+		rq = next;
+	} while (rq);
+
+	return kick;
 }
 
 void i915_request_set_priority(struct i915_request *rq, int prio)
@@ -548,7 +749,8 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 		goto unlock;
 
 	rcu_read_lock();
-	__i915_request_set_priority(rq, prio);
+	if (__i915_request_set_priority(rq, prio))
+		i915_sched_kick(&engine->active);
 	rcu_read_unlock();
 	GEM_BUG_ON(rq_prio(rq) != prio);
 
@@ -556,18 +758,27 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+bool __intel_engine_queue_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq)
+{
+	lockdep_assert_held(&engine->active.lock);
+	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+	return set_earliest_deadline(rq, I915_DEADLINE_NEVER);
+}
+
 void __intel_engine_defer_request(struct intel_engine_cs *engine,
 				  struct i915_request *rq)
 {
 	struct list_head *pos = &rq->sched.waiters_list;
 	struct i915_request *rn;
 	LIST_HEAD(dfs);
-	int prio;
+	u64 deadline;
 
 	lockdep_assert_held(&engine->active.lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
-	prio = rq_prio(rq);
+	deadline = max(rq_deadline(rq),
+		       i915_scheduler_next_virtual_deadline(adj_prio(rq)));
 
 	/*
 	 * When we defer a request, we must maintain its order with respect
@@ -594,30 +805,32 @@ void __intel_engine_defer_request(struct intel_engine_cs *engine,
 				   __i915_request_has_started(w) &&
 				   !__i915_request_is_complete(rq));
 
+			/* An unready waiter imposes no deadline */
 			if (!i915_request_in_priority_queue(w))
 				continue;
 
 			/*
-			 * We also need to reorder within the same priority.
+			 * We also need to reorder within the same deadline.
 			 *
 			 * This is unlike priority-inheritance, where if the
 			 * signaler already has a higher priority [earlier
 			 * deadline] than us, we can ignore as it will be
 			 * scheduled first. If a waiter already has the
-			 * same priority, we still have to push it to the end
+			 * same deadline, we still have to push it to the end
 			 * of the list. This unfortunately means we cannot
 			 * use the rq_deadline() itself as a 'visited' bit.
 			 */
-			if (rq_prio(w) < prio)
+			if (rq_deadline(w) > deadline)
 				continue;
 
-			GEM_BUG_ON(rq_prio(w) != prio);
-
 			/* Remember our position along this branch */
 			rq = stack_push(w, rq, pos);
 			pos = &rq->sched.waiters_list;
 		}
 
+		RQ_TRACE(rq, "set-deadline:%llu\n", deadline);
+		WRITE_ONCE(rq->sched.deadline, deadline);
+
 		/* Note list is reversed for waiters wrt signal hierarchy */
 		GEM_BUG_ON(rq->engine != engine);
 		GEM_BUG_ON(!i915_request_in_priority_queue(rq));
@@ -627,33 +840,13 @@ void __intel_engine_defer_request(struct intel_engine_cs *engine,
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	} while ((rq = stack_pop(rq, &pos)));
 
-	pos = lookup_priolist(engine, prio);
+	pos = lookup_priolist(engine, deadline);
 	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 		list_add_tail(&rq->sched.link, pos);
 	}
 }
 
-static void queue_request(struct intel_engine_cs *engine,
-			  struct i915_request *rq)
-{
-	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link, lookup_priolist(engine, rq_prio(rq)));
-	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-}
-
-static bool submit_queue(struct intel_engine_cs *engine,
-			 const struct i915_request *rq)
-{
-	struct intel_engine_execlists *execlists = &engine->execlists;
-
-	if (rq_prio(rq) <= execlists->queue_priority_hint)
-		return false;
-
-	execlists->queue_priority_hint = rq_prio(rq);
-	return true;
-}
-
 static bool hold_request(const struct i915_request *rq)
 {
 	struct i915_dependency *p;
@@ -691,6 +884,7 @@ void i915_request_enqueue(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
 	struct i915_sched_engine *se = &engine->active;
+	u64 dl = earliest_deadline(rq);
 	unsigned long flags;
 	bool kick = false;
 
@@ -703,11 +897,11 @@ void i915_request_enqueue(struct i915_request *rq)
 		list_add_tail(&rq->sched.link, &se->hold);
 		i915_request_set_hold(rq);
 	} else {
-		queue_request(engine, rq);
-
-		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
-
-		kick = submit_queue(engine, rq);
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		kick = __i915_request_set_deadline(rq,
+						   min(dl, rq_deadline(rq)));
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+		GEM_BUG_ON(i915_sched_is_idle(se));
 	}
 
 	GEM_BUG_ON(list_empty(&rq->sched.link));
@@ -720,8 +914,8 @@ struct i915_request *
 __intel_engine_rewind_requests(struct intel_engine_cs *engine)
 {
 	struct i915_request *rq, *rn, *active = NULL;
+	u64 deadline = I915_DEADLINE_NEVER;
 	struct list_head *pl;
-	int prio = I915_PRIORITY_INVALID;
 
 	lockdep_assert_held(&engine->active.lock);
 
@@ -735,13 +929,20 @@ __intel_engine_rewind_requests(struct intel_engine_cs *engine)
 
 		__i915_request_unsubmit(rq);
 
-		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
-		if (rq_prio(rq) != prio) {
-			prio = rq_prio(rq);
-			pl = lookup_priolist(engine, prio);
+		if (__i915_request_has_started(rq)) {
+			u64 deadline =
+				i915_scheduler_next_virtual_deadline(rq_prio(rq));
+			rq->sched.deadline = min(rq_deadline(rq), deadline);
+		}
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+
+		if (rq_deadline(rq) != deadline) {
+			deadline = rq_deadline(rq);
+			pl = lookup_priolist(engine, deadline);
 		}
 		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
+		GEM_BUG_ON(i915_request_in_priority_queue(rq));
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
@@ -821,14 +1022,10 @@ void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 				   struct i915_request *rq)
 {
 	LIST_HEAD(list);
+	bool submit = false;
 
 	lockdep_assert_held(&engine->active.lock);
 
-	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
-		engine->execlists.queue_priority_hint = rq_prio(rq);
-		i915_sched_kick(&engine->active);
-	}
-
 	/*
 	 * Move this request back to the priority queue, and all of its
 	 * children and grandchildren that were suspended along with it.
@@ -842,9 +1039,7 @@ void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
 
 		i915_request_clear_hold(rq);
-		list_move_tail(&rq->sched.link,
-			       lookup_priolist(rq->engine, rq_prio(rq)));
-		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		submit |= __intel_engine_queue_request(rq->engine, rq);
 
 		/* Also release any children on this engine that are ready */
 		for_each_waiter(p, rq) {
@@ -874,6 +1069,18 @@ void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 
 		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
 	} while (rq);
+
+	if (submit)
+		i915_sched_kick(&engine->active);
+}
+
+void i915_request_update_deadline(struct i915_request *rq)
+{
+	if (!i915_request_in_priority_queue(rq))
+		return;
+
+	/* Recompute our deadlines and promote after a priority change */
+	i915_request_set_deadline(rq, earliest_deadline(rq));
 }
 
 void i915_sched_node_init(struct i915_sched_node *node)
@@ -892,10 +1099,12 @@ void i915_sched_node_init(struct i915_sched_node *node)
 void i915_sched_node_reinit(struct i915_sched_node *node)
 {
 	node->attr.priority = I915_PRIORITY_INVALID;
+	node->deadline = I915_DEADLINE_NEVER;
 	node->semaphores = 0;
 	node->flags = 0;
 
 	GEM_BUG_ON(node->ipi_link);
+	node->ipi_deadline = I915_DEADLINE_NEVER;
 	node->ipi_priority = I915_PRIORITY_INVALID;
 
 	GEM_BUG_ON(!list_empty(&node->signalers_list));
@@ -1022,7 +1231,7 @@ void i915_request_show_with_schedule(struct drm_printer *m,
 		if (signaler->timeline == rq->timeline)
 			continue;
 
-		if (i915_request_completed(signaler))
+		if (__i915_request_is_complete(signaler))
 			continue;
 
 		i915_request_show(m, signaler, prefix, indent + 2);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 4432aab230b6..a19c6970cc5c 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -36,9 +36,17 @@ void i915_sched_park_engine(struct i915_sched_engine *se);
 void i915_sched_fini_engine(struct i915_sched_engine *se);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
+void i915_request_set_deadline(struct i915_request *request, u64 deadline);
+
+void i915_request_update_deadline(struct i915_request *request);
+
+u64 i915_scheduler_virtual_deadline(u64 kt, int priority);
+u64 i915_scheduler_next_virtual_deadline(int priority);
 
 void i915_request_enqueue(struct i915_request *request);
 
+bool __intel_engine_queue_request(struct intel_engine_cs *engine,
+				  struct i915_request *request);
 struct i915_request *
 __intel_engine_rewind_requests(struct intel_engine_cs *engine);
 void __intel_engine_defer_request(struct intel_engine_cs *engine,
@@ -49,11 +57,14 @@ bool __intel_engine_hold_request(struct intel_engine_cs *engine,
 void __intel_engine_unhold_request(struct intel_engine_cs *engine,
 				   struct i915_request *request);
 
-void __i915_priolist_free(struct i915_priolist *p);
-static inline void i915_priolist_free(struct i915_priolist *p)
+static inline u64 i915_sched_to_ticks(ktime_t kt)
+{
+	return ktime_to_ns(kt) >> I915_SCHED_DEADLINE_SHIFT;
+}
+
+static inline u64 i915_sched_to_ns(u64 deadline)
 {
-	if (p->priority != I915_PRIORITY_NORMAL)
-		__i915_priolist_free(p);
+	return deadline << I915_SCHED_DEADLINE_SHIFT;
 }
 
 static inline bool i915_sched_is_idle(const struct i915_sched_engine *se)
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index c155e4faa30b..b8c484511185 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -72,7 +72,30 @@ struct i915_sched_node {
 #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
 	unsigned long semaphores;
 
+	/**
+	 * @deadline: [virtual] deadline
+	 *
+	 * When the request is ready for execution, it is given a quota
+	 * (the engine's timeslice) and a virtual deadline. The virtual
+	 * deadline is derived from the current time:
+	 *     ktime_get() + (prio_ratio * timeslice)
+	 *
+	 * Requests are then executed in order of deadline completion.
+	 * Requests with earlier deadlines than currently executing on
+	 * the engine will preempt the active requests.
+	 *
+	 * By treating it as a virtual deadline, we use it as a hint for
+	 * when it is appropriate for a request to start with respect to
+	 * all other requests in the system. It is not a hard deadline, as
+	 * we allow requests to miss them, and we do not account for the
+	 * request runtime.
+	 */
+	u64 deadline;
+#define I915_SCHED_DEADLINE_SHIFT 19 /* i.e. roughly 500us buckets */
+#define I915_DEADLINE_NEVER U64_MAX
+
 	struct i915_request *ipi_link;
+	u64 ipi_deadline;
 	int ipi_priority;
 };
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index d2a678a2497e..382f2d490959 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -2130,6 +2130,7 @@ static int measure_preemption(struct intel_context *ce)
 
 		intel_ring_advance(rq, cs);
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		rq->sched.deadline = 0;
 
 		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
 		i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 085a00998e95..80f9126aa9af 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -12,6 +12,40 @@
 #include "selftests/igt_spinner.h"
 #include "selftests/i915_random.h"
 
+static int mock_scheduler_slices(void *dummy)
+{
+	u64 min, max, normal, kernel;
+
+	min = prio_slice(I915_PRIORITY_MIN);
+	pr_info("%8s slice: %lluus\n", "min", min >> 10);
+
+	normal = prio_slice(0);
+	pr_info("%8s slice: %lluus\n", "normal", normal >> 10);
+
+	max = prio_slice(I915_PRIORITY_MAX);
+	pr_info("%8s slice: %lluus\n", "max", max >> 10);
+
+	kernel = prio_slice(I915_PRIORITY_BARRIER);
+	pr_info("%8s slice: %lluus\n", "kernel", kernel >> 10);
+
+	if (kernel != 0) {
+		pr_err("kernel prio slice should be 0\n");
+		return -EINVAL;
+	}
+
+	if (max >= normal) {
+		pr_err("maximum prio slice should be shorter than normal\n");
+		return -EINVAL;
+	}
+
+	if (min <= normal) {
+		pr_err("minimum prio slice should be longer than normal\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int mock_skiplist_levels(void *dummy)
 {
 	struct i915_priolist_root root = {};
@@ -43,6 +77,7 @@ static int mock_skiplist_levels(void *dummy)
 int i915_scheduler_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(mock_scheduler_slices),
 		SUBTEST(mock_skiplist_levels),
 	};
 
@@ -549,6 +584,53 @@ static int igt_priority_chains(void *arg)
 	return igt_schedule_chains(arg, igt_priority);
 }
 
+static bool igt_deadline(struct i915_request *rq,
+			 unsigned long v, unsigned long e)
+{
+	i915_request_set_deadline(rq, 0);
+	GEM_BUG_ON(rq_deadline(rq) != 0);
+	return true;
+}
+
+static int igt_deadline_chains(void *arg)
+{
+	return igt_schedule_chains(arg, igt_deadline);
+}
+
+static bool igt_defer(struct i915_request *rq, unsigned long v, unsigned long e)
+{
+	struct intel_engine_cs *engine = rq->engine;
+
+	/* XXX No generic means to unwind incomplete requests yet */
+	if (!i915_request_in_priority_queue(rq))
+		return false;
+
+	if (!intel_engine_has_preemption(engine))
+		return false;
+
+	spin_lock_irq(&engine->active.lock);
+
+	/* Push all the requests to the same deadline */
+	__i915_request_set_deadline(rq, 0);
+	GEM_BUG_ON(rq_deadline(rq) != 0);
+
+	/* Then the very first request must be the one everyone depends on */
+	rq = list_first_entry(lookup_priolist(engine, 0),
+			      typeof(*rq), sched.link);
+	GEM_BUG_ON(rq->engine != engine);
+
+	/* Deferring the first request will then have to defer all requests */
+	__intel_engine_defer_request(engine, rq);
+
+	spin_unlock_irq(&engine->active.lock);
+	return true;
+}
+
+static int igt_deadline_defer(void *arg)
+{
+	return igt_schedule_chains(arg, igt_defer);
+}
+
 static struct i915_request *
 __write_timestamp(struct intel_engine_cs *engine,
 		  struct drm_i915_gem_object *obj,
@@ -764,13 +846,22 @@ static int igt_priority_cycle(void *arg)
 	return __igt_schedule_cycle(arg, igt_priority);
 }
 
+static int igt_deadline_cycle(void *arg)
+{
+	return __igt_schedule_cycle(arg, igt_deadline);
+}
+
 int i915_scheduler_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(igt_deadline_chains),
 		SUBTEST(igt_priority_chains),
 
 		SUBTEST(igt_schedule_cycle),
+		SUBTEST(igt_deadline_cycle),
 		SUBTEST(igt_priority_cycle),
+
+		SUBTEST(igt_deadline_defer),
 	};
 
 	return i915_subtests(tests, i915);
@@ -906,9 +997,54 @@ static int sparse_priority(void *arg)
 	return sparse(arg, set_priority);
 }
 
+static u64 __set_deadline(struct i915_request *rq, u64 deadline)
+{
+	u64 dt;
+
+	preempt_disable();
+	dt = ktime_get_raw_fast_ns();
+	i915_request_set_deadline(rq, deadline);
+	dt = ktime_get_raw_fast_ns() - dt;
+	preempt_enable();
+
+	return dt;
+}
+
+static bool set_deadline(struct i915_request *rq,
+			 unsigned long v, unsigned long e)
+{
+	report("set-deadline", v, e, __set_deadline(rq, 0));
+	return true;
+}
+
+static int single_deadline(void *arg)
+{
+	return single(arg, set_deadline);
+}
+
+static int wide_deadline(void *arg)
+{
+	return wide(arg, set_deadline);
+}
+
+static int inv_deadline(void *arg)
+{
+	return inv(arg, set_deadline);
+}
+
+static int sparse_deadline(void *arg)
+{
+	return sparse(arg, set_deadline);
+}
+
 int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(single_deadline),
+		SUBTEST(wide_deadline),
+		SUBTEST(inv_deadline),
+		SUBTEST(sparse_deadline),
+
 		SUBTEST(single_priority),
 		SUBTEST(wide_priority),
 		SUBTEST(inv_priority),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
