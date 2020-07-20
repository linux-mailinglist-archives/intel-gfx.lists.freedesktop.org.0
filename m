Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E06225B5D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 11:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D186E2B2;
	Mon, 20 Jul 2020 09:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2196E271
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 09:23:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21870905-1500050 
 for multiple; Mon, 20 Jul 2020 10:23:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:23:10 +0100
Message-Id: <20200720092312.16975-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200720092312.16975-1-chris@chris-wilson.co.uk>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/gt: Track signaled breadcrumbs
 outside of the breadcrumb spinlock
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

Make b->signaled_requests a lockless-list so that we can manipulate it
outside of the b->irq_lock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 42 +++++++++----------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
 drivers/gpu/drm/i915/i915_request.h           |  6 ++-
 3 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 59e8cd505569..2b3ad17c63b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -175,32 +175,23 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 		intel_engine_add_retire(b->irq_engine, tl);
 }
 
-static bool __signal_request(struct i915_request *rq, struct list_head *signals)
-{
-	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
-
-	if (!__dma_fence_signal(&rq->fence))
-		return false;
-
-	list_add_tail(&rq->signal_link, signals);
-	return true;
-}
-
 static void signal_irq_work(struct irq_work *work)
 {
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
+	struct llist_node *signal, *sn;
 	struct intel_context *ce, *cn;
 	struct list_head *pos, *next;
-	LIST_HEAD(signal);
+
+	signal = NULL;
+	if (!llist_empty(&b->signaled_requests))
+		signal = llist_del_all(&b->signaled_requests);
 
 	spin_lock(&b->irq_lock);
 
-	if (b->irq_armed && list_empty(&b->signalers))
+	if (!signal && b->irq_armed && list_empty(&b->signalers))
 		__intel_breadcrumbs_disarm_irq(b);
 
-	list_splice_init(&b->signaled_requests, &signal);
-
 	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
 		GEM_BUG_ON(list_empty(&ce->signals));
 
@@ -217,8 +208,13 @@ static void signal_irq_work(struct irq_work *work)
 			 * spinlock as the callback chain may end up adding
 			 * more signalers to the same context or engine.
 			 */
-			if (!__signal_request(rq, &signal))
+			clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+			if (__dma_fence_signal(&rq->fence)) {
+				rq->signal_node.next = signal;
+				signal = &rq->signal_node;
+			} else {
 				i915_request_put(rq);
+			}
 		}
 
 		/*
@@ -238,9 +234,9 @@ static void signal_irq_work(struct irq_work *work)
 
 	spin_unlock(&b->irq_lock);
 
-	list_for_each_safe(pos, next, &signal) {
+	llist_for_each_safe(signal, sn, signal) {
 		struct i915_request *rq =
-			list_entry(pos, typeof(*rq), signal_link);
+			llist_entry(signal, typeof(*rq), signal_node);
 		struct list_head cb_list;
 
 		spin_lock(&rq->lock);
@@ -264,7 +260,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 
 	spin_lock_init(&b->irq_lock);
 	INIT_LIST_HEAD(&b->signalers);
-	INIT_LIST_HEAD(&b->signaled_requests);
+	init_llist_head(&b->signaled_requests);
 
 	init_irq_work(&b->irq_work, signal_irq_work);
 
@@ -329,10 +325,12 @@ static void insert_breadcrumb(struct i915_request *rq,
 	 * its signal completion.
 	 */
 	if (__request_completed(rq)) {
-		if (__signal_request(rq, &b->signaled_requests))
-			irq_work_queue(&b->irq_work);
-		else
+		if (__dma_fence_signal(&rq->fence)) {
+			if (llist_add(&rq->signal_node, &b->signaled_requests))
+				irq_work_queue(&b->irq_work);
+		} else {
 			i915_request_put(rq);
+		}
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index 8e53b9942695..3fa19820b37a 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -35,7 +35,7 @@ struct intel_breadcrumbs {
 	struct intel_engine_cs *irq_engine;
 
 	struct list_head signalers;
-	struct list_head signaled_requests;
+	struct llist_head signaled_requests;
 
 	struct irq_work irq_work; /* for use from inside irq_lock */
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 16b721080195..874af6db6103 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -176,7 +176,11 @@ struct i915_request {
 	struct intel_context *context;
 	struct intel_ring *ring;
 	struct intel_timeline __rcu *timeline;
-	struct list_head signal_link;
+
+	union {
+		struct list_head signal_link;
+		struct llist_node signal_node;
+	};
 
 	/*
 	 * The rcu epoch of when this request was allocated. Used to judiciously
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
