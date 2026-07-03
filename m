Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7dztN+CdR2pocQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90631701E14
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=UdRL0rOX;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DAA10F7C9;
	Fri,  3 Jul 2026 11:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F3D10F7C9;
 Fri,  3 Jul 2026 11:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783078357;
 bh=Z3cW5tr1FmBHQ/qJFfTXH2xFOQkH17EV5iKDuxQV/Ug=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UdRL0rOXSo0btZvDErcC43aWwZhNGXwk59G6SmCQv2zjgN7W07cT8xdiO1iwKgnCf
 Ibj1OuciNAjLhK8CBJG6OSon64O1AIafOoJ4TcTVYkSOETgjrYHKPqhRAFAKo7rnd7
 jcOzE/RnB1br/742hv1M2U/nwsTYER7mkcyi4yr1lGYlBtlwaY26OxNd4joSrrUuWf
 oExLsRqkJsWJ83nVh0e+UYlTJpDiqICTspWqNrsvZNQlSLHZeAD8ImtZFGDDYxLHP7
 mGYfPjywqzs2IlouTLLE4AROF6E7zYS6DbWFEHi/dLKDRKX4HAkCzrv/bXvBkAuplH
 Di/AxpJcGwGaQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 7/7] drm/i915/gt: Use a spinlock to prevent starvation of
 irq_work.
Date: Fri,  3 Jul 2026 13:32:59 +0200
Message-ID: <20260703113259.801374-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260703113259.801374-1-dev@lankhorst.se>
References: <20260703113259.801374-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90631701E14

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
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 89 ++++++++++++-------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
 2 files changed, 56 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index c10ac0ab3bfa8..66ddd1ec68f3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -90,7 +90,7 @@ static void add_signaling_context(struct intel_breadcrumbs *b,
 	lockdep_assert_held(&ce->signal_lock);
 
 	spin_lock(&b->signalers_lock);
-	list_add_rcu(&ce->signal_link, &b->signalers);
+	list_add(&ce->signal_link, &b->signalers);
 	spin_unlock(&b->signalers_lock);
 }
 
@@ -103,7 +103,7 @@ static bool remove_signaling_context(struct intel_breadcrumbs *b,
 		return false;
 
 	spin_lock(&b->signalers_lock);
-	list_del_rcu(&ce->signal_link);
+	list_del(&ce->signal_link);
 	spin_unlock(&b->signalers_lock);
 
 	return true;
@@ -174,7 +174,7 @@ static void signal_irq_work(struct irq_work *work)
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
 	struct llist_node *signal, *sn;
-	struct intel_context *ce;
+	struct intel_context *ce, *next;
 
 	signal = NULL;
 	if (unlikely(!llist_empty(&b->signaled_requests)))
@@ -208,12 +208,12 @@ static void signal_irq_work(struct irq_work *work)
 	if (!signal && READ_ONCE(b->irq_armed) && list_empty(&b->signalers))
 		intel_breadcrumbs_disarm_irq(b);
 
-	rcu_read_lock();
-	atomic_inc(&b->signaler_active);
-	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
-		struct i915_request *rq;
+	spin_lock(&b->signaler_active);
+	list_for_each_entry_safe(ce, next, &b->signalers, signal_link) {
+		struct i915_request *rq, *rq_next;
 
-		list_for_each_entry_rcu(rq, &ce->signals, signal_link) {
+		spin_lock(&ce->signal_lock);
+		list_for_each_entry_safe(rq, rq_next, &ce->signals, signal_link) {
 			bool release;
 
 			if (!__i915_request_is_complete(rq))
@@ -228,10 +228,8 @@ static void signal_irq_work(struct irq_work *work)
 			 * spinlock as the callback chain may end up adding
 			 * more signalers to the same context or engine.
 			 */
-			spin_lock(&ce->signal_lock);
-			list_del_rcu(&rq->signal_link);
+			list_del(&rq->signal_link);
 			release = remove_signaling_context(b, ce);
-			spin_unlock(&ce->signal_lock);
 			if (release) {
 				if (intel_timeline_is_last(ce->timeline, rq))
 					add_retire(b, ce->timeline);
@@ -244,9 +242,9 @@ static void signal_irq_work(struct irq_work *work)
 			else
 				i915_request_put(rq);
 		}
+		spin_unlock(&ce->signal_lock);
 	}
-	atomic_dec(&b->signaler_active);
-	rcu_read_unlock();
+	spin_unlock(&b->signaler_active);
 
 	llist_for_each_safe(signal, sn, signal) {
 		struct i915_request *rq =
@@ -290,6 +288,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	init_llist_head(&b->signaled_requests);
 
 	spin_lock_init(&b->irq_lock);
+	spin_lock_init(&b->signaler_active);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
 	b->irq_engine = irq_engine;
@@ -395,7 +394,7 @@ static void insert_breadcrumb(struct i915_request *rq)
 	}
 
 	i915_request_get(rq);
-	list_add_rcu(&rq->signal_link, pos);
+	list_add(&rq->signal_link, pos);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
@@ -434,23 +433,49 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 	return true;
 }
 
+
+static void unlock_and_maybe_remove_signaling_context(struct intel_context *ce,
+						      struct intel_breadcrumbs *b,
+						      unsigned long flags)
+{
+	bool release = false, retry = false;
+
+	if (list_empty(&ce->signals)) {
+		if (spin_trylock(&b->signaler_active)) {
+			release = remove_signaling_context(b, ce);
+			spin_unlock(&b->signaler_active);
+		} else {
+			retry = true;
+		}
+	}
+	spin_unlock_irqrestore(&ce->signal_lock, flags);
+
+	if (retry) {
+		spin_lock_irqsave(&b->signaler_active, flags);
+		spin_lock(&ce->signal_lock);
+		release = remove_signaling_context(b, ce);
+		spin_unlock(&ce->signal_lock);
+		spin_unlock_irqrestore(&b->signaler_active, flags);
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
+	unlock_and_maybe_remove_signaling_context(ce, b, flags);
 
 	if (__i915_request_is_complete(rq))
 		irq_signal_request(rq, b);
@@ -462,7 +487,6 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
 				      struct intel_breadcrumbs *b)
 {
 	struct i915_request *rq, *rn;
-	bool release = false;
 	unsigned long flags;
 
 	spin_lock_irqsave(&ce->signal_lock, flags);
@@ -476,39 +500,36 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
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
+	unlock_and_maybe_remove_signaling_context(ce, b, flags);
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
+	spin_lock_irqsave(&b->signaler_active, flags);
+	list_for_each_entry(ce, &b->signalers, signal_link) {
+		spin_lock(&b->signalers_lock);
+		list_for_each_entry(rq, &ce->signals, signal_link)
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
 				   __i915_request_is_complete(rq) ? "!" :
 				   __i915_request_has_started(rq) ? "*" :
 				   "",
 				   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
+		spin_unlock(&b->signalers_lock);
 	}
-	rcu_read_unlock();
+	spin_unlock_irqrestore(&b->signaler_active, flags);
 }
 
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index bdf09fd67b6e7..5e23074fc7b42 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -39,7 +39,7 @@ struct intel_breadcrumbs {
 	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
 	struct llist_head signaled_requests;
-	atomic_t signaler_active;
+	spinlock_t signaler_active;
 
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
-- 
2.53.0

