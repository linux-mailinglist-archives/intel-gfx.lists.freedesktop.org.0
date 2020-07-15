Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BAA220E43
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793D26EB5F;
	Wed, 15 Jul 2020 13:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBF86EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 13:37:03 +0000 (UTC)
IronPort-SDR: 45vqBneUdG2uH27hvV1wOMgOBYZVkmAJuHY7dqdaWPPWkWzQFL2D5KjuUNwsVrqOoLkfiv4SAS
 RBLTjKY+0ueQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="150554998"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="150554998"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:37:02 -0700
IronPort-SDR: suu6cBZnjCtOAZjdY7TbxOHljj+AdykijxomWe7YzHLLU2VU+am8xGBBrjx1RxHrKmW15JY/wf
 GvtpYx3LD9dw==
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="486242488"
Received: from yluzon-mobl.ger.corp.intel.com (HELO [10.251.165.215])
 ([10.251.165.215])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:37:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200714094709.15775-1-chris@chris-wilson.co.uk>
 <89dd9513-6fc3-106c-2f7e-41bd193460ee@linux.intel.com>
 <159481732140.13728.18368699381715163331@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1b2656da-ebea-1cb7-dcdc-cb859f12b583@linux.intel.com>
Date: Wed, 15 Jul 2020 14:36:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159481732140.13728.18368699381715163331@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove i915_request.lock
 requirement for execution callbacks
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


On 15/07/2020 13:48, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-15 13:39:56)
>>
>> On 14/07/2020 10:47, Chris Wilson wrote:
>>> We are using the i915_request.lock to serialise adding an execution
>>> callback with __i915_request_submit. However, if we use an atomic
>>> llist_add to serialise multiple waiters and then check to see if the
>>> request is already executing, we can remove the irq-spinlock.
>>>
>>> Fixes: 1d9221e9d395 ("drm/i915: Skip signaling a signaled request")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_request.c | 38 +++++++----------------------
>>>    1 file changed, 9 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>> index 0b2fe55e6194..c59315def07d 100644
>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>> @@ -190,13 +190,11 @@ static void __notify_execute_cb(struct i915_request *rq)
>>>    {
>>>        struct execute_cb *cb, *cn;
>>>    
>>> -     lockdep_assert_held(&rq->lock);
>>> -
>>> -     GEM_BUG_ON(!i915_request_is_active(rq));
>>>        if (llist_empty(&rq->execute_cb))
>>>                return;
>>>    
>>> -     llist_for_each_entry_safe(cb, cn, rq->execute_cb.first, work.llnode)
>>> +     llist_for_each_entry_safe(cb, cn,
>>> +                               llist_del_all(&rq->execute_cb), work.llnode)
>>>                irq_work_queue(&cb->work);
>>>    
>>>        /*
>>> @@ -209,7 +207,6 @@ static void __notify_execute_cb(struct i915_request *rq)
>>>         * preempt-to-idle cycle on the target engine, all the while the
>>>         * master execute_cb may refire.
>>>         */
>>> -     init_llist_head(&rq->execute_cb);
>>>    }
>>>    
>>>    static inline void
>>> @@ -276,6 +273,7 @@ static void remove_from_engine(struct i915_request *rq)
>>>        list_del_init(&rq->sched.link);
>>>        clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>>>        clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
>>> +     set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
>>>        spin_unlock_irq(&locked->active.lock);
>>>    }
>>>    
>>> @@ -323,12 +321,8 @@ bool i915_request_retire(struct i915_request *rq)
>>>                GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
>>>                atomic_dec(&rq->engine->gt->rps.num_waiters);
>>>        }
>>> -     if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
>>> -             set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
>>> -             __notify_execute_cb(rq);
>>> -     }
>>> -     GEM_BUG_ON(!llist_empty(&rq->execute_cb));
>>>        spin_unlock_irq(&rq->lock);
>>> +     __notify_execute_cb(rq);
>>>    
>>>        remove_from_client(rq);
>>>        __list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
>>> @@ -357,12 +351,6 @@ void i915_request_retire_upto(struct i915_request *rq)
>>>        } while (i915_request_retire(tmp) && tmp != rq);
>>>    }
>>>    
>>> -static void __llist_add(struct llist_node *node, struct llist_head *head)
>>> -{
>>> -     node->next = head->first;
>>> -     head->first = node;
>>> -}
>>> -
>>>    static struct i915_request * const *
>>>    __engine_active(struct intel_engine_cs *engine)
>>>    {
>>> @@ -439,18 +427,11 @@ __await_execution(struct i915_request *rq,
>>>                cb->work.func = irq_execute_cb_hook;
>>>        }
>>>    
>>> -     spin_lock_irq(&signal->lock);
>>> -     if (i915_request_is_active(signal) || __request_in_flight(signal)) {
>>> -             if (hook) {
>>> -                     hook(rq, &signal->fence);
>>> -                     i915_request_put(signal);
>>> -             }
>>> -             i915_sw_fence_complete(cb->fence);
>>> -             kmem_cache_free(global.slab_execute_cbs, cb);
>>> -     } else {
>>> -             __llist_add(&cb->work.llnode, &signal->execute_cb);
>>> +     if (llist_add(&cb->work.llnode, &signal->execute_cb)) {
>>> +             if (i915_request_is_active(signal) ||
>>> +                 __request_in_flight(signal))
>>> +                     __notify_execute_cb(signal);
>>
>> Any reason why the hook couldn't be called straight away but needs to
>> always go through the worker now?
>>
>> Maybe it would be easier to figure out if it is race free that way..
>>
>> if (llist_add(..)) {
>>          llist_for_each_entry_safe(.., llist_del_all(..), .)
> 
> Then you would tell me off for open coding __notify_execute_cb for the
> benefit of not going through the irq_work. Something like
> 
> @@ -186,7 +186,7 @@ static void irq_execute_cb_hook(struct irq_work *wrk)
>          irq_execute_cb(wrk);
>   }
> 
> -static void __notify_execute_cb(struct i915_request *rq)
> +static void __execute_cb_irq(struct i915_request *rq)
>   {
>          struct execute_cb *cb, *cn;
> 
> @@ -209,6 +209,15 @@ static void __notify_execute_cb(struct i915_request *rq)
>           */
>   }
> 
> +static void __execute_cb_imm(struct i915_request *rq)
> +{
> +       struct execute_cb *cb, *cn;
> +
> +       llist_for_each_entry_safe(cb, cn,
> +                                 llist_del_all(&rq->execute_cb), work.llnode)
> +               cb->work.func(&cb->work);
> +}
> +
>   static inline void
>   remove_from_client(struct i915_request *request)
>   {
> @@ -323,7 +332,7 @@ bool i915_request_retire(struct i915_request *rq)
>                  atomic_dec(&rq->engine->gt->rps.num_waiters);
>          }
>          spin_unlock_irq(&rq->lock);
> -       __notify_execute_cb(rq);
> +       __execute_cb_imm(rq);
> 
>          remove_from_client(rq);
>          __list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
> @@ -431,7 +440,7 @@ __await_execution(struct i915_request *rq,
>          if (llist_add(&cb->work.llnode, &signal->execute_cb)) {
>                  if (i915_request_is_active(signal) ||
>                      __request_in_flight(signal))
> -                       __notify_execute_cb(signal);
> +                       __execute_cb_imm(signal);
>          }
> 
>          return 0;
> @@ -547,7 +556,7 @@ bool __i915_request_submit(struct i915_request *request)
>                  list_move_tail(&request->sched.link, &engine->active.requests);
>                  clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
>          }
> -       __notify_execute_cb(request);
> +       __execute_cb_irq(request);
> 
>          /* We may be recursing from the signal callback of another i915 fence */
>          if (!i915_request_signaled(request)) {

I think so. IRQ callback can call the imm version and check for if 
(..func) needs to go somewhere.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
