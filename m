Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ECB2E7066
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95EF8979F;
	Tue, 29 Dec 2020 12:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9347389319
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455155-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:00:55 +0000
Message-Id: <20201229120145.26045-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/56] drm/i915: Mark up protected uses of
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c     |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c           |  3 +--
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  4 +++-
 drivers/gpu/drm/i915/gt/intel_timeline.c        |  4 ++--
 drivers/gpu/drm/i915/i915_request.c             | 15 +++++++--------
 7 files changed, 17 insertions(+), 17 deletions(-)

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
index d78fdfa91cd7..d00107939d22 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -486,8 +486,8 @@ static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
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
index 1847d3c2ea99..e325d559f29a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1792,7 +1792,7 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 		struct intel_timeline *tl = request->context->timeline;
 
 		list_for_each_entry_from_reverse(request, &tl->requests, link) {
-			if (i915_request_completed(request))
+			if (__i915_request_is_complete(request))
 				break;
 
 			active = request;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index b85b6f3dcd60..e0b4291393ec 100644
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
index 4ea741f488a8..0737a2608d0b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -404,12 +404,14 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
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
index 3290e743ba43..f5fe69c20b90 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -276,7 +276,7 @@ static void remove_from_engine(struct i915_request *rq)
 
 bool i915_request_retire(struct i915_request *rq)
 {
-	if (!i915_request_completed(rq))
+	if (!__i915_request_is_complete(rq))
 		return false;
 
 	RQ_TRACE(rq, "\n");
@@ -344,8 +344,7 @@ void i915_request_retire_upto(struct i915_request *rq)
 	struct i915_request *tmp;
 
 	RQ_TRACE(rq, "\n");
-
-	GEM_BUG_ON(!i915_request_completed(rq));
+	GEM_BUG_ON(!__i915_request_is_complete(rq));
 
 	do {
 		tmp = list_first_entry(&tl->requests, typeof(*tmp), link);
@@ -543,7 +542,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 * dropped upon retiring. (Otherwise if resubmit a *retired*
 	 * request, this would be a horrible use-after-free.)
 	 */
-	if (i915_request_completed(request))
+	if (__i915_request_is_complete(request))
 		goto xfer;
 
 	if (unlikely(intel_context_is_banned(request->context)))
@@ -643,7 +642,7 @@ void __i915_request_unsubmit(struct i915_request *request)
 		i915_request_cancel_breadcrumb(request);
 
 	/* We've already spun, don't charge on resubmitting. */
-	if (request->sched.semaphores && i915_request_started(request))
+	if (request->sched.semaphores && __i915_request_has_started(request))
 		request->sched.semaphores = 0;
 
 	/*
@@ -855,7 +854,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
-	GEM_BUG_ON(i915_request_completed(rq));
+	GEM_BUG_ON(__i915_request_is_complete(rq));
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
@@ -969,7 +968,7 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 		struct i915_request *prev;
 
 		/* Confirm signal has not been retired, the link is valid */
-		if (unlikely(i915_request_started(signal)))
+		if (unlikely(__i915_request_has_started(signal)))
 			break;
 
 		/* Is signal the earliest request on its timeline? */
@@ -1511,7 +1510,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 	 */
 	prev = to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
-	if (prev && !i915_request_completed(prev)) {
+	if (prev && !__i915_request_is_complete(prev)) {
 		/*
 		 * The requests are supposed to be kept in order. However,
 		 * we need to be wary in case the timeline->last_request
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
