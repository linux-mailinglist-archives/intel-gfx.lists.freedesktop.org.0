Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLn9IN+scGkgZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:39:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F035559A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905D210E74B;
	Wed, 21 Jan 2026 10:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="gMnx02Z5";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="HJlrt+gO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2C610E74A;
 Wed, 21 Jan 2026 10:39:24 +0000 (UTC)
Date: Wed, 21 Jan 2026 11:39:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1768991962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LuScnkTRBXXAwIA4U4HYbmGJQye4khtaiAYe5oV0p6o=;
 b=gMnx02Z58ThkRv3eA+BrfCcMv9QBQPvFX4K7ToswAovbQ355uw1CwypkN77v3r0KvgTwMm
 TZmPcmZ4bKfWCGKvfIul48PSTEHzRKw5klz6SX++QvdZ5yiaOlBHKsDnyu3zrLSnpeZp0o
 SRl0aKB5jZnOplgXhmGAS6LmbSn15a5RsXC1aGC+fAMoEqfDUbWJPd8F+niH87VtMOXL6V
 RqIhiMSC0Ux+5fR/AI3oFJf4k0kcY2U7S5kcTo6mH1Peep9uOCNtIjOfDzG2Totp9OBNNO
 jIn+PeV6LEKVOdUr8NpJX0nImUA8N7Fqsf0RvRGiPQWJlmL99pg3Uqd+Jc5t4Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1768991962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LuScnkTRBXXAwIA4U4HYbmGJQye4khtaiAYe5oV0p6o=;
 b=HJlrt+gO7iq91Ckn0ORVvTw1fL8FlhmlVRDxE2RdCbZ5kKlT77AObykEn5hCzQeDGdMVOM
 IO+Njc/HN0Im3LAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Hans de Goede <hansg@kernel.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 sfr@canb.auug.org.au, ilpo.jarvinen@linux.intel.com,
 regressions@leemhuis.info
Subject: Re: REGRESSION on linux-next (next-20260115)
Message-ID: <20260121103921.q-r7pAzL@linutronix.de>
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
 <20260121075348.5MyqcHFB@linutronix.de>
 <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
 <20260121090154.Lpaj9hrr@linutronix.de>
 <1a68f6d5-6541-4b04-8628-397001cb1e55@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1a68f6d5-6541-4b04-8628-397001cb1e55@kernel.org>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linutronix.de:mid,linutronix.de:dkim]
X-Rspamd-Queue-Id: 13F035559A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-01-21 11:20:53 [+0100], Hans de Goede wrote:
> Hi,
Hi,

> Right, so as the commit message of commit 8f812373d195 ("platform/x86: intel:
> int0002_vgpio: Pass IRQF_ONESHOT to request_irq()") explains
> the int0002_vgpio driver *must* use the same flags to request
> the IRQ as the ACPI core does, which is why it passes IRQF_ONESHOT
> even though it does not have a threaded handler.
> 
> This worked fine until commit aef30c8d569c ("genirq: Warn about using
> IRQF_ONESHOT without a threaded handler") as Chaitanya's bisect
> pointed out.

Avoiding forced-threading on the int0002_vgpio handler is actually a
problem on PREEMPT_RT. But yeah no complains from the stack.

> Sebastian as I agree that switching to IRQF_COND_ONESHOT on
> the int0002_vgpio.c side is a good way to fix this.
> 
> But If I'm reading your proposed changes correct then your suggestion
> is to drop IRQF_ONESHOT from int0002_vgpio.c and then instead of
> replacing it with IRQF_COND_ONESHOT you want to always pass
> IRQF_COND_ONESHOT when using the non-threaded request_irq functions?

Correct.

> I'm not objecting against this, just making sure I understand
> correctly.
> 
> Note in that case you should also add this to the non devm_
> prefixed version.

You mean request_irq() as it has been done in commit
   c37927a203fa2 ("genirq: Set IRQF_COND_ONESHOT in request_irq()")

or did I miss yet another wrapper?

> Regards,
> 
> Hans

Sebastian
