Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15F32298F3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 15:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D13D6E207;
	Wed, 22 Jul 2020 13:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE576E207
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 13:05:51 +0000 (UTC)
IronPort-SDR: tnJJha1dPwXhDOkMSIBggKqdr33SbM77yxNSz249x6OgA3z9+R5omHJxS6oOqAn32W6dlDEpnw
 drpiJkK+m4Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="211864885"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="211864885"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 06:05:39 -0700
IronPort-SDR: rka3kBvUq6KzdOCZYrlOSmJQ1jUny81qqm41P948P5gU5dBEou5tGUFFT9Ci7KVM9q8wBrxxvU
 pXMtbcn/yzFA==
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="462447432"
Received: from unknown (HELO [10.214.224.104]) ([10.214.224.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 06:05:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6f820d97-f60e-03f3-5ac3-88d73486e405@linux.intel.com>
Date: Wed, 22 Jul 2020 14:05:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720092312.16975-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/gt: Hold context/request
 reference while breadcrumbs are active
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


On 20/07/2020 10:23, Chris Wilson wrote:
> Currently we hold no actual reference to the request nor context while
> they are attached to a breadcrumb. To avoid freeing the request/context
> too early, we serialise with cancel-breadcrumbs by taking the irq
> spinlock in i915_request_retire(). The alternative is to take a
> reference for a new breadcrumb and release it upon signaling; removing
> the more frequently hit contention point in i915_request_retire().
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 58 ++++++++++++++++-----
>   drivers/gpu/drm/i915/i915_request.c         |  9 ++--
>   2 files changed, 48 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index d6008034869f..59e8cd505569 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -29,6 +29,7 @@
>   #include "i915_drv.h"
>   #include "i915_trace.h"
>   #include "intel_breadcrumbs.h"
> +#include "intel_context.h"
>   #include "intel_gt_pm.h"
>   #include "intel_gt_requests.h"
>   
> @@ -100,6 +101,22 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>   	intel_gt_pm_put_async(b->irq_engine->gt);
>   }
>   
> +static void add_signaling_context(struct intel_breadcrumbs *b,
> +				  struct intel_context *ce)
> +{
> +	intel_context_get(ce);
> +	list_add_tail(&ce->signal_link, &b->signalers);
> +	if (list_is_first(&ce->signal_link, &b->signalers))
> +		__intel_breadcrumbs_arm_irq(b);
> +}
> +
> +static void remove_signaling_context(struct intel_breadcrumbs *b,
> +				     struct intel_context *ce)
> +{
> +	list_del(&ce->signal_link);
> +	intel_context_put(ce);
> +}
> +
>   static inline bool __request_completed(const struct i915_request *rq)
>   {
>   	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
> @@ -108,6 +125,9 @@ static inline bool __request_completed(const struct i915_request *rq)
>   __maybe_unused static bool
>   check_signal_order(struct intel_context *ce, struct i915_request *rq)
>   {
> +	if (rq->context != ce)
> +		return false;
> +
>   	if (!list_is_last(&rq->signal_link, &ce->signals) &&
>   	    i915_seqno_passed(rq->fence.seqno,
>   			      list_next_entry(rq, signal_link)->fence.seqno))
> @@ -162,7 +182,6 @@ static bool __signal_request(struct i915_request *rq, struct list_head *signals)
>   	if (!__dma_fence_signal(&rq->fence))
>   		return false;
>   
> -	i915_request_get(rq);
>   	list_add_tail(&rq->signal_link, signals);
>   	return true;
>   }
> @@ -198,7 +217,8 @@ static void signal_irq_work(struct irq_work *work)
>   			 * spinlock as the callback chain may end up adding
>   			 * more signalers to the same context or engine.
>   			 */
> -			__signal_request(rq, &signal);
> +			if (!__signal_request(rq, &signal))
> +				i915_request_put(rq);

Looks like __signal_request could do the request put but doesn't matter 
hugely.

>   		}
>   
>   		/*
> @@ -210,7 +230,7 @@ static void signal_irq_work(struct irq_work *work)
>   			/* Advance the list to the first incomplete request */
>   			__list_del_many(&ce->signals, pos);
>   			if (&ce->signals == pos) { /* now empty */
> -				list_del_init(&ce->signal_link);
> +				remove_signaling_context(b, ce);
>   				add_retire(b, ce->timeline);
>   			}
>   		}
> @@ -282,6 +302,8 @@ void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
>   	spin_lock_irqsave(&b->irq_lock, flags);
>   	if (b->irq_armed)
>   		__intel_breadcrumbs_disarm_irq(b);
> +	if (!list_empty(&b->signalers))
> +		irq_work_queue(&b->irq_work);
>   	spin_unlock_irqrestore(&b->irq_lock, flags);
>   }
>   
> @@ -299,6 +321,8 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
>   		return;
>   
> +	i915_request_get(rq);
> +
>   	/*
>   	 * If the request is already completed, we can transfer it
>   	 * straight onto a signaled list, and queue the irq worker for
> @@ -307,11 +331,11 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	if (__request_completed(rq)) {
>   		if (__signal_request(rq, &b->signaled_requests))
>   			irq_work_queue(&b->irq_work);
> +		else
> +			i915_request_put(rq);
>   		return;
>   	}
>   
> -	__intel_breadcrumbs_arm_irq(b);
> -
>   	/*
>   	 * We keep the seqno in retirement order, so we can break
>   	 * inside intel_engine_signal_breadcrumbs as soon as we've
> @@ -326,16 +350,20 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	 * start looking for our insertion point from the tail of
>   	 * the list.
>   	 */
> -	list_for_each_prev(pos, &ce->signals) {
> -		struct i915_request *it =
> -			list_entry(pos, typeof(*it), signal_link);
> -
> -		if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
> -			break;
> +	if (list_empty(&ce->signals)) {
> +		add_signaling_context(b, ce);
> +		GEM_BUG_ON(!b->irq_armed);
> +		pos = &ce->signals;
> +	} else {
> +		list_for_each_prev(pos, &ce->signals) {
> +			struct i915_request *it =
> +				list_entry(pos, typeof(*it), signal_link);
> +
> +			if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
> +				break;
> +		}
>   	}
>   	list_add(&rq->signal_link, pos);
> -	if (pos == &ce->signals) /* catch transitions from empty list */
> -		list_move_tail(&ce->signal_link, &b->signalers);
>   	GEM_BUG_ON(!check_signal_order(ce, rq));
>   	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>   
> @@ -416,9 +444,10 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   
>   		list_del(&rq->signal_link);
>   		if (list_empty(&ce->signals))
> -			list_del_init(&ce->signal_link);
> +			remove_signaling_context(b, ce);
>   
>   		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> +		i915_request_put(rq);
>   	}
>   	spin_unlock(&b->irq_lock);
>   }
> @@ -433,6 +462,7 @@ void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
>   	if (!b || list_empty(&b->signalers))
>   		return;
>   
> +	drm_printf(p, "IRQ: %s\n", enableddisabled(b->irq_armed));
>   	drm_printf(p, "Signals:\n");
>   
>   	spin_lock_irq(&b->irq_lock);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 394587e70a2d..4ebb0f144ac4 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -300,12 +300,11 @@ bool i915_request_retire(struct i915_request *rq)
>   		__i915_request_fill(rq, POISON_FREE);
>   	rq->ring->head = rq->postfix;
>   
> -	spin_lock_irq(&rq->lock);
> -	if (!i915_request_signaled(rq))
> +	if (!i915_request_signaled(rq)) {
> +		spin_lock_irq(&rq->lock);
>   		dma_fence_signal_locked(&rq->fence);
> -	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
> -		i915_request_cancel_breadcrumb(rq);
> -	spin_unlock_irq(&rq->lock);
> +		spin_unlock_irq(&rq->lock);
> +	}
>   
>   	if (i915_request_has_waitboost(rq)) {
>   		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
