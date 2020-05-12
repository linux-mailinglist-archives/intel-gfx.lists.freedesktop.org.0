Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E32BF1CFCF4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 20:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6116E95D;
	Tue, 12 May 2020 18:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8DC6E95D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 18:16:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21176809-1500050 
 for multiple; Tue, 12 May 2020 19:16:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 19:16:17 +0100
Message-Id: <20200512181617.12862-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512132255.20537-1-chris@chris-wilson.co.uk>
References: <20200512132255.20537-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/gt: Transfer old virtual
 breadcrumbs to irq_worker
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

The second try at staging the transfer of the breadcrumb. In part one,
we realised we could not simply move to the second engine as we were
only holding the breadcrumb lock on the first. So in commit 6c81e21a4742
("drm/i915/gt: Stage the transfer of the virtual breadcrumb"), we
removed it from the first engine and marked up this request to reattach
the signaling on the new engine. However, this failed to take into
account that we only attach the breadcrumb if the new request is added
at the start of the queue, which if we are transferring, it is because
we know there to be a request to be signaled (and hence we would not be
attached).

In this attempt, we try to transfer the completed requests to the
irq_worker on its rq->engine->breadcrumbs. This preserves the coupling
between the rq and its breadcrumbs, so that
i915_request_cancel_breadcrumb() does not attempt to manipulate the list
under the wrong lock.

v2: Code sharing is fun.

Fixes: 6c81e21a4742 ("drm/i915/gt: Stage the transfer of the virtual breadcrumb")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 52 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_engine.h       |  3 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 34 ++++---------
 4 files changed, 57 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index cbedba857d43..d907d538176e 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -142,6 +142,18 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 	intel_engine_add_retire(engine, tl);
 }
 
+static void __signal_request(struct i915_request *rq, struct list_head *signals)
+{
+	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
+	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+
+	if (!__dma_fence_signal(&rq->fence))
+		return;
+
+	i915_request_get(rq);
+	list_add_tail(&rq->signal_link, signals);
+}
+
 static void signal_irq_work(struct irq_work *work)
 {
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
@@ -155,6 +167,8 @@ static void signal_irq_work(struct irq_work *work)
 	if (b->irq_armed && list_empty(&b->signalers))
 		__intel_breadcrumbs_disarm_irq(b);
 
+	list_splice_init(&b->signaled_requests, &signal);
+
 	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
 		GEM_BUG_ON(list_empty(&ce->signals));
 
@@ -163,24 +177,15 @@ static void signal_irq_work(struct irq_work *work)
 				list_entry(pos, typeof(*rq), signal_link);
 
 			GEM_BUG_ON(!check_signal_order(ce, rq));
-
 			if (!__request_completed(rq))
 				break;
 
-			GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_SIGNAL,
-					     &rq->fence.flags));
-			clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
-
-			if (!__dma_fence_signal(&rq->fence))
-				continue;
-
 			/*
 			 * Queue for execution after dropping the signaling
 			 * spinlock as the callback chain may end up adding
 			 * more signalers to the same context or engine.
 			 */
-			i915_request_get(rq);
-			list_add_tail(&rq->signal_link, &signal);
+			__signal_request(rq, &signal);
 		}
 
 		/*
@@ -255,6 +260,7 @@ void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
 
 	spin_lock_init(&b->irq_lock);
 	INIT_LIST_HEAD(&b->signalers);
+	INIT_LIST_HEAD(&b->signaled_requests);
 
 	init_irq_work(&b->irq_work, signal_irq_work);
 }
@@ -274,6 +280,32 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
+void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
+					     struct intel_context *ce)
+{
+	struct intel_breadcrumbs *b = &engine->breadcrumbs;
+	unsigned long flags;
+
+	spin_lock_irqsave(&b->irq_lock, flags);
+	if (!list_empty(&ce->signals)) {
+		struct i915_request *rq, *next;
+
+		/* Queue for executing the signal callbacks in the irq_work */
+		list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
+			GEM_BUG_ON(rq->engine != engine);
+			GEM_BUG_ON(!__request_completed(rq));
+
+			__signal_request(rq, &b->signaled_requests);
+		}
+
+		INIT_LIST_HEAD(&ce->signals);
+		list_del_init(&ce->signal_link);
+
+		irq_work_queue(&b->irq_work);
+	}
+	spin_unlock_irqrestore(&b->irq_lock, flags);
+}
+
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
 {
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index cb789c8bf06b..9bf6d4989968 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -238,6 +238,9 @@ intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
 void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 
+void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
+					     struct intel_context *ce);
+
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 				    struct drm_printer *p);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c113b7805e65..e20b39eefd79 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -377,6 +377,8 @@ struct intel_engine_cs {
 		spinlock_t irq_lock;
 		struct list_head signalers;
 
+		struct list_head signaled_requests;
+
 		struct irq_work irq_work; /* for use from inside irq_lock */
 
 		unsigned int irq_enabled;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 15716e4d6b76..3d0e0894c015 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1821,30 +1821,16 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
-static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
-				     struct i915_request *rq)
+static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
 {
-	struct intel_engine_cs *old = ve->siblings[0];
-
-	/* All unattached (rq->engine == old) must already be completed */
-
-	spin_lock(&old->breadcrumbs.irq_lock);
-	if (!list_empty(&ve->context.signal_link)) {
-		list_del_init(&ve->context.signal_link);
-
-		/*
-		 * We cannot acquire the new engine->breadcrumbs.irq_lock
-		 * (as we are holding a breadcrumbs.irq_lock already),
-		 * so attach this request to the signaler on submission.
-		 * The queued irq_work will occur when we finally drop
-		 * the engine->active.lock after dequeue.
-		 */
-		set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
-
-		/* Also transfer the pending irq_work for the old breadcrumb. */
-		intel_engine_signal_breadcrumbs(rq->engine);
-	}
-	spin_unlock(&old->breadcrumbs.irq_lock);
+	/*
+	 * All the outstanding signals on ve->siblings[0] must have
+	 * been completed, just pending the interrupt handler. As those
+	 * signals still refer to the old sibling (via rq->engine), we must
+	 * transfer those to the old irq_worker to keep our locking
+	 * consistent.
+	 */
+	intel_engine_transfer_stale_breadcrumbs(ve->siblings[0], &ve->context);
 }
 
 #define for_each_waiter(p__, rq__) \
@@ -2279,7 +2265,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 									engine);
 
 				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve, rq);
+					virtual_xfer_breadcrumbs(ve);
 
 				/*
 				 * Move the bound engine to the top of the list
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
