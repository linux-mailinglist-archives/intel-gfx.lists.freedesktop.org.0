Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80B85EF39E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 12:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF6610E06F;
	Thu, 29 Sep 2022 10:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A137210E06F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 10:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664448013; x=1695984013;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EioTVs1WISYeEUAdjhIPghvum+4guFurifjr1vtIglQ=;
 b=N0uRoLtLVKREcmMA+kllgwvTEYfCVHmKA2soMt/bHsO1y7NDLo/td6B2
 IiKzmR3WD7hI0iWePgmwg0Z5ypNwRg50/eOkD+UYgjUw3SID55lOMEM0O
 SvAIImDn7/hNeUg8mq6pbFMho5zMuu+pgD+HeKIXl07sxymD9ZoNkyKqZ
 UfSji++PyXVYr0jq/eNoNPpMTgQ8tyjrhsQfJqmvI45qgpXeOTmm+yLfx
 bM6LQLp4EmuE2W/ij28VfnYwV8bpxIMqNs3iNXYuQQZ7BroyoemsTaA7H
 7rXysj+udqLOB8zrHr+BkrMCBrkipiKIkSU9GevheJ+apNoqalwnNJIZV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="301832375"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="301832375"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 03:40:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655504805"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655504805"
Received: from aknyaze1-mobl.ger.corp.intel.com (HELO [10.213.226.16])
 ([10.213.226.16])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 03:40:03 -0700
Message-ID: <85255d26-bdd0-a9ab-7d6a-347e616ff279@linux.intel.com>
Date: Thu, 29 Sep 2022 11:40:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 John Harrison <john.c.harrison@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
 <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
 <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
 <e4200a76-f7e0-106e-cff9-5e58f27b40da@intel.com>
 <92edfe5c-17f9-9f82-7df4-d653c7899765@linux.intel.com>
 <a6c8ae15-c84d-0d8b-e6bf-a1e4a2914b1f@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <a6c8ae15-c84d-0d8b-e6bf-a1e4a2914b1f@intel.com>
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


On 29/09/2022 10:49, Andrzej Hajda wrote:
> On 29.09.2022 10:22, Tvrtko Ursulin wrote:
>> On 28/09/2022 19:27, John Harrison wrote:
>>> On 9/28/2022 00:19, Tvrtko Ursulin wrote:
>>>> On 27/09/2022 22:36, Ceraolo Spurio, Daniele wrote:
>>>>> On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>>>>>> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>>>>>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>>>>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>>>>>>> Hi Andrzej,
>>>>>>>>>
>>>>>>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>>>>>>> Capturing error state is time consuming (up to 350ms on DG2), 
>>>>>>>>>> so it should
>>>>>>>>>> be avoided if possible. Context reset triggered by context 
>>>>>>>>>> removal is a
>>>>>>>>>> good example.
>>>>>>>>>> With this patch multiple igt tests will not timeout and should 
>>>>>>>>>> run faster.
>>>>>>>>>>
>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>>>>> fine for me:
>>>>>>>>>
>>>>>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>>>>>
>>>>>>>>> Just to be on the safe side, can we also have the ack from any of
>>>>>>>>> the GuC folks? Daniele, John?
>>>>>>>>>
>>>>>>>>> Andi
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>> ---
>>>>>>>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>> @@ -4425,7 +4425,8 @@ static void 
>>>>>>>>>> guc_handle_context_reset(struct intel_guc *guc,
>>>>>>>>>>       trace_intel_context_reset(ce);
>>>>>>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>>>>>>> -        capture_error_state(guc, ce);
>>>>>>>>>> +        if (!intel_context_is_exiting(ce))
>>>>>>>>>> +            capture_error_state(guc, ce);
>>>>>>
>>>>>> I am not sure here - if we have a persistent context which caused 
>>>>>> a GPU hang I'd expect we'd still want error capture.
>>>>>>
>>>>>> What causes the reset in the affected IGTs? Always preemption 
>>>>>> timeout?
>>>>>>
>>>>>>>>>> guc_context_replay(ce);
>>>>>>>>
>>>>>>>> You definitely don't want to replay requests of a context that 
>>>>>>>> is going away.
>>>>>>>
>>>>>>> My intention was to just avoid error capture, but that's even 
>>>>>>> better, only condition change:
>>>>>>> -        if (likely(!intel_context_is_banned(ce))) {
>>>>>>> +       if (likely(intel_context_is_schedulable(ce)))  {
>>>>>>
>>>>>> Yes that helper was intended to be used for contexts which should 
>>>>>> not be scheduled post exit or ban.
>>>>>>
>>>>>> Daniele - you say there are some misses in the GuC backend. Should 
>>>>>> most, or even all in intel_guc_submission.c be converted to use 
>>>>>> intel_context_is_schedulable? My idea indeed was that "ban" should 
>>>>>> be a level up from the backends. Backend should only distinguish 
>>>>>> between "should I run this or not", and not the reason.
>>>>>
>>>>> I think that all of them should be updated, but I'd like Matt B to 
>>>>> confirm as he's more familiar with the code than me.
>>>>
>>>> Right, that sounds plausible to me as well.
>>>>
>>>> One thing I forgot to mention - the only place where backend can 
>>>> care between "schedulable" and "banned" is when it picks the preempt 
>>>> timeout for non-schedulable contexts. This is to only apply the 
>>>> strict 1ms to banned (so bad or naught contexts), while the ones 
>>>> which are exiting cleanly get the full preempt timeout as otherwise 
>>>> configured. This solves the ugly user experience quirk where GPU 
>>>> resets/errors were logged upon exit/Ctrl-C of a well behaving 
>>>> application (using non-persistent contexts). Hopefully GuC can match 
>>>> that behaviour so customers stay happy.
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>
>>> The whole revoke vs ban thing seems broken to me.
>>>
>>> First of all, if the user hits Ctrl+C we need to kill the context off 
>>> immediately. That is a fundamental customer requirement. Render and 
>>> compute engines have a 7.5s pre-emption timeout. The user should not 
>>> have to wait 7.5s for a context to be removed from the system when 
>>> they have explicitly killed it themselves. Even the regular timeout 
>>> of 640ms is borderline a long time to wait. And note that there is an 
>>> ongoing request/requirement to increase that to 1900ms.
>>>
>>> Under what circumstances would a user expect anything sensible to 
>>> happen after a Ctrl+C in terms of things finishing their rendering 
>>> and display nice pretty images? They killed the app. They want it 
>>> dead. We should be getting it off the hardware as quickly as 
>>> possible. If you are really concerned about resets causing collateral 
>>> damage then maybe bump the termination timeout from 1ms up to 10ms, 
>>> maybe at most 100ms. If an app is 'well behaved' then it should 
>>> cleanly exit within 10ms. But if it is bad (which is almost certainly 
>>> the case if the user is manually and explicitly killing it) then it 
>>> needs to be killed because it is not going to gracefully exit.
>>
>> Right.. I had it like that initially (lower timeout - I think 20ms or 
>> so, patch history on the mailing list would know for sure), but then 
>> simplified it after review feedback to avoid adding another timeout 
>> value.
>>
>> So it's not at all about any expectation that something should 
>> actually finish to any sort of completion/success. It is primarily 
>> about not logging an error message when there is no error. Thing to 
>> keep in mind is that error messages are a big deal in some cultures. 
>> In addition to that, avoiding needless engine resets is a good thing 
>> as well.
>>
>> Previously the execlists backend was over eager and only allowed for 
>> 1ms for such contexts to exit. If the context was banned sure - that 
>> means it was a bad context which was causing many hangs already. But 
>> if the context was a clean one I argue there is no point in doing an 
>> engine reset.
>>
>> So if you want, I think it is okay to re-introduce a secondary timeout.
>>
>> Or if you have an idea on how to avoid the error messages / GPU resets 
>> when "friendly" contexts exit in some other way, that is also 
>> something to discuss.
>>
>>> Secondly, the whole persistence thing is a total mess, completely 
>>> broken and intended to be massively simplified. See the internal task 
>>> for it. In short, the plan is that all contexts will be immediately 
>>> killed when the last DRM file handle is closed. Persistence is only 
>>> valid between the time the per context file handle is closed and the 
>>> time the master DRM handle is closed. Whereas, non-persistent 
>>> contexts get killed as soon as the per context handle is closed. 
>>> There is absolutely no connection to heartbeats or other irrelevant 
>>> operations.
>>
>> The change we are discussing is not about persistence, but for the 
>> persistence itself - I am not sure it is completely broken and if, or 
>> when, the internal task will result with anything being attempted. In 
>> the meantime we had unhappy customers for more than a year. So do we 
>> tell them "please wait for a few years more until some internal task 
>> with no clear timeline or anyone assigned maybe gets looked at"?
>>
>>> So in my view, the best option is to revert the ban vs revoke patch. 
>>> It is creating bugs. It is making persistence more complex not 
>>> simpler. It harms the user experience.
>>
>> I am not aware of the bugs, even less so that it is harming user 
>> experience!?
>>
>> Bugs are limited to the GuC backend or in general? My CI runs were 
>> clean so maybe test cases are lacking. Is it just a case of 
>> s/intel_context_is_banned/intel_context_is_schedulable/ in there to 
>> fix it?
>>
>> Again, the change was not about persistence. It is the opposite - 
>> allowing non-persistent contexts to exit cleanly.
>>
>>> If the original problem was simply that error captures were being 
>>> done on Ctrl+C then the fix is simple. Don't capture for a banned 
>>> context. There is no need for all the rest of the revoke patch.
>>
>> Error capture was not part of the original story so it may be a 
>> completely orthogonal topic that we are discussing it in this thread.
> 
> Wouldn't be good then to separate these two issues: 
> banned/exiting/schedulable handling and error capturing of exiting context.
> This patch handles only the latter, and as I understand there is no big 
> controversy that we de not need capture errors for exiting contexts.
> If yes, can we ack/merge this patch, to make CI happy and continue 
> discussion on the former.

Right, question is if the code in guc_handle_context_reset shouldn't be changed to:

  	if (likely(!intel_context_is_exiting(ce))) {
		capture_error_state(guc, ce);
  		guc_context_replay(ce);
  	} else {

And if that should be part of patch which changes a few more instances of that same check.

But you wrote that doesn't work? And then Daniele said he thinks it is because revoke is not called when hangcheck is disabled and GuC backend gets confused? If I got the conversation right..

I wonder if that means equivalent of execlists:

         if (unlikely(intel_context_is_closed(ce) &&
                      !intel_engine_has_heartbeat(engine)))
                intel_context_set_exiting(ce);

Is needed somewhere in the GuC backend. Which with execlists skips over the context which is no longer schedulable.

But I don't understand why testing did not pick up that miss, or the miss with guc_context_replay on an exiting context. Or where exactly to put the extra handling in the GuC backend. Perhaps it isn't possible in which case we could have an ugly solution where for GuC we do something special in kill_engines() if hangcheck is disabled. Maybe add and call a new helper like:

intel_context_exit_nohangcheck()
{
	bool ret = intel_context_set_exiting(ce);

	if (!ret && intel_engine_uses_guc(ce->engine))
		intel_context_ban(ce, NULL);

	return ret;
}

Too ugly?

Regards,

Tvrtko
