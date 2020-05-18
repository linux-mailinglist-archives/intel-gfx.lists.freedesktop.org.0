Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB11D725C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 09:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A749B6E12F;
	Mon, 18 May 2020 07:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B2589D99
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 07:58:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21226012-1500050 
 for multiple; Mon, 18 May 2020 08:57:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 08:57:48 +0100
Message-Id: <20200518075750.17223-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518075750.17223-1-chris@chris-wilson.co.uk>
References: <20200518075750.17223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Use virtual_engine during
 execlists_dequeue
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

Rather than going back and forth between the rb_node entry and the
virtual_engine type, store the ve local and reuse it. As the
container_of conversion from rb_node to virtual_engine requires a
variable offset, performing that conversion just once shaves off a bit
of code.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 93 +++++++++++++++--------------
 1 file changed, 47 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 26fefe3648ee..fcb500f08eac 100644
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
@@ -1812,6 +1810,35 @@ static bool virtual_matches(const struct virtual_engine *ve,
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
@@ -1896,7 +1923,7 @@ static void defer_active(struct intel_engine_cs *engine)
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
 	       const struct i915_request *rq,
-	       const struct rb_node *rb)
+	       struct virtual_engine *ve)
 {
 	int hint;
 
@@ -1905,9 +1932,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 
 	hint = engine->execlists.queue_priority_hint;
 
-	if (rb) {
-		const struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	if (ve) {
 		const struct intel_engine_cs *inflight =
 			intel_context_inflight(&ve->context);
 
@@ -2057,8 +2082,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request * const *active;
+	struct i915_request * const *active = READ_ONCE(execlists->active);
 	struct i915_request *last;
+	struct virtual_engine *ve;
 	struct rb_node *rb;
 	bool submit = false;
 
@@ -2084,26 +2110,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
-
 	/*
 	 * If the queue is higher priority than the last
 	 * request in the currently active context, submit afresh.
@@ -2111,10 +2117,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * the active context to interject the preemption request,
 	 * i.e. we will retrigger preemption following the ack in case
 	 * of trouble.
-	 */
-	active = READ_ONCE(execlists->active);
-
-	/*
+	 *
 	 * In theory we can skip over completed contexts that have not
 	 * yet been processed by events (as those events are in flight):
 	 *
@@ -2125,9 +2128,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * find itself trying to jump back into a context it has just
 	 * completed and barf.
 	 */
-
 	if ((last = *active)) {
-		if (need_preempt(engine, last, rb)) {
+		ve = first_virtual_engine(engine);
+
+		if (need_preempt(engine, last, ve)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
@@ -2158,7 +2162,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last, rb) &&
+		} else if (need_timeslice(engine, last, ve) &&
 			   timeslice_expired(execlists, last)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
@@ -2212,9 +2216,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 	}
 
-	while (rb) { /* XXX virtual is always taking precedence */
-		struct virtual_engine *ve =
-			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+	/* XXX virtual is always taking precedence */
+	while ((ve = first_virtual_engine(engine))) {
 		struct i915_request *rq;
 
 		spin_lock(&ve->base.active.lock);
@@ -2222,9 +2225,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
 
@@ -2233,11 +2237,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
@@ -2257,6 +2257,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			WRITE_ONCE(ve->request, NULL);
 			WRITE_ONCE(ve->base.execlists.queue_priority_hint,
 				   INT_MIN);
+
+			rb = &ve->nodes[engine->id].rb;
 			rb_erase_cached(rb, &execlists->virtual);
 			RB_CLEAR_NODE(rb);
 
@@ -2309,7 +2311,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
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
