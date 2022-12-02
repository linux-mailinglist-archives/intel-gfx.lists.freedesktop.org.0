Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 135BE6406A6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 13:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41E610E0CA;
	Fri,  2 Dec 2022 12:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB3710E0CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 12:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669983560; x=1701519560;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MvUo5c3LGfaqxuJ0Gu6uZcs0s6oinVwNM7MMZ3IK6NE=;
 b=ENFL2olhe6F6rmG2hbJUrrkNAhSf8gLGstpY8Q7RiRaCDQwxOBwKmYON
 EY8UqITKFa1iz0Mc8OvV/3WORK4WFgWDoU+uHmTn2Wx5+ii0NXw3k1qda
 xSUVrVYoAmqbboMblTfh3xENYIUJIROCcuiS7z8loje2LKsvWyIlHKdK4
 BbHt3XA6b0kb9NArZEmLSsFAiX5ND2frD9MBt9A5a3BUEe0D2xBlRq0Kh
 jWQn+1uxY3yYeczzxTpg1kCPkMlhgbCaOT3EOweLxnZxnJRIvbTL/fAKA
 bR1z4EpOSm4Sq1BrWts3iga7jL84hZ+SIEsdXHwq42933gH2SqDwd/oT8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="402222266"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="402222266"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 04:19:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="733795487"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="733795487"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.41])
 ([10.213.5.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 04:19:18 -0800
Message-ID: <56f8240e-39c5-910c-c090-0ff0f8d614df@intel.com>
Date: Fri, 2 Dec 2022 13:19:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 John Harrison <john.c.harrison@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221128165209.353706-1-andrzej.hajda@intel.com>
 <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
 <0846a17b-9562-0592-003a-4336fcac8f51@intel.com>
 <394f6232-50bf-1344-8165-ff6abf3b9323@linux.intel.com>
 <c0bb381e-43d2-3af9-0ada-2bc60027a4f5@intel.com>
 <fdabe479-b063-e6d5-0a1e-e2d3cebb705f@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <fdabe479-b063-e6d5-0a1e-e2d3cebb705f@linux.intel.com>
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



On 02.12.2022 10:14, Tvrtko Ursulin wrote:
>
> On 01/12/2022 16:36, Andrzej Hajda wrote:
>> On 01.12.2022 11:28, Tvrtko Ursulin wrote:
>>>
>>> On 01/12/2022 00:22, John Harrison wrote:
>>>> On 11/29/2022 00:43, Tvrtko Ursulin wrote:
>>>>> On 28/11/2022 16:52, Andrzej Hajda wrote:
>>>>>> In case context is exiting preempt_timeout_ms is used for timeout,
>>>>>> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it 
>>>>>> increases
>>>>>> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
>>>>>>
>>>>>> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute 
>>>>>> w/a for GuC submission")
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>> ---
>>>>>> Hi all,
>>>>>>
>>>>>> I am not sure what is expected solution here, and if my patch 
>>>>>> does not
>>>>>> actually reverts intentions of patch d7a8680ec9fb21. Feel free to 
>>>>>> propose
>>>>>> something better.
>>>>>> Other alternative would be to increase t/o in IGT tests, but I am 
>>>>>> not sure
>>>>>> if this is good direction.
>>>>>
>>>>> Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: 
>>>>> Make the heartbeat play nice with long pre-emption timeouts") that 
>>>>> actually breaks things? (If IGT modifies the preempt timeout the 
>>>>> heartbeat extension will not work as intended.)
>>>>>
>>>>> If so, I think we agreed during review that was a weakness which 
>>>>> needs to be addressed, but I would need to re-read the old threads 
>>>>> to remember what was the plan. Regardless what it was it may be 
>>>>> time is now to continue with those improvements.
>>>>>
>>>> What is the actual issue? Just that closing contexts are taking 
>>>> forever to actually close? That would be the whole point of the 
>>>> 'context_is_exiting' patch. Which I still totally disagree with.
>>>>
>>>> If the context is being closed 'gracefully' and it is intended that 
>>>> it should be allowed time to pre-empt without being killed via an 
>>>> engine reset then the 7.5s delay is required. That is the 
>>>> officially agreed upon timeout to allow compute capable contexts to 
>>>> reach a pre-emption point before they should be killed. If an IGT 
>>>> is failing because it enforces a shorter timeout then the IGT needs 
>>>> to be updated to account for the fact that i915 has to support slow 
>>>> compute workloads.
>>>>
>>>> If the context is being closed 'forcefully' and should be killed 
>>>> immediately then you should be using the 'BANNED_PREEMPT_TIMEOUT' 
>>>> value not the sysfs/config value.
>>>>
>>>> Regarding heartbeats...
>>>>
>>>> The heartbeat period is 2.5s. But there are up to five heartbeat 
>>>> periods between the heartbeat starting and it declaring a hang. The 
>>>> patch you mention also introduced a check on the pre-emption 
>>>> timeout when the last period starts. If the pre-emption timeout is 
>>>> longer than the heartbeat period then the last period is extended 
>>>> to guarantee that a full pre-emption time is granted before 
>>>> declaring the hang.
>>>>
>>>> Are you saying that a heartbeat timeout is occurring and killing 
>>>> the system? Or are you just worried that something doesn't align 
>>>> correctly?
>>>
>>> I leave this to Andrzej since I am not the one debugging this. I 
>>> just glanced over the IGT and saw that there's code in there which 
>>> sets both the preempt timeout and heartbeat interval to non-default 
>>> values. And then I remembered this:
>>
>> The test is gem_ctx_persistence@many-contexts. It does not modify 
>> sysfs timeouts, but it assumes 1sec is enough to wait for exiting 
>> context (no-preemption). It works with bcs, vcs, vecs, but fails on 
>> rcs since it has
>> timeout set to 7.5sec (btw it works with GuC submissions enabled). It 
>> seemed to me somehow inconsistent, but if this is how it should work
>> I will just adjust the test.
>
> This looks odd then. That test is using non-preemptable spinners and 
> AFAICT it keeps submitting them for 30s, across all engines, and then 
> it stops and waits for one second for all of them to exit.
>
> With the 7.5 preempt timeout I'd expect test should fail both with GuC 
> and execlists.

OK, my claim about working with GuC was not verified enough, just one 
testing machine.

>
> What should happen is that every context is marked as "exiting" and is 
> revoked. On the next scheduling event they would all be dropped.
>
> So I think two questions - how did increase of preempt timeout to 7.5s 
> pass CI - is the failure sporadic for instance?

After some data mining on cibuglog from last month I can say results are 
mostly consistent per machine.
On most machines it always passes.
Always fails on shard-tgl*, shard-rkl-{1,2,3,4,6} (but on shard-rkl-5 it 
always passes), fi-adl-ddr5, fi-kbl-soraka, fi-rkl-11600.
On re-dg2-{11,12,15} results are inconsistent - some passes, some fails.

>
> Second question - you are saying with GuC test always passes - how 
> does GuC manages to revoke a non-preemptible spinner in less than one 
> second if preempt timeout is 7.5s.. colour me confused.
>
> Anyway those questions are secondary.. Fix here I think pretty 
> obviously is for many_contexts() to fetch the preempt timeout from 
> sysfs and allow for that much time (plus a safety factor). Use the 
> longest timeout between all engines since all are submitted to.

With increasing to 10 seconds the issue disappeared on two RIL machines 
used for tests, but I will post the patch on try-bot check other 
machines as well.

One more thing, to be sure. As I understand reset due to stopped 
heartbeat, should not happen for 7.5sec preemption timeouts, if test do 
not adjust any timeouts? If yes then there is sth wrong anyway.
See sample logs from dg2 showing what happens: pass[1], fail[2].
In both cases there is 22 "heartbeat * not ticking" log lines, all on 
7.5s preemption_timeouts (rcs, ccs).

[1]: 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/re-dg2-12/igt@gem_ctx_persistence@many-contexts.html
[2]: 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/re-dg2-12/igt@gem_ctx_persistence@many-contexts.html

Regards
Andrzej


>
> Regards,
>
> Tvrtko
>
>>
>> Regards
>> Andrzej
>>
>>
>>>
>>> next_heartbeat():
>>> ...
>>>          /*
>>>           * FIXME: The final period extension is disabled if the 
>>> period has been
>>>           * modified from the default. This is to prevent issues 
>>> with certain
>>>           * selftests which override the value and expect specific 
>>> behaviour.
>>>           * Once the selftests have been updated to either cope with 
>>> variable
>>>           * heartbeat periods (or to override the pre-emption 
>>> timeout as well,
>>>           * or just to add a selftest specific override of the 
>>> extension), the
>>>           * generic override can be removed.
>>>           */
>>>          if (rq && rq->sched.attr.priority >= I915_PRIORITY_BARRIER &&
>>>              delay == engine->defaults.heartbeat_interval_ms) {
>>>
>>> Which then wouldn't dtrt with last heartbeat pulse extensions, if 
>>> the IGT would be relying on that. Don't know, just pointing out to 
>>> check and see if this FIXME needs to be prioritised.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>

