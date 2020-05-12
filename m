Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC861CFA23
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62BE189B48;
	Tue, 12 May 2020 16:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D06E89B48
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 16:07:29 +0000 (UTC)
IronPort-SDR: Jn0cn8PDHgzcCcKGV7bAW+b8YpwaVLslYYNQiuwcnEFwLIP0DYsJsoAymszdn142bvZlt5xfZh
 azIlWveBuG/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 09:07:29 -0700
IronPort-SDR: Y06tieL5kfvDsG/lJhJJpX9L108MQJTvpJisKTyhCBoS5v83AQ1W9I++S4HCv15xEdGT9DIiNb
 0fsFH1LsEmjQ==
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="437155620"
Received: from dhelmanx-mobl2.ger.corp.intel.com (HELO [10.214.209.74])
 ([10.214.209.74])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 09:07:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200512132255.20537-1-chris@chris-wilson.co.uk>
 <561ef231-3894-5f9e-d3f2-629537801fb6@linux.intel.com>
 <158929873346.20930.5498889568935361289@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2bbf7b12-2220-e993-b324-c0962bd065a5@linux.intel.com>
Date: Tue, 12 May 2020 17:07:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158929873346.20930.5498889568935361289@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Transfer old virtual
 breadcrumbs to irq_worker
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


On 12/05/2020 16:52, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-12 16:17:30)
>>
>> On 12/05/2020 14:22, Chris Wilson wrote:
>>> The second try at staging the transfer of the breadcrumb. In part one,
>>> we realised we could not simply move to the second engine as we were
>>> only holding the breadcrumb lock on the first. So in commit 6c81e21a4742
>>> ("drm/i915/gt: Stage the transfer of the virtual breadcrumb"), we
>>> removed it from the first engine and marked up this request to reattach
>>> the signaling on the new engine. However, this failed to take into
>>> account that we only attach the breadcrumb if the new request is added
>>> at the start of the queue, which if we are transferring, it is because
>>> we know there to be a request to be signaled (and hence we would not be
>>> attached).
>>>
>>> In this attempt, we try to transfer the completed requests to the
>>> irq_worker on its rq->engine->breadcrumbs. This preserves the coupling
>>> between the rq and its breadcrumbs, so that
>>> i915_request_cancel_breadcrumb() does not attempt to manipulate the list
>>> under the wrong lock.
>>>
>>> Fixes: 6c81e21a4742 ("drm/i915/gt: Stage the transfer of the virtual breadcrumb")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>> v2: rewrite from scratch with a new idea
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 33 ++++++++++++++++++++
>>>    drivers/gpu/drm/i915/gt/intel_engine.h       |  3 ++
>>>    drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 ++
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c          | 26 ++-------------
>>>    4 files changed, 41 insertions(+), 23 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> index cbedba857d43..e09dc162b508 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> @@ -155,6 +155,8 @@ static void signal_irq_work(struct irq_work *work)
>>>        if (b->irq_armed && list_empty(&b->signalers))
>>>                __intel_breadcrumbs_disarm_irq(b);
>>>    
>>> +     list_splice_init(&b->signaled_requests, &signal);
>>> +
>>>        list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
>>>                GEM_BUG_ON(list_empty(&ce->signals));
>>>    
>>> @@ -255,6 +257,7 @@ void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
>>>    
>>>        spin_lock_init(&b->irq_lock);
>>>        INIT_LIST_HEAD(&b->signalers);
>>> +     INIT_LIST_HEAD(&b->signaled_requests);
>>>    
>>>        init_irq_work(&b->irq_work, signal_irq_work);
>>>    }
>>> @@ -274,6 +277,36 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
>>>        spin_unlock_irqrestore(&b->irq_lock, flags);
>>>    }
>>>    
>>> +void intel_engine_transfer_breadcrumbs(struct intel_engine_cs *engine,
>>> +                                    struct intel_context *ce)
>>> +{
>>> +     struct intel_breadcrumbs *b = &engine->breadcrumbs;
>>> +     unsigned long flags;
>>> +
>>> +     spin_lock_irqsave(&b->irq_lock, flags);
>>> +     if (!list_empty(&ce->signals)) {
>>> +             struct i915_request *rq, *next;
>>> +
>>> +             list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
>>> +                     GEM_BUG_ON(rq->engine != engine);
>>> +                     GEM_BUG_ON(!i915_request_completed(rq));
>>
>> Do you remember why the breadcrumbs code uses local __request_completed
>> helper?
> 
> It knows the hwsp isn't going to disappear, we know the same here, just
> this code was first written in intel_lrc.c
> 
> Fwiw, the rcu_read_lock() we have in i915_request_completed() is one of
> our worst lockdep hotspots
> 
>>   From here vvv
>>
>>> +
>>> +                     clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>>> +                     if (!__dma_fence_signal(&rq->fence))
>>> +                             continue;
>>> +
>>> +                     i915_request_get(rq);
>>> +                     list_add_tail(&rq->signal_link, &b->signaled_requests);
>>
>> ^^^ to here looks like a block which could be shared with signal_irq_work.
> 
> And not even a suggestion of a function name.

I expected you'd say it's not worth the hassle so I did not bother. :)

> 
>>> +             }
>>> +
>>> +             INIT_LIST_HEAD(&ce->signals);
>>
>> Hm because list_add and not list_move you can't assert all have been
>> unlinked.
> 
> Which is the point, we don't want to have to repeatedly do the same
> unlinks when we can do them en masse.

I know but being sure of the state would be reassuring. There is one 
skip in the loop before list_add_tail.

> 
>>> +             list_del_init(&ce->signal_link);
>>> +
>>> +             irq_work_queue(&b->irq_work);
>>> +     }
>>> +     spin_unlock_irqrestore(&b->irq_lock, flags);
>>> +}
>>> +
>>>    void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
>>>    {
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
>>> index cb789c8bf06b..45418f887953 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
>>> @@ -238,6 +238,9 @@ intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
>>>    void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
>>>    void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
>>>    
>>> +void intel_engine_transfer_breadcrumbs(struct intel_engine_cs *engine,
>>> +                                    struct intel_context *ce);
>>> +
>>>    void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
>>>                                    struct drm_printer *p);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> index c113b7805e65..e20b39eefd79 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> @@ -377,6 +377,8 @@ struct intel_engine_cs {
>>>                spinlock_t irq_lock;
>>>                struct list_head signalers;
>>>    
>>> +             struct list_head signaled_requests;
>>> +
>>>                struct irq_work irq_work; /* for use from inside irq_lock */
>>>    
>>>                unsigned int irq_enabled;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> index 15716e4d6b76..ac32d494b07d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> @@ -1821,30 +1821,10 @@ static bool virtual_matches(const struct virtual_engine *ve,
>>>        return true;
>>>    }
>>>    
>>> -static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
>>> -                                  struct i915_request *rq)
>>> +static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
>>>    {
>>> -     struct intel_engine_cs *old = ve->siblings[0];
>>> -
>>>        /* All unattached (rq->engine == old) must already be completed */
>>
>> This comments feels a bit out of place now.
> 
> It's still true, just phrasing is hard.
> 
>>> -
>>> -     spin_lock(&old->breadcrumbs.irq_lock);
>>> -     if (!list_empty(&ve->context.signal_link)) {
>>> -             list_del_init(&ve->context.signal_link);
>>> -
>>> -             /*
>>> -              * We cannot acquire the new engine->breadcrumbs.irq_lock
>>> -              * (as we are holding a breadcrumbs.irq_lock already),
>>> -              * so attach this request to the signaler on submission.
>>> -              * The queued irq_work will occur when we finally drop
>>> -              * the engine->active.lock after dequeue.
>>> -              */
>>> -             set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
>>> -
>>> -             /* Also transfer the pending irq_work for the old breadcrumb. */
>>> -             intel_engine_signal_breadcrumbs(rq->engine);
>>> -     }
>>> -     spin_unlock(&old->breadcrumbs.irq_lock);
>>> +     intel_engine_transfer_breadcrumbs(ve->siblings[0], &ve->context);
>>
>> But isn't ve->siblings[0] the old engine at this point so new target
>> engine would have to be explicitly passed in?
> 
> ve->siblings[0] is the old engine, which is holding the completed
> requests and their signals. Since their rq->engine == ve->siblings[0]
> and we can't update rq->engine as we can't take the required locks, we
> need to keep the breadcrumbs relative to ve->siblings[0] and not the new
> engine (the i915_request_cancel_breadcrumb conundrum).

Who then enables breadcrumbs on the new engine?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
