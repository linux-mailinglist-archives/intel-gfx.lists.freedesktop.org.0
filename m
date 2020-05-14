Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A01D34F3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 17:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77226EB62;
	Thu, 14 May 2020 15:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D966EB62
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 15:22:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21201230-1500050 
 for multiple; Thu, 14 May 2020 16:21:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 16:21:52 +0100
Message-Id: <20200514152152.19315-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514152152.19315-1-chris@chris-wilson.co.uk>
References: <20200514152152.19315-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Optimise away false
 timeslicing on virtual engines
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

The virtual timeslicing failed under a series of unfortunate events.
Suppose the user submitted a virtual request, over [vcs0, vcs1] and also
a request that dependent upon the result of the virtal request to vcs0.

submit {veng, vcs0}
time slice expires: unsubmit vcs0, veng
submit { vcs0 } # no timeslicing
virtual tasklet requeues veng

veng saw that it was still in flight on vcs0 and did not queue onto
vcs1, and on vcs0 it saw no reason to preempt the active request.

Patch "drm/i915/gt: Kick virtual siblings on timeslice out" fixes not
waking up the siblings after timeslicing, and patch "drm/i915/gt:
Incorporate the virtual engine into timeslicing" fixes the issue of not
restarting timeslicing after the replacement of veng.

After applying those patches, we should then expire the timeslice on
vcs0 and resubmit {veng, vcs0} and reschedule the timeslices. Repeating
the sequence until the veng finally completes. Our usual strategy to
recognise the data dependent timeslicing is to notice the resubmission
of the same pair of requests, and so skip the ELSP write, leaving them
executing on the HW. (This will also then disable the timeslicing until
either completes or we see a new request.)

In order for the virtual request to be resubmitted immediately after
expiring the timeslice, we need to ensure that we make the virtual
engine immediately available again for submission in this execlists
tasklet.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 99 +++++++++++++++++------------
 1 file changed, 60 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 398f597b15a3..9276218a887c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -451,7 +451,7 @@ static int queue_prio(const struct intel_engine_execlists *execlists)
 
 static inline bool need_preempt(const struct intel_engine_cs *engine,
 				const struct i915_request *rq,
-				struct rb_node *rb)
+				struct virtual_engine *ve)
 {
 	int last_prio;
 
@@ -488,9 +488,7 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
 		return true;
 
-	if (rb) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	if (ve) {
 		bool preempt = false;
 
 		if (engine == ve->siblings[0]) { /* only preempt one sibling */
@@ -1099,6 +1097,20 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 	}
 }
 
+static void poke_virtual_request(struct intel_engine_cs *engine,
+				 struct i915_request *rq)
+{
+	struct ve_node * const node =
+		&to_virtual_engine(rq->engine)->nodes[engine->id];
+	struct intel_engine_execlists *el = &engine->execlists;
+
+	if (!RB_EMPTY_ROOT(&el->virtual.rb_root))
+		return;
+
+	rb_link_node(&node->rb, NULL, &el->virtual.rb_root.rb_node);
+	rb_insert_color_cached(&node->rb, &el->virtual, true);
+}
+
 static struct i915_request *
 __unwind_incomplete_requests(struct intel_engine_cs *engine)
 {
@@ -1154,6 +1166,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			}
 			WRITE_ONCE(rq->engine, owner);
 			owner->submit_request(rq);
+			poke_virtual_request(engine, rq);
 			active = NULL;
 		}
 	}
@@ -1812,6 +1825,35 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
+static struct virtual_engine *
+first_virtual_engine(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists *el = &engine->execlists;
+	struct rb_node *rb = rb_first_cached(&el->virtual);
+
+	while (rb) {
+		struct virtual_engine *ve =
+			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+		struct i915_request *rq = READ_ONCE(ve->request);
+
+		if (!rq) { /* lazily cleanup after another engine handled rq */
+			rb_erase_cached(rb, &el->virtual);
+			RB_CLEAR_NODE(rb);
+			rb = rb_first_cached(&el->virtual);
+			continue;
+		}
+
+		if (!virtual_matches(ve, rq, engine)) {
+			rb = rb_next(rb);
+			continue;
+		}
+
+		return ve;
+	}
+
+	return NULL;
+}
+
 static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
 {
 	/*
@@ -1896,7 +1938,7 @@ static void defer_active(struct intel_engine_cs *engine)
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
 	       const struct i915_request *rq,
-	       const struct rb_node *rb)
+	       struct virtual_engine *ve)
 {
 	int hint;
 
@@ -1905,9 +1947,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 
 	hint = engine->execlists.queue_priority_hint;
 
-	if (rb) {
-		const struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	if (ve) {
 		const struct intel_engine_cs *inflight =
 			intel_context_inflight(&ve->context);
 
@@ -2059,6 +2099,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request * const *active;
 	struct i915_request *last;
+	struct virtual_engine *ve;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -2084,25 +2125,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
-	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
-		struct i915_request *rq = READ_ONCE(ve->request);
-
-		if (!rq) { /* lazily cleanup after another engine handled rq */
-			rb_erase_cached(rb, &execlists->virtual);
-			RB_CLEAR_NODE(rb);
-			rb = rb_first_cached(&execlists->virtual);
-			continue;
-		}
-
-		if (!virtual_matches(ve, rq, engine)) {
-			rb = rb_next(rb);
-			continue;
-		}
-
-		break;
-	}
 
 	/*
 	 * If the queue is higher priority than the last
@@ -2127,7 +2149,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 */
 
 	if ((last = *active)) {
-		if (need_preempt(engine, last, rb)) {
+		ve = first_virtual_engine(engine);
+
+		if (need_preempt(engine, last, ve)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
@@ -2158,7 +2182,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last, rb) &&
+		} else if (need_timeslice(engine, last, ve) &&
 			   timeslice_expired(execlists, last)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
@@ -2212,9 +2236,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	while (rb) { /* XXX virtual is always taking precedence */
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	/* XXX virtual is always taking precedence */
+	while ((ve = first_virtual_engine(engine))) {
 		struct i915_request *rq;
 
 		spin_lock(&ve->base.active.lock);
@@ -2222,9 +2245,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		rq = ve->request;
 		if (unlikely(!rq)) { /* lost the race to a sibling */
 			spin_unlock(&ve->base.active.lock);
+
+			rb = &ve->nodes[engine->id].rb;
 			rb_erase_cached(rb, &execlists->virtual);
 			RB_CLEAR_NODE(rb);
-			rb = rb_first_cached(&execlists->virtual);
 			continue;
 		}
 
@@ -2233,11 +2257,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->context != &ve->context);
 
 		if (rq_prio(rq) >= queue_prio(execlists)) {
-			if (!virtual_matches(ve, rq, engine)) {
-				spin_unlock(&ve->base.active.lock);
-				rb = rb_next(rb);
-				continue;
-			}
+			GEM_BUG_ON(!virtual_matches(ve, rq, engine));
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
@@ -2257,6 +2277,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			WRITE_ONCE(ve->request, NULL);
 			WRITE_ONCE(ve->base.execlists.queue_priority_hint,
 				   INT_MIN);
+
+			rb = &ve->nodes[engine->id].rb;
 			rb_erase_cached(rb, &execlists->virtual);
 			RB_CLEAR_NODE(rb);
 
@@ -2309,7 +2331,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 */
 			if (!submit) {
 				spin_unlock(&ve->base.active.lock);
-				rb = rb_first_cached(&execlists->virtual);
 				continue;
 			}
 		}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
