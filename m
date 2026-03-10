Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPHeD4JfsGloigIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 19:14:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AE8256444
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 19:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563BF10E77E;
	Tue, 10 Mar 2026 18:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="kEW9++8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555DD10E77B;
 Tue, 10 Mar 2026 18:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1773166459;
 bh=GjCA8yQPbu1rhR9QarsGaGitf2y9GvEi6i7/18ZjPWU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=kEW9++8WO5AbuW0PQiHjP5MQM55Dq+cstct4rRBNAqMp5BfLNYmaahlwnNl2Pfmeh
 pIiBSkp1nuGYWp8GFmGH1qGlzIxTxghPuPSI5Dln7zsty9U+KnpIVZ/1lup1GhoYhr
 CDeWHVFYhgxHYuKVv2xj2mZgW+/zp9wI1IB3ezdZ2OyLqJtJTXOWq8X4oKhYxI36RU
 ovkqlTIpIxHq25/KcQ8CfaXZ+w203Vv4gLtFIpZGhp96hLveBkh5QP9h5XmwuYUDM2
 Hr5+frKhLF+XMJy1pTAmD9TbPT9UBEgIEBamA6PEHETJWSUcedB7EBPQT+mpmjGs57
 qs10u9mLkX2FQ==
Message-ID: <64617f61-6c91-4739-a545-b0109f8dc87e@lankhorst.se>
Date: Tue, 10 Mar 2026 19:14:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 26/26] drm/i915/gt: Add a spinlock to prevent
 starvation of irq_work.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20260310115709.2276203-1-dev@lankhorst.se>
 <20260310115709.2276203-27-dev@lankhorst.se>
 <20260310170413.5rCjlTce@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260310170413.5rCjlTce@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: E1AE8256444
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,patchwork.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Action: no action

Hey,

Den 2026-03-10 kl. 18:04, skrev Sebastian Andrzej Siewior:
> On 2026-03-10 12:57:08 [+0100], Maarten Lankhorst wrote:
>> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>>
>> IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
>> and the interrupt will poll on signaler_active while the irq-work can't
>> make progress.
> 
> The threaded-interrupt is the interrupt.
> 
> | On PREEMPT_RT the irq_work can be preempted by threaded-interrupt which
> | will be poll for completion but the irq_work routine can't make
> | progress.
> 
>> Solve this by adding a spinlock to prevent starvation and force
>> completion.
> 
> | Solve this by adding a spinlock_t to prevent starvation by forcing a
> | context switch if lock is held based on `signaler_active'. On
> | !PREEMPT_RT `signaler_active' can only be non-zero if multiple CPUs are
> | involved and spinning on the lock leds to the same result.
> 
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> 
> If I am the From: then I should have the Signed-off-by, too. Let me do
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> so it can be picked up.
> 
> You did suggest the following:
> 
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -209,7 +209,7 @@ static void signal_irq_work(struct irq_work *work)
>  		intel_breadcrumbs_disarm_irq(b);
>  
>  	rcu_read_lock();
> -	atomic_inc(&b->signaler_active);
> +	spin_lock(&b->signaler_active_sync);
>  	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
>  		struct i915_request *rq;
>  
> @@ -245,7 +245,7 @@ static void signal_irq_work(struct irq_work *work)
>  				i915_request_put(rq);
>  		}
>  	}
> -	atomic_dec(&b->signaler_active);
> +	spin_unlock(&b->signaler_active_sync);
>  	rcu_read_unlock();
>  
>  	llist_for_each_safe(signal, sn, signal) {
> @@ -290,6 +290,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
>  	init_llist_head(&b->signaled_requests);
>  
>  	spin_lock_init(&b->irq_lock);
> +	spin_lock_init(&b->signaler_active_sync);
>  	init_irq_work(&b->irq_work, signal_irq_work);
>  
>  	b->irq_engine = irq_engine;
> @@ -487,8 +488,10 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
>  	if (release)
>  		intel_context_put(ce);
>  
> -	while (atomic_read(&b->signaler_active))
> -		cpu_relax();
> +	while (spin_is_locked(&b->signaler_active_sync)) {
> +		spin_lock_irqsave(&b->signaler_active_sync, flags);
> +		spin_unlock_irqrestore(&b->signaler_active_sync, flags);
> 
> And this does not work because spin_is_locked() returns true and spins
> forever. This fails because there is a "corner case" where
> spin_is_locked() returns but the lock has no lock owner as in locked.
> This happens if there is a waiter which did not yet acquire the lock. 
> 
> So if you happy with this, we could keep it ;)

It seems CI is a lot happier too now.

Xe:
https://patchwork.freedesktop.org/series/159034/#rev14

BAT passes, the full run has some minor issues but only kms_vblank systematic.
Likely due to the fundamental changes of the PREEMPT_RT kernel itself, nothing driver specific.

i915:
https://patchwork.freedesktop.org/series/159035/#rev14

A few new warnings, and some noise. The most worrying part is the i915 execlists selftest
failing on nearly all platforms:

<3>[  504.279024] i915/intel_execlists_live_selftests: live_preempt_user failed with error -62
...
<7>[  506.799685] [IGT] i915_selftest: finished subtest execlists, FAIL

I don't know what's going on there yet, likely needs more debugging. Could be the test itself
being written incorrectly or something else entirely.

Otherwise things are looking good! Have you uncovered anything else?

Kind regards,
~Maarten Lankhorst
