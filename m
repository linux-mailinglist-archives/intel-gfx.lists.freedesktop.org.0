Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EY+YMhWGS2oCTAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:40:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4262470F55B
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:40:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="kDR/ikqD";
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6020C10E8BE;
	Mon,  6 Jul 2026 10:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A6010E8AB;
 Mon,  6 Jul 2026 10:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783334409;
 bh=0HyE+c5Fw2KCQQbNoD0g76/xVjYh8ujLm0NU3czkGbI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kDR/ikqDJGgXE/QrDlKmSTDK7iDB1pL+8uObNOODCYSquasec4GmY0n3tUR21Edn3
 +L6oYsa1Xlgfl1NLRRfZaVciELp8VCHKyB5eWVVE4yYKz2r3UEUfiUKmorKy+V5LsO
 O4CT670SkTZhxfiNUO1Yuc/Vt9BsVT7s35CRgw/MHgZbpl8IM6f37ebOisVH9NvXyd
 tHkl5RRQ43re9I/8mgRNuyvbYzzKm+5JqoKyMA11QvVgah+TdHINeCUqhfKSOcAspu
 /M9PtgsoUBlm26je0kkTFEl+xPtRvJ1+mBwkJnsbDechBsx7rnVgwluncFERQOUwIQ
 3JcbJL2mb6HQA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v3 7/7] drm/i915/gt: Use signalers_lock to prevent starvation
 of irq_work.
Date: Mon,  6 Jul 2026 12:40:42 +0200
Message-ID: <20260706104043.726178-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706104043.726178-1-dev@lankhorst.se>
References: <20260706104043.726178-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4262470F55B

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
and the interrupt will poll on signaler_active while the irq-work can't
make progress.

Solve this by adding a global spinlock to prevent starvation and force
completion.

The existing RCU handling gets in the way on PREEMPT_RT, and would likely
require conversion to raw spinlock to take them inside a
rcu_read_lock(), so remove RCU as well.

Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 169 +++++++++++-------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |   1 -
 2 files changed, 109 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index c10ac0ab3bfa8..be87c8d0ae922 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -88,24 +88,25 @@ static void add_signaling_context(struct intel_breadcrumbs *b,
 				  struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->signal_lock);
+	lockdep_assert_held(&b->signalers_lock);
 
-	spin_lock(&b->signalers_lock);
-	list_add_rcu(&ce->signal_link, &b->signalers);
-	spin_unlock(&b->signalers_lock);
+	if (list_empty(&ce->signals))
+		return;
+
+	intel_context_get(ce);
+	list_add(&ce->signal_link, &b->signalers);
 }
 
 static bool remove_signaling_context(struct intel_breadcrumbs *b,
 				     struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->signal_lock);
+	lockdep_assert_held(&b->signalers_lock);
 
-	if (!list_empty(&ce->signals))
+	if (!list_empty(&ce->signals) || list_empty(&ce->signal_link))
 		return false;
 
-	spin_lock(&b->signalers_lock);
-	list_del_rcu(&ce->signal_link);
-	spin_unlock(&b->signalers_lock);
-
+	list_del_init(&ce->signal_link);
 	return true;
 }
 
@@ -174,7 +175,7 @@ static void signal_irq_work(struct irq_work *work)
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
 	struct llist_node *signal, *sn;
-	struct intel_context *ce;
+	struct intel_context *ce, *next;
 
 	signal = NULL;
 	if (unlikely(!llist_empty(&b->signaled_requests)))
@@ -208,13 +209,13 @@ static void signal_irq_work(struct irq_work *work)
 	if (!signal && READ_ONCE(b->irq_armed) && list_empty(&b->signalers))
 		intel_breadcrumbs_disarm_irq(b);
 
-	rcu_read_lock();
-	atomic_inc(&b->signaler_active);
-	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
+	spin_lock(&b->signalers_lock);
+	list_for_each_entry_safe(ce, next, &b->signalers, signal_link) {
 		struct i915_request *rq;
+		bool release;
 
-		list_for_each_entry_rcu(rq, &ce->signals, signal_link) {
-			bool release;
+		spin_lock(&ce->signal_lock);
+		while ((rq = list_first_entry_or_null(&ce->signals, typeof(*rq), signal_link))) {
 
 			if (!__i915_request_is_complete(rq))
 				break;
@@ -228,15 +229,9 @@ static void signal_irq_work(struct irq_work *work)
 			 * spinlock as the callback chain may end up adding
 			 * more signalers to the same context or engine.
 			 */
-			spin_lock(&ce->signal_lock);
-			list_del_rcu(&rq->signal_link);
-			release = remove_signaling_context(b, ce);
-			spin_unlock(&ce->signal_lock);
-			if (release) {
-				if (intel_timeline_is_last(ce->timeline, rq))
-					add_retire(b, ce->timeline);
-				intel_context_put(ce);
-			}
+			list_del(&rq->signal_link);
+			if (list_empty(&ce->signals) && intel_timeline_is_last(ce->timeline, rq))
+				add_retire(b, ce->timeline);
 
 			if (__dma_fence_signal(&rq->fence))
 				/* We own signal_node now, xfer to local list */
@@ -244,9 +239,13 @@ static void signal_irq_work(struct irq_work *work)
 			else
 				i915_request_put(rq);
 		}
+
+		release = remove_signaling_context(b, ce);
+		spin_unlock(&ce->signal_lock);
+		if (release)
+			intel_context_put(ce);
 	}
-	atomic_dec(&b->signaler_active);
-	rcu_read_unlock();
+	spin_unlock(&b->signalers_lock);
 
 	llist_for_each_safe(signal, sn, signal) {
 		struct i915_request *rq =
@@ -347,14 +346,15 @@ static void irq_signal_request(struct i915_request *rq,
 		irq_work_queue(&b->irq_work);
 }
 
-static void insert_breadcrumb(struct i915_request *rq)
+static bool insert_breadcrumb(struct i915_request *rq,
+			      struct intel_breadcrumbs *b)
 {
-	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
 	struct list_head *pos;
+	bool ret;
 
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
-		return;
+		return false;
 
 	/*
 	 * If the request is already completed, we can transfer it
@@ -363,14 +363,15 @@ static void insert_breadcrumb(struct i915_request *rq)
 	 */
 	if (__i915_request_is_complete(rq)) {
 		irq_signal_request(rq, b);
-		return;
+		return false;
 	}
 
 	if (list_empty(&ce->signals)) {
-		intel_context_get(ce);
-		add_signaling_context(b, ce);
+		ret = true;
 		pos = &ce->signals;
 	} else {
+		ret = false;
+
 		/*
 		 * We keep the seqno in retirement order, so we can break
 		 * inside intel_engine_signal_breadcrumbs as soon as we've
@@ -395,23 +396,19 @@ static void insert_breadcrumb(struct i915_request *rq)
 	}
 
 	i915_request_get(rq);
-	list_add_rcu(&rq->signal_link, pos);
+	list_add(&rq->signal_link, pos);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
-	/*
-	 * Defer enabling the interrupt to after HW submission and recheck
-	 * the request as it may have completed and raised the interrupt as
-	 * we were attaching it into the lists.
-	 */
-	if (!READ_ONCE(b->irq_armed) || __i915_request_is_complete(rq))
-		irq_work_queue(&b->irq_work);
+	return ret;
 }
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
 {
 	struct intel_context *ce = rq->context;
+	struct intel_breadcrumbs *b;
+	bool add_context;
 
 	/* Serialises with i915_request_retire() using rq->lock */
 	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
@@ -427,30 +424,88 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 		return true;
 
 	spin_lock(&ce->signal_lock);
+	b = READ_ONCE(rq->engine)->breadcrumbs;
+
 	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
-		insert_breadcrumb(rq);
+		add_context = insert_breadcrumb(rq, b);
+
+	if (add_context && spin_trylock(&b->signalers_lock)) {
+		add_signaling_context(b, ce);
+		spin_unlock(&b->signalers_lock);
+		add_context = false;
+	}
+
+	/*
+	 * Defer enabling the interrupt to after HW submission and recheck
+	 * the request as it may have completed and raised the interrupt as
+	 * we were attaching it into the lists.
+	 */
+	if (!READ_ONCE(b->irq_armed) || __i915_request_is_complete(rq))
+		irq_work_queue(&b->irq_work);
+
 	spin_unlock(&ce->signal_lock);
 
+	if (add_context) {
+		/*
+		 * Fast trylock didn't work, use slow locking.
+		 *
+		 * Dropping the lock to solve the inversion is safe, since
+		 * no race is possible against remove_signaling_context()
+		 * without being added as signaling context.
+		 */
+		spin_lock(&b->signalers_lock);
+		spin_lock(&ce->signal_lock);
+		add_signaling_context(b, ce);
+		spin_unlock(&ce->signal_lock);
+		spin_unlock(&b->signalers_lock);
+	}
+
 	return true;
 }
 
+
+static void unlock_context_remove_signaling(struct intel_context *ce,
+					    struct intel_breadcrumbs *b,
+					    unsigned long flags)
+{
+	bool release = false, retry = false;
+
+	if (list_empty(&ce->signals)) {
+		if (spin_trylock(&b->signalers_lock)) {
+			release = remove_signaling_context(b, ce);
+			spin_unlock(&b->signalers_lock);
+		} else {
+			retry = true;
+		}
+	}
+	spin_unlock_irqrestore(&ce->signal_lock, flags);
+
+	if (retry) {
+		spin_lock_irqsave(&b->signalers_lock, flags);
+		spin_lock(&ce->signal_lock);
+		release = remove_signaling_context(b, ce);
+		spin_unlock(&ce->signal_lock);
+		spin_unlock_irqrestore(&b->signalers_lock, flags);
+	}
+
+	if (release)
+		intel_context_put(ce);
+}
+
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
-	bool release;
+	unsigned long flags;
 
-	spin_lock(&ce->signal_lock);
+	spin_lock_irqsave(&ce->signal_lock, flags);
 	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
 		spin_unlock(&ce->signal_lock);
 		return;
 	}
 
-	list_del_rcu(&rq->signal_link);
-	release = remove_signaling_context(b, ce);
-	spin_unlock(&ce->signal_lock);
-	if (release)
-		intel_context_put(ce);
+	list_del(&rq->signal_link);
+	unlock_context_remove_signaling(ce, b, flags);
 
 	if (__i915_request_is_complete(rq))
 		irq_signal_request(rq, b);
@@ -462,7 +517,6 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
 				      struct intel_breadcrumbs *b)
 {
 	struct i915_request *rq, *rn;
-	bool release = false;
 	unsigned long flags;
 
 	spin_lock_irqsave(&ce->signal_lock, flags);
@@ -476,31 +530,26 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
 					&rq->fence.flags))
 			continue;
 
-		list_del_rcu(&rq->signal_link);
+		list_del(&rq->signal_link);
 		irq_signal_request(rq, b);
 		i915_request_put(rq);
 	}
-	release = remove_signaling_context(b, ce);
 
 unlock:
-	spin_unlock_irqrestore(&ce->signal_lock, flags);
-	if (release)
-		intel_context_put(ce);
-
-	while (atomic_read(&b->signaler_active))
-		cpu_relax();
+	unlock_context_remove_signaling(ce, b, flags);
 }
 
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 {
 	struct intel_context *ce;
 	struct i915_request *rq;
+	unsigned long flags;
 
 	drm_printf(p, "Signals:\n");
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
-		list_for_each_entry_rcu(rq, &ce->signals, signal_link)
+	spin_lock_irqsave(&b->signalers_lock, flags);
+	list_for_each_entry(ce, &b->signalers, signal_link) {
+		list_for_each_entry(rq, &ce->signals, signal_link)
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
 				   __i915_request_is_complete(rq) ? "!" :
@@ -508,7 +557,7 @@ static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 				   "",
 				   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
 	}
-	rcu_read_unlock();
+	spin_unlock_irqrestore(&b->signalers_lock, flags);
 }
 
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index bdf09fd67b6e7..648e5600587b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -39,7 +39,6 @@ struct intel_breadcrumbs {
 	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
 	struct llist_head signaled_requests;
-	atomic_t signaler_active;
 
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
-- 
2.53.0

