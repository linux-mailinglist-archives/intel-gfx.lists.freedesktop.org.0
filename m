Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEE32F4B92
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 13:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7BF6E97D;
	Wed, 13 Jan 2021 12:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6970B6E979
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 12:46:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23584206-1500050 
 for multiple; Wed, 13 Jan 2021 12:46:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 12:45:51 +0000
Message-Id: <20210113124600.656-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: Mark up protected uses of
 'i915_request_completed'
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

When we know that we are inside the timeline mutex, or inside the
submission flow (under active.lock or the holder's rcu lock), we know
that the rq->hwsp is stable and we can use the simpler direct version.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  6 +++---
 .../drm/i915/gt/intel_execlists_submission.c  |  4 ++--
 drivers/gpu/drm/i915/gt/intel_reset.c         |  3 +--
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  4 +++-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  4 ++--
 drivers/gpu/drm/i915/i915_request.c           | 19 +++++++++----------
 drivers/gpu/drm/i915/i915_scheduler.c         |  2 +-
 9 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 68f58762d5e3..cac0c52fc681 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -408,7 +408,7 @@ __active_engine(struct i915_request *rq, struct intel_engine_cs **active)
 	}
 
 	if (i915_request_is_active(rq)) {
-		if (!i915_request_completed(rq))
+		if (!__i915_request_is_complete(rq))
 			*active = locked;
 		ret = true;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index be2c285a0ac7..d098fc0c14ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -517,8 +517,8 @@ static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 		list_for_each_entry_rcu(rq, &ce->signals, signal_link)
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
-				   i915_request_completed(rq) ? "!" :
-				   i915_request_started(rq) ? "*" :
+				   __i915_request_is_complete(rq) ? "!" :
+				   __i915_request_has_started(rq) ? "*" :
 				   "",
 				   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f531207971d1..7583b6e48a9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1800,7 +1800,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 		struct intel_timeline *tl = request->context->timeline;
 
 		list_for_each_entry_from_reverse(request, &tl->requests, link) {
-			if (i915_request_completed(request))
+			if (__i915_request_is_complete(request))
 				break;
 
 			active = request;
@@ -1811,10 +1811,10 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 		return active;
 
 	list_for_each_entry(request, &engine->active.requests, sched.link) {
-		if (i915_request_completed(request))
+		if (__i915_request_is_complete(request))
 			continue;
 
-		if (!i915_request_started(request))
+		if (!__i915_request_has_started(request))
 			continue;
 
 		/* More than one preemptible request may match! */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index d7d5a58990bb..e28f32661df4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3296,7 +3296,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 
 		old = fetch_and_zero(&ve->request);
 		if (old) {
-			GEM_BUG_ON(!i915_request_completed(old));
+			GEM_BUG_ON(!__i915_request_is_complete(old));
 			__i915_request_submit(old);
 			i915_request_put(old);
 		}
@@ -3573,7 +3573,7 @@ static void virtual_submit_request(struct i915_request *rq)
 	}
 
 	if (ve->request) { /* background completion from preempt-to-busy */
-		GEM_BUG_ON(!i915_request_completed(ve->request));
+		GEM_BUG_ON(!__i915_request_is_complete(ve->request));
 		__i915_request_submit(ve->request);
 		i915_request_put(ve->request);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 9d177297db79..bba385497d7b 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -151,8 +151,7 @@ static void mark_innocent(struct i915_request *rq)
 void __i915_request_reset(struct i915_request *rq, bool guilty)
 {
 	RQ_TRACE(rq, "guilty? %s\n", yesno(guilty));
-
-	GEM_BUG_ON(i915_request_completed(rq));
+	GEM_BUG_ON(__i915_request_is_complete(rq));
 
 	rcu_read_lock(); /* protect the GEM context */
 	if (guilty) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 657afd8ebc14..c86ae77acc4e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -405,12 +405,14 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	rq = NULL;
 	spin_lock_irqsave(&engine->active.lock, flags);
+	rcu_read_lock();
 	list_for_each_entry(pos, &engine->active.requests, sched.link) {
-		if (!i915_request_completed(pos)) {
+		if (!__i915_request_is_complete(pos)) {
 			rq = pos;
 			break;
 		}
 	}
+	rcu_read_unlock();
 
 	/*
 	 * The guilty request will get skipped on a hung engine.
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 7fe05918a76e..037b0e3ccbed 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -582,11 +582,11 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 
 	rcu_read_lock();
 	cl = rcu_dereference(from->hwsp_cacheline);
-	if (i915_request_completed(from)) /* confirm cacheline is valid */
+	if (i915_request_signaled(from)) /* confirm cacheline is valid */
 		goto unlock;
 	if (unlikely(!i915_active_acquire_if_busy(&cl->active)))
 		goto unlock; /* seqno wrapped and completed! */
-	if (unlikely(i915_request_completed(from)))
+	if (unlikely(__i915_request_is_complete(from)))
 		goto release;
 	rcu_read_unlock();
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0b1a46a0d866..784c05ac5cca 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -276,7 +276,7 @@ static void remove_from_engine(struct i915_request *rq)
 
 bool i915_request_retire(struct i915_request *rq)
 {
-	if (!i915_request_completed(rq))
+	if (!__i915_request_is_complete(rq))
 		return false;
 
 	RQ_TRACE(rq, "\n");
@@ -342,8 +342,7 @@ void i915_request_retire_upto(struct i915_request *rq)
 	struct i915_request *tmp;
 
 	RQ_TRACE(rq, "\n");
-
-	GEM_BUG_ON(!i915_request_completed(rq));
+	GEM_BUG_ON(!__i915_request_is_complete(rq));
 
 	do {
 		tmp = list_first_entry(&tl->requests, typeof(*tmp), link);
@@ -552,7 +551,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 * dropped upon retiring. (Otherwise if resubmit a *retired*
 	 * request, this would be a horrible use-after-free.)
 	 */
-	if (i915_request_completed(request))
+	if (__i915_request_is_complete(request))
 		goto xfer;
 
 	if (unlikely(intel_context_is_banned(request->context)))
@@ -652,7 +651,7 @@ void __i915_request_unsubmit(struct i915_request *request)
 		i915_request_cancel_breadcrumb(request);
 
 	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request))
+	if (request->sched.semaphores && __i915_request_has_started(request))
 		request->sched.semaphores = 0;
 
 	/*
@@ -864,7 +863,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
-	GEM_BUG_ON(i915_request_completed(rq));
+	GEM_BUG_ON(__i915_request_is_complete(rq));
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
@@ -978,7 +977,7 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 		struct i915_request *prev;
 
 		/* Confirm signal has not been retired, the link is valid */
-		if (unlikely(i915_request_started(signal)))
+		if (unlikely(__i915_request_has_started(signal)))
 			break;
 
 		/* Is signal the earliest request on its timeline? */
@@ -1520,7 +1519,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 	 */
 	prev = to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
-	if (prev && !i915_request_completed(prev)) {
+	if (prev && !__i915_request_is_complete(prev)) {
 		/*
 		 * The requests are supposed to be kept in order. However,
 		 * we need to be wary in case the timeline->last_request
@@ -1897,10 +1896,10 @@ static char queue_status(const struct i915_request *rq)
 
 static const char *run_status(const struct i915_request *rq)
 {
-	if (i915_request_completed(rq))
+	if (__i915_request_is_complete(rq))
 		return "!";
 
-	if (i915_request_started(rq))
+	if (__i915_request_has_started(rq))
 		return "*";
 
 	if (!i915_sw_fence_signaled(&rq->semaphore))
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 318e359bf5c3..7144239f08df 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -520,7 +520,7 @@ void i915_request_show_with_schedule(struct drm_printer *m,
 		if (signaler->timeline == rq->timeline)
 			continue;
 
-		if (i915_request_completed(signaler))
+		if (__i915_request_is_complete(signaler))
 			continue;
 
 		i915_request_show(m, signaler, prefix, indent + 2);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
