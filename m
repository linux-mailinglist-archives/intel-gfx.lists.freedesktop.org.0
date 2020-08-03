Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8500B23A295
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 12:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39FE86E241;
	Mon,  3 Aug 2020 10:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D9A6E233
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 10:11:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22015636-1500050 
 for multiple; Mon, 03 Aug 2020 11:11:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 11:11:33 +0100
Message-Id: <20200803101133.4529-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200803101133.4529-1-chris@chris-wilson.co.uk>
References: <20200803101133.4529-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Split the breadcrumb spinlock
 between global and contexts
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

As we funnel more and more contexts into the breadcrumbs on an engine,
the hold time of b->irq_lock grows. As we may then contend with the
b->irq_lock during request submission, this increases the burden upon
the engine->active.lock and so directly impacts both our execution
latency and client latency. If we split the b->irq_lock by introducing a
per-context spinlock to manage the signalers within a context, we then
only need the b->irq_lock for enabling/disabling the interrupt and can
avoid taking the lock for walking the list of contexts within the signal
worker. Even with the current setup, this greatly reduces the number of
times we have to take and fight for b->irq_lock.

Fixes: bda4d4db6dd6 ("drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 151 ++++++++++--------
 drivers/gpu/drm/i915/gt/intel_context.c       |   1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   1 +
 3 files changed, 84 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 62ca0f8b2664..7f7377ad2997 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -106,15 +106,16 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 static void add_signaling_context(struct intel_breadcrumbs *b,
 				  struct intel_context *ce)
 {
-	intel_context_get(ce);
-	list_add_tail(&ce->signal_link, &b->signalers);
+	lockdep_assert_held(&b->irq_lock);
+	list_add_rcu(&ce->signal_link, &b->signalers);
 }
 
 static void remove_signaling_context(struct intel_breadcrumbs *b,
 				     struct intel_context *ce)
 {
-	list_del(&ce->signal_link);
-	intel_context_put(ce);
+	spin_lock(&b->irq_lock);
+	list_del_rcu(&ce->signal_link);
+	spin_unlock(&b->irq_lock);
 }
 
 static inline bool __request_completed(const struct i915_request *rq)
@@ -190,15 +191,12 @@ static void signal_irq_work(struct irq_work *work)
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
 	struct llist_node *signal, *sn;
-	struct intel_context *ce, *cn;
-	struct list_head *pos, *next;
+	struct intel_context *ce;
 
 	signal = NULL;
 	if (unlikely(!llist_empty(&b->signaled_requests)))
 		signal = llist_del_all(&b->signaled_requests);
 
-	spin_lock(&b->irq_lock);
-
 	/*
 	 * Keep the irq armed until the interrupt after all listeners are gone.
 	 *
@@ -222,11 +220,24 @@ static void signal_irq_work(struct irq_work *work)
 	 * interrupt draw less ire from other users of the system and tools
 	 * like powertop.
 	 */
-	if (!signal && list_empty(&b->signalers))
-		__intel_breadcrumbs_disarm_irq(b);
+	if (!signal && READ_ONCE(b->irq_armed) && list_empty(&b->signalers)) {
+		if (spin_trylock(&b->irq_lock)) {
+			if (list_empty(&b->signalers))
+				__intel_breadcrumbs_disarm_irq(b);
+			spin_unlock(&b->irq_lock);
+		}
+	}
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
+		struct list_head *pos, *next;
+		bool release = false;
+
+		if (!spin_trylock(&ce->signal_lock))
+			continue;
 
-	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
-		GEM_BUG_ON(list_empty(&ce->signals));
+		if (list_empty(&ce->signals))
+			goto unlock;
 
 		list_for_each_safe(pos, next, &ce->signals) {
 			struct i915_request *rq =
@@ -259,11 +270,16 @@ static void signal_irq_work(struct irq_work *work)
 			if (&ce->signals == pos) { /* now empty */
 				add_retire(b, ce->timeline);
 				remove_signaling_context(b, ce);
+				release = true;
 			}
 		}
-	}
 
-	spin_unlock(&b->irq_lock);
+unlock:
+		spin_unlock(&ce->signal_lock);
+		if (release)
+			intel_context_put(ce);
+	}
+	rcu_read_unlock();
 
 	llist_for_each_safe(signal, sn, signal) {
 		struct i915_request *rq =
@@ -344,9 +360,9 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 	kfree(b);
 }
 
-static void insert_breadcrumb(struct i915_request *rq,
-			      struct intel_breadcrumbs *b)
+static void insert_breadcrumb(struct i915_request *rq)
 {
+	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
 	struct list_head *pos;
 
@@ -368,7 +384,33 @@ static void insert_breadcrumb(struct i915_request *rq,
 	}
 
 	if (list_empty(&ce->signals)) {
+		/*
+		 * rq->engine is locked by rq->engine->active.lock. That
+		 * however is not known until after rq->engine has been
+		 * dereferenced and the lock acquired. Hence we acquire the
+		 * lock and then validate that rq->engine still matches the
+		 * lock we hold for it.
+		 *
+		 * Here, we are using the breadcrumb lock as a proxy for the
+		 * rq->engine->active.lock, and we know that since the
+		 * breadcrumb will be serialised within i915_request_submit
+		 * the engine cannot change while active as long as we hold
+		 * the breadcrumb lock on that engine.
+		 *
+		 * From the dma_fence_enable_signaling() path, we are outside
+		 * of the request submit/unsubmit path, and so we must be more
+		 * careful to acquire the right lock.
+		 */
+		intel_context_get(ce);
+		spin_lock(&b->irq_lock);
+		while (unlikely(b != READ_ONCE(rq->engine)->breadcrumbs)) {
+			spin_unlock(&b->irq_lock);
+			b = READ_ONCE(rq->engine)->breadcrumbs;
+			spin_lock(&b->irq_lock);
+		}
 		add_signaling_context(b, ce);
+		spin_unlock(&b->irq_lock);
+
 		pos = &ce->signals;
 	} else {
 		/*
@@ -407,7 +449,7 @@ static void insert_breadcrumb(struct i915_request *rq,
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
 {
-	struct intel_breadcrumbs *b;
+	struct intel_context *ce = rq->context;
 
 	/* Serialises with i915_request_retire() using rq->lock */
 	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
@@ -422,67 +464,37 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
 		return true;
 
-	/*
-	 * rq->engine is locked by rq->engine->active.lock. That however
-	 * is not known until after rq->engine has been dereferenced and
-	 * the lock acquired. Hence we acquire the lock and then validate
-	 * that rq->engine still matches the lock we hold for it.
-	 *
-	 * Here, we are using the breadcrumb lock as a proxy for the
-	 * rq->engine->active.lock, and we know that since the breadcrumb
-	 * will be serialised within i915_request_submit/i915_request_unsubmit,
-	 * the engine cannot change while active as long as we hold the
-	 * breadcrumb lock on that engine.
-	 *
-	 * From the dma_fence_enable_signaling() path, we are outside of the
-	 * request submit/unsubmit path, and so we must be more careful to
-	 * acquire the right lock.
-	 */
-	b = READ_ONCE(rq->engine)->breadcrumbs;
-	spin_lock(&b->irq_lock);
-	while (unlikely(b != READ_ONCE(rq->engine)->breadcrumbs)) {
-		spin_unlock(&b->irq_lock);
-		b = READ_ONCE(rq->engine)->breadcrumbs;
-		spin_lock(&b->irq_lock);
-	}
-
-	/*
-	 * Now that we are finally serialised with request submit/unsubmit,
-	 * [with b->irq_lock] and with i915_request_retire() [via checking
-	 * SIGNALED with rq->lock] confirm the request is indeed active. If
-	 * it is no longer active, the breadcrumb will be attached upon
-	 * i915_request_submit().
-	 */
+	spin_lock(&ce->signal_lock);
 	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
-		insert_breadcrumb(rq, b);
-
-	spin_unlock(&b->irq_lock);
+		insert_breadcrumb(rq);
+	spin_unlock(&ce->signal_lock);
 
 	return true;
 }
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
-	struct intel_breadcrumbs *b = rq->engine->breadcrumbs;
+	struct intel_context *ce = rq->context;
+	bool release = false;
 
-	/*
-	 * We must wait for b->irq_lock so that we know the interrupt handler
-	 * has released its reference to the intel_context and has completed
-	 * the DMA_FENCE_FLAG_SIGNALED_BIT/I915_FENCE_FLAG_SIGNAL dance (if
-	 * required).
-	 */
-	spin_lock(&b->irq_lock);
+	if (!test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
+		return;
+
+	spin_lock(&ce->signal_lock);
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
-		struct intel_context *ce = rq->context;
+		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
 		list_del(&rq->signal_link);
-		if (list_empty(&ce->signals))
-			remove_signaling_context(b, ce);
+		if (list_empty(&ce->signals)) {
+			remove_signaling_context(rq->engine->breadcrumbs, ce);
+			release = true;
+		}
 
-		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 		i915_request_put(rq);
 	}
-	spin_unlock(&b->irq_lock);
+	spin_unlock(&ce->signal_lock);
+	if (release)
+		intel_context_put(ce);
 }
 
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
@@ -492,18 +504,19 @@ static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 
 	drm_printf(p, "Signals:\n");
 
-	spin_lock_irq(&b->irq_lock);
-	list_for_each_entry(ce, &b->signalers, signal_link) {
-		list_for_each_entry(rq, &ce->signals, signal_link) {
+	rcu_read_lock();
+	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
+		spin_lock_irq(&ce->signal_lock);
+		list_for_each_entry(rq, &ce->signals, signal_link)
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
 				   i915_request_completed(rq) ? "!" :
 				   i915_request_started(rq) ? "*" :
 				   "",
 				   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
-		}
+		spin_unlock_irq(&ce->signal_lock);
 	}
-	spin_unlock_irq(&b->irq_lock);
+	rcu_read_unlock();
 }
 
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 4e7924640ffa..cde356c7754d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -147,6 +147,7 @@ static void __intel_context_ctor(void *arg)
 {
 	struct intel_context *ce = arg;
 
+	spin_lock_init(&ce->signal_lock);
 	INIT_LIST_HEAD(&ce->signal_link);
 	INIT_LIST_HEAD(&ce->signals);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 4954b0df4864..a78c1c225ce3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -51,6 +51,7 @@ struct intel_context {
 	struct i915_address_space *vm;
 	struct i915_gem_context __rcu *gem_context;
 
+	spinlock_t signal_lock;
 	struct list_head signal_link;
 	struct list_head signals;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
