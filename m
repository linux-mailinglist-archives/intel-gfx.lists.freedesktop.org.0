Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A580D235326
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Aug 2020 18:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBD56EB7C;
	Sat,  1 Aug 2020 16:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA5B6EB95
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Aug 2020 16:02:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22003547-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 01 Aug 2020 17:02:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Aug 2020 17:02:25 +0100
Message-Id: <20200801160225.6814-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200801160225.6814-1-chris@chris-wilson.co.uk>
References: <20200801160225.6814-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Hold context/request reference
 while breadcrumbs are active
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

Currently we hold no actual reference to the request nor context while
they are attached to a breadcrumb. To avoid freeing the request/context
too early, we serialise with cancel-breadcrumbs by taking the irq
spinlock in i915_request_retire(). The alternative is to take a
reference for a new breadcrumb and release it upon signaling; removing
the more frequently hit contention point in i915_request_retire().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 106 +++++++++++++-------
 drivers/gpu/drm/i915/i915_request.c         |   9 +-
 2 files changed, 76 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 9dd99969fd07..0cc0517cd3b4 100644
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
@@ -306,32 +332,33 @@ static void insert_breadcrumb(struct i915_request *rq,
 		return;
 	}
 
-	__intel_breadcrumbs_arm_irq(b);
-
-	/*
-	 * We keep the seqno in retirement order, so we can break
-	 * inside intel_engine_signal_breadcrumbs as soon as we've
-	 * passed the last completed request (or seen a request that
-	 * hasn't event started). We could walk the timeline->requests,
-	 * but keeping a separate signalers_list has the advantage of
-	 * hopefully being much smaller than the full list and so
-	 * provides faster iteration and detection when there are no
-	 * more interrupts required for this context.
-	 *
-	 * We typically expect to add new signalers in order, so we
-	 * start looking for our insertion point from the tail of
-	 * the list.
-	 */
-	list_for_each_prev(pos, &ce->signals) {
-		struct i915_request *it =
-			list_entry(pos, typeof(*it), signal_link);
+	if (list_empty(&ce->signals)) {
+		add_signaling_context(b, ce);
+		pos = &ce->signals;
+	} else {
+		/*
+		 * We keep the seqno in retirement order, so we can break
+		 * inside intel_engine_signal_breadcrumbs as soon as we've
+		 * passed the last completed request (or seen a request that
+		 * hasn't event started). We could walk the timeline->requests,
+		 * but keeping a separate signalers_list has the advantage of
+		 * hopefully being much smaller than the full list and so
+		 * provides faster iteration and detection when there are no
+		 * more interrupts required for this context.
+		 *
+		 * We typically expect to add new signalers in order, so we
+		 * start looking for our insertion point from the tail of
+		 * the list.
+		 */
+		list_for_each_prev(pos, &ce->signals) {
+			struct i915_request *it =
+				list_entry(pos, typeof(*it), signal_link);
 
-		if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
-			break;
+			if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
+				break;
+		}
 	}
 	list_add(&rq->signal_link, pos);
-	if (pos == &ce->signals) /* catch transitions from empty list */
-		list_move_tail(&ce->signal_link, &b->signalers);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
@@ -412,27 +439,24 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 
 		list_del(&rq->signal_link);
 		if (list_empty(&ce->signals))
-			list_del_init(&ce->signal_link);
+			remove_signaling_context(b, ce);
 
 		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+		i915_request_put(rq);
 	}
 	spin_unlock(&b->irq_lock);
 }
 
-void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
-				    struct drm_printer *p)
+static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 {
-	struct intel_breadcrumbs *b = engine->breadcrumbs;
 	struct intel_context *ce;
-	struct i915_request *rq;
-
-	if (!b || list_empty(&b->signalers))
-		return;
 
 	drm_printf(p, "Signals:\n");
 
 	spin_lock_irq(&b->irq_lock);
 	list_for_each_entry(ce, &b->signalers, signal_link) {
+		struct i915_request *rq;
+
 		list_for_each_entry(rq, &ce->signals, signal_link) {
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
@@ -444,3 +468,17 @@ void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 	}
 	spin_unlock_irq(&b->irq_lock);
 }
+
+void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
+				    struct drm_printer *p)
+{
+	struct intel_breadcrumbs *b;
+
+	b = engine->breadcrumbs;
+	if (!b)
+		return;
+
+	drm_printf(p, "IRQ: %s\n", enableddisabled(b->irq_armed));
+	if (!list_empty(&b->signalers))
+		print_signals(b, p);
+}
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3b121fa38c60..e36253bb6124 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -300,12 +300,11 @@ bool i915_request_retire(struct i915_request *rq)
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
