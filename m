Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5899118A83
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EE56E0ED;
	Tue, 10 Dec 2019 14:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492EF6E0ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:12:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 06:12:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="207291050"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Dec 2019 06:12:34 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
 <96a8b2f2-c93c-07b9-285d-5503b5aad128@linux.intel.com>
 <157598316862.15362.4737947399484296954@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f260ea1-cbdb-dcec-5d9d-3c0fe5bcb8b9@linux.intel.com>
Date: Tue, 10 Dec 2019 14:12:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157598316862.15362.4737947399484296954@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Copy across scheduler
 behaviour flags across submit fences
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


On 10/12/2019 13:06, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-10 12:41:36)
>>
>> On 04/12/2019 21:17, Chris Wilson wrote:
>>> We want the bonded request to have the same scheduler properties as its
>>> master so that it is placed at the same depth in the queue. For example,
>>> consider we have requests A, B and B', where B & B' are a bonded pair to
>>> run in parallel on two engines.
>>>
>>>        A -> B
>>>                     \- B'
>>>
>>> B will run after A and so may be scheduled on an idle engine and wait on
>>> A using a semaphore. B' sees B being executed and so enters the queue on
>>> the same engine as A. As B' did not inherit the semaphore-chain from B,
>>> it may have higher precedence than A and so preempts execution. However,
>>> B' then sits on a semaphore waiting for B, who is waiting for A, who is
>>> blocked by B.
>>>
>>> Ergo B' needs to inherit the scheduler properties from B (i.e. the
>>> semaphore chain) so that it is scheduled with the same priority as B and
>>> will not be executed ahead of Bs dependencies.
>>
>> It makes sense in general to inherit, although in this example why would
>> B' not be preempted by A, once it starts blocking on the semaphore? I am
>> thinking more and more we should not have priorities imply strict order.
> 
> Even if we model ourselves after CFS, we still have exceptional
> schedulers like RR or DEADLINE. So priority inversion will remain an
> issue, and the way we are tackling that is by tracking dependencies.
> 
> And which semaphore do you mean? Ours or userspace? Both are ultimately
> effectively countered by timeslicing, the question is how to decide when
> to slice and how to order slices.

I was thinking about our semaphore. Then the fact we would never shuffle 
contexts around, but keep priority order would prevent A ever preempting 
B' again. Being how they are both blocked, if we round-robin them they 
would eventually progress. But yeah, it's still of course infinitely 
better to track dependencies and execute things in efficient order.

> Anyway the old joke about this being a 'prescheduler' still applies -- we
> don't yet have a scheduler worthy of the name.
> 
>>> Furthermore, to prevent the priorities changing via the expose fence on
>>> B', we need to couple in the dependencies for PI. This requires us to
>>> relax our sanity-checks that dependencies are strictly in order.
>>>
>>> Fixes: ee1136908e9b ("drm/i915/execlists: Virtual engine bonding")
>>> Testcase: igt/gem_exec_balancer/bonded-chain
>>> Testcase: igt/gem_exec_balancer/bonded-semaphore
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>> Due to deep ELSP submission, the bonded pair may be submitted long
>>> before its master reaches ELSP[0] -- we need to wait in the pairs as we
>>> are no longer relying on the user to do so.
>>> ---
>>>    drivers/gpu/drm/i915/i915_request.c   | 115 ++++++++++++++++++++------
>>>    drivers/gpu/drm/i915/i915_scheduler.c |   1 -
>>>    2 files changed, 90 insertions(+), 26 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>> index 3109b8a79b9f..b0f0cfef1eb1 100644
>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>> @@ -300,11 +300,11 @@ void i915_request_retire_upto(struct i915_request *rq)
>>>    }
>>>    
>>>    static int
>>> -__i915_request_await_execution(struct i915_request *rq,
>>> -                            struct i915_request *signal,
>>> -                            void (*hook)(struct i915_request *rq,
>>> -                                         struct dma_fence *signal),
>>> -                            gfp_t gfp)
>>> +__await_execution(struct i915_request *rq,
>>> +               struct i915_request *signal,
>>> +               void (*hook)(struct i915_request *rq,
>>> +                            struct dma_fence *signal),
>>> +               gfp_t gfp)
>>>    {
>>>        struct execute_cb *cb;
>>>    
>>> @@ -341,6 +341,8 @@ __i915_request_await_execution(struct i915_request *rq,
>>>        }
>>>        spin_unlock_irq(&signal->lock);
>>>    
>>> +     /* Copy across semaphore status as we need the same behaviour */
>>> +     rq->sched.flags |= signal->sched.flags;
>>>        return 0;
>>>    }
>>>    
>>> @@ -824,31 +826,21 @@ already_busywaiting(struct i915_request *rq)
>>>    }
>>>    
>>>    static int
>>> -emit_semaphore_wait(struct i915_request *to,
>>> -                 struct i915_request *from,
>>> -                 gfp_t gfp)
>>> +__emit_semaphore_wait(struct i915_request *to,
>>> +                   struct i915_request *from,
>>> +                   u32 seqno)
>>>    {
>>>        const int has_token = INTEL_GEN(to->i915) >= 12;
>>>        u32 hwsp_offset;
>>> -     int len;
>>> +     int len, err;
>>>        u32 *cs;
>>>    
>>>        GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
>>>    
>>> -     /* Just emit the first semaphore we see as request space is limited. */
>>> -     if (already_busywaiting(to) & from->engine->mask)
>>> -             goto await_fence;
>>> -
>>> -     if (i915_request_await_start(to, from) < 0)
>>> -             goto await_fence;
>>> -
>>> -     /* Only submit our spinner after the signaler is running! */
>>> -     if (__i915_request_await_execution(to, from, NULL, gfp))
>>> -             goto await_fence;
>>> -
>>>        /* We need to pin the signaler's HWSP until we are finished reading. */
>>> -     if (intel_timeline_read_hwsp(from, to, &hwsp_offset))
>>> -             goto await_fence;
>>> +     err = intel_timeline_read_hwsp(from, to, &hwsp_offset);
>>> +     if (err)
>>> +             return err;
>>>    
>>>        len = 4;
>>>        if (has_token)
>>> @@ -871,7 +863,7 @@ emit_semaphore_wait(struct i915_request *to,
>>>                 MI_SEMAPHORE_POLL |
>>>                 MI_SEMAPHORE_SAD_GTE_SDD) +
>>>                has_token;
>>> -     *cs++ = from->fence.seqno;
>>> +     *cs++ = seqno;
>>>        *cs++ = hwsp_offset;
>>>        *cs++ = 0;
>>>        if (has_token) {
>>> @@ -880,6 +872,28 @@ emit_semaphore_wait(struct i915_request *to,
>>>        }
>>>    
>>>        intel_ring_advance(to, cs);
>>> +     return 0;
>>> +}
>>> +
>>> +static int
>>> +emit_semaphore_wait(struct i915_request *to,
>>> +                 struct i915_request *from,
>>> +                 gfp_t gfp)
>>> +{
>>> +     /* Just emit the first semaphore we see as request space is limited. */
>>> +     if (already_busywaiting(to) & from->engine->mask)
>>> +             goto await_fence;
>>> +
>>> +     if (i915_request_await_start(to, from) < 0)
>>> +             goto await_fence;
>>> +
>>> +     /* Only submit our spinner after the signaler is running! */
>>> +     if (__await_execution(to, from, NULL, gfp))
>>> +             goto await_fence;
>>> +
>>> +     if (__emit_semaphore_wait(to, from, from->fence.seqno))
>>> +             goto await_fence;
>>> +
>>>        to->sched.semaphores |= from->engine->mask;
>>>        to->sched.flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
>>>        return 0;
>>> @@ -993,6 +1007,58 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>>>        return 0;
>>>    }
>>>    
>>> +static bool intel_timeline_sync_has_start(struct intel_timeline *tl,
>>> +                                       struct dma_fence *fence)
>>> +{
>>> +     return __intel_timeline_sync_is_later(tl,
>>> +                                           fence->context,
>>> +                                           fence->seqno - 1);
>>> +}
>>> +
>>> +static int intel_timeline_sync_set_start(struct intel_timeline *tl,
>>> +                                      const struct dma_fence *fence)
>>> +{
>>> +     return __intel_timeline_sync_set(tl, fence->context, fence->seqno - 1);
>>> +}
>>> +
>>> +static int
>>> +__i915_request_await_execution(struct i915_request *to,
>>> +                            struct i915_request *from,
>>> +                            void (*hook)(struct i915_request *rq,
>>> +                                         struct dma_fence *signal))
>>> +{
>>> +     int err;
>>> +
>>> +     /* Submit both requests at the same time */
>>> +     err = __await_execution(to, from, hook, I915_FENCE_GFP);
>>> +     if (err)
>>> +             return err;
>>> +
>>> +     if (!to->engine->schedule)
>>> +             return 0;
>>
>> Hm is this about scheduler or preemption?
> 
> It's about dependency tracking, and the lack of it.
>   
>>> +
>>> +     /* Squash repeated depenendices to the same timelines */
>>
>> typo in dependencies
>>
>>> +     if (intel_timeline_sync_has_start(i915_request_timeline(to),
>>> +                                       &from->fence))
>>> +             return 0;
>>> +
>>> +     /* Ensure both start together [after all semaphores in signal] */
>>> +     if (intel_engine_has_semaphores(to->engine))
>>> +             err =__emit_semaphore_wait(to, from, from->fence.seqno - 1);
>>
>> So the only thing preventing B' getting onto the same engine as A, as
>> soon as B enters a different engine, is the priority order?
> 
> No. Now B' has a dependency on A, so B' is always after A.

Yes, true.

>> And if I am reading this correctly, change relative to current state is
>> to let B' in, but spin on a semaphore, where currently we let it execute
>> the actual payload.
>>
>> It's possible that we do need this if we said we would guarantee bonded
>> request would not execute before it's master. Have we made this
>> guarantee when discussing the uAPI? We must had..
> 
> We did not make that guarantee as the assumption was that all fences for
> B would be passed to B'. However, the since fence slot for IN/SUBMIT

I think we must have made a guarantee B' won't start executing before B. 
That is kind of the central point. Only thing we did not do is 
guarantee/made effort to start B' together with B. But guarantee got 
defeated by ELSP and later timeslicing/preemption.

Previously, miss was if B was in ELSP[1] B' could be put in ELSP[0] 
(different engines). Which is wrong. And with timeslicing/preemption 
even more so.

So having await_started or semaphore looks correct in that respect. And 
scheduler deps cover the A in chain. So I think it's good with this patch.

> precludes that (I was thinking you could just merge them, but the
> interpretation of the merged fence would still be from the IN/SUBMIT
> flag), and we haven't extended syncobj yet.
> 
> We can completely invalidate that argument by the simple use of an
> FENCE_OUT for B'. That gives us a massive hole in the PI tree, and
> userspace deadlocks galore.
>   
>> But with no semaphores i915_request_await_start can not offer this hard
>> guarantee which then sounds like a problem. Do we need to only allow
>> bonding where we have semaphores?
> 
> No. If we don't have semaphores, then we aren't using semaphores in B.
> So then B and B' are scheduled to start the payload at the same time,
> since they have the same fences. Coordination of the payload itself is
> beyond our control -- we've just made sure that all dependencies are met
> before the payload began.

Yes, without semaphores await_start is a submit fence, I missed that.

Regards,

Tvrtko



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
