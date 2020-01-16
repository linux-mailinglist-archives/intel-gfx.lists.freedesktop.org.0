Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE96E13EF2B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194E26EE7F;
	Thu, 16 Jan 2020 18:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3942F6EE86
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:14:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:14:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214175684"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Jan 2020 10:14:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
 <20200115083346.2601512-3-chris@chris-wilson.co.uk>
 <e826323f-7b6f-b8ff-1008-6deaacad340b@linux.intel.com>
 <157919690377.2795.10878471609767844216@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e9be510e-fb47-a615-cb77-0507fe7ff04d@linux.intel.com>
Date: Thu, 16 Jan 2020 18:14:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157919690377.2795.10878471609767844216@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Offline error
 capture
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


On 16/01/2020 17:48, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-16 17:22:10)
>>
>> On 15/01/2020 08:33, Chris Wilson wrote:
>>> Currently, we skip error capture upon forced preemption. We apply forced
>>> preemption when there is a higher priority request that should be
>>> running but is being blocked, and we skip inline error capture so that
>>> the preemption request is not further delayed by a user controlled
>>> capture -- extending the denial of service.
>>>
>>> However, preemption reset is also used for heartbeats and regular GPU
>>> hangs. By skipping the error capture, we remove the ability to debug GPU
>>> hangs.
>>>
>>> In order to capture the error without delaying the preemption request
>>> further, we can do an out-of-line capture by removing the guilty request
>>> from the execution queue and scheduling a work to dump that request.
>>> When removing a request, we need to remove the entire context and all
>>> descendants from the execution queue, so that they do not jump past.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/issues/738
>>> Fixes: 3a7a92aba8fb ("drm/i915/execlists: Force preemption")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 120 +++++++++++++++++++++++++++-
>>>    1 file changed, 118 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> index 43c19dc9c0c7..a84477df32bd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> @@ -2392,7 +2392,6 @@ static void __execlists_hold(struct i915_request *rq)
>>>        } while(rq);
>>>    }
>>>    
>>> -__maybe_unused
>>>    static void execlists_hold(struct intel_engine_cs *engine,
>>>                           struct i915_request *rq)
>>>    {
>>> @@ -2472,7 +2471,6 @@ static void __execlists_unhold(struct i915_request *rq)
>>>        } while(rq);
>>>    }
>>>    
>>> -__maybe_unused
>>>    static void execlists_unhold(struct intel_engine_cs *engine,
>>>                             struct i915_request *rq)
>>>    {
>>> @@ -2492,6 +2490,121 @@ static void execlists_unhold(struct intel_engine_cs *engine,
>>>        spin_unlock_irq(&engine->active.lock);
>>>    }
>>>    
>>> +struct execlists_capture {
>>> +     struct work_struct work;
>>> +     struct i915_request *rq;
>>> +     struct i915_gpu_coredump *error;
>>> +};
>>> +
>>> +static void execlists_capture_work(struct work_struct *work)
>>> +{
>>> +     struct execlists_capture *cap = container_of(work, typeof(*cap), work);
>>> +     const gfp_t gfp = GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>>> +     struct intel_engine_cs *engine = cap->rq->engine;
>>> +     struct intel_gt_coredump *gt = cap->error->gt;
>>> +     struct intel_engine_capture_vma *vma;
>>> +
>>> +     /* Compress all the objects attached to the request, slow! */
>>> +     vma = intel_engine_coredump_add_request(gt->engine, cap->rq, gfp);
>>> +     if (vma) {
>>> +             struct i915_vma_compress *compress =
>>> +                     i915_vma_capture_prepare(gt);
>>> +
>>> +             intel_engine_coredump_add_vma(gt->engine, vma, compress);
>>> +             i915_vma_capture_finish(gt, compress);
>>> +     }
>>> +
>>> +     gt->simulated = gt->engine->simulated;
>>> +     cap->error->simulated = gt->simulated;
>>> +
>>> +     /* Publish the error state, and announce it to the world */
>>> +     i915_error_state_store(cap->error);
>>> +     i915_gpu_coredump_put(cap->error);
>>> +
>>> +     /* Return this request and all that depend upon it for signaling */
>>> +     execlists_unhold(engine, cap->rq);
>>> +
>>> +     kfree(cap);
>>> +}
>>> +
>>> +static struct i915_gpu_coredump *capture_regs(struct intel_engine_cs *engine)
>>> +{
>>> +     const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
>>> +     struct i915_gpu_coredump *e;
>>> +
>>> +     e = i915_gpu_coredump_alloc(engine->i915, gfp);
>>> +     if (!e)
>>> +             return NULL;
>>> +
>>> +     e->gt = intel_gt_coredump_alloc(engine->gt, gfp);
>>> +     if (!e->gt)
>>> +             goto err;
>>> +
>>> +     e->gt->engine = intel_engine_coredump_alloc(engine, gfp);
>>> +     if (!e->gt->engine)
>>> +             goto err_gt;
>>> +
>>> +     return e;
>>> +
>>> +err_gt:
>>> +     kfree(e->gt);
>>> +err:
>>> +     kfree(e);
>>> +     return NULL;
>>> +}
>>> +
>>> +static void execlists_capture(struct intel_engine_cs *engine)
>>> +{
>>> +     struct execlists_capture *cap;
>>> +
>>> +     if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
>>> +             return;
>>> +
>>> +     cap = kmalloc(sizeof(*cap), GFP_ATOMIC);
>>> +     if (!cap)
>>> +             return;
>>> +
>>> +     cap->rq = execlists_active(&engine->execlists);
>>> +     GEM_BUG_ON(!cap->rq);
>>> +
>>> +     cap->rq = active_request(cap->rq->context->timeline, cap->rq);
>>
>> Old code, but why is active_request taking the timeline as a separate
>> param when it always seems to be rq->context->timeline?
> 
> It grew out of walking along the engine without a request. Old habits.
> 
>>> +     /*
>>> +      * We need to _quickly_ capture the engine state before we reset.
>>> +      * We are inside an atomic section (softirq) here and we are delaying
>>> +      * the forced preemption event.
>>> +      */
>>> +     cap->error = capture_regs(engine);
>>> +     if (!cap->error)
>>> +             goto err_free;
>>> +
>>> +     if (i915_request_completed(cap->rq)) /* oops, not so guilty! */
>>> +             goto err_store;
>>
>> Should this be a bug on? Doesn't look active_request() can return a
>> non-completed request. Hm I guess we can make a wrong decision to reset
>> the engine.
> 
> Aye. Until we actually invoke the reset, the engine is still active and
> so may have advanced. We call ring_set_paused() so it doesn't get too
> far ahead, but that still lets the breadcrumb tick over, so it is still
> possible for the active_request() to complete (but no more).

...

>> But in any case, if request has completed in the meantime, why go to
>> i915_error_state_store which will log a hang in dmesg?
> 
> Because we are about to call intel_reset_engine(), so want some debug
> clue as to why we got into a situation where we invoked the forced
> preemption. I thought it might be useful to see the engine state, and to
> drop the "oops, please file a bug request" because of the reset.

... so we could still decide to bail out if request completed in the 
meantime and give up on the whole reset business. Why not if not? I 
guess it is of little practical difference, micro-second here or there 
before a potential false positive.

>>> +     /*
>>> +      * Remove the request from the execlists queue, and take ownership
>>> +      * of the request. We pass it to our worker who will _slowly_ compress
>>> +      * all the pages the _user_ requested for debugging their batch, after
>>> +      * which we return it to the queue for signaling.
>>> +      *
>>> +      * By removing them from the execlists queue, we also remove the
>>> +      * requests from being processed by __unwind_incomplete_requests()
>>> +      * during the intel_engine_reset(), and so they will *not* be replayed
>>> +      * afterwards.
>>> +      */
>>> +     execlists_hold(engine, cap->rq);
>>> +
>>> +     INIT_WORK(&cap->work, execlists_capture_work);
>>> +     schedule_work(&cap->work);
>>> +     return;
>>> +
>>> +err_store:
>>> +     i915_error_state_store(cap->error);
>>> +     i915_gpu_coredump_put(cap->error);
>>> +err_free:
>>> +     kfree(cap);
>>> +}
>>> +
>>>    static noinline void preempt_reset(struct intel_engine_cs *engine)
>>>    {
>>>        const unsigned int bit = I915_RESET_ENGINE + engine->id;
>>> @@ -2509,6 +2622,9 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
>>>        ENGINE_TRACE(engine, "preempt timeout %lu+%ums\n",
>>>                     READ_ONCE(engine->props.preempt_timeout_ms),
>>>                     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
>>> +
>>> +     ring_set_paused(engine, 1); /* Freeze the request in place */
>>
>> Who unsets this flags?
> 
> Reset -> reset_csb_pointers -> ring_set_paused(0).

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
