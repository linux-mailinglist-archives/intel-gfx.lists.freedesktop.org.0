Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDFB13F41D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5906EE8B;
	Thu, 16 Jan 2020 18:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175136EE8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:47:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19906424-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:47:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 18:47:52 +0000
Message-Id: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Keep track of request among the
 scheduling lists
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

If we keep track of when the i915_request.sched.link is on the HW
runlist, or in the priority queue we can simplify our interactions with
the request (such as during rescheduling). This also simplifies the next
patch where we introduce a new in-between list, for requests that are
ready but neither on the run list or in the queue.

v2: Update i915_sched_node.link explanation for current usage where it
is a link on both the queue and on the runlists.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 13 ++++++++-----
 drivers/gpu/drm/i915/i915_request.c   |  4 +++-
 drivers/gpu/drm/i915/i915_request.h   | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c | 22 ++++++++++------------
 4 files changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 999fe82190da..4cd88019fc2d 100644
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
@@ -2431,11 +2433,12 @@ static void execlists_preempt(struct timer_list *timer)
 }
 
 static void queue_request(struct intel_engine_cs *engine,
-			  struct i915_sched_node *node,
-			  int prio)
+			  struct i915_request *rq)
 {
-	GEM_BUG_ON(!list_empty(&node->link));
-	list_add_tail(&node->link, i915_sched_lookup_priolist(engine, prio));
+	GEM_BUG_ON(!list_empty(&rq->sched.link));
+	list_add_tail(&rq->sched.link,
+		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
 static void __submit_queue_imm(struct intel_engine_cs *engine)
@@ -2471,7 +2474,7 @@ static void execlists_submit_request(struct i915_request *request)
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-	queue_request(engine, &request->sched, rq_prio(request));
+	queue_request(engine, request);
 
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
index 031433691a06..6f5bbfa95513 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -70,6 +70,18 @@ enum {
 	 */
 	I915_FENCE_FLAG_ACTIVE = DMA_FENCE_FLAG_USER_BITS,
 
+	/*
+	 * I915_FENCE_FLAG_PQUEUE - this request is ready for execution
+	 *
+	 * Using the scheduler, when a request is ready for execution it is put
+	 * into the priority queue, and removed from that queue when transferred
+	 * to the HW runlists. We want to track its membership within the
+	 * priority queue so that we can easily check before rescheduling.
+	 *
+	 * See i915_request_in_priority_queue()
+	 */
+	I915_FENCE_FLAG_PQUEUE,
+
 	/*
 	 * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
 	 *
@@ -361,6 +373,11 @@ static inline bool i915_request_is_active(const struct i915_request *rq)
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
index bf87c70bfdd9..5d96cfba40f8 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -326,20 +326,18 @@ static void __i915_schedule(struct i915_sched_node *node,
 
 		node->attr.priority = prio;
 
-		if (list_empty(&node->link)) {
-			/*
-			 * If the request is not in the priolist queue because
-			 * it is not yet runnable, then it doesn't contribute
-			 * to our preemption decisions. On the other hand,
-			 * if the request is on the HW, it too is not in the
-			 * queue; but in that case we may still need to reorder
-			 * the inflight requests.
-			 */
+		/*
+		 * Once the request is ready, it will be placed into the
+		 * priority lists and then onto the HW runlist. Before the
+		 * request is ready, it does not contribute to our preemption
+		 * decisions and we can safely ignore it, as it will, and
+		 * any preemption required, be dealt with upon submission.
+		 * See engine->submit_request()
+		 */
+		if (list_empty(&node->link))
 			continue;
-		}
 
-		if (!intel_engine_is_virtual(engine) &&
-		    !i915_request_is_active(node_to_request(node))) {
+		if (i915_request_in_priority_queue(node_to_request(node))) {
 			if (!cache.priolist)
 				cache.priolist =
 					i915_sched_lookup_priolist(engine,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
