Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A322C48CA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827A06EA6A;
	Wed, 25 Nov 2020 19:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F7B6EA6A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:56:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23108122-1500050 
 for multiple; Wed, 25 Nov 2020 19:56:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 19:56:34 +0000
Message-Id: <20201125195634.29783-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201124114219.29020-5-chris@chris-wilson.co.uk>
References: <20201124114219.29020-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Move the breadcrumb to the
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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
