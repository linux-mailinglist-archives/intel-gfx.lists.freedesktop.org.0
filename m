Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xfA/FM+ST2rTjwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:23:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30E0730EF9
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:23:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=zssXTpVz;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=DyMt0lF0;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8563410F5A5;
	Thu,  9 Jul 2026 12:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD8A10F5A7;
 Thu,  9 Jul 2026 12:23:40 +0000 (UTC)
Date: Thu, 9 Jul 2026 14:23:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783599817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9Si8Y/mLJURDSOd/tx3BEaIDrqKf2uDYmkpNC4YSpZk=;
 b=zssXTpVz0csdckDRnXbJAfN3/TxTFx1oHWW4OIdKck3l1yZVNHjqDFwu00uCpGaX5dRk1O
 80ixRuZ61YlblCeDeLKgooutPFvLHWwnpwEc9xgQ9xr1lbHErkcNociEkh+Yy9xU5SBxxg
 0dlBB70l7mdMLyov+igHrMUiixrgZpSNNe9dWtxu7vAQfU7q2pEPPz4I8o/y9+lDqQVLrV
 vA3TIGb7DmYkX3kVxGeAr55l/ZQBGMA93w7v9Rv+1dabc4VPTC/JBNj9V6rzjEzIaYp64F
 QB4wrSlGc5RTOkyM4OmEsFLqx9UBiN7vuJ3zi/uw7oh8dhj8Y+Vcig1g8IelHA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783599817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9Si8Y/mLJURDSOd/tx3BEaIDrqKf2uDYmkpNC4YSpZk=;
 b=DyMt0lF03xy8fooYJtPlUy8F55YDbsqZEi/nU1jL/8TPyzWXg8pahA+c9hrrAXJUDNC3VB
 zjKjc8Rb/m/yF9BA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 4/7] drm/i915/gt: Fix selftests on PREEMPT_RT
Message-ID: <20260709122336.4IUOySJ8@linutronix.de>
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706114823.752313-5-dev@lankhorst.se>
 <20260709103650.VxAAiEnx@linutronix.de>
 <89f1eb47-44fb-41bf-bc4b-a3693125e0b2@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <89f1eb47-44fb-41bf-bc4b-a3693125e0b2@lankhorst.se>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,linutronix.de:from_mime,linutronix.de:dkim,linutronix.de:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F30E0730EF9

On 2026-07-09 13:03:30 [+0200], Maarten Lankhorst wrote:
> Would the below look good?
> 
> The engine->busyness() callbacks called from the selftests are on PREEMPT_RT
> not safe with preemption disabled, because all spinlocks are converted to
> rt-mutexes.

 "all spinlock_t locks becomes sleeping locks on PREEMPT_RT and must not
 be acquired with disabled preemption."

> This is also a problem for perf events, where we have to disable
> the busyness events on PREEMPT_RT.

perf events as in hardirq or irq_work? If hardirq and spinlock_t then
lockdep might complain.

> Previous attempts to fix this failed, so convert the selftest code to read
> engine->busyness()  with migrate_disable() instead of preempt_disable() to
> prevent selftest failures on PREEMPT_RT.

You might want to describe why this swap is safe or what the requirement
is here. My guess would be that preempt_disable() is here to ensure that
the two reads from intel_engine_get_busy_time() are 100us delay and not
10ms due to a context switch. But then this has no impact on the
returned value since it measures the busy-time of the HW which should
report 0 if idle.

Sebastian
