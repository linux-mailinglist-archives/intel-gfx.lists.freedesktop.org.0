Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBFC640300
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 10:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E9910E1A4;
	Fri,  2 Dec 2022 09:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FE510E1AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 09:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669972469; x=1701508469;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/SsQzId0Wzk0AU5eVAxw/wh34DvyqESppvU2zIZnsIE=;
 b=C091JnkiYW2pNuX+l9jEUP6HyFHJQgWVvmfmCKG+TKSHwaXHGt2vAm4u
 xzvs7DkbTEiIEy3ERhPn+LGm3RJLJRA7KxYLuCOWutJKXRrLWLQqxbwEw
 YNzN7LWv+00t9y37ZjhbID0Kbgx57dYsC0VZ9lgvIX5r2F0hmxER6xot9
 GNAf9jVE757PH54bumR0RJEai5cb/7MQY73ispVpGa8/w/W+zrLLPFboQ
 jzPS++J1KDgqFGB8TPgaGyMTKxviY6u5XUGPhi2GMYFmLRamxw6t24qZ8
 SFHhMLbyMRAoN9NAg4UeFZbHxI5+e6IEjBCOxahv0IwE3/1wiYbEqBHcx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="315942463"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="315942463"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:14:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="890082545"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="890082545"
Received: from macematx-mobl1.ger.corp.intel.com (HELO [10.213.211.34])
 ([10.213.211.34])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:14:27 -0800
Message-ID: <fdabe479-b063-e6d5-0a1e-e2d3cebb705f@linux.intel.com>
Date: Fri, 2 Dec 2022 09:14:25 +0000
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c0bb381e-43d2-3af9-0ada-2bc60027a4f5@intel.com>
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


On 01/12/2022 16:36, Andrzej Hajda wrote:
> On 01.12.2022 11:28, Tvrtko Ursulin wrote:
>>
>> On 01/12/2022 00:22, John Harrison wrote:
>>> On 11/29/2022 00:43, Tvrtko Ursulin wrote:
>>>> On 28/11/2022 16:52, Andrzej Hajda wrote:
>>>>> In case context is exiting preempt_timeout_ms is used for timeout,
>>>>> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it 
>>>>> increases
>>>>> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
>>>>>
>>>>> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute w/a 
>>>>> for GuC submission")
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>> ---
>>>>> Hi all,
>>>>>
>>>>> I am not sure what is expected solution here, and if my patch does not
>>>>> actually reverts intentions of patch d7a8680ec9fb21. Feel free to 
>>>>> propose
>>>>> something better.
>>>>> Other alternative would be to increase t/o in IGT tests, but I am 
>>>>> not sure
>>>>> if this is good direction.
>>>>
>>>> Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: 
>>>> Make the heartbeat play nice with long pre-emption timeouts") that 
>>>> actually breaks things? (If IGT modifies the preempt timeout the 
>>>> heartbeat extension will not work as intended.)
>>>>
>>>> If so, I think we agreed during review that was a weakness which 
>>>> needs to be addressed, but I would need to re-read the old threads 
>>>> to remember what was the plan. Regardless what it was it may be time 
>>>> is now to continue with those improvements.
>>>>
>>> What is the actual issue? Just that closing contexts are taking 
>>> forever to actually close? That would be the whole point of the 
>>> 'context_is_exiting' patch. Which I still totally disagree with.
>>>
>>> If the context is being closed 'gracefully' and it is intended that 
>>> it should be allowed time to pre-empt without being killed via an 
>>> engine reset then the 7.5s delay is required. That is the officially 
>>> agreed upon timeout to allow compute capable contexts to reach a 
>>> pre-emption point before they should be killed. If an IGT is failing 
>>> because it enforces a shorter timeout then the IGT needs to be 
>>> updated to account for the fact that i915 has to support slow compute 
>>> workloads.
>>>
>>> If the context is being closed 'forcefully' and should be killed 
>>> immediately then you should be using the 'BANNED_PREEMPT_TIMEOUT' 
>>> value not the sysfs/config value.
>>>
>>> Regarding heartbeats...
>>>
>>> The heartbeat period is 2.5s. But there are up to five heartbeat 
>>> periods between the heartbeat starting and it declaring a hang. The 
>>> patch you mention also introduced a check on the pre-emption timeout 
>>> when the last period starts. If the pre-emption timeout is longer 
>>> than the heartbeat period then the last period is extended to 
>>> guarantee that a full pre-emption time is granted before declaring 
>>> the hang.
>>>
>>> Are you saying that a heartbeat timeout is occurring and killing the 
>>> system? Or are you just worried that something doesn't align correctly?
>>
>> I leave this to Andrzej since I am not the one debugging this. I just 
>> glanced over the IGT and saw that there's code in there which sets 
>> both the preempt timeout and heartbeat interval to non-default values. 
>> And then I remembered this:
> 
> The test is gem_ctx_persistence@many-contexts. It does not modify sysfs 
> timeouts, but it assumes 1sec is enough to wait for exiting context 
> (no-preemption). It works with bcs, vcs, vecs, but fails on rcs since it 
> has
> timeout set to 7.5sec (btw it works with GuC submissions enabled). It 
> seemed to me somehow inconsistent, but if this is how it should work
> I will just adjust the test.

This looks odd then. That test is using non-preemptable spinners and 
AFAICT it keeps submitting them for 30s, across all engines, and then it 
stops and waits for one second for all of them to exit.

With the 7.5 preempt timeout I'd expect test should fail both with GuC 
and execlists.

What should happen is that every context is marked as "exiting" and is 
revoked. On the next scheduling event they would all be dropped.

So I think two questions - how did increase of preempt timeout to 7.5s 
pass CI - is the failure sporadic for instance?

Second question - you are saying with GuC test always passes - how does 
GuC manages to revoke a non-preemptible spinner in less than one second 
if preempt timeout is 7.5s.. colour me confused.

Anyway those questions are secondary.. Fix here I think pretty obviously 
is for many_contexts() to fetch the preempt timeout from sysfs and allow 
for that much time (plus a safety factor). Use the longest timeout 
between all engines since all are submitted to.

Regards,

Tvrtko

> 
> Regards
> Andrzej
> 
> 
>>
>> next_heartbeat():
>> ...
>>          /*
>>           * FIXME: The final period extension is disabled if the 
>> period has been
>>           * modified from the default. This is to prevent issues with 
>> certain
>>           * selftests which override the value and expect specific 
>> behaviour.
>>           * Once the selftests have been updated to either cope with 
>> variable
>>           * heartbeat periods (or to override the pre-emption timeout 
>> as well,
>>           * or just to add a selftest specific override of the 
>> extension), the
>>           * generic override can be removed.
>>           */
>>          if (rq && rq->sched.attr.priority >= I915_PRIORITY_BARRIER &&
>>              delay == engine->defaults.heartbeat_interval_ms) {
>>
>> Which then wouldn't dtrt with last heartbeat pulse extensions, if the 
>> IGT would be relying on that. Don't know, just pointing out to check 
>> and see if this FIXME needs to be prioritised.
>>
>> Regards,
>>
>> Tvrtko
> 
