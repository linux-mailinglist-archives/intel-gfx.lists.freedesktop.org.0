Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /55rKbGHT2qUiwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:36:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426CB7306E8
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:36:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="MjzX/KKk";
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D8710F509;
	Thu,  9 Jul 2026 11:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 156EF10F509;
 Thu,  9 Jul 2026 11:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783596972;
 bh=j4+z7f5vbuz2wqPcUwSFKi5xweL3dHMSJMt9QQCDbzc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=MjzX/KKkbjfUKn072h7zpDyN8yfWVfjPI/YOQ8OB4hGnlqDw01zeNwWqwLjHgPrsV
 npXjLdNWO566z+XGzuNAPuE7nZ/BXHp8oAB6i0xy69SRdV6n2v/PovhgiWPTUUfSZP
 OHh9ypGYZJeEE+alJWZsIRgpN6+C14ix5PZ2scqvQQXX4Uaz6BpVjTgtBWBVTTCiN5
 f49RneRdgRlLyW2BVfYOPIg2aJTmK5dEo0oA10L61pa5ayb2TJs6cIcsACCGQ2iBtF
 4bWdOXKaJYBTjzNC9Pbs9FvzwcuLxfIwPc9GwLkMtWjSu83m1Xf0kUB7q81iBygTB+
 ZyZhnjxwfat8g==
Message-ID: <a6c056ba-0847-4d2c-a7bd-39ac27eb15d5@lankhorst.se>
Date: Thu, 9 Jul 2026 13:36:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706122026.IJAiyhhw@linutronix.de>
 <c4222f81-72b2-4eea-a900-da327f0df928@lankhorst.se>
 <20260709110200.2_5Eg8xF@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260709110200.2_5Eg8xF@linutronix.de>
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
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lankhorst.se:from_mime,lankhorst.se:dkim,lankhorst.se:mid];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 426CB7306E8

Hey,

On 7/9/26 13:02, Sebastian Andrzej Siewior wrote:
> On 2026-07-09 11:53:52 [+0200], Maarten Lankhorst wrote:
>> Hello Sebastian,
> Hi Maarten,
> 
>> The test results are available, mostly looks good except 1 spurious incomplete.
>>
>> I tried reproducing it, but was unable to. It seems that pre-existing incompletes
>> on the specific IGT testcase already happened before the changes.
>>
>> Do you want to review the patches you didn't author, so I can move forward?
>> Even if you are uncomfortable to review the signalers_lock changes, it should
>> be possible to have the rest reviewed and merged upstream.
> 
> This looks good to me. The condition in 5/7 is the as in 3/7. Not sure
> if this should be merged into a helper or if it should be passed from
> the caller. But it seems the information of the calling context is lost.
> 
> Please move forward ;)

Yeah the problem was similar, I believe neither check should exist,
instead the caller should give this information like the comment mentions.

It's best not to try to change i915 too much though, I can try without both
3/7 and 5/7 now that the plan is to disable some problematic perf events and
not run selftests in various conditions that should no longer happen.

Kind regards,
~Maarten Lankhorst
