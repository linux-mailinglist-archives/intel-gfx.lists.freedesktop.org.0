Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TZPhBNGCT2rGiQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:15:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9281B7301EB
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:15:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=SNIM2Wn0;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B1A10E6CB;
	Thu,  9 Jul 2026 11:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A5610E6CB;
 Thu,  9 Jul 2026 11:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783595721;
 bh=L2Zc8XmdM0Ir2YRcj+EgLUBGDMaC90XyjeJKCzfnZOg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=SNIM2Wn0XfT7CQX+SspICURzlag+5yPIf8fjMSNs4ybHjDmufM8BzXr4NbFPq6UWX
 enA689ST3GCOBy1TeQT4/WLyL7mTACLUMGdStzjEwvHdUL7krWqSknK7egGjCgsuoR
 yEo4sULS2Nfty1gMi0nPBQK1R05XvXKF6rOPJCaTaMbUc7gaMxQHKsTI2iCo9m4t4X
 xqSvN5TNEHNqQDFXTFDOsZCp/LO9xjjHzj78KrZ8B+QHwdsOtXWfdthSjKIX4ai9ND
 xm38m8q5FePAGNRqSOGHOscdIUyqnDJ0qPWkAaTO6c3FEQcMpPgsJfFKCwOx0hJG66
 QppQ8Se/iUgwA==
Message-ID: <93032fce-041a-4991-9eec-29dfbb0e5116@lankhorst.se>
Date: Thu, 9 Jul 2026 13:16:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] drm/i915/gt: Use signalers_lock to prevent
 starvation of irq_work.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706114823.752313-8-dev@lankhorst.se>
 <20260709105754.WJvT6s22@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260709105754.WJvT6s22@linutronix.de>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9281B7301EB



On 7/9/26 12:57, Sebastian Andrzej Siewior wrote:
> On 2026-07-06 13:48:23 [+0200], Maarten Lankhorst wrote:
>> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>>
>> IRQ-Work (FIFO-1) will be preempted by the threaded-interrupt (FIFO-50)
>> and the interrupt will poll on signaler_active while the irq-work can't
>> make progress.
>>
>> Solve this by adding a global spinlock to prevent starvation and force
>> completion.
>>
>> The existing RCU handling gets in the way on PREEMPT_RT, and would likely
>> require conversion to raw spinlock to take them inside a
>> rcu_read_lock(), so remove RCU as well.
> 
> You require both locks and a try-lock since the ordering is wrong. And
> you replace the RCU-section with a lock. Understood.
> 
> You probably want to make yourself as the author and make me
> Co-developed-by or something or nothing. This would fix the Sob order
> below.
> 
>> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> 
> Sebastian
Yeah, it seems I missed doing --reset-author when amending here.
It likely needs your sob too if I add you as co author, can I reuse it from the original patch?

~Maarten
