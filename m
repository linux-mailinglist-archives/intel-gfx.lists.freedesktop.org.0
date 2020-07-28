Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4E8230DAB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0C86E359;
	Tue, 28 Jul 2020 15:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691966E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:25:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21959522-1500050 
 for multiple; Tue, 28 Jul 2020 16:25:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:24:56 +0100
Message-Id: <20200728152501.26685-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200728152501.26685-1-chris@chris-wilson.co.uk>
References: <20200728152501.26685-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/gt: Hold context/request
 reference while breadcrumbs are active
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we hold no actual reference to the request nor context while
they are attached to a breadcrumb. To avoid freeing the request/context
too early, we serialise with cancel-breadcrumbs by taking the irq
spinlock in i915_request_retire(). The alternative is to take a
reference for a new breadcrumb and release it upon signaling; removing
the more frequently hit contention point in i915_request_retire().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 57 ++++++++++++++++-----
 drivers/gpu/drm/i915/i915_request.c         |  9 ++--
 2 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 9dd99969fd07..fc6f0223d2c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -29,6 +29,7 @@
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "intel_breadcrumbs.h"
+#include "intel_context.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 
@@ -99,6 +100,22 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	intel_gt_pm_put_async(b->irq_engine->gt);
 }
 
+static void add_signaling_context(struct intel_breadcrumbs *b,
+				  struct intel_context *ce)
+{
+	intel_context_get(ce);
+	list_add_tail(&ce->signal_link, &b->signalers);
+	if (list_is_first(&ce->signal_link, &b->signalers))
+		__intel_breadcrumbs_arm_irq(b);
+}
+
+static void remove_signaling_context(struct intel_breadcrumbs *b,
+				     struct intel_context *ce)
+{
+	list_del(&ce->signal_link);
+	intel_context_put(ce);
+}
+
 static inline bool __request_completed(const struct i915_request *rq)
 {
 	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
@@ -107,6 +124,9 @@ static inline bool __request_completed(const struct i915_request *rq)
 __maybe_unused static bool
 check_signal_order(struct intel_context *ce, struct i915_request *rq)
 {
+	if (rq->context != ce)
+		return false;
+
 	if (!list_is_last(&rq->signal_link, &ce->signals) &&
 	    i915_seqno_passed(rq->fence.seqno,
 			      list_next_entry(rq, signal_link)->fence.seqno))
@@ -158,10 +178,11 @@ static bool __signal_request(struct i915_request *rq, struct list_head *signals)
 {
 	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
-	if (!__dma_fence_signal(&rq->fence))
+	if (!__dma_fence_signal(&rq->fence)) {
+		i915_request_put(rq);
 		return false;
+	}
 
-	i915_request_get(rq);
 	list_add_tail(&rq->signal_link, signals);
 	return true;
 }
@@ -209,8 +230,8 @@ static void signal_irq_work(struct irq_work *work)
 			/* Advance the list to the first incomplete request */
 			__list_del_many(&ce->signals, pos);
 			if (&ce->signals == pos) { /* now empty */
-				list_del_init(&ce->signal_link);
 				add_retire(b, ce->timeline);
+				remove_signaling_context(b, ce);
 			}
 		}
 	}
@@ -279,6 +300,9 @@ void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 	spin_lock_irqsave(&b->irq_lock, flags);
 	__intel_breadcrumbs_disarm_irq(b);
 	spin_unlock_irqrestore(&b->irq_lock, flags);
+
+	if (!list_empty(&b->signalers))
+		irq_work_queue(&b->irq_work);
 }
 
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
@@ -295,6 +319,8 @@ static void insert_breadcrumb(struct i915_request *rq,
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
 		return;
 
+	i915_request_get(rq);
+
 	/*
 	 * If the request is already completed, we can transfer it
 	 * straight onto a signaled list, and queue the irq worker for
@@ -306,8 +332,6 @@ static void insert_breadcrumb(struct i915_request *rq,
 		return;
 	}
 
-	__intel_breadcrumbs_arm_irq(b);
-
 	/*
 	 * We keep the seqno in retirement order, so we can break
 	 * inside intel_engine_signal_breadcrumbs as soon as we've
@@ -322,16 +346,19 @@ static void insert_breadcrumb(struct i915_request *rq,
 	 * start looking for our insertion point from the tail of
 	 * the list.
 	 */
-	list_for_each_prev(pos, &ce->signals) {
-		struct i915_request *it =
-			list_entry(pos, typeof(*it), signal_link);
-
-		if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
-			break;
+	if (list_empty(&ce->signals)) {
+		add_signaling_context(b, ce);
+		pos = &ce->signals;
+	} else {
+		list_for_each_prev(pos, &ce->signals) {
+			struct i915_request *it =
+				list_entry(pos, typeof(*it), signal_link);
+
+			if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
+				break;
+		}
 	}
 	list_add(&rq->signal_link, pos);
-	if (pos == &ce->signals) /* catch transitions from empty list */
-		list_move_tail(&ce->signal_link, &b->signalers);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
@@ -412,9 +439,10 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 
 		list_del(&rq->signal_link);
 		if (list_empty(&ce->signals))
-			list_del_init(&ce->signal_link);
+			remove_signaling_context(b, ce);
 
 		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+		i915_request_put(rq);
 	}
 	spin_unlock(&b->irq_lock);
 }
@@ -429,6 +457,7 @@ void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 	if (!b || list_empty(&b->signalers))
 		return;
 
+	drm_printf(p, "IRQ: %s\n", enableddisabled(b->irq_armed));
 	drm_printf(p, "Signals:\n");
 
 	spin_lock_irq(&b->irq_lock);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f7d9b2976284..c8ad14aa9d84 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -318,12 +318,11 @@ bool i915_request_retire(struct i915_request *rq)
 		__i915_request_fill(rq, POISON_FREE);
 	rq->ring->head = rq->postfix;
 
-	spin_lock_irq(&rq->lock);
-	if (!i915_request_signaled(rq))
+	if (!i915_request_signaled(rq)) {
+		spin_lock_irq(&rq->lock);
 		dma_fence_signal_locked(&rq->fence);
-	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
-		i915_request_cancel_breadcrumb(rq);
-	spin_unlock_irq(&rq->lock);
+		spin_unlock_irq(&rq->lock);
+	}
 
 	if (i915_request_has_waitboost(rq)) {
 		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
