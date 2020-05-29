Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9081E1E78E4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 10:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E083D6E8A6;
	Fri, 29 May 2020 08:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6AE6E8A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 08:58:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21331420-1500050 
 for multiple; Fri, 29 May 2020 09:58:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2020 09:58:09 +0100
Message-Id: <20200529085809.23691-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Once executed, always executed
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

With the advent of preempt-to-busy, a request may still be on the GPU as
we unwind. And in the case of a unpreemptible [due to HW] request, that
request will remain indefinitely on the GPU event though we have
returned it back to our submission queue, and cleared the active bit.

We only run the execution callbacks on transferring the request from our
submission queue to the execution queue, but if this is a bonded request
that the HW is waiting for, we will not submit it (as we wait for a
fresh execution) even though it is still being executed.

To resolve this issue, once we have executed a request, consider it
always ready for execution and allow the submit-fence to proceed.
Alternatively, we could check the actual inflight context very carefully
to see if the signaller currently executing.

Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
Testcase: igt/gem_exec_balancer/bonded-dual
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index e5aba6824e26..b59dd3606914 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -186,6 +186,11 @@ static void irq_execute_cb_hook(struct irq_work *wrk)
 	irq_execute_cb(wrk);
 }
 
+static bool __request_has_executed(const struct i915_request *rq)
+{
+	return READ_ONCE(rq->execute_cb.first) == ERR_PTR(-1);
+}
+
 static void __notify_execute_cb(struct i915_request *rq)
 {
 	struct execute_cb *cb, *cn;
@@ -193,7 +198,7 @@ static void __notify_execute_cb(struct i915_request *rq)
 	lockdep_assert_held(&rq->lock);
 
 	GEM_BUG_ON(!i915_request_is_active(rq));
-	if (llist_empty(&rq->execute_cb))
+	if (__request_has_executed(rq))
 		return;
 
 	llist_for_each_entry_safe(cb, cn, rq->execute_cb.first, work.llnode)
@@ -209,7 +214,7 @@ static void __notify_execute_cb(struct i915_request *rq)
 	 * preempt-to-idle cycle on the target engine, all the while the
 	 * master execute_cb may refire.
 	 */
-	init_llist_head(&rq->execute_cb);
+	rq->execute_cb.first = ERR_PTR(-1);
 }
 
 static inline void
@@ -323,11 +328,7 @@ bool i915_request_retire(struct i915_request *rq)
 		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
 	}
-	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
-		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
-		__notify_execute_cb(rq);
-	}
-	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
+	GEM_BUG_ON(!__request_has_executed(rq));
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
@@ -372,7 +373,7 @@ __await_execution(struct i915_request *rq,
 {
 	struct execute_cb *cb;
 
-	if (i915_request_is_active(signal)) {
+	if (__request_has_executed(signal)) {
 		if (hook)
 			hook(rq, &signal->fence);
 		return 0;
@@ -393,7 +394,7 @@ __await_execution(struct i915_request *rq,
 	}
 
 	spin_lock_irq(&signal->lock);
-	if (i915_request_is_active(signal)) {
+	if (__request_has_executed(signal)) {
 		if (hook) {
 			hook(rq, &signal->fence);
 			i915_request_put(signal);
@@ -521,7 +522,7 @@ bool __i915_request_submit(struct i915_request *request)
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 		__notify_execute_cb(request);
 	}
-	GEM_BUG_ON(!llist_empty(&request->execute_cb));
+	GEM_BUG_ON(!__request_has_executed(request));
 
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
 	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
@@ -709,8 +710,6 @@ static void __i915_request_ctor(void *arg)
 
 	rq->file_priv = NULL;
 	rq->capture_list = NULL;
-
-	init_llist_head(&rq->execute_cb);
 }
 
 struct i915_request *
@@ -798,9 +797,9 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 
 	/* No zalloc, everything must be cleared after use */
 	rq->batch = NULL;
+	rq->execute_cb.first = NULL;
 	GEM_BUG_ON(rq->file_priv);
 	GEM_BUG_ON(rq->capture_list);
-	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 
 	/*
 	 * Reserve space in the ring buffer for all the commands required to
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
