Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5MpvNLx+T2qTiAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:58:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B6072FF62
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:58:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=IHq9u1iL;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=qu64wuzF;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE15110F4D5;
	Thu,  9 Jul 2026 10:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E74410F4D5;
 Thu,  9 Jul 2026 10:58:01 +0000 (UTC)
Date: Thu, 9 Jul 2026 12:57:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783594675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=26FJV7cjx48XgvbFrZjYdsbkT1r51opYw8MIa0Bm5Eg=;
 b=IHq9u1iLo6dtgZTwgJxWAJ50UGIh+m9ngRAPue+UJLkI6eVFKClgs15hjdPnr8CcZY9ypy
 SlzvRaQ1nMFfQwvs6gKAyFyQW0aIBu1hLsYgXW7uwdKSviC1blhbdpvQrJr1yLftxI4wLW
 C4HHd5nYzaFsLaSo6t/vXkhLK9NLDEB2ORKdLwvo1b0jCpvOun69FjgCR0dADa613dPPj0
 PO2vAcOlOSA8RtB49pSV2dbYLLRBfLD8y/PrSKl7+8X1pFL1oFE33QE5gAKWLPZBRwPwWR
 UixeSs4qHh6FaP+1Cy2s1YW3J6EzWgfLAEBy24lzog8VEvG10Uz3sd7rS8Ibrg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783594675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=26FJV7cjx48XgvbFrZjYdsbkT1r51opYw8MIa0Bm5Eg=;
 b=qu64wuzFzehc8lPi+dzEe7pETqZ/xP4P7maHHBZIsBbTRtPH6m+/Ui6wa2yHKevb8mvhww
 Rwvbqd3buZ1t3FAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 7/7] drm/i915/gt: Use signalers_lock to prevent
 starvation of irq_work.
Message-ID: <20260709105754.WJvT6s22@linutronix.de>
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706114823.752313-8-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260706114823.752313-8-dev@lankhorst.se>
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
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50B6072FF62

On 2026-07-06 13:48:23 [+0200], Maarten Lankhorst wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
> and the interrupt will poll on signaler_active while the irq-work can't
> make progress.
> 
> Solve this by adding a global spinlock to prevent starvation and force
> completion.
> 
> The existing RCU handling gets in the way on PREEMPT_RT, and would likely
> require conversion to raw spinlock to take them inside a
> rcu_read_lock(), so remove RCU as well.

You require both locks and a try-lock since the ordering is wrong. And
you replace the RCU-section with a lock. Understood.

You probably want to make yourself as the author and make me
Co-developed-by or something or nothing. This would fix the Sob order
below.

> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Sebastian
