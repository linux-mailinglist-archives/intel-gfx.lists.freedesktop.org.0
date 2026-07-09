Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zS6ZM4tvT2qqggIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:53:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5468472F27E
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:53:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="ZnR/aZ5i";
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B63E10F4A7;
	Thu,  9 Jul 2026 09:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF9F10F4A7;
 Thu,  9 Jul 2026 09:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783590787;
 bh=+/h3p/bzlPlYOc3yEyyvW+IkQ+A1ztref4CYgH1i6go=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ZnR/aZ5iIuBMkXDVchJcbuUrqgEtgTBgqctsav5jy1lRbjabDYBKiCHeKcZdxOw4O
 FjhAOpC8PqhkZAs7t2XuPqK8/ofvtHfee/6jSjBEDsY9I+AZrzlPTtR7vmW8xMJvdt
 xSDf8K8AKBZSAHnJPvq492kzaplEtG3ovvzYmMYwJR1dWZWZqa9HOer8lIFe+kRrys
 OZCCOiTuqDsU+08O9vTzeNqiyz9dQb3nEDzgBX7msKwPA5Qp1p5ssSgAAhJeC8++3g
 ug8uLvSk9qs/FJPAvIF7qML4u5U6E2SPBxiFy/lfTpccQ5DsRKNoEqG2z4sY9t4lB5
 pwFt2mFlNZcMg==
Message-ID: <c4222f81-72b2-4eea-a900-da327f0df928@lankhorst.se>
Date: Thu, 9 Jul 2026 11:53:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706122026.IJAiyhhw@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260706122026.IJAiyhhw@linutronix.de>
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
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5468472F27E

Hello Sebastian,

The test results are available, mostly looks good except 1 spurious incomplete.

I tried reproducing it, but was unable to. It seems that pre-existing incompletes
on the specific IGT testcase already happened before the changes.

Do you want to review the patches you didn't author, so I can move forward?
Even if you are uncomfortable to review the signalers_lock changes, it should
be possible to have the rest reviewed and merged upstream.

Kind regards,
~Maarten Lankhorst

On 7/6/26 14:20, Sebastian Andrzej Siewior wrote:
> On 2026-07-06 13:48:16 [+0200], Maarten Lankhorst wrote:
>> All fixes to make the core i915 module (without display) working correctly on
>> PREEMPT_RT.
>>
>> Some fixes are still needed, as the selftests still fail. But otherwise the
>> test results were looking good on PREEMPT_RT.
>>
>> It looks like the patch that added a spinlock caused a regression on !PREEMPT_RT,
>> and may even have caused similar test failures on PREEMPT_RT, so to fix it
>> I removed RCU entirely, and converted to a locked implementation instead.
>>
>> This time at least, i915 live selftests pass on !PREEMPRT_RT for at least 1 machine
>> with same config as CI.
> 
> I saw the version counter overflowed and is at 4 here. I appreciate all
> the work. May I ask how are things?
>  
> Sebastian

