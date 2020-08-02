Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98362235929
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7296E182;
	Sun,  2 Aug 2020 16:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AA36E17D
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010457-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:44:08 +0100
Message-Id: <20200802164412.2738-39-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 38/42] drm/i915: Fair low-latency scheduling
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
inherited ensured that inversions were kept at bay, and allowed us to
dynamically boost priorities (e.g. for interactive pageflips).

The minimalistic timeslicing scheme was an attempt to introduce fairness
between long running requests, by evicting the active request at the end
of a timeslice and moving it to the back of its priority queue (while
ensuring that dependencies were kept in order). For short running
requests from many clients of equal priority, the scheme is still very
much FIFO submission ordering, and as unfair as before.

To impose fairness, we need an external metric that ensures that clients
are interpersed, we don't execute one long chain from client A before
executing any of client B. This could be imposed by the clients by using
a fences based on an external clock, that is they only submit work for a
"frame" at frame-interval, instead of submitting as much work as they
are able to. The standard SwapBuffers approach is akin to double
bufferring, where as one frame is being executed, the next is being
submitted, such that there is always a maximum of two frames per client
in the pipeline. Even this scheme exhibits unfairness under load as a
single client will execute two frames back to back before the next, and
with enough clients, deadlines will be missed.

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
requests.

To check the impact on throughput (often the downfall of latency
sensitive schedulers), we used gem_wsim to simulate various transcode
workloads with different load balancers, and varying the number of
competing [heterogenous] clients.

+mB--------------------------------------------------------------------+
|                               a                                      |
|                             cda                                      |
|                             c.a                                      |
|                             ..aa                                     |
|                           ..---.                                     |
|                           -.--+-.                                    |
|                        .c.-.-+++.  b                                 |
|               b    bb.d-c-+--+++.aab aa    b b                       |
|b  b   b   b  b.  b ..---+++-+++++....a. b. b b   b       b    b     b|
1                               A|                                     |
2                         |___AM____|                                  |
3                            |A__|                                     |
4                            |MA_|                                     |
+----------------------------------------------------------------------+
Clients   Min       Max     Median           Avg        Stddev
1       -8.20       5.4     -0.045      -0.02375   0.094722134
2      -15.96     19.28      -0.64         -1.05     2.2428076
4       -5.11      2.95      -1.15    -1.0683333    0.72382651
8       -5.63      1.85     -0.905   -0.87122449    0.73390971

The impact was on average 1% under contention due to the change in context
execution order and number of context switches.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  12 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  14 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 287 ++++-------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   5 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  41 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   6 +-
 drivers/gpu/drm/i915/i915_priolist_types.h    |   7 +-
 drivers/gpu/drm/i915/i915_request.c           |   1 +
 drivers/gpu/drm/i915/i915_scheduler.c         | 462 +++++++++++++++---
 drivers/gpu/drm/i915/i915_scheduler.h         |  29 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  23 +
 .../drm/i915/selftests/i915_mock_selftests.h  |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 105 ++++
 16 files changed, 686 insertions(+), 313 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index cbc699dc74d1..e3bda3509cd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -589,7 +589,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 	execlists->active =
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 
-	execlists->queue_priority_hint = INT_MIN;
 	execlists->queue = RB_ROOT_CACHED;
 }
 
@@ -1296,14 +1295,15 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
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
@@ -1316,7 +1316,7 @@ static void print_request(struct drm_printer *m,
 	char buf[80] = "";
 	int x = 0;
 
-	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
+	x = print_sched(&rq->sched, buf, x, sizeof(buf));
 
 	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
 		   prefix,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 4a8ff8e6a54d..b7b2f332bc3c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -244,6 +244,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 		goto out_unlock;
 	}
 
+	rq->sched.deadline = 0;
 	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
 	heartbeat_commit(rq, &attr);
 	GEM_BUG_ON(rq->sched.attr.priority < I915_PRIORITY_BARRIER);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index f7b2e07e2229..ac56df945846 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -190,6 +190,7 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	i915_request_add_active_barriers(rq);
 
 	/* Install ourselves as a preemption barrier */
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	if (likely(!__i915_request_commit(rq))) { /* engine should be idle! */
 		/*
@@ -250,9 +251,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	intel_engine_park_heartbeat(engine);
 	intel_breadcrumbs_park(engine->breadcrumbs);
 
-	/* Must be reset upon idling, or we may miss the busy wakeup. */
-	GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
-
 	if (engine->park)
 		engine->park(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index de85b969a79e..742db055d3d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -237,20 +237,6 @@ struct intel_engine_execlists {
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
 	/**
 	 * @queue: queue of requests, in priority lists
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6b06cddcfd9a..feec1b841cd3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -203,7 +203,7 @@ struct virtual_engine {
 	 */
 	struct ve_node {
 		struct rb_node rb;
-		int prio;
+		u64 deadline;
 	} nodes[I915_NUM_ENGINES];
 
 	/*
@@ -414,12 +414,17 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 
 static inline int rq_prio(const struct i915_request *rq)
 {
-	return READ_ONCE(rq->sched.attr.priority);
+	return rq->sched.attr.priority;
 }
 
-static int effective_prio(const struct i915_request *rq)
+static inline u64 rq_deadline(const struct i915_request *rq)
 {
-	int prio = rq_prio(rq);
+	return rq->sched.deadline;
+}
+
+static u64 effective_deadline(const struct i915_request *rq)
+{
+	u64 deadline = rq_deadline(rq);
 
 	/*
 	 * If this request is special and must not be interrupted at any
@@ -430,33 +435,45 @@ static int effective_prio(const struct i915_request *rq)
 	 * nopreempt for as long as desired).
 	 */
 	if (i915_request_has_nopreempt(rq))
-		prio = I915_PRIORITY_UNPREEMPTABLE;
+		deadline = 0;
 
-	return prio;
+	return deadline;
 }
 
-static int queue_prio(const struct intel_engine_execlists *execlists)
+static u64 queue_deadline(struct intel_engine_execlists *el)
 {
-	struct rb_node *rb;
+	do {
+		struct i915_priolist *p;
+		struct rb_node *rb;
 
-	rb = rb_first_cached(&execlists->queue);
-	if (!rb)
-		return INT_MIN;
+		rb = rb_first_cached(&el->queue);
+		if (!rb)
+			return I915_DEADLINE_NEVER;
+
+		p = to_priolist(rb);
+		if (likely(!list_empty(&p->requests)))
+			return p->deadline;
 
-	return to_priolist(rb)->priority;
+		rb_erase_cached(&p->node, &el->queue);
+		i915_priolist_free(p);
+	} while (1);
 }
 
-static int virtual_prio(const struct intel_engine_execlists *el)
+static u64 virtual_deadline(const struct intel_engine_execlists *el)
 {
-	struct rb_node *rb = rb_first_cached(&el->virtual);
+	struct rb_node *rb;
 
-	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
+	rb = rb_first_cached(&el->virtual);
+	if (!rb)
+		return I915_DEADLINE_NEVER;
+
+	return rb_entry(rb, struct ve_node, rb)->deadline;
 }
 
-static inline bool need_preempt(const struct intel_engine_cs *engine,
+static inline bool need_preempt(struct intel_engine_cs *engine,
 				const struct i915_request *rq)
 {
-	int last_prio;
+	u64 last_deadline;
 
 	if (!intel_engine_has_semaphores(engine))
 		return false;
@@ -479,16 +496,14 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	 * priority level: the task that is running should remain running
 	 * to preserve FIFO ordering of dependencies.
 	 */
-	last_prio = max(effective_prio(rq), I915_PRIORITY_NORMAL - 1);
-	if (engine->execlists.queue_priority_hint <= last_prio)
-		return false;
+	last_deadline = effective_deadline(rq);
 
 	/*
 	 * Check against the first request in ELSP[1], it will, thanks to the
 	 * power of PI, be the highest priority of that context.
 	 */
 	if (!list_is_last(&rq->sched.link, &engine->active.requests) &&
-	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
+	    rq_deadline(list_next_entry(rq, sched.link)) < last_deadline)
 		return true;
 
 	/*
@@ -501,8 +516,8 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	 * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
-	return max(virtual_prio(&engine->execlists),
-		   queue_prio(&engine->execlists)) > last_prio;
+	return min(virtual_deadline(&engine->execlists),
+		   queue_deadline(&engine->execlists)) < last_deadline;
 }
 
 __maybe_unused static inline bool
@@ -519,7 +534,7 @@ assert_priority_queue(const struct i915_request *prev,
 	if (i915_request_is_active(prev))
 		return true;
 
-	return rq_prio(prev) >= rq_prio(next);
+	return rq_deadline(prev) <= rq_deadline(next);
 }
 
 /*
@@ -1089,7 +1104,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 {
 	struct i915_request *rq, *rn, *active = NULL;
 	struct list_head *uninitialized_var(pl);
-	int prio = I915_PRIORITY_INVALID;
+	u64 deadline = I915_DEADLINE_NEVER;
 
 	lockdep_assert_held(&engine->active.lock);
 
@@ -1103,13 +1118,20 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 
 		__i915_request_unsubmit(rq);
 
-		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
-		if (rq_prio(rq) != prio) {
-			prio = rq_prio(rq);
-			pl = i915_sched_lookup_priolist(engine, prio);
+		if (i915_request_started(rq)) {
+			u64 deadline =
+				i915_scheduler_next_virtual_deadline(rq_prio(rq));
+			rq->sched.deadline = min(rq_deadline(rq), deadline);
+		}
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+
+		if (rq_deadline(rq) != deadline) {
+			deadline = rq_deadline(rq);
+			pl = i915_sched_lookup_priolist(engine, deadline);
 		}
 		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
+		GEM_BUG_ON(i915_request_in_priority_queue(rq));
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
@@ -1378,9 +1400,12 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
 	 */
-	if (list_is_last_rcu(&rq->link, &ce->timeline->requests) &&
-	    i915_request_completed(rq))
-		intel_engine_add_retire(engine, ce->timeline);
+	if (i915_request_completed(rq)) {
+		if (!list_is_last_rcu(&rq->link, &ce->timeline->requests))
+			i915_request_update_deadline(list_next_entry(rq, link));
+		else
+			intel_engine_add_retire(engine, ce->timeline);
+	}
 
 	ccid = ce->lrc.ccid;
 	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
@@ -1494,14 +1519,14 @@ dump_port(char *buf, int buflen, const char *prefix, struct i915_request *rq)
 	if (!rq)
 		return "";
 
-	snprintf(buf, buflen, "%sccid:%x %llx:%lld%s prio %d",
+	snprintf(buf, buflen, "%sccid:%x %llx:%lld%s dl:%llu",
 		 prefix,
 		 rq->context->lrc.ccid,
 		 rq->fence.context, rq->fence.seqno,
 		 i915_request_completed(rq) ? "!" :
 		 i915_request_started(rq) ? "*" :
 		 "",
-		 rq_prio(rq));
+		 rq_deadline(rq));
 
 	return buf;
 }
@@ -1826,9 +1851,13 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-static void defer_request(struct i915_request *rq, struct list_head * const pl)
+static void defer_active(struct intel_engine_cs *engine)
 {
-	LIST_HEAD(list);
+	struct i915_request *rq;
+
+	rq = __unwind_incomplete_requests(engine);
+	if (!rq)
+		return;
 
 	/*
 	 * We want to move the interrupted request to the back of
@@ -1837,52 +1866,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 	 * flight and were waiting for the interrupted request to
 	 * be run after it again.
 	 */
-	do {
-		struct i915_dependency *p;
-
-		GEM_BUG_ON(i915_request_is_active(rq));
-		list_move_tail(&rq->sched.link, pl);
-
-		for_each_waiter(p, rq) {
-			struct i915_request *w =
-				container_of(p->waiter, typeof(*w), sched);
-
-			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
-				continue;
-
-			/* Leave semaphores spinning on the other engines */
-			if (w->engine != rq->engine)
-				continue;
-
-			/* No waiter should start before its signaler */
-			GEM_BUG_ON(i915_request_has_initial_breadcrumb(w) &&
-				   i915_request_started(w) &&
-				   !i915_request_completed(rq));
-
-			GEM_BUG_ON(i915_request_is_active(w));
-			if (!i915_request_is_ready(w))
-				continue;
-
-			if (rq_prio(w) < rq_prio(rq))
-				continue;
-
-			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
-			list_move_tail(&w->sched.link, &list);
-		}
-
-		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
-	} while (rq);
-}
-
-static void defer_active(struct intel_engine_cs *engine)
-{
-	struct i915_request *rq;
-
-	rq = __unwind_incomplete_requests(engine);
-	if (!rq)
-		return;
-
-	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	__intel_engine_defer_request(engine, rq);
 }
 
 static bool
@@ -2049,11 +2033,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			goto check_secondary;
 		} else if (need_preempt(engine, last)) {
 			ENGINE_TRACE(engine,
-				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
+				     "preempting last=%llx:%llu, dl=%llu\n",
 				     last->fence.context,
 				     last->fence.seqno,
-				     last->sched.attr.priority,
-				     execlists->queue_priority_hint);
+				     rq_deadline(last));
 			record_preemption(execlists);
 
 			/*
@@ -2075,11 +2058,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -2135,7 +2118,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
+		if (unlikely(rq_deadline(rq) > queue_deadline(execlists))) {
 			spin_unlock(&ve->base.active.lock);
 			break;
 		}
@@ -2156,9 +2139,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			     i915_request_started(rq) ? "*" :
 			     "",
 			     yesno(engine != ve->siblings[0]));
-
 		WRITE_ONCE(ve->request, NULL);
-		WRITE_ONCE(ve->base.execlists.queue_priority_hint, INT_MIN);
 
 		rb = &ve->nodes[engine->id].rb;
 		rb_erase_cached(rb, &execlists->virtual);
@@ -2288,24 +2269,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
-	execlists->queue_priority_hint = queue_prio(execlists);
 	spin_unlock_irq(&engine->active.lock);
 
 	/*
@@ -2732,9 +2695,10 @@ static bool hold_request(const struct i915_request *rq)
 	return result;
 }
 
-static void __execlists_unhold(struct i915_request *rq)
+static bool __execlists_unhold(struct i915_request *rq)
 {
 	LIST_HEAD(list);
+	bool submit = false;
 
 	do {
 		struct i915_dependency *p;
@@ -2745,10 +2709,7 @@ static void __execlists_unhold(struct i915_request *rq)
 		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
 
 		i915_request_clear_hold(rq);
-		list_move_tail(&rq->sched.link,
-			       i915_sched_lookup_priolist(rq->engine,
-							  rq_prio(rq)));
-		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		submit |= __intel_engine_queue_request(rq->engine, rq);
 
 		/* Also release any children on this engine that are ready */
 		for_each_waiter(p, rq) {
@@ -2777,6 +2738,8 @@ static void __execlists_unhold(struct i915_request *rq)
 
 		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
 	} while (rq);
+
+	return submit;
 }
 
 static void execlists_unhold(struct intel_engine_cs *engine,
@@ -2788,12 +2751,8 @@ static void execlists_unhold(struct intel_engine_cs *engine,
 	 * Move this request back to the priority queue, and all of its
 	 * children and grandchildren that were suspended along with it.
 	 */
-	__execlists_unhold(rq);
-
-	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
-		engine->execlists.queue_priority_hint = rq_prio(rq);
+	if (__execlists_unhold(rq))
 		tasklet_hi_schedule(&engine->execlists.tasklet);
-	}
 
 	spin_unlock_irq(&engine->active.lock);
 }
@@ -3063,58 +3022,11 @@ static void execlists_preempt(struct timer_list *timer)
 	execlists_kick(timer, preempt);
 }
 
-static void queue_request(struct intel_engine_cs *engine,
-			  struct i915_request *rq)
-{
-	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link,
-		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
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
-static bool ancestor_on_hold(const struct intel_engine_cs *engine,
-			     const struct i915_request *rq)
-{
-	GEM_BUG_ON(i915_request_on_hold(rq));
-	return !list_empty(&engine->active.hold) && hold_request(rq);
-}
-
 static void execlists_submit_request(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
-	unsigned long flags;
-
-	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-
-	if (unlikely(ancestor_on_hold(engine, request))) {
-		RQ_TRACE(request, "ancestor on hold\n");
-		list_add_tail(&request->sched.link, &engine->active.hold);
-		i915_request_set_hold(request);
-	} else {
-		queue_request(engine, request);
-
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
-		GEM_BUG_ON(list_empty(&request->sched.link));
-
-		if (submit_queue(engine, request))
-			__execlists_kick(&engine->execlists);
-	}
-
-	spin_unlock_irqrestore(&engine->active.lock, flags);
 
+	i915_request_enqueue(request);
 	if (!timer_pending(&engine->execlists.timer))
 		start_timeslice(engine);
 }
@@ -4178,10 +4090,6 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 static void nop_submission_tasklet(unsigned long data)
 {
-	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
-
-	/* The driver is wedged; don't process any more events. */
-	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
 }
 
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
@@ -4227,6 +4135,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		rb_erase_cached(&p->node, &execlists->queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!RB_EMPTY_ROOT(&execlists->queue.rb_root));
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
@@ -4248,17 +4157,12 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
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
-	execlists->queue = RB_ROOT_CACHED;
-
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.func = nop_submission_tasklet;
 
@@ -5387,7 +5291,8 @@ static const struct intel_context_ops virtual_context_ops = {
 	.destroy = virtual_context_destroy,
 };
 
-static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
+static intel_engine_mask_t
+virtual_submission_mask(struct virtual_engine *ve, u64 *deadline)
 {
 	struct i915_request *rq;
 	intel_engine_mask_t mask;
@@ -5404,9 +5309,11 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
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
@@ -5414,12 +5321,12 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
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
@@ -5452,7 +5359,8 @@ static void virtual_submission_tasklet(unsigned long data)
 			 */
 			first = rb_first_cached(&sibling->execlists.virtual) ==
 				&node->rb;
-			if (prio == node->prio || (prio > node->prio && first))
+			if (deadline == node->deadline ||
+			    (deadline < node->deadline && first))
 				goto submit_engine;
 
 			rb_erase_cached(&node->rb, &sibling->execlists.virtual);
@@ -5466,7 +5374,7 @@ static void virtual_submission_tasklet(unsigned long data)
 
 			rb = *parent;
 			other = rb_entry(rb, typeof(*other), rb);
-			if (prio > other->prio) {
+			if (deadline < other->deadline) {
 				parent = &rb->rb_left;
 			} else {
 				parent = &rb->rb_right;
@@ -5481,8 +5389,8 @@ static void virtual_submission_tasklet(unsigned long data)
 
 submit_engine:
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
-		node->prio = prio;
-		if (first && prio > sibling->execlists.queue_priority_hint)
+		node->deadline = deadline;
+		if (first)
 			tasklet_hi_schedule(&sibling->execlists.tasklet);
 
 unlock_engine:
@@ -5518,7 +5426,9 @@ static void virtual_submit_request(struct i915_request *rq)
 		i915_request_put(ve->request);
 	}
 
-	ve->base.execlists.queue_priority_hint = rq_prio(rq);
+	rq->sched.deadline =
+		min(rq->sched.deadline,
+		    i915_scheduler_next_virtual_deadline(rq_prio(rq)));
 	ve->request = i915_request_get(rq);
 
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
@@ -5621,7 +5531,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
-	ve->base.execlists.queue_priority_hint = INT_MIN;
 	tasklet_init(&ve->base.execlists.tasklet,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
@@ -5815,10 +5724,6 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 		show_request(m, last, "\t\tE ");
 	}
 
-	if (execlists->queue_priority_hint != INT_MIN)
-		drm_printf(m, "\t\tQueue priority hint: %d\n",
-			   READ_ONCE(execlists->queue_priority_hint));
-
 	last = NULL;
 	count = 0;
 	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 927d54c702f4..b0eb426d26fe 100644
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
index 0c8e6b5735df..3d0bdd754327 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -70,6 +70,9 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 			   struct i915_request *rq,
 			   unsigned long timeout)
 {
+	/* Ignore our own attempts to suppress excess tasklets */
+	tasklet_hi_schedule(&engine->execlists.tasklet);
+
 	timeout += jiffies;
 	do {
 		bool done = time_after(jiffies, timeout);
@@ -892,7 +895,7 @@ semaphore_queue(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
 static int
 release_queue(struct intel_engine_cs *engine,
 	      struct i915_vma *vma,
-	      int idx, int prio)
+	      int idx, u64 deadline)
 {
 	struct i915_request *rq;
 	u32 *cs;
@@ -917,10 +920,7 @@ release_queue(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	local_bh_disable();
-	i915_request_set_priority(rq, prio);
-	local_bh_enable(); /* kick tasklet */
-
+	i915_request_set_deadline(rq, deadline);
 	i915_request_put(rq);
 
 	return 0;
@@ -934,6 +934,7 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 	struct intel_engine_cs *engine;
 	struct i915_request *head;
 	enum intel_engine_id id;
+	long timeout;
 	int err, i, n = 0;
 
 	head = semaphore_queue(outer, vma, n++);
@@ -954,12 +955,16 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
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
@@ -1064,6 +1069,8 @@ create_rewinder(struct intel_context *ce,
 		err = i915_request_await_dma_fence(rq, &wait->fence);
 		if (err)
 			goto err;
+
+		i915_request_set_deadline(rq, rq_deadline(wait));
 	}
 
 	cs = intel_ring_begin(rq, 14);
@@ -1339,7 +1346,7 @@ static int live_timeslice_queue(void *arg)
 			err = PTR_ERR(rq);
 			goto err_heartbeat;
 		}
-		i915_request_set_priority(rq, I915_PRIORITY_MAX);
+		i915_request_set_deadline(rq, 0);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1362,10 +1369,9 @@ static int live_timeslice_queue(void *arg)
 		}
 
 		GEM_BUG_ON(i915_request_completed(rq));
-		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 		/* Queue: semaphore signal, matching priority as semaphore */
-		err = release_queue(engine, vma, 1, effective_prio(rq));
+		err = release_queue(engine, vma, 1, effective_deadline(rq));
 		if (err)
 			goto err_rq;
 
@@ -1476,6 +1482,7 @@ static int live_timeslice_nopreempt(void *arg)
 			goto out_spin;
 		}
 
+		rq->sched.deadline = 0;
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 		i915_request_get(rq);
 		i915_request_add(rq);
@@ -1848,6 +1855,7 @@ static int live_late_preempt(void *arg)
 
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
 	ctx_lo->sched.priority = 1;
+	ctx_hi->sched.priority = I915_PRIORITY_MIN;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -2948,6 +2956,9 @@ static int live_preempt_gang(void *arg)
 		while (rq) { /* wait for each rq from highest to lowest prio */
 			struct i915_request *n = list_next_entry(rq, mock.link);
 
+			/* With deadlines, no strict priority ordering */
+			i915_request_set_deadline(rq, 0);
+
 			if (err == 0 && i915_request_wait(rq, 0, HZ / 5) < 0) {
 				struct drm_printer p =
 					drm_info_printer(engine->i915->drm.dev);
@@ -3169,7 +3180,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	i915_request_set_priority(rq, I915_PRIORITY_MAX);
+	i915_request_set_deadline(rq, 0);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
@@ -4705,6 +4716,7 @@ static int emit_semaphore_signal(struct intel_context *ce, void *slot)
 
 	intel_ring_advance(rq, cs);
 
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	i915_request_add(rq);
 	return 0;
@@ -5214,6 +5226,10 @@ static int __live_lrc_gpr(struct intel_engine_cs *engine,
 		err = emit_semaphore_signal(engine->kernel_context, slot);
 		if (err)
 			goto err_rq;
+
+		err = wait_for_submit(engine, rq, HZ / 2);
+		if (err)
+			goto err_rq;
 	} else {
 		slot[0] = 1;
 		wmb();
@@ -5771,6 +5787,7 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
 
 	intel_ring_advance(rq, cs);
 
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 err_rq:
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 8b56cf0d970e..e31f9b2c12cc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -333,8 +333,6 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 		i915_priolist_free(p);
 	}
 done:
-	execlists->queue_priority_hint =
-		rb ? to_priolist(rb)->priority : INT_MIN;
 	if (submit) {
 		*port = schedule_in(last, port - execlists->inflight);
 		*++port = NULL;
@@ -473,12 +471,10 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 		rb_erase_cached(&p->node, &execlists->queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!RB_EMPTY_ROOT(&execlists->queue.rb_root));
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
-	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
-
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index bc2fa84f98a8..43a0ac45295f 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -22,6 +22,8 @@ enum {
 
 	/* Interactive workload, scheduled for immediate pageflipping */
 	I915_PRIORITY_DISPLAY,
+
+	__I915_PRIORITY_KERNEL__
 };
 
 /* Smallest priority value that cannot be bumped. */
@@ -35,13 +37,12 @@ enum {
  * i.e. nothing can have higher priority and force us to usurp the
  * active request.
  */
-#define I915_PRIORITY_UNPREEMPTABLE INT_MAX
-#define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
+#define I915_PRIORITY_BARRIER INT_MAX
 
 struct i915_priolist {
 	struct list_head requests;
 	struct rb_node node;
-	int priority;
+	u64 deadline;
 };
 
 #endif /* _I915_PRIOLIST_TYPES_H_ */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3f9e3e6a34ed..4aa405e4d8d4 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -703,6 +703,7 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
+		i915_request_update_deadline(rq);
 		break;
 
 	case FENCE_FREE:
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index ca681e6d9c6d..ba5a41547303 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -20,6 +20,11 @@ static struct i915_global_scheduler {
 static DEFINE_SPINLOCK(ipi_lock);
 static LIST_HEAD(ipi_list);
 
+static inline u64 rq_deadline(const struct i915_request *rq)
+{
+	return READ_ONCE(rq->sched.deadline);
+}
+
 static inline int rq_prio(const struct i915_request *rq)
 {
 	return READ_ONCE(rq->sched.attr.priority);
@@ -31,6 +36,7 @@ static void ipi_schedule(struct irq_work *wrk)
 	do {
 		struct i915_dependency *p;
 		struct i915_request *rq;
+		u64 deadline;
 		int prio;
 
 		spin_lock(&ipi_lock);
@@ -39,7 +45,10 @@ static void ipi_schedule(struct irq_work *wrk)
 			rq = container_of(p->signaler, typeof(*rq), sched);
 			list_del_init(&p->ipi_link);
 
+			deadline = p->ipi_deadline;
 			prio = p->ipi_priority;
+
+			p->ipi_deadline = I915_DEADLINE_NEVER;
 			p->ipi_priority = I915_PRIORITY_INVALID;
 		}
 		spin_unlock(&ipi_lock);
@@ -50,6 +59,7 @@ static void ipi_schedule(struct irq_work *wrk)
 			continue;
 
 		i915_request_set_priority(rq, prio);
+		i915_request_set_deadline(rq, deadline);
 	} while (1);
 	rcu_read_unlock();
 }
@@ -106,7 +116,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 static void assert_priolists(struct intel_engine_execlists * const execlists)
 {
 	struct rb_node *rb;
-	long last_prio;
+	u64 last_deadline;
 
 	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		return;
@@ -114,17 +124,17 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
 		   rb_first(&execlists->queue.rb_root));
 
-	last_prio = INT_MAX;
+	last_deadline = 0;
 	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
 		const struct i915_priolist *p = to_priolist(rb);
 
-		GEM_BUG_ON(p->priority > last_prio);
-		last_prio = p->priority;
+		GEM_BUG_ON(p->deadline < last_deadline);
+		last_deadline = p->deadline;
 	}
 }
 
 struct list_head *
-i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
+i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct list_head *free = NULL;
@@ -132,14 +142,15 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	struct i915_priolist *p;
 	bool first;
 
+	GEM_BUG_ON(deadline == I915_DEADLINE_NEVER);
 	lockdep_assert_held(&engine->active.lock);
 	assert_priolists(execlists);
 
 	if (unlikely(execlists->no_priolist))
-		prio = I915_PRIORITY_NORMAL;
+		deadline = 0;
 
 find_priolist:
-	/* most positive priority is scheduled first, equal priorities fifo */
+	/* Earliest deadline is scheduled first, equal deadlines fifo. */
 	rb = NULL;
 	first = true;
 	parent = &execlists->queue.rb_root.rb_node;
@@ -147,7 +158,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 		rb = *parent;
 		p = to_priolist(rb);
 
-		if (prio == p->priority)
+		if (deadline == p->deadline)
 			goto out;
 
 		/*
@@ -164,13 +175,13 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 			continue;
 		}
 
-		if (prio < p->priority)
+		if (deadline < p->deadline)
 			parent = &rb->rb_left;
 		else
 			parent = &rb->rb_right, first = false;
 	}
 
-	if (prio == I915_PRIORITY_NORMAL) {
+	if (!deadline) {
 		p = &execlists->default_priolist;
 	} else if (free) {
 		p = container_of(free, typeof(*p), requests);
@@ -179,7 +190,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 		p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
 		/* Convert an allocation failure to a priority bump */
 		if (unlikely(!p)) {
-			prio = I915_PRIORITY_NORMAL; /* recurses just once */
+			deadline = 0; /* recurses just once */
 
 			/* To maintain ordering with all rendering, after an
 			 * allocation failure we have to disable all scheduling.
@@ -194,7 +205,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 		}
 	}
 
-	p->priority = prio;
+	p->deadline = deadline;
 	INIT_LIST_HEAD(&p->requests);
 
 	rb_link_node(&p->node, rb, parent);
@@ -207,9 +218,10 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	return &p->requests;
 }
 
-void __i915_priolist_free(struct i915_priolist *p)
+void i915_priolist_free(struct i915_priolist *p)
 {
-	kmem_cache_free(global.slab_priorities, p);
+	if (p->deadline)
+		kmem_cache_free(global.slab_priorities, p);
 }
 
 void i915_priolist_free_many(struct list_head *list)
@@ -220,68 +232,35 @@ void i915_priolist_free_many(struct list_head *list)
 		p = container_of(list, typeof(*p), requests);
 		list = p->requests.next;
 
-		GEM_BUG_ON(p->priority == I915_PRIORITY_NORMAL);
+		GEM_BUG_ON(!p->deadline);
 		kmem_cache_free(global.slab_priorities, p);
 	}
 }
 
-static inline bool need_preempt(int prio, int active)
-{
-	/*
-	 * Allow preemption of low -> normal -> high, but we do
-	 * not allow low priority tasks to preempt other low priority
-	 * tasks under the impression that latency for low priority
-	 * tasks does not matter (as much as background throughput),
-	 * so kiss.
-	 */
-	return prio >= max(I915_PRIORITY_NORMAL, active);
-}
-
-static void kick_submission(struct intel_engine_cs *engine,
-			    const struct i915_request *rq,
-			    int prio)
+static bool kick_submission(const struct intel_engine_cs *engine, u64 deadline)
 {
+	const struct intel_engine_execlists *el = &engine->execlists;
 	const struct i915_request *inflight;
+	bool kick = true;
 
-	/*
-	 * We only need to kick the tasklet once for the high priority
-	 * new context we add into the queue.
-	 */
-	if (prio <= engine->execlists.queue_priority_hint)
-		return;
-
-	/* Nothing currently active? We're overdue for a submission! */
-	inflight = execlists_active(&engine->execlists);
-	if (!inflight)
-		return;
+	if (to_priolist(rb_first_cached(&el->queue))->deadline < deadline)
+		return false;
 
-	/*
-	 * If we are already the currently executing context, don't
-	 * bother evaluating if we should preempt ourselves.
-	 */
-	if (inflight->context == rq->context)
-		return;
+	inflight = execlists_active(el);
+	if (inflight)
+		kick = deadline < rq_deadline(inflight);
 
-	ENGINE_TRACE(engine,
-		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
-		     prio,
-		     rq->fence.context, rq->fence.seqno,
-		     inflight->fence.context, inflight->fence.seqno,
-		     inflight->sched.attr.priority);
-
-	engine->execlists.queue_priority_hint = prio;
-	if (need_preempt(prio, rq_prio(inflight)))
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+	return kick;
 }
 
-static void ipi_priority(struct i915_dependency *p, int prio)
+static void ipi_deadline(struct i915_dependency *p, u64 deadline)
 {
-	if (prio <= READ_ONCE(p->ipi_priority))
+	if (deadline >= READ_ONCE(p->ipi_deadline))
 		return;
 
 	spin_lock(&ipi_lock);
-	if (prio > p->ipi_priority) {
-		p->ipi_priority = prio;
+	if (deadline < p->ipi_deadline) {
+		p->ipi_deadline = deadline;
 		ipi_queue(p);
 	}
 	spin_unlock(&ipi_lock);
@@ -306,14 +285,210 @@ static struct i915_request *stack_pop(struct i915_request *rq,
 	return rq;
 }
 
-static void __i915_request_set_priority(struct i915_request *rq, int prio)
+static bool __i915_request_set_deadline(struct i915_request *rq, u64 deadline)
 {
 	struct intel_engine_cs *engine = rq->engine;
 	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
 
 	lockdep_assert_held(&engine->active.lock);
-	plist = i915_sched_lookup_priolist(engine, prio);
+
+	/* Fifo and depth-first replacement ensure our deps execute first */
+	plist = i915_sched_lookup_priolist(engine, deadline);
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
+			if (i915_request_completed(s))
+				continue;
+
+			if (s->engine != engine) {
+				ipi_deadline(p, deadline);
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
+	return kick_submission(engine, deadline);
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
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+	rcu_read_unlock();
+	GEM_BUG_ON(rq_deadline(rq) != deadline);
+
+unlock:
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+}
+
+static u64 prio_slice(int prio)
+{
+	u64 slice;
+	int sf;
+
+	/*
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
+	 */
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
+	return i915_scheduler_virtual_deadline(ktime_get(), priority);
+}
+
+static u64 signal_deadline(const struct i915_request *rq)
+{
+	u64 last = ktime_to_ns(ktime_get());
+	const struct i915_dependency *p;
+
+	/*
+	 * Find the earliest point at which we will become 'ready',
+	 * which we infer from the deadline of all active signalers.
+	 * We will position ourselves at the end of that chain of work.
+	 */
+
+	rcu_read_lock();
+	for_each_signaler(p, rq) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+		u64 deadline;
+
+		if (i915_request_completed(s))
+			continue;
+
+		if (rq_prio(s) < rq_prio(rq))
+			continue;
+
+		deadline = i915_sched_to_ns(rq_deadline(s));
+		if (p->flags & I915_DEPENDENCY_WEAK)
+			deadline -= prio_slice(rq_prio(s));
+
+		last = max(last, deadline);
+	}
+	rcu_read_unlock();
+
+	return last;
+}
+
+static u64 earliest_deadline(const struct i915_request *rq)
+{
+	return i915_scheduler_virtual_deadline(signal_deadline(rq),
+					       rq_prio(rq));
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
+}
+
+static void ipi_priority(struct i915_dependency *p, int prio)
+{
+	if (prio <= READ_ONCE(p->ipi_priority))
+		return;
+
+	spin_lock(&ipi_lock);
+	if (prio > p->ipi_priority) {
+		p->ipi_priority = prio;
+		ipi_queue(p);
+	}
+	spin_unlock(&ipi_lock);
+}
+
+static bool __i915_request_set_priority(struct i915_request *rq, int prio)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct list_head *pos = &rq->sched.signalers_list;
+	bool kick = false;
+
+	lockdep_assert_held(&engine->active.lock);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -335,6 +510,8 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	 */
 	rq->sched.dfs.next = NULL;
 	do {
+		struct i915_request *next;
+
 		list_for_each_continue(pos, &rq->sched.signalers_list) {
 			struct i915_dependency *p =
 				list_entry(pos, typeof(*p), signal_link);
@@ -360,6 +537,8 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 		RQ_TRACE(rq, "set-priority:%d\n", prio);
 		WRITE_ONCE(rq->sched.attr.priority, prio);
 
+		next = stack_pop(rq, &pos);
+
 		/*
 		 * Once the request is ready, it will be placed into the
 		 * priority lists and then onto the HW runlist. Before the
@@ -368,16 +547,15 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
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
@@ -430,7 +608,8 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 		goto unlock;
 
 	rcu_read_lock();
-	__i915_request_set_priority(rq, prio);
+	if (__i915_request_set_priority(rq, prio))
+		tasklet_hi_schedule(&engine->execlists.tasklet);
 	rcu_read_unlock();
 	GEM_BUG_ON(rq_prio(rq) != prio);
 
@@ -438,6 +617,143 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
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
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq)
+{
+	struct list_head *pos = &rq->sched.waiters_list;
+	LIST_HEAD(plist);
+	u64 deadline;
+
+	lockdep_assert_held(&engine->active.lock);
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+
+	deadline = max(rq_deadline(rq),
+		       i915_scheduler_next_virtual_deadline(rq_prio(rq)));
+
+	/*
+	 * When we defer a request, we must maintain its order with respect
+	 * to those that are waiting upon it. So we traverse its chain of
+	 * waiters and move any that are earlier than the request to after it.
+	 */
+	rq->sched.dfs.next = NULL;
+	do {
+		list_for_each_continue(pos, &rq->sched.waiters_list) {
+			struct i915_dependency *p =
+				list_entry(pos, typeof(*p), wait_link);
+			struct i915_request *w =
+				container_of(p->waiter, typeof(*w), sched);
+
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
+			/* Leave semaphores spinning on the other engines */
+			if (w->engine != engine)
+				continue;
+
+			/* No waiter should start before its signaler */
+			GEM_BUG_ON(i915_request_has_initial_breadcrumb(w) &&
+				   i915_request_started(w) &&
+				   !i915_request_completed(rq));
+
+			if (!i915_request_in_priority_queue(w))
+				continue;
+
+			if (rq_deadline(w) > deadline)
+				continue;
+
+			/* Remember our position along this branch */
+			rq = stack_push(w, rq, pos);
+			pos = &rq->sched.waiters_list;
+		}
+
+		RQ_TRACE(rq, "set-deadline:%llu\n", deadline);
+		WRITE_ONCE(rq->sched.deadline, deadline);
+
+		/* Note list is reversed for waiters wrt signal hierarchy */
+		GEM_BUG_ON(rq->engine != engine);
+		GEM_BUG_ON(!i915_request_in_priority_queue(rq));
+		list_move(&rq->sched.link, &plist);
+	} while ((rq = stack_pop(rq, &pos)));
+
+	list_splice_tail(&plist, i915_sched_lookup_priolist(engine, deadline));
+}
+
+static bool hold_request(const struct i915_request *rq)
+{
+	struct i915_dependency *p;
+	bool result = false;
+
+	/*
+	 * If one of our ancestors is on hold, we must also be put on hold,
+	 * otherwise we will bypass it and execute before it.
+	 */
+	rcu_read_lock();
+	for_each_signaler(p, rq) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+
+		if (s->engine != rq->engine)
+			continue;
+
+		result = i915_request_on_hold(s);
+		if (result)
+			break;
+	}
+	rcu_read_unlock();
+
+	return result;
+}
+
+static bool ancestor_on_hold(const struct intel_engine_cs *engine,
+			     const struct i915_request *rq)
+{
+	GEM_BUG_ON(i915_request_on_hold(rq));
+	return unlikely(!list_empty(&engine->active.hold)) && hold_request(rq);
+}
+
+void i915_request_enqueue(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	u64 dl = earliest_deadline(rq);
+	unsigned long flags;
+	bool kick = false;
+
+	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+
+	spin_lock_irqsave(&engine->active.lock, flags);
+	if (unlikely(ancestor_on_hold(engine, rq))) {
+		RQ_TRACE(rq, "ancestor on hold\n");
+		list_add_tail(&rq->sched.link, &engine->active.hold);
+		i915_request_set_hold(rq);
+	} else {
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		kick = __i915_request_set_deadline(rq,
+						   min(dl, rq_deadline(rq)));
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+	}
+	GEM_BUG_ON(list_empty(&rq->sched.link));
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+	if (kick)
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+}
+
+void i915_request_update_deadline(struct i915_request *rq)
+{
+	if (!i915_request_in_priority_queue(rq))
+		return;
+
+	/* Recompute our deadlines and promote after a priority change */
+	i915_request_set_deadline(rq, earliest_deadline(rq));
+}
+
 void i915_sched_node_init(struct i915_sched_node *node)
 {
 	spin_lock_init(&node->lock);
@@ -452,6 +768,7 @@ void i915_sched_node_init(struct i915_sched_node *node)
 void i915_sched_node_reinit(struct i915_sched_node *node)
 {
 	node->attr.priority = I915_PRIORITY_INVALID;
+	node->deadline = I915_DEADLINE_NEVER;
 	node->semaphores = 0;
 	node->flags = 0;
 
@@ -484,6 +801,7 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 	if (!node_signaled(signal)) {
 		INIT_LIST_HEAD(&dep->ipi_link);
+		dep->ipi_deadline = I915_DEADLINE_NEVER;
 		dep->ipi_priority = I915_PRIORITY_INVALID;
 		dep->signaler = signal;
 		dep->waiter = node;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index f9a9d102863b..cba1ef002781 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -34,23 +34,40 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 void i915_sched_node_retire(struct i915_sched_node *node);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
+void i915_request_set_deadline(struct i915_request *request, u64 deadline);
+
+void i915_request_update_deadline(struct i915_request *request);
+
+u64 i915_scheduler_virtual_deadline(u64 kt, int priority);
+u64 i915_scheduler_next_virtual_deadline(int priority);
+
+void i915_request_enqueue(struct i915_request *rq);
+
+bool __intel_engine_queue_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq);
+void __intel_engine_defer_request(struct intel_engine_cs *engine,
+				  struct i915_request *rq);
 
 struct list_head *
-i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
+i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline);
+
+static inline u64 i915_sched_to_ticks(ktime_t kt)
+{
+	return ktime_to_ns(kt) >> I915_SCHED_DEADLINE_SHIFT;
+}
 
-void __i915_priolist_free(struct i915_priolist *p);
-static inline void i915_priolist_free(struct i915_priolist *p)
+static inline u64 i915_sched_to_ns(u64 deadline)
 {
-	if (p->priority != I915_PRIORITY_NORMAL)
-		__i915_priolist_free(p);
+	return deadline << I915_SCHED_DEADLINE_SHIFT;
 }
 
+void i915_priolist_free(struct i915_priolist *p);
 void i915_priolist_free_many(struct list_head *list);
 
 static inline struct list_head *
 i915_priolist_free_defer(struct i915_priolist *p, struct list_head *free)
 {
-	if (p->priority != I915_PRIORITY_NORMAL) {
+	if (p->deadline) {
 		p->requests.next = free;
 		free = &p->requests;
 	}
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index ce60577df2bf..9e43d538162f 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -69,6 +69,28 @@ struct i915_sched_node {
 	unsigned int flags;
 #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
 	intel_engine_mask_t semaphores;
+
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
 };
 
 struct i915_dependency {
@@ -81,6 +103,7 @@ struct i915_dependency {
 #define I915_DEPENDENCY_ALLOC		BIT(0)
 #define I915_DEPENDENCY_EXTERNAL	BIT(1)
 #define I915_DEPENDENCY_WEAK		BIT(2)
+	u64 ipi_deadline;
 	int ipi_priority;
 };
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
index 3db34d3eea58..946c93441c1f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
@@ -25,6 +25,7 @@ selftest(ring, intel_ring_mock_selftests)
 selftest(engine, intel_engine_cs_mock_selftests)
 selftest(timelines, intel_timeline_mock_selftests)
 selftest(requests, i915_request_mock_selftests)
+selftest(scheduler, i915_scheduler_mock_selftests)
 selftest(objects, i915_gem_object_mock_selftests)
 selftest(phys, i915_gem_phys_mock_selftests)
 selftest(dmabuf, i915_gem_dmabuf_mock_selftests)
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 528d07f9941b..deb61f1d23b8 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -2123,6 +2123,7 @@ static int measure_preemption(struct intel_context *ce)
 
 		intel_ring_advance(rq, cs);
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		rq->sched.deadline = 0;
 
 		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
 		i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 98d29fa8f5f8..dc65033053f1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -9,6 +9,49 @@
 #include "gt/selftest_engine_heartbeat.h"
 #include "selftests/igt_spinner.h"
 
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
+int i915_scheduler_mock_selftests(void)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(mock_scheduler_slices),
+	};
+
+	return i915_subtests(tests, NULL);
+}
+
 static void scheduling_disable(struct intel_engine_cs *engine)
 {
 	engine->props.preempt_timeout_ms = 0;
@@ -398,9 +441,34 @@ static int igt_priority_inv(void *arg)
 	return igt_inv(arg, igt_priority);
 }
 
+static void igt_deadline(struct i915_request *rq,
+			 unsigned long v, unsigned long e)
+{
+	i915_request_set_deadline(rq, 0);
+	GEM_BUG_ON(rq_deadline(rq) != 0);
+}
+
+static int igt_deadline_single(void *arg)
+{
+	return igt_single(arg, igt_deadline);
+}
+
+static int igt_deadline_wide(void *arg)
+{
+	return igt_wide(arg, igt_deadline);
+}
+
+static int igt_deadline_inv(void *arg)
+{
+	return igt_inv(arg, igt_deadline);
+}
+
 int i915_scheduler_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(igt_deadline_single),
+		SUBTEST(igt_deadline_wide),
+		SUBTEST(igt_deadline_inv),
 		SUBTEST(igt_priority_single),
 		SUBTEST(igt_priority_wide),
 		SUBTEST(igt_priority_inv),
@@ -518,9 +586,46 @@ static int inv_priority(void *arg)
 	return inv(arg, set_priority);
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
+static void set_deadline(struct i915_request *rq,
+			 unsigned long v, unsigned long e)
+{
+	report("set-deadline", v, e, __set_deadline(rq, 0));
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
 int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(single_deadline),
+		SUBTEST(wide_deadline),
+		SUBTEST(inv_deadline),
 		SUBTEST(single_priority),
 		SUBTEST(wide_priority),
 		SUBTEST(inv_priority),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
