Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDXCIvhqsGmNjAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 20:03:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF80256CD5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 20:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1629210E779;
	Tue, 10 Mar 2026 19:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="GYu4TCJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A6C10E2D1;
 Tue, 10 Mar 2026 19:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1773169395;
 bh=Eb/85b5s3J1SrNnCYdrUNYgYfHqbz5dKd5RyBjycj1s=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=GYu4TCJoa4ULUkgwOPCoSzYTU/hGmCbORHB3EPACSqbtQO9G/LcLZO8om/Jfx8kEb
 3wORaQz8RpyJryk1AAKzIV3CBmU7u8BjCpujvLPze860UkyzIjUInFtMZVdFXShbcC
 AmXEbnzh6SeBH7LOnbS5Nfx5tSijBDdldGgp/IPrlKyih4BM8Dz3lPilQxXRRHQ9n3
 BBUyGQZuIBb3KX6S/TkgVILvICbS2vbkenCIS5qPTdxS3g1sK3cjXeFuedtWRBemIb
 nlkL6+PPi3cqFwYegjz49OGZYbRPlgbMlI+hJGgq8u6ylYGG6dIWzMjByf3z2JnaZR
 fCiMnEi/e31kw==
Message-ID: <7774bff2-e101-4e59-9cfb-9f200e1caef9@lankhorst.se>
Date: Tue, 10 Mar 2026 20:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 26/26] drm/i915/gt: Add a spinlock to prevent
 starvation of irq_work.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20260310115709.2276203-1-dev@lankhorst.se>
 <20260310115709.2276203-27-dev@lankhorst.se>
 <20260310172214.4lEOgGOl@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260310172214.4lEOgGOl@linutronix.de>
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
X-Rspamd-Queue-Id: 1CF80256CD5
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
	NEURAL_HAM(-0.00)[-0.995];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:dkim,lankhorst.se:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Action: no action

Hey,

Den 2026-03-10 kl. 18:22, skrev Sebastian Andrzej Siewior:
> On 2026-03-10 12:57:08 [+0100], Maarten Lankhorst wrote:
>> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> @@ -487,8 +490,11 @@ void intel_context_remove_breadcrumbs(struct intel_context *ce,
>>  	if (release)
>>  		intel_context_put(ce);
>>  
>> -	while (atomic_read(&b->signaler_active))
>> +	while (atomic_read(&b->signaler_active)) {
>> +		spin_lock(&b->signaler_active_sync);
>> +		spin_unlock(&b->signaler_active_sync);
>>  		cpu_relax();
> 
> Forgot to mention: This is fine on PREEMPT_RT but on !RT you might need
> 
>                spin_lock_irqsave(&b->signaler_active_sync, flags);
>                spin_unlock_irqrestore(&b->signaler_active_sync, flags);
> 
> if the function can be called from !IRQ context which might be the case
> due to the irqsave() earlier in this function.
Yeah seems a bit of an oversight. I'll change it to use flags.

Is it correct to assume that irq_work disables interrupts on !RT?

Kind regards,
~Maarten Lankhorst
