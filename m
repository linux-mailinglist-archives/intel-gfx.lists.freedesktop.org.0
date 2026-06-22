Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ryvHcN6OWoAuQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4550C6B1BBF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=B3ZG+pGM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0765E10E84A;
	Mon, 22 Jun 2026 18:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1BE010E817;
 Mon, 22 Jun 2026 18:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151849;
 bh=Smwtu6CwhUCwK5agwnez+Jaqs++M2OVTTW4z7GIcls4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B3ZG+pGMlrMwuQ4xU8fcEk2+3q1Io3U/oALg0AhxBbWkJdDqGI22JaaHBO2s85s7l
 4TM21uszb4g2mbyeqSoRMKVMgbGN5/gt9MlfsqNHy8MHxVx5YpxgVgfIS+qxlS5lqv
 IkLPoztwtuNugdJsVhQ81rMXyfgX9Sa4sdsokqbOqXRakELH/9GRmAHrAo6sV6Z9I+
 Dtja3DIACwjrqjXlBK4hYn6Drv9t3T1i0FccQ8U4PLmYsRZ0Lh/iae9w3527I+mz1+
 4cmJOGSDlpTadAxh85r60iFT4vGZfNzdbsmCytGXM8oqUsJUs8PIb7+N13hH8o9l3E
 ZzxL5+Ldz49kg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 25/30] drm/i915/gt: Add a spinlock to prevent starvation of
 irq_work.
Date: Mon, 22 Jun 2026 20:10:38 +0200
Message-ID: <20260622181044.39335-26-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
References: <20260622181044.39335-1-dev@lankhorst.se>
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4550C6B1BBF

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
and the interrupt will poll on signaler_active while the irq-work can't
make progress.

Solve this by adding a spinlock to prevent starvation and force
completion.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c       | 8 +++++++-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h | 1 +
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index c10ac0ab3bfa8..c2b174bfa1418 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -209,6 +209,7 @@ static void signal_irq_work(struct irq_work *work)
 		intel_breadcrumbs_disarm_irq(b);
 
 	rcu_read_lock();
+	spin_lock(&b->signaler_active_sync);
 	atomic_inc(&b->signaler_active);
 	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
 		struct i915_request *rq;
@@ -246,6 +247,7 @@ static void signal_irq_work(struct irq_work *work)
 		}
 	}
 	atomic_dec(&b->signaler_active);
+	spin_unlock(&b->signaler_active_sync);
 	rcu_read_unlock();
 
 	llist_for_each_safe(signal, sn, signal) {
@@ -290,6 +292,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	init_llist_head(&b->signaled_requests);
 
 	spin_lock_init(&b->irq_lock);
+	spin_lock_init(&b->signaler_active_sync);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
 	b->irq_engine = irq_engine;
@@ -487,8 +490,11 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
 	if (release)
 		intel_context_put(ce);
 
-	while (atomic_read(&b->signaler_active))
+	while (atomic_read(&b->signaler_active)) {
+		spin_lock(&b->signaler_active_sync);
+		spin_unlock(&b->signaler_active_sync);
 		cpu_relax();
+	}
 }
 
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index bdf09fd67b6e7..28dae32628aab 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -40,6 +40,7 @@ struct intel_breadcrumbs {
 	struct list_head signalers;
 	struct llist_head signaled_requests;
 	atomic_t signaler_active;
+	spinlock_t signaler_active_sync;
 
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
-- 
2.53.0

