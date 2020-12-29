Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E712E7062
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33EE8966C;
	Tue, 29 Dec 2020 12:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C9089226
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455169-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:01:05 +0000
Message-Id: <20201229120145.26045-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/56] drm/i915/gt: Remove timeslice suppression
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

In the next patch, we remove the strict priority system and continuously
re-evaluate the relative priority of tasks. As such we need to enable
the timeslice whenever there is more than one context in the pipeline.
This simplifies the decision and removes some of the tweaks to suppress
timeslicing, allowing us to lift the timeslice enabling to a common spot
at the end of running the submission tasklet.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  10 --
 .../drm/i915/gt/intel_execlists_submission.c  | 159 +++++++-----------
 2 files changed, 61 insertions(+), 108 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index fdec129a6317..f850179a583f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -238,16 +238,6 @@ struct intel_engine_execlists {
 	 */
 	unsigned int port_mask;
 
-	/**
-	 * @switch_priority_hint: Second context priority.
-	 *
-	 * We submit multiple contexts to the HW simultaneously and would
-	 * like to occasionally switch between them to emulate timeslicing.
-	 * To know when timeslicing is suitable, we track the priority of
-	 * the context submitted second.
-	 */
-	int switch_priority_hint;
-
 	/**
 	 * @queue_priority_hint: Highest pending priority.
 	 *
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index c31eb7d6184c..a8544692e7e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1116,25 +1116,6 @@ static void defer_active(struct intel_engine_cs *engine)
 	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
 }
 
-static bool
-need_timeslice(const struct intel_engine_cs *engine,
-	       const struct i915_request *rq)
-{
-	int hint;
-
-	if (!intel_engine_has_timeslices(engine))
-		return false;
-
-	hint = max(engine->execlists.queue_priority_hint,
-		   virtual_prio(&engine->execlists));
-
-	if (!list_is_last(&rq->sched.link, &engine->active.requests))
-		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
-
-	GEM_BUG_ON(hint >= I915_PRIORITY_UNPREEMPTABLE);
-	return hint >= effective_prio(rq);
-}
-
 static bool
 timeslice_yield(const struct intel_engine_execlists *el,
 		const struct i915_request *rq)
@@ -1154,76 +1135,68 @@ timeslice_yield(const struct intel_engine_execlists *el,
 	return rq->context->lrc.ccid == READ_ONCE(el->yield);
 }
 
-static bool
-timeslice_expired(const struct intel_engine_execlists *el,
-		  const struct i915_request *rq)
+static bool needs_timeslice(const struct intel_engine_cs *engine,
+			    const struct i915_request *rq)
 {
-	return timer_expired(&el->timer) || timeslice_yield(el, rq);
-}
+	if (!intel_engine_has_timeslices(engine))
+		return false;
 
-static int
-switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
-{
-	if (list_is_last(&rq->sched.link, &engine->active.requests))
-		return engine->execlists.queue_priority_hint;
+	/* If not currently active, or about to switch, wait for next event */
+	if (!rq || __i915_request_is_complete(rq))
+		return false;
 
-	return rq_prio(list_next_entry(rq, sched.link));
-}
+	/* We do not need to start the timeslice until after the ACK */
+	if (READ_ONCE(engine->execlists.pending[0]))
+		return false;
 
-static inline unsigned long
-timeslice(const struct intel_engine_cs *engine)
-{
-	return READ_ONCE(engine->props.timeslice_duration_ms);
+	/* If ELSP[1] is occupied, always check to see if worth slicing */
+	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests))
+		return true;
+
+	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
+	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+		return true;
+
+	return !RB_EMPTY_ROOT(&engine->execlists.virtual.rb_root);
 }
 
-static unsigned long active_timeslice(const struct intel_engine_cs *engine)
+static bool
+timeslice_expired(struct intel_engine_cs *engine, const struct i915_request *rq)
 {
-	const struct intel_engine_execlists *execlists = &engine->execlists;
-	const struct i915_request *rq = *execlists->active;
+	const struct intel_engine_execlists *el = &engine->execlists;
 
-	if (!rq || __i915_request_is_complete(rq))
-		return 0;
+	if (i915_request_has_nopreempt(rq) && __i915_request_has_started(rq))
+		return false;
 
-	if (READ_ONCE(execlists->switch_priority_hint) < effective_prio(rq))
-		return 0;
+	if (!needs_timeslice(engine, rq))
+		return false;
 
-	return timeslice(engine);
+	return timer_expired(&el->timer) || timeslice_yield(el, rq);
 }
 
-static void set_timeslice(struct intel_engine_cs *engine)
+static unsigned long timeslice(const struct intel_engine_cs *engine)
 {
-	unsigned long duration;
-
-	if (!intel_engine_has_timeslices(engine))
-		return;
-
-	duration = active_timeslice(engine);
-	ENGINE_TRACE(engine, "bump timeslicing, interval:%lu", duration);
-
-	set_timer_ms(&engine->execlists.timer, duration);
+	return READ_ONCE(engine->props.timeslice_duration_ms);
 }
 
-static void start_timeslice(struct intel_engine_cs *engine, int prio)
+static void start_timeslice(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists *execlists = &engine->execlists;
+	struct intel_engine_execlists *el = &engine->execlists;
 	unsigned long duration;
 
-	if (!intel_engine_has_timeslices(engine))
-		return;
-
-	WRITE_ONCE(execlists->switch_priority_hint, prio);
-	if (prio == INT_MIN)
-		return;
-
-	if (timer_pending(&execlists->timer))
-		return;
+	/* Disable the timer if there is nothing to switch to */
+	duration = 0;
+	if (needs_timeslice(engine, *el->active)) {
+		if (el->timer.expires) {
+			if (!timer_pending(&el->timer))
+				tasklet_hi_schedule(&engine->execlists.tasklet);
+			return;
+		}
 
-	duration = timeslice(engine);
-	ENGINE_TRACE(engine,
-		     "start timeslicing, prio:%d, interval:%lu",
-		     prio, duration);
+		duration = timeslice(engine);
+	}
 
-	set_timer_ms(&execlists->timer, duration);
+	set_timer_ms(&el->timer, duration);
 }
 
 static void record_preemption(struct intel_engine_execlists *execlists)
@@ -1336,16 +1309,16 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last) &&
-			   timeslice_expired(execlists, last)) {
+		} else if (timeslice_expired(engine, last)) {
 			ENGINE_TRACE(engine,
-				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
-				     last->fence.context,
-				     last->fence.seqno,
-				     last->sched.attr.priority,
+				     "expired:%s last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
+				     yesno(timer_expired(&execlists->timer)),
+				     last->fence.context, last->fence.seqno,
+				     rq_prio(last),
 				     execlists->queue_priority_hint,
 				     yesno(timeslice_yield(execlists, last)));
 
+			cancel_timer(&execlists->timer);
 			ring_set_paused(engine, 1);
 			defer_active(engine);
 
@@ -1381,7 +1354,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * of timeslices, our queue might be.
 				 */
 				spin_unlock(&engine->active.lock);
-				start_timeslice(engine, queue_prio(execlists));
 				return;
 			}
 		}
@@ -1410,7 +1382,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		if (last && !can_merge_rq(last, rq)) {
 			spin_unlock(&ve->base.active.lock);
 			spin_unlock(&engine->active.lock);
-			start_timeslice(engine, rq_prio(rq));
 			return; /* leave this for another sibling */
 		}
 
@@ -1574,29 +1545,23 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	execlists->queue_priority_hint = queue_prio(execlists);
 	spin_unlock(&engine->active.lock);
 
-	if (submit) {
-		/*
-		 * Skip if we ended up with exactly the same set of requests,
-		 * e.g. trying to timeslice a pair of ordered contexts
-		 */
-		if (!memcmp(execlists->active,
-			    execlists->pending,
-			    (port - execlists->pending) * sizeof(*port)))
-			goto skip_submit;
-
+	/*
+	 * We can skip poking the HW if we ended up with exactly the same set
+	 * of requests as currently running, e.g. trying to timeslice a pair
+	 * of ordered contexts.
+	 */
+	if (submit &&
+	    memcmp(execlists->active,
+		   execlists->pending,
+		   (port - execlists->pending) * sizeof(*port))) {
 		*port = NULL;
 		while (port-- != execlists->pending)
 			execlists_schedule_in(*port, port - execlists->pending);
 
-		execlists->switch_priority_hint =
-			switch_prio(engine, *execlists->pending);
-
 		WRITE_ONCE(execlists->yield, -1);
 		set_preempt_timeout(engine, *execlists->active);
 		execlists_submit_ports(engine);
 	} else {
-		start_timeslice(engine, execlists->queue_priority_hint);
-skip_submit:
 		ring_set_paused(engine, 0);
 		while (port-- != execlists->pending)
 			i915_request_put(*port);
@@ -1954,8 +1919,6 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 		}
 	} while (head != tail);
 
-	set_timeslice(engine);
-
 	/*
 	 * Gen11 has proven to fail wrt global observation point between
 	 * entry and tail update, failing on the ordering and thus
@@ -1968,6 +1931,7 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 	 * invalidation before.
 	 */
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
+	cancel_timer(&execlists->timer);
 
 	return inactive;
 }
@@ -2386,8 +2350,10 @@ static void execlists_submission_tasklet(unsigned long data)
 		execlists_reset(engine, msg);
 	}
 
-	if (!engine->execlists.pending[0])
+	if (!engine->execlists.pending[0]) {
 		execlists_dequeue_irq(engine);
+		start_timeslice(engine);
+	}
 
 	post_process_csb(post, inactive);
 	rcu_read_unlock();
@@ -3864,9 +3830,6 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 		show_request(m, last, "\t\t", 0);
 	}
 
-	if (execlists->switch_priority_hint != INT_MIN)
-		drm_printf(m, "\t\tSwitch priority hint: %d\n",
-			   READ_ONCE(execlists->switch_priority_hint));
 	if (execlists->queue_priority_hint != INT_MIN)
 		drm_printf(m, "\t\tQueue priority hint: %d\n",
 			   READ_ONCE(execlists->queue_priority_hint));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
