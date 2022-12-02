Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2970640788
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E701B10E0BD;
	Fri,  2 Dec 2022 13:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D597E10E0BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669986811; x=1701522811;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KoCd91/LSLER/DEUWYofdLy0oBCFl2Mr6BrRPMxXfdM=;
 b=kCjUuroFKIbZi6itD0NUoWoNaPt+7b4/RqKFdRuxya/Pp1NeoiVVxuu9
 fhBzN2z8aBU2wBIum8STBvx4Mp/vkhtXcph1+p2NEOKPZtk/TzRpIsk4m
 aC4f+usd0GHVK0EiVDVPzKCNjhOE+7YrBf8ZycJmzTtdCtSubKtQFy3sa
 MEoooBLdSUNd5bOVA4dm56944/0uR2tju7G6RlzhzVWQzorQMscKiAxKo
 iVpP16DvqbPdHSeS1K9JknP+60JvcE6+Pqm5tys2eubI10oLbCclV2g5r
 ciPGPnqMaOBrWK9B5hYxBVky9aIPqXzy74XQxqj9NzwhoSE4gjq4DEwJZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="303553301"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="303553301"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:13:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647163595"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647163595"
Received: from macematx-mobl1.ger.corp.intel.com (HELO [10.213.211.34])
 ([10.213.211.34])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:13:13 -0800
Message-ID: <698753c3-29c1-3b5c-69a4-7b6c128d29aa@linux.intel.com>
Date: Fri, 2 Dec 2022 13:13:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 John Harrison <john.c.harrison@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221128165209.353706-1-andrzej.hajda@intel.com>
 <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
 <0846a17b-9562-0592-003a-4336fcac8f51@intel.com>
 <394f6232-50bf-1344-8165-ff6abf3b9323@linux.intel.com>
 <c0bb381e-43d2-3af9-0ada-2bc60027a4f5@intel.com>
 <fdabe479-b063-e6d5-0a1e-e2d3cebb705f@linux.intel.com>
 <56f8240e-39c5-910c-c090-0ff0f8d614df@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <56f8240e-39c5-910c-c090-0ff0f8d614df@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix exiting context timeout
 calculation
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/12/2022 12:19, Andrzej Hajda wrote:
> On 02.12.2022 10:14, Tvrtko Ursulin wrote:
>>
>> On 01/12/2022 16:36, Andrzej Hajda wrote:
>>> On 01.12.2022 11:28, Tvrtko Ursulin wrote:
>>>>
>>>> On 01/12/2022 00:22, John Harrison wrote:
>>>>> On 11/29/2022 00:43, Tvrtko Ursulin wrote:
>>>>>> On 28/11/2022 16:52, Andrzej Hajda wrote:
>>>>>>> In case context is exiting preempt_timeout_ms is used for timeout,
>>>>>>> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it 
>>>>>>> increases
>>>>>>> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
>>>>>>>
>>>>>>> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute 
>>>>>>> w/a for GuC submission")
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
>>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>>> ---
>>>>>>> Hi all,
>>>>>>>
>>>>>>> I am not sure what is expected solution here, and if my patch 
>>>>>>> does not
>>>>>>> actually reverts intentions of patch d7a8680ec9fb21. Feel free to 
>>>>>>> propose
>>>>>>> something better.
>>>>>>> Other alternative would be to increase t/o in IGT tests, but I am 
>>>>>>> not sure
>>>>>>> if this is good direction.
>>>>>>
>>>>>> Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: 
>>>>>> Make the heartbeat play nice with long pre-emption timeouts") that 
>>>>>> actually breaks things? (If IGT modifies the preempt timeout the 
>>>>>> heartbeat extension will not work as intended.)
>>>>>>
>>>>>> If so, I think we agreed during review that was a weakness which 
>>>>>> needs to be addressed, but I would need to re-read the old threads 
>>>>>> to remember what was the plan. Regardless what it was it may be 
>>>>>> time is now to continue with those improvements.
>>>>>>
>>>>> What is the actual issue? Just that closing contexts are taking 
>>>>> forever to actually close? That would be the whole point of the 
>>>>> 'context_is_exiting' patch. Which I still totally disagree with.
>>>>>
>>>>> If the context is being closed 'gracefully' and it is intended that 
>>>>> it should be allowed time to pre-empt without being killed via an 
>>>>> engine reset then the 7.5s delay is required. That is the 
>>>>> officially agreed upon timeout to allow compute capable contexts to 
>>>>> reach a pre-emption point before they should be killed. If an IGT 
>>>>> is failing because it enforces a shorter timeout then the IGT needs 
>>>>> to be updated to account for the fact that i915 has to support slow 
>>>>> compute workloads.
>>>>>
>>>>> If the context is being closed 'forcefully' and should be killed 
>>>>> immediately then you should be using the 'BANNED_PREEMPT_TIMEOUT' 
>>>>> value not the sysfs/config value.
>>>>>
>>>>> Regarding heartbeats...
>>>>>
>>>>> The heartbeat period is 2.5s. But there are up to five heartbeat 
>>>>> periods between the heartbeat starting and it declaring a hang. The 
>>>>> patch you mention also introduced a check on the pre-emption 
>>>>> timeout when the last period starts. If the pre-emption timeout is 
>>>>> longer than the heartbeat period then the last period is extended 
>>>>> to guarantee that a full pre-emption time is granted before 
>>>>> declaring the hang.
>>>>>
>>>>> Are you saying that a heartbeat timeout is occurring and killing 
>>>>> the system? Or are you just worried that something doesn't align 
>>>>> correctly?
>>>>
>>>> I leave this to Andrzej since I am not the one debugging this. I 
>>>> just glanced over the IGT and saw that there's code in there which 
>>>> sets both the preempt timeout and heartbeat interval to non-default 
>>>> values. And then I remembered this:
>>>
>>> The test is gem_ctx_persistence@many-contexts. It does not modify 
>>> sysfs timeouts, but it assumes 1sec is enough to wait for exiting 
>>> context (no-preemption). It works with bcs, vcs, vecs, but fails on 
>>> rcs since it has
>>> timeout set to 7.5sec (btw it works with GuC submissions enabled). It 
>>> seemed to me somehow inconsistent, but if this is how it should work
>>> I will just adjust the test.
>>
>> This looks odd then. That test is using non-preemptable spinners and 
>> AFAICT it keeps submitting them for 30s, across all engines, and then 
>> it stops and waits for one second for all of them to exit.
>>
>> With the 7.5 preempt timeout I'd expect test should fail both with GuC 
>> and execlists.
> 
> OK, my claim about working with GuC was not verified enough, just one 
> testing machine.
> 
>>
>> What should happen is that every context is marked as "exiting" and is 
>> revoked. On the next scheduling event they would all be dropped.
>>
>> So I think two questions - how did increase of preempt timeout to 7.5s 
>> pass CI - is the failure sporadic for instance?
> 
> After some data mining on cibuglog from last month I can say results are 
> mostly consistent per machine.
> On most machines it always passes.
> Always fails on shard-tgl*, shard-rkl-{1,2,3,4,6} (but on shard-rkl-5 it 
> always passes), fi-adl-ddr5, fi-kbl-soraka, fi-rkl-11600.
> On re-dg2-{11,12,15} results are inconsistent - some passes, some fails.
> 
>>
>> Second question - you are saying with GuC test always passes - how 
>> does GuC manages to revoke a non-preemptible spinner in less than one 
>> second if preempt timeout is 7.5s.. colour me confused.
>>
>> Anyway those questions are secondary.. Fix here I think pretty 
>> obviously is for many_contexts() to fetch the preempt timeout from 
>> sysfs and allow for that much time (plus a safety factor). Use the 
>> longest timeout between all engines since all are submitted to.
> 
> With increasing to 10 seconds the issue disappeared on two RIL machines 
> used for tests, but I will post the patch on try-bot check other 
> machines as well.
> 
> One more thing, to be sure. As I understand reset due to stopped 
> heartbeat, should not happen for 7.5sec preemption timeouts, if test do 
> not adjust any timeouts? If yes then there is sth wrong anyway.
> See sample logs from dg2 showing what happens: pass[1], fail[2].
> In both cases there is 22 "heartbeat * not ticking" log lines, all on 
> 7.5s preemption_timeouts (rcs, ccs).
> 
> [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/re-dg2-12/igt@gem_ctx_persistence@many-contexts.html

<6> [278.652441] [IGT] gem_ctx_persistence: executing
<7> [278.663699] i915 0000:03:00.0: [drm:i915_gem_open [i915]]
<7> [278.664362] i915 0000:03:00.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
<7> [278.664496] i915 0000:03:00.0: [drm:i915_gem_open [i915]]
<7> [278.664992] i915 0000:03:00.0: [drm:i915_gem_open [i915]]
<6> [278.670968] [IGT] gem_ctx_persistence: starting subtest many-contexts
<7> [278.671164] [drm:eb_lookup_vmas [i915]] EINVAL at eb_validate_vma:505
<7> [278.686769] i915 0000:03:00.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x000001dc [0x000001dc]
<6> [279.367025] i915 0000:03:00.0: [drm] Ignoring context reset notification of exiting context 0x100C on bcs0
<6> [279.368863] i915 0000:03:00.0: [drm] Ignoring context reset notification of exiting context 0x100D on vcs0
<6> [279.370813] i915 0000:03:00.0: [drm] Ignoring context reset notification of exiting context 0x100E on vcs1
<6> [279.373360] i915 0000:03:00.0: [drm] Ignoring context reset notification of exiting context 0x100F on vecs0
<6> [279.376086] i915 0000:03:00.0: [drm] Ignoring context reset notification of exiting context 0x1010 on vecs1
<7> [281.964427] heartbeat ccs3 heartbeat {seqno:e:190, prio:2147483646} not ticking
<7> [281.964449] heartbeat 	Awake? 2
<7> [281.964457] heartbeat 	Barriers?: no
<7> [281.964465] heartbeat 	Latency: 0us
<7> [281.964499] heartbeat 	Runtime: 292051ms
<7> [281.964507] heartbeat 	Forcewake: 0 domains, 0 active
<7> [281.964516] heartbeat 	Heartbeat: 3224 ms ago
<7> [281.964525] heartbeat 	Reset count: 0 (global 28)
<7> [281.964533] heartbeat 	Properties:
<7> [281.964539] heartbeat 		heartbeat_interval_ms: 2500 [default 2500]
<7> [281.964548] heartbeat 		max_busywait_duration_ns: 8000 [default 8000]
<7> [281.964556] heartbeat 		preempt_timeout_ms: 7500 [default 7500]
<7> [281.964564] heartbeat 		stop_timeout_ms: 100 [default 100]
<7> [281.964571] heartbeat 		timeslice_duration_ms: 1 [default 1]
<7> [281.964580] heartbeat 	Requests:
<7> [281.964663] heartbeat 		active in queueE e:190*  prio=2147483646 @ 3224ms: [i915]
<7> [281.964677] heartbeat 		ring->start:  0xfecb0000
<7> [281.964685] heartbeat 		ring->head:   0x000008a0
<7> [281.964692] heartbeat 		ring->tail:   0x00000758
<7> [281.964698] heartbeat 		ring->emit:   0x00000760
<7> [281.964705] heartbeat 		ring->space:  0x00000100

This indeed looks super strange - heartbeat at max prio and not ticking 3224ms after first created. No idea. One for GuC experts if GuC is the only backend where this happens.

Well then I looked at the failures on TGL you mention above:

https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7078/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html

<6> [331.908547] [IGT] gem_ctx_persistence: executing
<7> [331.910926] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7> [331.911475] i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
<7> [331.911608] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7> [331.911924] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<6> [331.915834] [IGT] gem_ctx_persistence: starting subtest many-contexts
...
<7> [335.249250] heartbeat rcs0 heartbeat {seqno:5:76, prio:2147483646} not ticking
<7> [335.249269] heartbeat 	Awake? 1338
<7> [335.249273] heartbeat 	Barriers?: no
<7> [335.249277] heartbeat 	Latency: 243us
<7> [335.249291] heartbeat 	Runtime: 10531ms
<7> [335.249294] heartbeat 	Forcewake: 0 domains, 0 active
<7> [335.249297] heartbeat 	Heartbeat: 3307 ms ago
<7> [335.249305] heartbeat 	Reset count: 0 (global 0)
<7> [335.249308] heartbeat 	Properties:
<7> [335.249310] heartbeat 		heartbeat_interval_ms: 2500 [default 2500]
<7> [335.249314] heartbeat 		max_busywait_duration_ns: 8000 [default 8000]
<7> [335.249318] heartbeat 		preempt_timeout_ms: 7500 [default 7500]
<7> [335.249322] heartbeat 		stop_timeout_ms: 100 [default 100]
<7> [335.249326] heartbeat 		timeslice_duration_ms: 1 [default 1]
<7> [335.249336] heartbeat 	Requests:
<7> [335.249387] heartbeat 		hungR 13a:2*  prio=0 @ 3308ms: gem_ctx_persist<1773>
<7> [335.249393] heartbeat 		ring->start:  0x0149f000
<7> [335.249395] heartbeat 		ring->head:   0x00000000
<7> [335.249398] heartbeat 		ring->tail:   0x000000b0
<7> [335.249402] heartbeat 		ring->emit:   0x000000b8
<7> [335.249404] heartbeat 		ring->space:  0x00003f08
<7> [335.249407] heartbeat 		ring->hwsp:   0xfedc4000

Same thing. So either something is totally broken or I totally forgot how things are supposed to work.

There shouldn't be a hearbeat stopped ticking until 4x hearbeat intervals + preempt timeout. And it nicely shows the current engine values for those so it makes no sense.

Was there something left running before the test started? But drop_caches was done on test start..

Regards,

Tvrtko

> [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/re-dg2-12/igt@gem_ctx_persistence@many-contexts.html
> 
> Regards
> Andrzej
> 
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>> Regards
>>> Andrzej
>>>
>>>
>>>>
>>>> next_heartbeat():
>>>> ...
>>>>          /*
>>>>           * FIXME: The final period extension is disabled if the 
>>>> period has been
>>>>           * modified from the default. This is to prevent issues 
>>>> with certain
>>>>           * selftests which override the value and expect specific 
>>>> behaviour.
>>>>           * Once the selftests have been updated to either cope with 
>>>> variable
>>>>           * heartbeat periods (or to override the pre-emption 
>>>> timeout as well,
>>>>           * or just to add a selftest specific override of the 
>>>> extension), the
>>>>           * generic override can be removed.
>>>>           */
>>>>          if (rq && rq->sched.attr.priority >= I915_PRIORITY_BARRIER &&
>>>>              delay == engine->defaults.heartbeat_interval_ms) {
>>>>
>>>> Which then wouldn't dtrt with last heartbeat pulse extensions, if 
>>>> the IGT would be relying on that. Don't know, just pointing out to 
>>>> check and see if this FIXME needs to be prioritised.
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>
> 
