Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADupORRPsGnFhgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 18:04:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D47255356
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 18:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACBF89F4F;
	Tue, 10 Mar 2026 17:04:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="M5dDTCgD";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ImjK1jeW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182EA10E2C5;
 Tue, 10 Mar 2026 17:04:17 +0000 (UTC)
Date: Tue, 10 Mar 2026 18:04:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1773162254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O3nDHwFwsMlE3nsDKwdkvC+E/cqGCBBrap8xgsZnTUM=;
 b=M5dDTCgDKkEENYH2WA3ts/zZ5h10e6ASZrGqUU+rYQ7KcQDXvLfOJFvIzK/Rhty8MFWyaf
 CPALuX2isLNOLem5Qph5/44zddRB90vebitwmZHS2lx28JMzF2bNvLOAdMewkHhDDUiwHa
 XyCo2MyKTjXK7YUG/JGDvcgVomIS2ckxFaUTx/4xgQcL8/ihc0LKJC8SLuKtLjHu9GUPnV
 SNlEQ2u9dfbqozL5aFIUEwbPYb9PyaDTjcMtlbr04md0P+Qi5eXgMAL8tlKM93rL+9B2GH
 OyLQ9zcZpYHD8q3UMh4zhgMdPUmP0pl5gjiNMIJ8HTFKUT2cUDKszgF2xG0ttA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1773162254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O3nDHwFwsMlE3nsDKwdkvC+E/cqGCBBrap8xgsZnTUM=;
 b=ImjK1jeWVBzBok3Np/zMmiVhItovXZoRI5JLwHhJug2g348CtboaO2a0m/Qd9iWD7jpMwL
 jQxBKpXMWs4QeeCA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v7 26/26] drm/i915/gt: Add a spinlock to prevent
 starvation of irq_work.
Message-ID: <20260310170413.5rCjlTce@linutronix.de>
References: <20260310115709.2276203-1-dev@lankhorst.se>
 <20260310115709.2276203-27-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260310115709.2276203-27-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 50D47255356
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On 2026-03-10 12:57:08 [+0100], Maarten Lankhorst wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
> and the interrupt will poll on signaler_active while the irq-work can't
> make progress.

The threaded-interrupt is the interrupt.

| On PREEMPT_RT the irq_work can be preempted by threaded-interrupt which
| will be poll for completion but the irq_work routine can't make
| progress.

> Solve this by adding a spinlock to prevent starvation and force
> completion.

| Solve this by adding a spinlock_t to prevent starvation by forcing a
| context switch if lock is held based on `signaler_active'. On
| !PREEMPT_RT `signaler_active' can only be non-zero if multiple CPUs are
| involved and spinning on the lock leds to the same result.

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

If I am the From: then I should have the Signed-off-by, too. Let me do
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

so it can be picked up.

You did suggest the following:

--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -209,7 +209,7 @@ static void signal_irq_work(struct irq_work *work)
 		intel_breadcrumbs_disarm_irq(b);
 
 	rcu_read_lock();
-	atomic_inc(&b->signaler_active);
+	spin_lock(&b->signaler_active_sync);
 	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
 		struct i915_request *rq;
 
@@ -245,7 +245,7 @@ static void signal_irq_work(struct irq_work *work)
 				i915_request_put(rq);
 		}
 	}
-	atomic_dec(&b->signaler_active);
+	spin_unlock(&b->signaler_active_sync);
 	rcu_read_unlock();
 
 	llist_for_each_safe(signal, sn, signal) {
@@ -290,6 +290,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	init_llist_head(&b->signaled_requests);
 
 	spin_lock_init(&b->irq_lock);
+	spin_lock_init(&b->signaler_active_sync);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
 	b->irq_engine = irq_engine;
@@ -487,8 +488,10 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
 	if (release)
 		intel_context_put(ce);
 
-	while (atomic_read(&b->signaler_active))
-		cpu_relax();
+	while (spin_is_locked(&b->signaler_active_sync)) {
+		spin_lock_irqsave(&b->signaler_active_sync, flags);
+		spin_unlock_irqrestore(&b->signaler_active_sync, flags);

And this does not work because spin_is_locked() returns true and spins
forever. This fails because there is a "corner case" where
spin_is_locked() returns but the lock has no lock owner as in locked.
This happens if there is a waiter which did not yet acquire the lock. 

So if you happy with this, we could keep it ;)

+	}
 }
 
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index bdf09fd67b6e7..d071f4f1b1910 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -39,7 +39,7 @@ struct intel_breadcrumbs {
 	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
 	struct llist_head signaled_requests;
-	atomic_t signaler_active;
+	spinlock_t signaler_active_sync;
 
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */


Sebastian
