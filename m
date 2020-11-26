Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8680E2C5694
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 15:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFB86E97D;
	Thu, 26 Nov 2020 14:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0896E959
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:04:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23117563-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:04:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 14:04:07 +0000
Message-Id: <20201126140407.31952-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201126140407.31952-1-chris@chris-wilson.co.uk>
References: <20201126140407.31952-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915/gt: Move the breadcrumb to the
 signaler if completed upon cancel
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

If while we are cancelling the breadcrumb signaling, we find that the
request is already completed, move it to the irq signaler and let it be
signaled.

v2: Tweak reference counting so that we only acquire a new reference on
adding to a signal list, as opposed to a hidden i915_request_put of the
caller's reference.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 41 +++++++++++----------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index a24cc1ff08a0..00918300f53f 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -192,18 +192,6 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 		intel_engine_add_retire(b->irq_engine, tl);
 }
 
-static bool __signal_request(struct i915_request *rq)
-{
-	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
-
-	if (!__dma_fence_signal(&rq->fence)) {
-		i915_request_put(rq);
-		return false;
-	}
-
-	return true;
-}
-
 static struct llist_node *
 slist_add(struct llist_node *node, struct llist_node *head)
 {
@@ -274,9 +262,11 @@ static void signal_irq_work(struct irq_work *work)
 			release = remove_signaling_context(b, ce);
 			spin_unlock(&ce->signal_lock);
 
-			if (__signal_request(rq))
+			if (__dma_fence_signal(&rq->fence))
 				/* We own signal_node now, xfer to local list */
 				signal = slist_add(&rq->signal_node, signal);
+			else
+				i915_request_put(rq);
 
 			if (release) {
 				add_retire(b, ce->timeline);
@@ -363,6 +353,17 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 	kfree(b);
 }
 
+static void irq_signal_request(struct i915_request *rq,
+			       struct intel_breadcrumbs *b)
+{
+	if (!__dma_fence_signal(&rq->fence))
+		return;
+
+	i915_request_get(rq);
+	if (llist_add(&rq->signal_node, &b->signaled_requests))
+		irq_work_queue(&b->irq_work);
+}
+
 static void insert_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
@@ -372,17 +373,13 @@ static void insert_breadcrumb(struct i915_request *rq)
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
 		return;
 
-	i915_request_get(rq);
-
 	/*
 	 * If the request is already completed, we can transfer it
 	 * straight onto a signaled list, and queue the irq worker for
 	 * its signal completion.
 	 */
 	if (__request_completed(rq)) {
-		if (__signal_request(rq) &&
-		    llist_add(&rq->signal_node, &b->signaled_requests))
-			irq_work_queue(&b->irq_work);
+		irq_signal_request(rq, b);
 		return;
 	}
 
@@ -413,6 +410,8 @@ static void insert_breadcrumb(struct i915_request *rq)
 				break;
 		}
 	}
+
+	i915_request_get(rq);
 	list_add_rcu(&rq->signal_link, pos);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags));
@@ -453,6 +452,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
+	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
 	bool release;
 
@@ -461,11 +461,14 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 
 	spin_lock(&ce->signal_lock);
 	list_del_rcu(&rq->signal_link);
-	release = remove_signaling_context(rq->engine->breadcrumbs, ce);
+	release = remove_signaling_context(b, ce);
 	spin_unlock(&ce->signal_lock);
 	if (release)
 		intel_context_put(ce);
 
+	if (__request_completed(rq))
+		irq_signal_request(rq, b);
+
 	i915_request_put(rq);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
