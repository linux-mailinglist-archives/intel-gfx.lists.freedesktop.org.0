Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0383A4C7259
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 18:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E77910E706;
	Mon, 28 Feb 2022 17:15:24 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE74710E187;
 Mon, 28 Feb 2022 17:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646068522; x=1677604522;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kkcd9HnKF2UgkQnPs2beKC96K2edTH6mc8JdB1ThZQ4=;
 b=bQGqYVrQw8TQeaMWtqGD2ClXyL6GdpO9sPgXz94NYiwLfkZv7SkqHKEJ
 wql+LIZrF/NdW8wOVHEzWPUZrW/80Rzecux6rMJRYFCbfReHjSWGmzQyb
 WoPskt2Or01gZBIxNA4v8uz0AkdZrIJchkpa9IbkCGLoCHKxrw7m7XISd
 sV+6Qg1BWhvjKO+7unwniZ3EAF0ZmuYIr4mTSIsfoP2KKkpvw13ep7lDs
 y76oLHnS+GvIbEJ0egPJASD/q2eu/YKx5zDJcSWlARJKqTXZ6RP/m+dHF
 nEYals1NHU8dXJkdEI+H617CezSRSveetIpPgCk3V+WMuX+BJVxZJu6BE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="313652576"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="313652576"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 09:12:56 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="708716870"
Received: from jpdecker-mobl3.ger.corp.intel.com (HELO [10.213.235.138])
 ([10.213.235.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 09:12:55 -0800
Message-ID: <96b7ce40-12f1-9ca0-1c5a-323d63dd8153@linux.intel.com>
Date: Mon, 28 Feb 2022 17:12:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>, Intel-GFX@Lists.FreeDesktop.Org
References: <20220218213307.1338478-1-John.C.Harrison@Intel.com>
 <20220218213307.1338478-3-John.C.Harrison@Intel.com>
 <2a486991-1bfd-9b23-0b43-9173d17b7e13@linux.intel.com>
 <e95e8710-8410-2869-dec1-7f7a9e9a74fb@intel.com>
 <18205069-1210-745f-3bcc-2eddb0d17da1@linux.intel.com>
 <94e9889d-d71a-1428-516d-2928807cbf43@intel.com>
 <6ee75384-2cf0-6b34-ed54-3c7dc9ca31a3@linux.intel.com>
 <d6624800-87b0-f992-bc83-868744e2839c@intel.com>
 <ed505a8e-2d2b-135b-aaab-7e4a0befd5ba@linux.intel.com>
 <f6c70184-121e-9a2b-6bbc-54a67af293cc@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f6c70184-121e-9a2b-6bbc-54a67af293cc@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Make the heartbeat play
 nice with long pre-emption timeouts
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 25/02/2022 18:48, John Harrison wrote:
> On 2/25/2022 10:14, Tvrtko Ursulin wrote:
>>
>> I'll try to simplify the discussion here:
>>
>> On 24/02/2022 19:45, John Harrison wrote:
>>> On 2/24/2022 03:41, Tvrtko Ursulin wrote:
>>>> On 23/02/2022 20:00, John Harrison wrote:
>>>>> On 2/23/2022 05:58, Tvrtko Ursulin wrote:
>>>>>> On 23/02/2022 02:45, John Harrison wrote:
>>>>>>> On 2/22/2022 03:19, Tvrtko Ursulin wrote:
>>>>>>>> On 18/02/2022 21:33, John.C.Harrison@Intel.com wrote:
>>>>>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>>>
>>>>>>>>> Compute workloads are inherantly not pre-emptible for long 
>>>>>>>>> periods on
>>>>>>>>> current hardware. As a workaround for this, the pre-emption 
>>>>>>>>> timeout
>>>>>>>>> for compute capable engines was disabled. This is undesirable 
>>>>>>>>> with GuC
>>>>>>>>> submission as it prevents per engine reset of hung contexts. 
>>>>>>>>> Hence the
>>>>>>>>> next patch will re-enable the timeout but bumped up by an order of
>>>>>>>>> magnititude.
>>>>>>>>
>>>>>>>> (Some typos above.)
>>>>>>> I'm spotting 'inherently' but not anything else.
>>>>>>
>>>>>> Magnititude! O;)
>>>>> Doh!
>>>>>
>>>>> [snip]
>>>>>
>>>>>>> Whereas, bumping all heartbeat periods to be greater than the 
>>>>>>> pre-emption timeout is wasteful and unnecessary. That leads to a 
>>>>>>> total heartbeat time of about a minute. Which is a very long time 
>>>>>>> to wait for a hang to be detected and recovered. Especially when 
>>>>>>> the official limit on a context responding to an 'are you dead' 
>>>>>>> query is only 7.5 seconds.
>>>>>>
>>>>>> Not sure how did you get one minute?
>>>>> 7.5 * 2 (to be safe) = 15. 15 * 5 (number of heartbeat periods) = 
>>>>> 75 => 1 minute 15 seconds
>>>>>
>>>>> Even ignoring any safety factor and just going with 7.5 * 5 still 
>>>>> gets you to 37.5 seconds which is over a half a minute and likely 
>>>>> to race.
>>>>
>>>> Ah because my starting point is there should be no preempt timeout = 
>>>> heartbeat * 3, I just think that's too ugly.
>>> Then complain at the hardware designers to give us mid-thread 
>>> pre-emption back. The heartbeat is only one source of pre-emption 
>>> events. For example, a user can be running multiple contexts in 
>>> parallel and expecting them to time slice on a single engine. Or 
>>> maybe a user is just running one compute task in the background but 
>>> is doing render work in the foreground. Etc.
>>>
>>> There was a reason the original hack was to disable pre-emption 
>>> rather than increase the heartbeat. This is simply a slightly less 
>>> ugly version of the same hack. And unfortunately, the basic idea of 
>>> the hack is non-negotiable.
>>>
>>> As per other comments, 'tP(RCS) = tH *3' or 'tP(RCS) = tP(default) * 
>>> 12' or 'tP(RCS) = 7500' are the available options. Given that the 
>>> heartbeat is the ever present hard limit, it seems most plausible to 
>>> base the hack on that. Any of the others works, though. Although I 
>>> think a explicit hardcoded value is the most ugly. I guess the other 
>>> option is to add CONFIG_DRM_I915_PREEMPT_TIMEOUT_COMPUTE and default 
>>> that to 7500.
>>>
>>> Take your pick. But 640ms is not allowed.
>>>
>>>>
>>>>>> Regardless, crux of argument was to avoid GuC engine reset and 
>>>>>> heartbeat reset racing with each other, and to do that by 
>>>>>> considering the preempt timeout with the heartbeat interval. I was 
>>>>>> thinking about this scenario in this series:
>>>>>>
>>>>>> [Please use fixed width font and no line wrap to view.]
>>>>>>
>>>>>> A)
>>>>>>
>>>>>> tP = preempt timeout
>>>>>> tH = hearbeat interval
>>>>>>
>>>>>> tP = 3 * tH
>>>>>>
>>>>>> 1) Background load = I915_PRIORITY_DISPLAY
>>>>>>
>>>>>> <-- [tH] --> Pulse1 <-- [tH] --> Pulse2 <-- [tH] --> Pulse3 <---- 
>>>>>> [2 * tH] ----> FULL RESET
>>>>>>                                                        |
>>>>>>                                                        \- 
>>>>>> preemption triggered, tP = 3 * tH ------\
>>>>>> \-> preempt timeout would hit here
>>>>>>
>>>>>> Here we have collateral damage due full reset, since we can't tell 
>>>>>> GuC to reset just one engine and we fudged tP just to "account" 
>>>>>> for heartbeats.
>>>>> You are missing the whole point of the patch series which is that 
>>>>> the last heartbeat period is '2 * tP' not '2 * tH'.
>>>>> +        longer = READ_ONCE(engine->props.preempt_timeout_ms) * 2;
>>>>>
>>>>> By making the last period double the pre-emption timeout, it is 
>>>>> guaranteed that the FULL RESET stage cannot be hit before the 
>>>>> hardware has attempted and timed-out on at least one pre-emption.
>>>>
>>>> Oh well :) that probably means the overall scheme is too odd for me. 
>>>> tp = 3tH and last pulse after 2tP I mean.
>>> To be accurate, it is 'tP(RCS) = 3 * tH(default); tH(final) = 
>>> tP(current) * 2;'. Seems fairly straight forward to me. It's not a 
>>> recursive definition or anything like that. It gives us a total 
>>> heartbeat timeout that is close to the original version but still 
>>> allows at least one pre-emption event.
>>>
>>>>
>>>>> [snip]
>>>>>
>>>>>
>>>>>> <-- [tH] --> Pulse1 <-- [tH] --> Pulse2 <-- [tH] --> Pulse3 <---- 
>>>>>> [2 * tH] ----> full reset would be here
>>>>>>                |
>>>>>>                \- preemption triggered, tP = 3 * tH ----------------\
>>>>>> \-> Preempt timeout reset
>>>>>>
>>>>>> Here is is kind of least worse, but question is why we fudged tP 
>>>>>> when it gives us nothing good in this case.
>>>>>>
>>>>> The point of fudging tP(RCS) is to give compute workloads longer to 
>>>>> reach a pre-emptible point (given that EU walkers are basically not 
>>>>> pre-emptible). The reason for doing the fudge is not connected to 
>>>>> the heartbeat at all. The fact that it causes problems for the 
>>>>> heartbeat is an undesired side effect.
>>>>>
>>>>> Note that the use of 'tP(RCS) = tH * 3' was just an arbitrary 
>>>>> calculation that gave us something that all interested parties were 
>>>>> vaguely happy with. It could just as easily be a fixed, hard coded 
>>>>> value of 7.5s but having it based on something configurable seemed 
>>>>> more sensible. The other option was 'tP(RCS) = tP * 12' but that 
>>>>> felt more arbitrary than basing it on the average heartbeat 
>>>>> timeout. As in, three heartbeat periods is about what a normal prio 
>>>>> task gets before it gets pre-empted by the heartbeat. So using that 
>>>>> for general purpose pre-emptions (e.g. time slicing between 
>>>>> multiple user apps) seems reasonable.
>>>>
>>>> I think the fact you say tP fudge is not related to heartbeats and 
>>>> then go to mention heartbeat even in the "formula" which uses no tH 
>>>> is saying something (at least that's how I read the 7.5s option). :)
>>> I said the tP fudge is not because of the heartbeat. It is obviously 
>>> related.
>>>
>>> As per comment above, the fudge factor is based on the heartbeat 
>>> because the heartbeat is the ultimate limit. But the *reason* for the 
>>> fudge fact has nothing to do with the heartbeat. It is required even 
>>> if heartbeats are disabled.
>>>
>>>>
>>>>>> B)
>>>>>>
>>>>>> Instead, my idea to account for preempt timeout when calculating 
>>>>>> when to schedule next hearbeat would look like this:
>>>>>>
>>>>>> First of all tP can be left at a large value unrelated to tH. Lets 
>>>>>> say tP = 640ms. tH stays 2.5s.
>>>>> 640ms is not 'large'. The requirement is either zero (disabled) or 
>>>>> region of 7.5s. The 640ms figure is the default for non-compute 
>>>>> engines. Anything that can run EUs needs to be 'huge'.
>>>>>
>>>>>
>>>>>>
>>>>>> 1) Background load = I915_PRIORITY_DISPLAY
>>>>>>
>>>>>> <-- [tH + tP] --> Pulse1 <-- [tH + tP] --> Pulse2 <-- [tH + tP] 
>>>>>> --> Pulse3 <-- [tH + tP] --> full reset would be here
>>>>> Sure, this works but each period is now 2.5 + 7.5 = 10s. The full 
>>>>> five periods is therefore 50s, which is practically a minute.
>>>>
>>>> No, in my proposal it is 3 * (2.5s + 640ms) =~ 9.3s.
>>> Not good enough. After 2.5s, we send a pulse. After a further 640ms 
>>> we perform an engine reset. That means your compute workload had only 
>>> 640ms after being told to pre-empt to reach a pre-emption point. That 
>>> won't work. It needs to be multiple seconds.
>>>
>>>>
>>>>> [snip]
>>>>>
>>>>>> Am I missing some requirement or you see another problem with this 
>>>>>> idea?
>>>>>>
>>>>>>>> On a related topic, if GuC engine resets stop working when 
>>>>>>>> preempt timeout is set to zero - I think we need to somehow let 
>>>>>>>> the user know if they try to tweak it via sysfs. Perhaps go as 
>>>>>>>> far as -EINVAL in GuC mode, if i915.reset has not explicitly 
>>>>>>>> disabled engine resets.
>>>>>>> Define 'stops working'. The definition of the sysfs interface is 
>>>>>>> that a value of zero disables pre-emption. If you don't have 
>>>>>>> pre-emption and your hang detection mechanism relies on 
>>>>>>> pre-emption then you don't have a hang detection mechanism 
>>>>>>> either. If the user really wants to allow 
>>>>>>
>>>>>> By stops working I meant that it stops working. :)
>>>>>>
>>>>>> With execlist one can disable preempt timeout and "stopped 
>>>>>> heartbeat" can still reset the stuck engine and so avoid 
>>>>>> collateral damage. With GuC it appears this is not possible. So I 
>>>>>> was thinking this is something worthy a log notice.
>>>>>>
>>>>>>> their context to run forever and never be pre-empted then that 
>>>>>>> means they also don't want it to be reset arbitrarily. Which 
>>>>>>> means they would also be disabling the heartbeat timer as well. 
>>>>>>> Indeed, this is what we 
>>>>>>
>>>>>> I don't think so. Preempt timeout is disabled already on TGL/RCS 
>>>>>> upstream but hearbeat is not and so hangcheck still works.
>>>>> The pre-emption disable in upstream is not a valid solution for 
>>>>> compute customers. It is a worst-of-all-worlds hack for general 
>>>>> usage. As noted already, any actual compute specific customer is 
>>>>> advised to disable all forms of reset and do their hang detection 
>>>>> manually. A slightly less worse hack for customers that are not 
>>>>> actually running long compute workloads (i.e. the vast majority of 
>>>>> end users) is to just use a long pre-emption timeout.
>>>>
>>>> If disabled preemption timeout is worst of all words and compute 
>>>> needs to disable heartbeat as well then why did we put it in? 
>>>> Perhaps it was not know at the time it would not be good enough. But 
>>>> anyway, do I read you correct that current thinking is it would be 
>>>> better to leave it at default 640ms?
>>> No. We cannot have the RCS default to 640ms.
>>>
>>> Note that there is a difference between 'general end user who might 
>>> run some compute' and 'compute focused customer'. The driver defaults 
>>> (disabled or 7500ms) are for the general user who gets the 
>>> out-of-the-box experience and expects to be able to run 'normal' 
>>> workloads without hitting problems. I.e. they expect hung tasks to 
>>> get reset in a timely manner and while they might run some AI or 
>>> other compute workloads, they are not a HPC datacenter. Whereas the 
>>> compute datacenter customer expects their workloads to run for 
>>> arbitrarily long times (minutes, hours, maybe even days) without 
>>> being arbitrarily killed. Those customers will be explicitly 
>>> configuring their datacenter server for that scenario and thus don't 
>>> care what the defaults are.
>>
>> Okay maybe I misunderstood what you were saying earlier about worst of 
>> all worlds and all. But tell me this, if preemption timeout on RCS is 
>> not directly related to hearbeats, but to some pessimistic expected 
>> user workloads, what is wrong with my scheme of calculating the next 
>> heartbeat pulse as tH + tP?
>>
>> We can leave tH as default 2.5s and tP you set for RCS to 12s if that 
>> is what you say is required. Or whatever long value really.
>>
>> Your only objection is that ends up with too long total time before 
>> reset? Or something else as well?
> An unnecessarily long total heartbeat timeout is the main objection. 
> (2.5 + 12) * 5 = 72.5 seconds. That is a massive change from the current 
> 12.5s.
> 
> If we are happy with that huge increase then fine. But I'm pretty sure 
> you are going to get a lot more bug reports about hung systems not 
> recovering. 10-20s is just about long enough for someone to wait before 
> leaning on the power button of their machine. Over a minute is not. That 
> kind of delay is going to cause support issues.

Sorry I wrote 12s, while you actually said tP * 12, so 7.68s, chosen 
just so it is longer than tH * 3?

And how do you keep coming up with factor of five? Isn't it four periods 
before "heartbeat stopped"? (Prio normal, hearbeat, barrier and then reset.)

 From the point of view of user experience I agree reasonable 
responsiveness is needed before user "reaches for the power button".

In your proposal we are talking about 3 * 2.5s + 2 * 7.5s, so 22.5s.

Question of workloads.. what is the actual preempt timeout compute is 
happy with? And I don't mean compute setups with disabled hangcheck, 
which you say they want anyway, but if we target defaults for end users. 
Do we have some numbers on what they are likely to run?

What if we gave them a default of 2.5s? That would be 4 * (2.5s + 2.5s) 
= 20s worst case until reset, comparable to your proposal. Are there 
realistic workloads which are non-preemptable for 2.5s? I am having hard 
time imagining someone would run them on a general purpose desktop since 
it would mean frozen and unusable UI anyway.

Advantage still being in my mind that there would be no fudging of 
timeouts during driver load and heartbeat periods depending on priority. 
To me it feels more plausible to account for preempt timeout in 
heartbeat pulses that to calculate preempt timeout to be longer than 
hearbeat pulses, just to avoid races between the two.

>> It's long but it is correct in a way. Because we can't expect hearbeat 
>> to react quicker than the interval + preempt timeout (or timeslice for 
>> equal priority) + some scheduling latency.
>>
>> I conceptually disagree with the last hearbeat pulse being special. If 
>> the user concept is "after N heartbeats you are out" and you want to 
>> make it "after N-1 heartbeats plus 2 preemption periods you are out", 
>> where preemption period actually depends on heartbeat period, then 
>> that sounds really convoluted to me.
>>
>> And we don't know which of the pulses will trigger preemption since 
>> user priority we don't control. So low priority compute task gets 
>> reset after 5s, normal priority gets to run for 12s. Effectively 
>> making context priority a variable in hangcheck.
> It already is. That is no different. The pre-emption is not triggered 
> until the pulse is of equal or higher priority than the busy task. That 
> is the case no matter whether you are running GuC or execlist, whether 
> you have the original driver or an updated one.
> 
> And it doesn't matter which pulse triggers the pre-emption. All that 
> matters is that once a pre-emption is attempted, if the busy context 
> fails to relinquish the hardware within the pre-emption timeout limit 
> then it will be forcibly evicted.
> 
> 
>>
>>>>
>>>> If so, if we went with my proposal, would everyone be happy? If yes, 
>>>> isn't it a simpler scheme? No special casing when setting the 
>>>> preempt timeout, no special casing of the last heartbeat pulse. 
>>>> Works predictably regardless of the priority of the hypothetical 
>>>> non-preemptible workload.
>>> No, we have to have the increased pre-emption timeout. And that has 
>>> ripple effects of making very long heartbeats or risking races with 
>>> the heartbeat beating the per engine reset.
>>>
>>>
>>>>
>>>>>>> advise compute customers to do. It is then up to the user 
>>>>>>> themselves to spot a hang and to manually kill (Ctrl+C, kill ###, 
>>>>>>> etc.) their task. Killing the CPU task will automatically clear 
>>>>>>> up any GPU resources allocated to that task (excepting context 
>>>>>>> persistence, which is a) broken and b) something we also tell 
>>>>>>> compute customers to disable).
>>>>>>
>>>>>> What is broken with context persistence? I noticed one patch 
>>>>>> claiming to be fixing something in that area which looked suspect. 
>>>>>> Has it been established no userspace relies on it?
>>>>> One major issue is that it has hooks into the execlist scheduler 
>>>>> backend. I forget the exact details right now. The implementation 
>>>>> as a whole is incredibly complex and convoluted :(. But there's 
>>>>> stuff about what happens when you disable the heartbeat after 
>>>>> having closed a persistence context's handle (and thus made it 
>>>>> persisting). There's also things like it sends a super high 
>>>>> priority heartbeat pulse at the point of becoming persisting. That 
>>>>> plays havoc for platforms with dependent engines and/or compute 
>>>>> workloads. A context becomes persisting on RCS and results in your 
>>>>> unrealted CCS work being reset. It's a mess.
>>>>>
>>>>> The comment from Daniel Vetter is that persistence should have no 
>>>>> connection to the heartbeat at all. All of that dynamic behaviour 
>>>>> and complexity should just be removed.
>>>>
>>>> Dependent engines is definitely a topic on it's own, outside 
>>>> hearbeats, persistence and all.
>>> Except that it has implications for persistence which the current 
>>> driver does not take into account.
>>
>> Well current driver does not take RCS+CCS dependency into account so 
>> that should come first, or all in one package at least.
> Not sure what you are arguing for here? Simplifying persistence as 
> described will fix all the problems in one easy go. There is no point in 
> adding yet more hideously complex code to make one corner case work when 
> the real fix is to rip it all out.

It sounded like you were arguing there was an issue with context 
persistence and dependent engines so my reply was that if there are no 
dependent engines in upstream there is no issue with persistence. Once 
dependent engines are brought upstream then any reset caused by 
persistence can be looked at and determined if there is any conceptual 
difference between that and any random reset.

>>>> Otherwise there is definitely complexity in the execlists backend 
>>>> but I am not sure if logic persistence and heartbeats are so very 
>>>> connected. It does send a pulse when heartbeat interval is changed, 
>>>> which if going to zero, it will kick of closed contexts if it can:
>>>>
>>>> static struct intel_engine_cs *
>>>> __execlists_schedule_in(struct i915_request *rq)
>>>> {
>>>>     struct intel_engine_cs * const engine = rq->engine;
>>>>     struct intel_context * const ce = rq->context;
>>>>
>>>>     intel_context_get(ce);
>>>>
>>>>     if (unlikely(intel_context_is_closed(ce) &&
>>>>              !intel_engine_has_heartbeat(engine)))
>>>>         intel_context_set_banned(ce);
>>>>
>>>>     if (unlikely(intel_context_is_banned(ce) || bad_request(rq)))
>>>>         reset_active(rq, engine);
>>>>
>>>> Is this what you mean? The point of this is to make sure persistent 
>>>> context does not hog the engine forever if hangcheck has been disabled.
>>>>
>>>> Reminds me of my improvement to customer experience which never got 
>>>> in 
>>>> (https://patchwork.freedesktop.org/patch/451491/?series=93420&rev=2). Point 
>>>> of that one was to avoid engine reset (or worse) after user presses 
>>>> "Ctrl-C" if something takes just over 1ms to cleanly complete.
>>> The plan is that the persistent contexts would still get the default 
>>> grace period (pre-emption timeout at least) to finish but Ctrl+C will 
>>> kill it within a timely manner if it does not finish.
>>
>> Yes my patch does that. ;) Currently non-persistent is killed to 
>> quickly triggering pointless and alarming engine resets. Users 
>> reported this last year and I tried to fix it.
> Except that your patch is adding yet more complexity to an already 
> complex feature. The desire is to simplify the driver and make it more 
> maintainable not complicated it further.

It is fixing an user reported issue and is not really adding complexity 
apart from enabling us to distinguish the reason for revoking a request 
(ban vs soft close). I think we should care to fix user reported issues 
in a reasonable time frame. It's a patch from last summer or so..

>>>>> Persistence itself can stay. There are valid UMD use cases. It is 
>>>>> just massively over complicated and doesn't work in all corner 
>>>>> cases when not using execlist submission or on newer platforms. The 
>>>>> simplification that is planned is to allow contexts to persist 
>>>>> until the associated DRM master handle is closed. At that point, 
>>>>> all contexts associated with that DRM handle are killed. That is 
>>>>> what AMD and others apparently implement.
>>>>
>>>> Okay, that goes against one recent IGT patch which appeared to work 
>>>> around something by moving the position of _context_ close.
>>> No it does not. The context close is not the trigger. The trigger is 
>>
>> Well patch says:
>> """
>> The spin all test relied on context persistence unecessarily by trying
>> to destroy contexts while keeping spinners active.
>> The current implementation of context persistence in i915 can cause
>> failures with GuC enabled, and persistence is not needed for this test.
>>
>> Moving intel_ctx_destroy after igt_spin_end.
>> """
>>
>> Implying moving context close to after spin end fixes things for GuC, 
>> not fd close.
> That's because persistence is currently a big pile of poo and does not 
> work in all the corner cases. The correct solution is to leave the IGT 
> alone and just fix the implementation of persistence. However, the IGT 
> update to not use the broken feature is a trivial test change (two 
> lines?) whereas fixing the broken feature is a significant KMD re-work. 
> It needs to be done but no-one currently has the time to do it. But 
> trivially changing the test allows the test to work and test the 
> features it is meant to be testing (which is not persistence).

Clear as mud. If the statement is that persistence cannot simply be 
removed, then for sure it cannot be said that anything can be fixed or 
unblocked by allowing some test to pass with GuC, by making them avoid 
using persistence (and not even explicitly with a context param). It 
implies persistence does not work with the GuC, which is then in 
contradiction with the statement that we cannot just remove persistence. 
I truly have no idea what the argument is here.

Regards,

Tvrtko
