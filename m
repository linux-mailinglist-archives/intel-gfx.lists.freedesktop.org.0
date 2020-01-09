Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF5D1354F9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359B56E8DC;
	Thu,  9 Jan 2020 08:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3996E8DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817531-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:33 +0000
Message-Id: <20200109085839.873553-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109085839.873553-1-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Use common priotree lists for
 virtual engine
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

Since commit 422d7df4f090 ("drm/i915: Replace engine->timeline with a
plain list"), we used the default embedded priotree slot for the virtual
engine request queue, which means we can also use the same solitary slot
with the scheduler. However, the priolist is expected to be guarded by
the engine->active.lock, but this is not true for the virtual engine

References: 422d7df4f090 ("drm/i915: Replace engine->timeline with a plain list")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   |  3 +++
 drivers/gpu/drm/i915/i915_request.c   |  4 +++-
 drivers/gpu/drm/i915/i915_request.h   | 16 ++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c |  3 +--
 4 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 08d5087e7582..45f90cfbe2d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -985,6 +985,8 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
 			list_move(&rq->sched.link, pl);
+			set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+
 			active = rq;
 		} else {
 			struct intel_engine_cs *owner = rq->context->engine;
@@ -2499,6 +2501,7 @@ static void execlists_submit_request(struct i915_request *request)
 	spin_lock_irqsave(&engine->active.lock, flags);
 
 	queue_request(engine, &request->sched, rq_prio(request));
+	set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 
 	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 	GEM_BUG_ON(list_empty(&request->sched.link));
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index be185886e4fc..9ed0d3bc7249 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -408,8 +408,10 @@ bool __i915_request_submit(struct i915_request *request)
 xfer:	/* We may be recursing from the signal callback of another i915 fence */
 	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
 
-	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags))
+	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
 		list_move_tail(&request->sched.link, &engine->active.requests);
+		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
+	}
 
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
 	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 031433691a06..f3e50ec989b8 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -70,6 +70,17 @@ enum {
 	 */
 	I915_FENCE_FLAG_ACTIVE = DMA_FENCE_FLAG_USER_BITS,
 
+	/*
+	 * I915_FENCE_FLAG_PQUEUE - this request is ready for execution
+	 *
+	 * Using the scheduler, when a request is ready for execution it is put
+	 * into the priority queue. We want to track its membership within that
+	 * queue so that we can easily check before rescheduling.
+	 *
+	 * See i915_request_in_priority_queue()
+	 */
+	I915_FENCE_FLAG_PQUEUE,
+
 	/*
 	 * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
 	 *
@@ -361,6 +372,11 @@ static inline bool i915_request_is_active(const struct i915_request *rq)
 	return test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 }
 
+static inline bool i915_request_in_priority_queue(const struct i915_request *rq)
+{
+	return test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+}
+
 /**
  * Returns true if seq1 is later than seq2.
  */
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index bf87c70bfdd9..4f6e4d6c590a 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -338,8 +338,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 			continue;
 		}
 
-		if (!intel_engine_is_virtual(engine) &&
-		    !i915_request_is_active(node_to_request(node))) {
+		if (i915_request_in_priority_queue(node_to_request(node))) {
 			if (!cache.priolist)
 				cache.priolist =
 					i915_sched_lookup_priolist(engine,
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
