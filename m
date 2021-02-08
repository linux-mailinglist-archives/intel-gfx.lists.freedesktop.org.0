Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1AB312F9D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C823A6E88B;
	Mon,  8 Feb 2021 10:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA066E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809217-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:15 +0000
Message-Id: <20210208105236.28498-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/31] drm/i915: Fair low-latency scheduling
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
are interspersed, so we don't execute one long chain from client A before
executing any of client B. This could be imposed by the clients
themselves by using fences based on an external clock, that is they only
submit work for a "frame" at frame-intervals, instead of submitting as
much work as they are able to. The standard SwapBuffers approach is akin
to double buffering, where as one frame is being executed, the next is
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

In contrast, one key advantage of disconnecting the sort key from the
priority value is that we can freely adjust the deadline to compensate
for other factors. This is used in conjunction with submitting requests
ahead-of-schedule that then busywait on the GPU using semaphores. Since
we don't want to spend a timeslice busywaiting instead of doing real
work when available, we deprioritise work by giving the semaphore waits
a later virtual deadline. The priority deboost is applied to semaphore
workloads after they miss a semaphore wait and a new context is pending.
The request is then restored to its normal priority once the semaphores
are signaled so that it not unfairly penalised under contention by
remaining at a far future deadline. This is a much improved and cleaner
version of commit f9e9e9de58c7 ("drm/i915: Prioritise non-busywait
semaphore workloads").

To check the impact on throughput (often the downfall of latency
sensitive schedulers), we used gem_wsim to simulate various transcode
workloads with different load balancers, and varying the number of
competing [heterogeneous] clients. On Kabylake gt3e running at fixed
cpu/gpu clocks,

+delta%------------------------------------------------------------------+
|       a                                                                |
|       a                                                                |
|       a                                                                |
|       a                                                                |
|       aa                                                               |
|      aaa                                                               |
|      aaaa                                                              |
|     aaaaaa                                                             |
|     aaaaaa                                                             |
|     aaaaaa   a                a                                        |
| aa  aaaaaa a a      a  a   aa a       a         a       a             a|
||______M__A__________|                                                  |
+------------------------------------------------------------------------+
    N           Min           Max        Median          Avg       Stddev
  108    -4.6326643     47.797855 -0.00069639128     2.116185   7.6764049

Each point is the relative percentage change in gem_wsim's work-per-second
score [using the median result of 120 25s runs, the relative change
computed as (B/A - 1) * 100]; 0 being no change.

Reviewing the same workloads on Tigerlake,

+delta%------------------------------------------------------------------+
|       a                                                                |
|       a                                                                |
|       a                                                                |
|       aa a                                                             |
|       aaaa                                                             |
|       aaaa                                                             |
|    aaaaaaa                                                             |
|    aaaaaaa                                                             |
|    aaaaaaa      a   a   aa  a         a                         a      |
| aaaaaaaaaa a aa a a a aaaa aa   a     a        aa               a     a|
||_______M____A_____________|                                            |
+------------------------------------------------------------------------+
    N           Min           Max        Median          Avg       Stddev
  108     -4.258712      46.83081    0.36853159    4.1415662     9.461689

The expectation is that by deliberately increasing the number of context
switches to improve fairness between clients, throughput will be
diminished. What we do see are small fluctuations around no change, with
the median result being improved throughput. The dramatic improvement is
from reintroducing the improved no-semaphore boosting, which avoids
accidentally preventing scheduling of ready workloads due to busy
spinners (i.e. avoids wasting cycles when there is work to be done).

We expect to see no change in single client workloads such as games,
though running multiple applications on a desktop should have reduced
jitter i.e. smoother input-output latency.

This scheduler is based on MuQSS by Dr Con Kolivas.

v2: More commentary, especially around where we reset the deadlines.

Testcase: igt/gem_exec_fair
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile          |  62 +++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 -
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  14 -
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   1 +
 .../drm/i915/gt/intel_execlists_submission.c  | 233 ++++----
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  30 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   5 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 -
 drivers/gpu/drm/i915/i915_priolist_types.h    |   7 +-
 drivers/gpu/drm/i915/i915_request.c           |  19 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 518 +++++++++++++-----
 drivers/gpu/drm/i915/i915_scheduler.h         |  18 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  39 ++
 drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 136 +++++
 include/uapi/drm/i915_drm.h                   |   1 +
 19 files changed, 810 insertions(+), 286 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 35bbe2b80596..f1d009906f71 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -1,3 +1,65 @@
+choice
+	prompt "Preferred scheduler"
+	default DRM_I915_SCHED_VIRTUAL_DEADLINE
+	help
+	  Select the preferred method to decide the order of execution.
+
+	  The scheduler is used for two purposes. First to defer unready
+	  jobs to not block execution of independent ready clients, so
+	  preventing GPU stalls while work waits for other tasks. The second
+	  purpose is to decide which task to run next, as well as decide
+	  if that task should preempt the currently running task, or if
+	  the current task has exceeded its allotment of GPU time and should
+	  be replaced.
+
+	config DRM_I915_SCHED_FIFO
+	bool "FIFO"
+	help
+	  No task reordering, tasks are executed in order of readiness.
+	  First in, first out.
+
+	  Unready tasks do not block execution of other, independent clients.
+	  A client will not be scheduled for execution until all of its
+	  prerequisite work has completed.
+
+	  This disables the scheduler and puts it into a pass-through mode.
+
+	config DRM_I915_SCHED_PRIORITY
+	bool "Priority"
+	help
+	  Strict priority ordering, equal priority tasks are executed
+	  in order of readiness. Clients are liable to starve other clients,
+	  causing uneven execution and excess task latency. High priority
+	  clients will preempt lower priority clients and will run
+	  uninterrupted.
+
+	  Note that interactive desktops will implicitly perform priority
+	  boosting to minimise frame jitter.
+
+	config DRM_I915_SCHED_VIRTUAL_DEADLINE
+	bool "Virtual Deadline"
+	help
+	  A fair scheduler based on MuQSS with priority-hinting.
+
+	  When a task is ready for execution, it is given a quota (from the
+	  engine's timeslice) and a virtual deadline. The virtual deadline is
+	  derived from the current time and the timeslice scaled by the
+	  task's priority. Higher priority tasks are given an earlier
+	  deadline and receive a large portion of the execution bandwidth.
+
+	  Requests are then executed in order of deadline completion.
+	  Requests with earlier deadlines and higher priority than currently
+	  executing on the engine will preempt the active task.
+
+endchoice
+
+config DRM_I915_SCHED
+	int
+	default 2 if DRM_I915_SCHED_VIRTUAL_DEADLINE
+	default 1 if DRM_I915_SCHED_PRIORITY
+	default 0 if DRM_I915_SCHED_FIFO
+	default -1
+
 config DRM_I915_FENCE_TIMEOUT
 	int "Timeout for unsignaled foreign fences (ms, jiffy granularity)"
 	default 10000 # milliseconds
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index da2447f18daa..7d34bf03670b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -579,8 +579,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 	memset(execlists->pending, 0, sizeof(execlists->pending));
 	execlists->active =
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
-
-	execlists->queue_priority_hint = INT_MIN;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 5ed263f36f93..1d0e7daa6285 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -313,6 +313,7 @@ static int __intel_engine_pulse(struct intel_engine_cs *engine)
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
+	rq->sched.deadline = 0;
 	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
 
 	heartbeat_commit(rq, &attr);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 27d9d17b35cb..ef5064ea54e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -211,6 +211,7 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	i915_request_add_active_barriers(rq);
 
 	/* Install ourselves as a preemption barrier */
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	if (likely(!__i915_request_commit(rq))) { /* engine should be idle! */
 		/*
@@ -271,9 +272,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	intel_engine_park_heartbeat(engine);
 	intel_breadcrumbs_park(engine->breadcrumbs);
 
-	/* Must be reset upon idling, or we may miss the busy wakeup. */
-	GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
-
 	if (engine->park)
 		engine->park(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 08bddc5263aa..d1024e8717e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -223,20 +223,6 @@ struct intel_engine_execlists {
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
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 3fab439ba22b..92632afa52ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -102,6 +102,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 #define MAP(x, y) { I915_SCHED_##x, ilog2(I915_SCHEDULER_CAP_##y) }
 		MAP(ACTIVE_BIT, ENABLED),
 		MAP(PRIORITY_BIT, PRIORITY),
+		MAP(DEADLINE_BIT, FAIR),
 		MAP(TIMESLICE_BIT, TIMESLICING),
 #undef MAP
 	};
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4a0258347c10..e249b1423309 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -180,7 +180,7 @@ struct virtual_engine {
 	 */
 	struct ve_node {
 		struct rb_node rb;
-		int prio;
+		u64 deadline;
 	} nodes[I915_NUM_ENGINES];
 
 	/*
@@ -256,25 +256,12 @@ static void ring_set_paused(const struct intel_engine_cs *engine, int state)
 
 static int rq_prio(const struct i915_request *rq)
 {
-	return READ_ONCE(rq->sched.attr.priority);
+	return rq->sched.attr.priority;
 }
 
-static int effective_prio(const struct i915_request *rq)
+static u64 rq_deadline(const struct i915_request *rq)
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
 
 static struct i915_request *first_request(const struct i915_sched *se)
@@ -289,62 +276,62 @@ static struct i915_request *first_request(const struct i915_sched *se)
 					sched.link);
 }
 
-static int queue_prio(const struct i915_sched *se)
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
+next_elsp_request(const struct i915_sched *se, const struct i915_request *rq)
 {
-	struct rb_node *rb = rb_first_cached(&el->virtual);
+	if (i915_sched_is_last_request(se, rq))
+		return NULL;
 
-	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
+	return list_next_entry(rq, sched.link);
 }
 
-static bool need_preempt(struct intel_engine_cs *engine,
+static bool
+dl_before(const struct i915_request *next, const struct i915_request *prev)
+{
+	return !prev || (next && rq_deadline(next) < rq_deadline(prev));
+}
+
+static bool need_preempt(const struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
 	const struct i915_sched *se = &engine->sched;
-	int last_prio;
+	const struct i915_request *first = NULL;
+	const struct i915_request *next;
 
 	if (!i915_sched_use_busywait(se))
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
-	if (!list_is_last(&rq->sched.link, &se->requests) &&
-	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
-		return true;
+	next = next_elsp_request(se, rq);
+	if (dl_before(next, first))
+		first = next;
 
 	/*
 	 * If the inflight context did not trigger the preemption, then maybe
@@ -356,8 +343,31 @@ static bool need_preempt(struct intel_engine_cs *engine,
 	 * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
-	return max(virtual_prio(&engine->execlists),
-		   queue_prio(se)) > last_prio;
+	next = first_request(se);
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
 
 __maybe_unused static bool
@@ -374,7 +384,15 @@ assert_priority_queue(const struct i915_request *prev,
 	if (i915_request_is_active(prev))
 		return true;
 
-	return rq_prio(prev) >= rq_prio(next);
+	if (rq_deadline(prev) <= rq_deadline(next))
+		return true;
+
+	ENGINE_TRACE(prev->engine,
+		     "next %llx:%lld dl %lld is before prev %llx:%lld dl %lld\n",
+		     next->fence.context, next->fence.seqno, rq_deadline(next),
+		     prev->fence.context, prev->fence.seqno, rq_deadline(prev));
+
+	return false;
 }
 
 static void
@@ -555,10 +573,25 @@ static void __execlists_schedule_out(struct i915_request * const rq,
 	/*
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
+	 *
+	 * If the context is still active, update the deadline on the next
+	 * request as we submitted it much earlier with an estimation based
+	 * on this request and all those before it consuming their whole budget.
+	 * Since the next request is ready but may have a deadline set far in
+	 * the future, we will prefer any new client before executing this
+	 * context again. If the other clients are submitting synchronous
+	 * workloads, each submission appears as a fresh piece of work and ready
+	 * to run; each time they will receive a deadline that is likely earlier
+	 * than the accumulated deadline of this context. So we re-evaluate this
+	 * context's deadline and put it on an equal footing with the
+	 * synchronous clients.
 	 */
-	if (intel_timeline_is_last(ce->timeline, rq) &&
-	    __i915_request_is_complete(rq))
-		intel_engine_add_retire(engine, ce->timeline);
+	if (__i915_request_is_complete(rq)) {
+		if (!intel_timeline_is_last(ce->timeline, rq))
+			i915_request_update_deadline(list_next_entry(rq, link));
+		else
+			intel_engine_add_retire(engine, ce->timeline);
+	}
 
 	ccid = ce->lrc.ccid;
 	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
@@ -668,14 +701,14 @@ dump_port(char *buf, int buflen, const char *prefix, struct i915_request *rq)
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
@@ -1197,11 +1230,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	if (last) {
 		if (need_preempt(engine, last)) {
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
@@ -1223,11 +1256,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
 
 			/*
@@ -1298,7 +1331,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(se))) {
+		if (!dl_before(rq, first_request(se))) {
 			spin_unlock(&ve->base.sched.lock);
 			break;
 		}
@@ -1310,16 +1343,15 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -1407,6 +1439,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			if (rq->execution_mask != engine->mask)
 				goto done;
 
+			if (unlikely(dl_before(first_virtual(engine), rq)))
+				goto done;
+
 			/*
 			 * If GVT overrides us we only ever submit
 			 * port[0], leaving port[1] empty. Note that we
@@ -1440,24 +1475,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
-	execlists->queue_priority_hint = pl->priority;
 	spin_unlock(&se->lock);
 
 	/*
@@ -2653,15 +2670,6 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	rcu_read_unlock();
 }
 
-static void nop_submission_tasklet(struct tasklet_struct *t)
-{
-	struct intel_engine_cs * const engine =
-		from_tasklet(engine, t, sched.tasklet);
-
-	/* The driver is wedged; don't process any more events. */
-	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
-}
-
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -2710,17 +2718,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 				i915_request_put(rq);
 			}
 			i915_request_put(rq);
-
-			ve->base.execlists.queue_priority_hint = INT_MIN;
 		}
 		spin_unlock(&ve->base.sched.lock);
 	}
 
-	execlists->queue_priority_hint = INT_MIN;
-
-	GEM_BUG_ON(__tasklet_is_enabled(&se->tasklet));
-	se->tasklet.callback = nop_submission_tasklet;
-
 	spin_unlock_irqrestore(&se->lock, flags);
 	rcu_read_unlock();
 
@@ -2831,7 +2832,6 @@ static bool can_preempt(struct intel_engine_cs *engine)
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->sched.submit_request = i915_request_enqueue;
-	engine->sched.tasklet.callback = execlists_submission_tasklet;
 }
 
 static void execlists_shutdown(struct intel_engine_cs *engine)
@@ -2957,7 +2957,7 @@ static void init_execlists(struct intel_engine_cs *engine)
 	engine->sched.show = execlists_show;
 	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
 
-	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_PRIORITY);
+	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_DEADLINE);
 
 	if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION) &&
 	    intel_engine_has_preemption(engine))
@@ -3193,7 +3193,8 @@ static const struct intel_context_ops virtual_context_ops = {
 	.destroy = virtual_context_destroy,
 };
 
-static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
+static intel_engine_mask_t
+virtual_submission_mask(struct virtual_engine *ve, u64 *deadline)
 {
 	struct i915_request *rq;
 	intel_engine_mask_t mask;
@@ -3210,9 +3211,11 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
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
@@ -3221,12 +3224,12 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 {
 	struct virtual_engine * const ve =
 		from_tasklet(ve, t, base.sched.tasklet);
-	const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
 	intel_engine_mask_t mask;
 	unsigned int n;
+	u64 deadline;
 
 	rcu_read_lock();
-	mask = virtual_submission_mask(ve);
+	mask = virtual_submission_mask(ve, &deadline);
 	rcu_read_unlock();
 	if (unlikely(!mask))
 		return;
@@ -3260,7 +3263,8 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 			 */
 			first = rb_first_cached(&sibling->execlists.virtual) ==
 				&node->rb;
-			if (prio == node->prio || (prio > node->prio && first))
+			if (deadline == node->deadline ||
+			    (deadline < node->deadline && first))
 				goto submit_engine;
 
 			rb_erase_cached(&node->rb, &sibling->execlists.virtual);
@@ -3274,7 +3278,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 
 			rb = *parent;
 			other = rb_entry(rb, typeof(*other), rb);
-			if (prio > other->prio) {
+			if (deadline < other->deadline) {
 				parent = &rb->rb_left;
 			} else {
 				parent = &rb->rb_right;
@@ -3289,8 +3293,8 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
 
 submit_engine:
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
-		node->prio = prio;
-		if (first && prio > sibling->execlists.queue_priority_hint)
+		node->deadline = deadline;
+		if (first)
 			i915_sched_kick(se);
 
 unlock_engine:
@@ -3327,7 +3331,9 @@ static void virtual_submit_request(struct i915_request *rq)
 		i915_request_put(ve->request);
 	}
 
-	ve->base.execlists.queue_priority_hint = rq_prio(rq);
+	rq->sched.deadline =
+		min(rq->sched.deadline,
+		    i915_scheduler_next_virtual_deadline(rq_prio(rq)));
 	ve->request = i915_request_get(rq);
 
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
@@ -3429,7 +3435,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
-	ve->base.execlists.queue_priority_hint = INT_MIN;
 
 	intel_context_init(&ve->context, &ve->base);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index be99fbd7cfab..112a09aa0d8d 100644
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
@@ -933,12 +931,16 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
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
 		pr_err("%s: Failed to slice along semaphore chain of length (%d, %d)!\n",
 		       outer->name, count, n);
 		GEM_TRACE_DUMP();
@@ -1043,6 +1045,8 @@ create_rewinder(struct intel_context *ce,
 		err = i915_request_await_dma_fence(rq, &wait->fence);
 		if (err)
 			goto err;
+
+		i915_request_set_deadline(rq, rq_deadline(wait));
 	}
 
 	cs = intel_ring_begin(rq, 14);
@@ -1319,6 +1323,7 @@ static int live_timeslice_queue(void *arg)
 			goto err_heartbeat;
 		}
 		i915_request_set_priority(rq, I915_PRIORITY_MAX);
+		i915_request_set_deadline(rq, 0);
 		err = wait_for_submit(engine, rq, HZ / 2);
 		if (err) {
 			pr_err("%s: Timed out trying to submit semaphores\n",
@@ -1341,10 +1346,9 @@ static int live_timeslice_queue(void *arg)
 		}
 
 		GEM_BUG_ON(i915_request_completed(rq));
-		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
 
 		/* Queue: semaphore signal, matching priority as semaphore */
-		err = release_queue(engine, vma, 1, effective_prio(rq));
+		err = release_queue(engine, vma, 1, rq_deadline(rq));
 		if (err)
 			goto err_rq;
 
@@ -1455,6 +1459,7 @@ static int live_timeslice_nopreempt(void *arg)
 			goto out_spin;
 		}
 
+		rq->sched.deadline = 0;
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 		i915_request_get(rq);
 		i915_request_add(rq);
@@ -1818,6 +1823,7 @@ static int live_late_preempt(void *arg)
 
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
 	ctx_lo->sched.priority = 1;
+	ctx_hi->sched.priority = I915_PRIORITY_MIN;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -2985,6 +2991,9 @@ static int live_preempt_gang(void *arg)
 		while (rq) { /* wait for each rq from highest to lowest prio */
 			struct i915_request *n = list_next_entry(rq, mock.link);
 
+			/* With deadlines, no strict priority ordering */
+			i915_request_set_deadline(rq, 0);
+
 			if (err == 0 && i915_request_wait(rq, 0, HZ / 5) < 0) {
 				struct drm_printer p =
 					drm_info_printer(engine->i915->drm.dev);
@@ -3207,6 +3216,7 @@ static int preempt_user(struct intel_engine_cs *engine,
 	i915_request_add(rq);
 
 	i915_request_set_priority(rq, I915_PRIORITY_MAX);
+	i915_request_set_deadline(rq, 0);
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0)
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index cdb0ceff3be1..5323fd56efd6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1010,7 +1010,10 @@ static int __igt_reset_engines(struct intel_gt *gt,
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
index 6d73add47109..b7dd5646c882 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1257,6 +1257,7 @@ poison_registers(struct intel_context *ce,
 
 	intel_ring_advance(rq, cs);
 
+	rq->sched.deadline = 0;
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 err_rq:
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c16393df42a0..79205e9a84ba 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -216,7 +216,6 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 		last = rq;
 	}
 done:
-	execlists->queue_priority_hint = pl->priority;
 	if (submit) {
 		*port = schedule_in(last, port - execlists->inflight);
 		*++port = NULL;
@@ -322,7 +321,6 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 static void guc_reset_cancel(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	unsigned long flags;
 
@@ -346,8 +344,6 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 
 	__i915_sched_cancel_queue(se);
 
-	execlists->queue_priority_hint = INT_MIN;
-
 	spin_unlock_irqrestore(&se->lock, flags);
 	intel_engine_signal_breadcrumbs(engine);
 }
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index ee7482b9c813..542b47078104 100644
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
 
 /*
  * The slab returns power-of-two chunks of memory, so fill out the
@@ -82,7 +83,7 @@ enum {
  */
 struct i915_priolist {
 	struct list_head requests;
-	int priority;
+	u64 deadline;
 
 	int level;
 	struct i915_priolist *next[I915_PRIOLIST_HEIGHT];
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index e7b4c4bc41a6..ce828dc73402 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -467,7 +467,7 @@ bool __i915_request_submit(struct i915_request *request)
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	bool result = false;
 
-	RQ_TRACE(request, "\n");
+	RQ_TRACE(request, "dl %llu\n", request->sched.deadline);
 
 	lockdep_assert_held(&se->lock);
 
@@ -650,6 +650,12 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 	switch (state) {
 	case FENCE_COMPLETE:
+		/*
+		 * The request is now ready to run; re-evaluate its deadline
+		 * to remove the semaphore deprioritisation and to assign
+		 * a deadline relative to its point-of-readiness [now].
+		 */
+		i915_request_update_deadline(rq);
 		break;
 
 	case FENCE_FREE:
@@ -1810,14 +1816,15 @@ long i915_request_wait(struct i915_request *rq,
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
@@ -1903,7 +1910,7 @@ void i915_request_show(struct drm_printer *m,
 	 *    - the request has been temporarily suspended from execution
 	 */
 
-	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
+	x = print_sched(&rq->sched, buf, x, sizeof(buf));
 
 	drm_printf(m, "%s%.*s%c %llx:%lld%s%s %s @ %dms: %s\n",
 		   prefix, indent, "                ",
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 518eac67959e..1d77ece46241 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -54,6 +54,11 @@ static void node_put(struct i915_sched_node *node)
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
@@ -67,6 +72,14 @@ static int ipi_get_prio(struct i915_request *rq)
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
@@ -74,9 +87,11 @@ static void ipi_schedule(struct work_struct *wrk)
 
 	do {
 		struct i915_request *rn = xchg(&rq->sched.ipi_link, NULL);
+		u64 deadline;
 		int prio;
 
 		prio = ipi_get_prio(rq);
+		deadline = ipi_get_deadline(rq);
 
 		/*
 		 * For cross-engine scheduling to work we rely on one of two
@@ -101,6 +116,7 @@ static void ipi_schedule(struct work_struct *wrk)
 		 */
 		local_bh_disable();
 		i915_request_set_priority(rq, prio);
+		i915_request_set_deadline(rq, deadline);
 		local_bh_enable();
 
 		i915_request_put(rq);
@@ -158,7 +174,10 @@ i915_sched_default_revoke_context(struct intel_context *ce,
 
 void i915_sched_select_mode(struct i915_sched *se, enum i915_sched_mode mode)
 {
-	switch (mode) {
+	switch (min_t(int, mode, CONFIG_DRM_I915_SCHED)) {
+	case I915_SCHED_MODE_DEADLINE:
+		__set_bit(I915_SCHED_DEADLINE_BIT, &se->flags);
+		fallthrough;
 	case I915_SCHED_MODE_PRIORITY:
 		__set_bit(I915_SCHED_PRIORITY_BIT, &se->flags);
 		fallthrough;
@@ -175,8 +194,8 @@ static void init_priolist(struct i915_priolist_root *const root)
 	struct i915_priolist *pl = &root->sentinel;
 
 	memset_p((void **)pl->next, pl, ARRAY_SIZE(pl->next));
+	pl->deadline = I915_DEADLINE_NEVER;
 	pl->requests.prev = NULL;
-	pl->priority = INT_MIN;
 	pl->level = -1;
 }
 
@@ -339,19 +358,20 @@ static inline unsigned int random_level(struct i915_priolist_root *root)
 }
 
 static struct list_head *
-lookup_priolist(struct i915_sched *se, int prio)
+lookup_priolist(struct i915_sched * const se, u64 deadline)
 {
 	struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
 	struct i915_priolist_root *const root = &se->queue;
 	struct i915_priolist *pl, *tmp;
 	int lvl;
 
+	GEM_BUG_ON(deadline == I915_DEADLINE_NEVER);
 	lockdep_assert_held(&se->lock);
 	if (unlikely(se->no_priolist))
-		prio = I915_PRIORITY_NORMAL;
+		deadline = 0;
 
 	for_each_priolist(pl, root) { /* recycle any empty elements before us */
-		if (pl->priority <= prio || !list_empty(&pl->requests))
+		if (pl->deadline >= deadline || !list_empty(&pl->requests))
 			break;
 
 		__i915_sched_dequeue_next(se);
@@ -361,14 +381,14 @@ lookup_priolist(struct i915_sched *se, int prio)
 	pl = &root->sentinel;
 	lvl = pl->level;
 	while (lvl >= 0) {
-		while (tmp = pl->next[lvl], tmp->priority >= prio)
+		while (tmp = pl->next[lvl], tmp->deadline <= deadline)
 			pl = tmp;
-		if (pl->priority == prio)
+		if (pl->deadline == deadline)
 			goto out;
 		update[lvl--] = pl;
 	}
 
-	if (prio == I915_PRIORITY_NORMAL) {
+	if (!deadline) {
 		pl = &se->default_priolist;
 	} else if (!pl_empty(&root->sentinel.requests)) {
 		pl = pl_pop(&root->sentinel.requests);
@@ -376,7 +396,7 @@ lookup_priolist(struct i915_sched *se, int prio)
 		pl = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
 		/* Convert an allocation failure to a priority bump */
 		if (unlikely(!pl)) {
-			prio = I915_PRIORITY_NORMAL; /* recurses just once */
+			deadline = 0; /* recurses just once */
 
 			/*
 			 * To maintain ordering with all rendering, after an
@@ -392,7 +412,7 @@ lookup_priolist(struct i915_sched *se, int prio)
 		}
 	}
 
-	pl->priority = prio;
+	pl->deadline = deadline;
 	INIT_LIST_HEAD(&pl->requests);
 
 	lvl = random_level(root);
@@ -420,7 +440,7 @@ lookup_priolist(struct i915_sched *se, int prio)
 		chk = &root->sentinel;
 		lvl = chk->level;
 		do {
-			while (tmp = chk->next[lvl], tmp->priority >= prio)
+			while (tmp = chk->next[lvl], tmp->deadline <= deadline)
 				chk = tmp;
 		} while (--lvl >= 0);
 
@@ -438,7 +458,7 @@ static void __remove_priolist(struct i915_sched *se, struct list_head *plist)
 	struct i915_priolist *pl, *tmp;
 	struct i915_priolist *old =
 		container_of(plist, struct i915_priolist, requests);
-	int prio = old->priority;
+	u64 deadline = old->deadline;
 	int lvl;
 
 	lockdep_assert_held(&se->lock);
@@ -448,11 +468,11 @@ static void __remove_priolist(struct i915_sched *se, struct list_head *plist)
 	lvl = pl->level;
 	GEM_BUG_ON(lvl < 0);
 
-	if (prio != I915_PRIORITY_NORMAL)
+	if (deadline)
 		pl_push(old, &pl->requests);
 
 	do {
-		while (tmp = pl->next[lvl], tmp->priority > prio)
+		while (tmp = pl->next[lvl], tmp->deadline < deadline)
 			pl = tmp;
 		if (lvl <= old->level) {
 			pl->next[lvl] = old->next[lvl];
@@ -495,7 +515,7 @@ struct i915_priolist *__i915_sched_dequeue_next(struct i915_sched *se)
 	GEM_BUG_ON(pl == s);
 
 	/* Keep pl->next[0] valid for for_each_priolist iteration */
-	if (pl->priority != I915_PRIORITY_NORMAL)
+	if (pl->deadline)
 		pl_push(pl, &s->requests);
 
 	lvl = pl->level;
@@ -531,52 +551,267 @@ stack_pop(struct i915_request *rq,
 	return rq;
 }
 
-static inline bool need_preempt(int prio, int active)
+static void ipi_deadline(struct i915_request *rq, u64 deadline)
 {
-	/*
-	 * Allow preemption of low -> normal -> high, but we do
-	 * not allow low priority tasks to preempt other low priority
-	 * tasks under the impression that latency for low priority
-	 * tasks does not matter (as much as background throughput),
-	 * so kiss.
-	 */
-	return prio >= max(I915_PRIORITY_NORMAL, active);
+	u64 old = READ_ONCE(rq->sched.ipi_deadline);
+
+	do {
+		if (deadline >= old)
+			return;
+	} while (!try_cmpxchg64(&rq->sched.ipi_deadline, &old, deadline));
+
+	__ipi_add(rq);
 }
 
-static void kick_submission(struct intel_engine_cs *engine,
-			    const struct i915_request *rq,
-			    int prio)
+static bool is_first_priolist(const struct i915_sched *se,
+			      const struct list_head *requests)
 {
-	const struct i915_request *inflight;
+	return requests == &se->queue.sentinel.next[0]->requests;
+}
+
+static bool
+__i915_request_set_deadline(struct i915_sched * const se,
+			    struct i915_request *rq,
+			    u64 deadline)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct list_head *pos = &rq->sched.signalers_list;
+	struct list_head *plist;
+
+	if (unlikely(!i915_request_in_priority_queue(rq))) {
+		rq->sched.deadline = deadline;
+		return false;
+	}
+
+	/* Fifo and depth-first replacement ensure our deps execute first */
+	plist = lookup_priolist(se, deadline);
+
+	rq->sched.dfs.prev = NULL;
+	do {
+		if (i915_sched_has_deadlines(se)) {
+			list_for_each_continue(pos, &rq->sched.signalers_list) {
+				struct i915_dependency *p =
+					list_entry(pos, typeof(*p), signal_link);
+				struct i915_request *s =
+					container_of(p->signaler, typeof(*s), sched);
+
+				if (rq_deadline(s) <= deadline)
+					continue;
+
+				if (__i915_request_is_complete(s))
+					continue;
+
+				if (s->engine != engine) {
+					ipi_deadline(s, deadline);
+					continue;
+				}
+
+				/* Remember our position along this branch */
+				rq = stack_push(s, rq, pos);
+				pos = &rq->sched.signalers_list;
+			}
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
+		GEM_BUG_ON(i915_request_get_scheduler(rq) != se);
+		if (i915_request_in_priority_queue(rq))
+			remove_from_priolist(se, rq, plist, true);
+	} while ((rq = stack_pop(rq, &pos)));
+
+	return is_first_priolist(se, plist);
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
+	if (!i915_sched_has_deadlines(&engine->sched))
+		goto unlock;
+
+	if (deadline >= rq_deadline(rq))
+		goto unlock;
+
+	if (__i915_request_is_complete(rq))
+		goto unlock;
+
+	rcu_read_lock();
+	if (__i915_request_set_deadline(&engine->sched, rq, deadline))
+		i915_sched_kick(&engine->sched);
+	rcu_read_unlock();
+	GEM_BUG_ON(rq_deadline(rq) != deadline);
+
+unlock:
+	spin_unlock_irqrestore(&engine->sched.lock, flags);
+}
+
+static u64 prio_slice(int prio)
+{
+	u64 slice;
+	int sf;
 
 	/*
-	 * We only need to kick the tasklet once for the high priority
-	 * new context we add into the queue.
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
+	 * This property that the budget of each client is proprotional to
+	 * the relative priority, and that the scheduler fairly distributes
+	 * work according to that budget, opens up a very powerful tool
+	 * for managing clients.
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
-	if (prio <= engine->execlists.queue_priority_hint)
-		return;
 
-	/* Nothing currently active? We're overdue for a submission! */
-	inflight = execlists_active(&engine->execlists);
-	if (!inflight)
-		return;
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
+static u64 virtual_deadline(u64 kt, int priority)
+{
+	return i915_sched_to_ticks(kt + prio_slice(priority));
+}
+
+u64 i915_scheduler_next_virtual_deadline(int priority)
+{
+	return virtual_deadline(ktime_get_mono_fast_ns(), priority);
+}
+
+static u64 signal_deadline(const struct i915_request *rq)
+{
+	u64 last = ktime_get_mono_fast_ns();
+	const struct i915_dependency *p;
 
 	/*
-	 * If we are already the currently executing context, don't
-	 * bother evaluating if we should preempt ourselves.
+	 * Find the earliest point at which we will become 'ready',
+	 * which we infer from the deadline of all active signalers.
+	 * We will position ourselves at the end of that chain of work.
 	 */
-	if (inflight->context == rq->context)
-		return;
 
-	SCHED_TRACE(&engine->sched,
-		    "bumping queue-priority-hint:%d for rq:" RQ_FMT ", inflight:" RQ_FMT " prio %d\n",
-		    prio,
-		    RQ_ARG(rq), RQ_ARG(inflight),
-		    inflight->sched.attr.priority);
+	rcu_read_lock();
+	for_each_signaler(p, rq) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+		u64 deadline;
+		int prio;
 
-	engine->execlists.queue_priority_hint = prio;
-	if (need_preempt(prio, rq_prio(inflight)))
-		intel_engine_kick_scheduler(engine);
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
+		if (s->context == rq->context) /* break ties in favour of hot */
+			deadline--;
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
+
+	/*
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
+	 */
+	if (!i915_sw_fence_signaled(&rq->semaphore))
+		prio -= __I915_PRIORITY_KERNEL__;
+
+	return prio;
+}
+
+static u64
+earliest_deadline(const struct i915_sched *se, const struct i915_request *rq)
+{
+	/*
+	 * At its heart, the scheduler is simply a topological sort into
+	 * a linear sequence of requests. As we use a single ascending index,
+	 * we can repurpose the sort to achieve different goals, or to disable
+	 * the sort entirely and funnel all requests onto a single list for
+	 * immediate extraction.
+	 */
+	if (i915_sched_has_deadlines(se))
+		return virtual_deadline(signal_deadline(rq), rq_prio(rq));
+	else if (i915_sched_has_priorities(se))
+		return INT_MAX - rq_prio(rq);
+	else
+		return 0;
+}
+
+static bool
+set_earliest_deadline(struct i915_sched *se, struct i915_request *rq, u64 old)
+{
+	u64 dl;
+
+	/* Recompute our deadlines and promote after a priority change */
+	dl = min(earliest_deadline(se, rq), rq_deadline(rq));
+	if (dl >= old)
+		return false;
+
+	return __i915_request_set_deadline(se, rq, dl);
 }
 
 static void ipi_priority(struct i915_request *rq, int prio)
@@ -591,17 +826,16 @@ static void ipi_priority(struct i915_request *rq, int prio)
 	__ipi_add(rq);
 }
 
-static void __i915_request_set_priority(struct i915_request *rq, int prio)
+static bool
+__i915_request_set_priority(struct i915_sched * const se,
+			    struct i915_request *rq,
+			    int prio)
 {
 	struct intel_engine_cs *engine = rq->engine;
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct list_head *pos = &rq->sched.signalers_list;
-	struct list_head *plist;
+	bool kick = false;
 
-	SCHED_TRACE(&engine->sched, "PI for " RQ_FMT ", prio:%d\n",
-		    RQ_ARG(rq), prio);
-
-	plist = lookup_priolist(se, prio);
+	SCHED_TRACE(se, "PI for " RQ_FMT ", prio:%d\n", RQ_ARG(rq), prio);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -623,31 +857,37 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	 */
 	rq->sched.dfs.prev = NULL;
 	do {
-		list_for_each_continue(pos, &rq->sched.signalers_list) {
-			struct i915_dependency *p =
-				list_entry(pos, typeof(*p), signal_link);
-			struct i915_request *s =
-				container_of(p->signaler, typeof(*s), sched);
+		struct i915_request *next;
 
-			if (rq_prio(s) >= prio)
-				continue;
+		if (i915_sched_has_priorities(i915_request_get_scheduler(rq))) {
+			list_for_each_continue(pos, &rq->sched.signalers_list) {
+				struct i915_dependency *p =
+					list_entry(pos, typeof(*p), signal_link);
+				struct i915_request *s =
+					container_of(p->signaler, typeof(*s), sched);
 
-			if (__i915_request_is_complete(s))
-				continue;
+				if (rq_prio(s) >= prio)
+					continue;
 
-			if (s->engine != engine) {
-				ipi_priority(s, prio);
-				continue;
+				if (__i915_request_is_complete(s))
+					continue;
+
+				if (s->engine != engine) {
+					ipi_priority(s, prio);
+					continue;
+				}
+
+				/* Remember our position along this branch */
+				rq = stack_push(s, rq, pos);
+				pos = &rq->sched.signalers_list;
 			}
-
-			/* Remember our position along this branch */
-			rq = stack_push(s, rq, pos);
-			pos = &rq->sched.signalers_list;
 		}
 
 		RQ_TRACE(rq, "set-priority:%d\n", prio);
 		WRITE_ONCE(rq->sched.attr.priority, prio);
 
+		next = stack_pop(rq, &pos);
+
 		/*
 		 * Once the request is ready, it will be placed into the
 		 * priority lists and then onto the HW runlist. Before the
@@ -656,16 +896,15 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 		 * any preemption required, be dealt with upon submission.
 		 * See engine->submit_request()
 		 */
-		if (!i915_request_is_ready(rq))
-			continue;
-
 		GEM_BUG_ON(rq->engine != engine);
-		if (i915_request_in_priority_queue(rq))
-			remove_from_priolist(se, rq, plist, true);
+		if (i915_request_is_ready(rq) &&
+		    set_earliest_deadline(se, rq, rq_deadline(rq)))
+			kick = true;
 
-		/* Defer (tasklet) submission until after all updates. */
-		kick_submission(engine, rq, prio);
-	} while ((rq = stack_pop(rq, &pos)));
+		rq = next;
+	} while (rq);
+
+	return kick;
 }
 
 #define all_signalers_checked(p, rq) \
@@ -718,13 +957,9 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	if (__i915_request_is_complete(rq))
 		goto unlock;
 
-	if (!i915_sched_has_priorities(&engine->sched)) {
-		rq->sched.attr.priority = prio;
-		goto unlock;
-	}
-
 	rcu_read_lock();
-	__i915_request_set_priority(rq, prio);
+	if (__i915_request_set_priority(&engine->sched, rq, prio))
+		i915_sched_kick(&engine->sched);
 	rcu_read_unlock();
 	GEM_BUG_ON(rq_prio(rq) != prio);
 
@@ -737,7 +972,7 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 {
 	struct list_head *pos = &rq->sched.waiters_list;
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
-	const int prio = rq_prio(rq);
+	u64 deadline = rq_deadline(rq);
 	struct i915_request *rn;
 	LIST_HEAD(dfs);
 
@@ -746,6 +981,9 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 	lockdep_assert_held(&se->lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
+	if (i915_sched_has_deadlines(se))
+		deadline = max(deadline, i915_scheduler_next_virtual_deadline(adj_prio(rq)));
+
 	/*
 	 * When we defer a request, we must maintain its order with respect
 	 * to those that are waiting upon it. So we traverse its chain of
@@ -771,62 +1009,51 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
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
-		GEM_BUG_ON(rq->engine != engine);
+		GEM_BUG_ON(i915_request_get_scheduler(rq) != se);
 		remove_from_priolist(se, rq, &dfs, false);
 
 		/* Track our visit, and prevent duplicate processing */
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	} while ((rq = stack_pop(rq, &pos)));
 
-	pos = lookup_priolist(se, prio);
+	pos = lookup_priolist(se, deadline);
 	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 		list_add_tail(&rq->sched.link, pos);
 	}
 }
 
-static void queue_request(struct i915_sched *se, struct i915_request *rq)
+static bool queue_request(struct i915_sched *se, struct i915_request *rq)
 {
-	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link, lookup_priolist(se, rq_prio(rq)));
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
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
+	return set_earliest_deadline(se, rq, I915_DEADLINE_NEVER);
 }
 
 static bool hold_request(const struct i915_request *rq)
@@ -864,8 +1091,8 @@ static bool ancestor_on_hold(const struct i915_sched *se,
 
 void i915_request_enqueue(struct i915_request *rq)
 {
-	struct intel_engine_cs *engine = rq->engine;
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
+	struct i915_sched *se = i915_request_get_scheduler(rq);
+	u64 dl = earliest_deadline(se, rq);
 	unsigned long flags;
 	bool kick = false;
 
@@ -880,11 +1107,11 @@ void i915_request_enqueue(struct i915_request *rq)
 		list_add_tail(&rq->sched.link, &se->hold);
 		i915_request_set_hold(rq);
 	} else {
-		queue_request(se, rq);
-
+		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+		kick = __i915_request_set_deadline(se, rq,
+						   min(dl, rq_deadline(rq)));
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
 		GEM_BUG_ON(i915_sched_is_idle(se));
-
-		kick = submit_queue(engine, rq);
 	}
 
 	GEM_BUG_ON(list_empty(&rq->sched.link));
@@ -898,8 +1125,8 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 {
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_request *rq, *rn, *active = NULL;
+	u64 deadline = I915_DEADLINE_NEVER;
 	struct list_head *pl;
-	int prio = I915_PRIORITY_INVALID;
 
 	lockdep_assert_held(&se->lock);
 
@@ -911,13 +1138,21 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 
 		__i915_request_unsubmit(rq);
 
-		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
-		if (rq_prio(rq) != prio) {
-			prio = rq_prio(rq);
-			pl = lookup_priolist(se, prio);
+		if (__i915_request_has_started(rq) &&
+		    i915_sched_has_deadlines(se)) {
+			u64 deadline =
+				i915_scheduler_next_virtual_deadline(rq_prio(rq));
+			rq->sched.deadline = min(rq_deadline(rq), deadline);
+		}
+		GEM_BUG_ON(rq_deadline(rq) == I915_DEADLINE_NEVER);
+
+		if (rq_deadline(rq) != deadline) {
+			deadline = rq_deadline(rq);
+			pl = lookup_priolist(se, deadline);
 		}
 		GEM_BUG_ON(i915_sched_is_idle(se));
 
+		GEM_BUG_ON(i915_request_in_priority_queue(rq));
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
@@ -1023,14 +1258,10 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 {
 	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	LIST_HEAD(list);
+	bool submit = false;
 
 	lockdep_assert_held(&se->lock);
 
-	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
-		engine->execlists.queue_priority_hint = rq_prio(rq);
-		i915_sched_kick(se);
-	}
-
 	if (!i915_request_on_hold(rq))
 		return;
 
@@ -1051,7 +1282,7 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 		i915_request_clear_hold(rq);
 		list_del_init(&rq->sched.link);
 
-		queue_request(se, rq);
+		submit |= queue_request(se, rq);
 
 		/* Also release any children on this engine that are ready */
 		for_each_waiter(p, rq) {
@@ -1081,6 +1312,24 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 
 		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
 	} while (rq);
+
+	if (submit)
+		i915_sched_kick(se);
+}
+
+static u64
+update_deadline(const struct i915_request *rq)
+{
+	return earliest_deadline(i915_request_get_scheduler(rq), rq);
+}
+
+void i915_request_update_deadline(struct i915_request *rq)
+{
+	if (!i915_request_in_priority_queue(rq))
+		return;
+
+	/* Recompute our deadlines and promote after a priority change */
+	i915_request_set_deadline(rq, update_deadline(rq));
 }
 
 void i915_sched_resume_request(struct intel_engine_cs *engine,
@@ -1134,10 +1383,12 @@ void i915_sched_node_init(struct i915_sched_node *node)
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
@@ -1378,6 +1629,20 @@ print_request_ring(struct drm_printer *m, const struct i915_request *rq)
 	}
 }
 
+static const char *repr_mode(const struct i915_sched *se)
+{
+	if (i915_sched_has_deadlines(se))
+		return "Deadline";
+
+	if (i915_sched_has_priorities(se))
+		return "Priority";
+
+	if (i915_sched_is_active(se))
+		return "FIFO";
+
+	return "None";
+}
+
 void i915_sched_show(struct drm_printer *m,
 		     struct i915_sched *se,
 		     void (*show_request)(struct drm_printer *m,
@@ -1419,6 +1684,9 @@ void i915_sched_show(struct drm_printer *m,
 		}
 	}
 
+	drm_printf(m, "Scheduler: %s (%s)\n", repr_mode(se),
+		   enableddisabled(test_bit(I915_SCHED_ENABLE_BIT,
+					    &se->flags)));
 	drm_printf(m, "Tasklet queued? %s (%s)\n",
 		   yesno(test_bit(TASKLET_STATE_SCHED, &se->tasklet.state)),
 		   enableddisabled(!atomic_read(&se->tasklet.count)));
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 872d221f6ba7..14714e56ad80 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -47,7 +47,14 @@ void i915_sched_select_mode(struct i915_sched *se, enum i915_sched_mode mode);
 void i915_sched_park(struct i915_sched *se);
 void i915_sched_fini(struct i915_sched *se);
 
+void i915_sched_select_mode(struct i915_sched *se, enum i915_sched_mode mode);
+
 void i915_request_set_priority(struct i915_request *request, int prio);
+void i915_request_set_deadline(struct i915_request *request, u64 deadline);
+
+void i915_request_update_deadline(struct i915_request *request);
+
+u64 i915_scheduler_next_virtual_deadline(int priority);
 
 void i915_request_enqueue(struct i915_request *request);
 
@@ -85,11 +92,14 @@ static inline void i915_sched_disable(struct i915_sched *se)
 	clear_bit(I915_SCHED_ENABLE_BIT, &se->flags);
 }
 
-void __i915_priolist_free(struct i915_priolist *p);
-static inline void i915_priolist_free(struct i915_priolist *p)
+static inline u64 i915_sched_to_ticks(ktime_t kt)
 {
-	if (p->priority != I915_PRIORITY_NORMAL)
-		__i915_priolist_free(p);
+	return ktime_to_ns(kt) >> I915_SCHED_DEADLINE_SHIFT;
+}
+
+static inline u64 i915_sched_to_ns(u64 deadline)
+{
+	return deadline << I915_SCHED_DEADLINE_SHIFT;
 }
 
 static inline bool i915_sched_is_idle(const struct i915_sched *se)
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index bc668f375097..89cccda35ecd 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -22,6 +22,7 @@ enum {
 	I915_SCHED_ENABLE_BIT = 0,
 	I915_SCHED_ACTIVE_BIT, /* can reorder the request flow */
 	I915_SCHED_PRIORITY_BIT, /* priority sorting of queue */
+	I915_SCHED_DEADLINE_BIT, /* sorting by virtual deadline */
 	I915_SCHED_TIMESLICE_BIT, /* multitasking for long workloads */
 	I915_SCHED_PREEMPT_RESET_BIT, /* reset if preemption times out */
 	I915_SCHED_BUSYWAIT_BIT, /* preempt-to-busy */
@@ -51,6 +52,7 @@ enum i915_sched_mode {
 	I915_SCHED_MODE_NONE = -1, /* inactive, no bubble prevention */
 	I915_SCHED_MODE_FIFO, /* pass-through of ready, first in first out */
 	I915_SCHED_MODE_PRIORITY, /* reorder strictly by priority */
+	I915_SCHED_MODE_DEADLINE, /* reorder to meet soft deadlines; fair */
 };
 
 /**
@@ -207,8 +209,31 @@ struct i915_sched_node {
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
 	/* handle being scheduled for PI from outside of our active.lock */
 	struct i915_request *ipi_link;
+	u64 ipi_deadline;
 	int ipi_priority;
 };
 
@@ -236,14 +261,28 @@ struct i915_dependency {
 
 static inline bool i915_sched_is_active(const struct i915_sched *se)
 {
+	if (CONFIG_DRM_I915_SCHED < 0)
+		return false;
+
 	return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
 }
 
 static inline bool i915_sched_has_priorities(const struct i915_sched *se)
 {
+	if (CONFIG_DRM_I915_SCHED < 1)
+		return false;
+
 	return test_bit(I915_SCHED_PRIORITY_BIT, &se->flags);
 }
 
+static inline bool i915_sched_has_deadlines(const struct i915_sched *se)
+{
+	if (CONFIG_DRM_I915_SCHED < 2)
+		return false;
+
+	return test_bit(I915_SCHED_DEADLINE_BIT, &se->flags);
+}
+
 static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
 {
 	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 8035ea7565ed..c5d7427bd429 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -2129,6 +2129,7 @@ static int measure_preemption(struct intel_context *ce)
 
 		intel_ring_advance(rq, cs);
 		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		rq->sched.deadline = 0;
 
 		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
 		i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 2bb2d3d07d06..59df7f834dad 100644
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
@@ -54,6 +88,7 @@ static int mock_skiplist_levels(void *dummy)
 int i915_scheduler_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(mock_scheduler_slices),
 		SUBTEST(mock_skiplist_levels),
 	};
 
@@ -556,6 +591,53 @@ static int igt_priority_chains(void *arg)
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
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
+
+	/* XXX No generic means to unwind incomplete requests yet */
+	if (!i915_request_in_priority_queue(rq))
+		return false;
+
+	if (!intel_engine_has_preemption(engine))
+		return false;
+
+	spin_lock_irq(&se->lock);
+
+	/* Push all the requests to the same deadline */
+	__i915_request_set_deadline(se, rq, 0);
+	GEM_BUG_ON(rq_deadline(rq) != 0);
+
+	/* Then the very first request must be the one everyone depends on */
+	rq = list_first_entry(lookup_priolist(se, 0), typeof(*rq), sched.link);
+	GEM_BUG_ON(rq->engine != engine);
+
+	/* Deferring the first request will then have to defer all requests */
+	__i915_sched_defer_request(engine, rq);
+
+	spin_unlock_irq(&se->lock);
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
@@ -767,13 +849,22 @@ static int igt_priority_cycle(void *arg)
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
@@ -909,9 +1000,54 @@ static int sparse_priority(void *arg)
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
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index cda0f391d965..4efc5801173c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -525,6 +525,7 @@ typedef struct drm_i915_irq_wait {
 #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
 #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
 #define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
+#define   I915_SCHEDULER_CAP_FAIR	(1ul << 6)
 
 #define I915_PARAM_HUC_STATUS		 42
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
