Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XABJNt5/T2oMiQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:02:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A98730020
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:02:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=ESASVCNH;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB3710F4E2;
	Thu,  9 Jul 2026 11:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BACB10E6AA;
 Thu,  9 Jul 2026 11:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783594965;
 bh=Zz7/rasQV2uTEidthlwpJ9dCfB8OzVa/75a0tdy523c=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ESASVCNHqliomNvNGTPUybU0wqXjQkrI607E+V1rMORsucYkKmF4+OtENgQHmt85N
 owuZnBvoZw+p4Fb03OWG4/xDk4Y8JW9LUPaJZkqbiCbLATn6GdugFZPbD6m+edZY7O
 77ZMDR3KqbYsfQuLsShgZ3AojLkWtMFCoZoMTyCHi5cyzvW05lYuQ6S6JwL/rTzwfn
 6fX01vMUDXRDPPxf0rH8oE2oAdfN7N29ILQOvpD8P3NwwfMaeUbHrjg6Cl9LYAsFPJ
 hOqXPlaoGlJm+B7WR0t5RuP4D+mqbxv0KAZdMq8k6qImrAhhTtKX2Guo8s913Ter0Q
 wDFlDF7mgsMgg==
Message-ID: <89f1eb47-44fb-41bf-bc4b-a3693125e0b2@lankhorst.se>
Date: Thu, 9 Jul 2026 13:03:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] drm/i915/gt: Fix selftests on PREEMPT_RT
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706114823.752313-5-dev@lankhorst.se>
 <20260709103650.VxAAiEnx@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260709103650.VxAAiEnx@linutronix.de>
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim];
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
X-Rspamd-Queue-Id: 50A98730020

Hey,

Correct, this should be in the commit message, let me update it.

On 7/9/26 12:36, Sebastian Andrzej Siewior wrote:
> On 2026-07-06 13:48:20 [+0200], Maarten Lankhorst wrote:
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> index 10e556a7eac45..c1eff9edd8a5e 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> @@ -277,11 +277,11 @@ static int live_engine_busy_stats(void *arg)
>>  		st_engine_heartbeat_disable(engine);
>>  
>>  		ENGINE_TRACE(engine, "measuring idle time\n");
>> -		preempt_disable();
>> +		migrate_disable();
>>  		de = intel_engine_get_busy_time(engine, &t[0]);
> 
> this change has been made probably due to guc_engine_busyness(). Looking
> at execlists_engine_busyness() then there is a seqcount_t and the writer
> side does local_irq_disable() during the update so this should work.
> The comment says the writer is serialized but I don't see how (maybe
> there is just one). So…
> 
> Sebastian
Would the below look good?

The engine->busyness() callbacks called from the selftests are on PREEMPT_RT
not safe with preemption disabled, because all spinlocks are converted to
rt-mutexes.

This is also a problem for perf events, where we have to disable
the busyness events on PREEMPT_RT.

Previous attempts to fix this failed, so convert the selftest code to read
engine->busyness()  with migrate_disable() instead of preempt_disable() to
prevent selftest failures on PREEMPT_RT.

