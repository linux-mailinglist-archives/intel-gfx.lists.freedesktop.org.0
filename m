Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714563138CB
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89446E929;
	Mon,  8 Feb 2021 16:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9EF46E929
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:04:07 +0000 (UTC)
IronPort-SDR: AIXsAHRTKrXCwIcptmJF0XAVQtGccjqvRNjZDg/CKAkD3Vj2dRJVoDazjXKLJ0vXHQtYEAIlr7
 BtA3hCUxiqLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="178223974"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="178223974"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:03:10 -0800
IronPort-SDR: K9diVKpmTopA7SuqHUiJXlSYBXWA6oDuVaLQeAd7XrMJkniJ3jmcLUMTiegfJAbYCmHWU/k79Z
 oun0kefdikGg==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="395513888"
Received: from dlauner-mobl.ger.corp.intel.com (HELO [10.214.195.182])
 ([10.214.195.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:03:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-10-chris@chris-wilson.co.uk>
 <81c2bbff-7059-856d-56ae-8a42607a919e@linux.intel.com>
 <161279816578.9448.5547982919972033105@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6f648ec5-e28b-513c-d29a-2e5dd4924ab6@linux.intel.com>
Date: Mon, 8 Feb 2021 16:03:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161279816578.9448.5547982919972033105@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/31] drm/i915: Fair low-latency scheduling
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/02/2021 15:29, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-08 14:56:31)
>> On 08/02/2021 10:52, Chris Wilson wrote:
>>> +static bool need_preempt(const struct intel_engine_cs *engine,
>>>                         const struct i915_request *rq)
>>>    {
>>>        const struct i915_sched *se = &engine->sched;
>>> -     int last_prio;
>>> +     const struct i915_request *first = NULL;
>>> +     const struct i915_request *next;
>>>    
>>>        if (!i915_sched_use_busywait(se))
>>>                return false;
>>>    
>>>        /*
>>> -      * Check if the current priority hint merits a preemption attempt.
>>> -      *
>>> -      * We record the highest value priority we saw during rescheduling
>>> -      * prior to this dequeue, therefore we know that if it is strictly
>>> -      * less than the current tail of ESLP[0], we do not need to force
>>> -      * a preempt-to-idle cycle.
>>> -      *
>>> -      * However, the priority hint is a mere hint that we may need to
>>> -      * preempt. If that hint is stale or we may be trying to preempt
>>> -      * ourselves, ignore the request.
>>> -      *
>>> -      * More naturally we would write
>>> -      *      prio >= max(0, last);
>>> -      * except that we wish to prevent triggering preemption at the same
>>> -      * priority level: the task that is running should remain running
>>> -      * to preserve FIFO ordering of dependencies.
>>> +      * If this request is special and must not be interrupted at any
>>> +      * cost, so be it. Note we are only checking the most recent request
>>> +      * in the context and so may be masking an earlier vip request. It
>>> +      * is hoped that under the conditions where nopreempt is used, this
>>> +      * will not matter (i.e. all requests to that context will be
>>> +      * nopreempt for as long as desired).
>>>         */
>>> -     last_prio = max(effective_prio(rq), I915_PRIORITY_NORMAL - 1);
>>> -     if (engine->execlists.queue_priority_hint <= last_prio)
>>> +     if (i915_request_has_nopreempt(rq))
>>>                return false;
>>>    
>>>        /*
>>>         * Check against the first request in ELSP[1], it will, thanks to the
>>>         * power of PI, be the highest priority of that context.
>>>         */
>>> -     if (!list_is_last(&rq->sched.link, &se->requests) &&
>>> -         rq_prio(list_next_entry(rq, sched.link)) > last_prio)
>>> -             return true;
>>> +     next = next_elsp_request(se, rq);
>>> +     if (dl_before(next, first))
>>
>> Here first is always NULL so dl_before always returns true, meaning it
>> appears redundant to call it.
> 
> I was applying a pattern :)

Yeah, thought so. It's fine.

> 
>>
>>> +             first = next;
>>>    
>>>        /*
>>>         * If the inflight context did not trigger the preemption, then maybe
>>> @@ -356,8 +343,31 @@ static bool need_preempt(struct intel_engine_cs *engine,
>>>         * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
>>>         * context, it's priority would not exceed ELSP[0] aka last_prio.
>>>         */
>>> -     return max(virtual_prio(&engine->execlists),
>>> -                queue_prio(se)) > last_prio;
>>> +     next = first_request(se);
>>> +     if (dl_before(next, first))
>>> +             first = next; > +
>>> +     next = first_virtual(engine);
>>> +     if (dl_before(next, first))
>>> +             first = next;
>>> +
>>> +     if (!dl_before(first, rq))
>>> +             return false;
>>
>> Ends up earliest deadline between list of picks: elsp[1] (or maybe next
>> in context, depends on coalescing criteria), first in the priolist,
>> first virtual.
>>
>> Virtual has a separate queue so that's understandable, but can "elsp[1]"
>> really have an earlier deadling than first_request() (head of thepriolist)?
> 
> elsp[1] could have been promoted and thus now have an earlier deadline
> than elsp[0]. Consider the heartbeat as a trivial example that is first
> submitted at very low priority, but by the end has absolute priority.

The tree is not kept sorted at all times, or at least at the time 
need_preempt peeks at it?

> 
>>> +static u64 virtual_deadline(u64 kt, int priority)
>>> +{
>>> +     return i915_sched_to_ticks(kt + prio_slice(priority));
>>> +}
>>> +
>>> +u64 i915_scheduler_next_virtual_deadline(int priority)
>>> +{
>>> +     return virtual_deadline(ktime_get_mono_fast_ns(), priority);
>>> +}
>>
>> This helpers becomes a bit odd in that the only two callers are rewind
>> and defer. And it queries ktime, while before deadline was set based on
>> signalers.
>>
>> Where is the place which set the ktime based deadline (converted to
>> ticks) for requests with no signalers?
> 
> signal_deadline() with no signalers returns now. So the first request in
> a sequence is queued with virtual_deadline(now() + prio_slice()).

Ah ok.

> 
>>>    void i915_request_enqueue(struct i915_request *rq)
>>>    {
>>> -     struct intel_engine_cs *engine = rq->engine;
>>> -     struct i915_sched *se = intel_engine_get_scheduler(engine);
>>> +     struct i915_sched *se = i915_request_get_scheduler(rq);
>>> +     u64 dl = earliest_deadline(se, rq);
>>>        unsigned long flags;
>>>        bool kick = false;
>>>    
>>> @@ -880,11 +1107,11 @@ void i915_request_enqueue(struct i915_request *rq)
>>>                list_add_tail(&rq->sched.link, &se->hold);
>>>                i915_request_set_hold(rq);
>>>        } else {
>>> -             queue_request(se, rq);
>>> -
>>> +             set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>>> +             kick = __i915_request_set_deadline(se, rq,
>>> +                                                min(dl, rq_deadline(rq)));
>>
>> What is this min for? Dl has been computed above based on rq, so I
>> wonder why rq_deadline has to be considered again.
> 
> earliest_deadline() only looks at the signalers (or now if none) and
> picks the next deadline in that sequence. However, some requests we may
> set the deadline explicitly (e.g. heartbeat has a known deadline, vblank
> rendering we can approximate a deadline) and so we also consider what
> deadline has already been specified.
> 
>> Because earliest_deadline does not actually consider rq->sched.deadline?
>> So conceptually earliest_deadline would be described as what?
> 
> sequence_deadline() ?
> 
> earliest_deadline_for_this_sequence() ?

Don't know really. Don't think it's a matter of names just me building a 
good image of the operation.

But as earliest does imply earliest, which then gets potentially 
overwritten with something even earlier, hm.. baseline? :) Default? 
Nah.. Scheduling_deadline? Tree deadline? Sorted deadline?

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
