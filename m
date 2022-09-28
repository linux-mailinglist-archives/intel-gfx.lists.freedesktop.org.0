Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3753A5ED5D7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 09:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2395010E2CB;
	Wed, 28 Sep 2022 07:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2209D10E2CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 07:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664349617; x=1695885617;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uh6t/ANd4e9pDAReGzg0pV2gb1r50rLyhufIHnb+vuM=;
 b=AOtW66VkpIemil+f7lrU+y5p9dHe5rEZmMEIJPFgEnvudEGr5bK4zvMU
 Z/mVb5f0JzieipoZZDtgyIkLMrfZndv2jbr6Bgx69BYOEM0JoxDmc/8bQ
 KU+fKqPYYdd7HYGw8UiGaqjy9aWkzmQA7TgLZSapZSPEe1OI8TZK0Rge0
 wDF7TjGEUrJkzBsLutaqv0lbUBsvvcJ/d8qvOJ5N4WU8dl1u6chNN5Mmv
 CQIMq3mKGSgdS7dvK/GwDcBZ6rv0s5ALt+Ws9BmuKGoS4+1NwLvzACv+F
 TNPc43T1kJgB/kILOATbGAOkijCXzmEnUb8CgN7BRhVI+P8n9846W5Tje Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="301506372"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="301506372"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 00:20:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599474054"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="599474054"
Received: from burkerob-mobl1.ger.corp.intel.com (HELO [10.213.224.108])
 ([10.213.224.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 00:19:59 -0700
Message-ID: <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
Date: Wed, 28 Sep 2022 08:19:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
 <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/09/2022 22:36, Ceraolo Spurio, Daniele wrote:
> 
> 
> On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>>
>> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>>
>>>
>>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>>
>>>>
>>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>>> Hi Andrzej,
>>>>>
>>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>>> Capturing error state is time consuming (up to 350ms on DG2), so 
>>>>>> it should
>>>>>> be avoided if possible. Context reset triggered by context removal 
>>>>>> is a
>>>>>> good example.
>>>>>> With this patch multiple igt tests will not timeout and should run 
>>>>>> faster.
>>>>>>
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>> fine for me:
>>>>>
>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>
>>>>> Just to be on the safe side, can we also have the ack from any of
>>>>> the GuC folks? Daniele, John?
>>>>>
>>>>> Andi
>>>>>
>>>>>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct 
>>>>>> intel_guc *guc,
>>>>>>       trace_intel_context_reset(ce);
>>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>>> -        capture_error_state(guc, ce);
>>>>>> +        if (!intel_context_is_exiting(ce))
>>>>>> +            capture_error_state(guc, ce);
>>
>> I am not sure here - if we have a persistent context which caused a 
>> GPU hang I'd expect we'd still want error capture.
>>
>> What causes the reset in the affected IGTs? Always preemption timeout?
>>
>>>>>>           guc_context_replay(ce);
>>>>
>>>> You definitely don't want to replay requests of a context that is 
>>>> going away.
>>>
>>> My intention was to just avoid error capture, but that's even better, 
>>> only condition change:
>>> -        if (likely(!intel_context_is_banned(ce))) {
>>> +       if (likely(intel_context_is_schedulable(ce)))  {
>>
>> Yes that helper was intended to be used for contexts which should not 
>> be scheduled post exit or ban.
>>
>> Daniele - you say there are some misses in the GuC backend. Should 
>> most, or even all in intel_guc_submission.c be converted to use 
>> intel_context_is_schedulable? My idea indeed was that "ban" should be 
>> a level up from the backends. Backend should only distinguish between 
>> "should I run this or not", and not the reason.
> 
> I think that all of them should be updated, but I'd like Matt B to 
> confirm as he's more familiar with the code than me.

Right, that sounds plausible to me as well.

One thing I forgot to mention - the only place where backend can care 
between "schedulable" and "banned" is when it picks the preempt timeout 
for non-schedulable contexts. This is to only apply the strict 1ms to 
banned (so bad or naught contexts), while the ones which are exiting 
cleanly get the full preempt timeout as otherwise configured. This 
solves the ugly user experience quirk where GPU resets/errors were 
logged upon exit/Ctrl-C of a well behaving application (using 
non-persistent contexts). Hopefully GuC can match that behaviour so 
customers stay happy.

Regards,

Tvrtko
