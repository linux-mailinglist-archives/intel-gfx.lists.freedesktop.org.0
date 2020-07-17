Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 740DF2236B1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:13:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549CB6ED58;
	Fri, 17 Jul 2020 08:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69366ED58
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:13:24 +0000 (UTC)
IronPort-SDR: a4ahBFJ8bedwyXtX4cSD8kSb8tXIdDsNN4437W1mb+bIEY1YfRF8oAWl0YdLEMVBX1yX6rem/Q
 7rsYPTYBhw2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="234405898"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="234405898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:13:24 -0700
IronPort-SDR: OEQvW0MikR4MyevnKDDQhMwggmKmA1NorVMpA1DQA3KplT+TVjY5Ej1p1vquQ9qBSycq69eayR
 GbCrst74iZaQ==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="430774867"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:13:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716113357.7644-4-chris@chris-wilson.co.uk>
 <20200716172845.31427-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f617a7c-8b62-fa67-07dc-0a9f8c0d2a88@linux.intel.com>
Date: Fri, 17 Jul 2020 09:13:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716172845.31427-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Replace
 intel_engine_transfer_stale_breadcrumbs
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


On 16/07/2020 18:28, Chris Wilson wrote:
> After staring at the breadcrumb enabling/cancellation and coming to the
> conclusion that the cause of the mysterious stale breadcrumbs must the
> act of submitting a completed requests, we can then redirect those
> completed requests onto a dedicated signaled_list at the time of
> construction and so eliminate intel_engine_transfer_stale_breadcrumbs().
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 44 +++++++--------------
>   drivers/gpu/drm/i915/gt/intel_engine.h      |  3 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 15 -------
>   drivers/gpu/drm/i915/i915_request.c         |  5 +--
>   4 files changed, 17 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index a0f52417238c..11660bef1545 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -144,7 +144,6 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>   
>   static void __signal_request(struct i915_request *rq, struct list_head *signals)
>   {
> -	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
>   	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>   
>   	if (!__dma_fence_signal(&rq->fence))
> @@ -278,32 +277,6 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
>   	spin_unlock_irqrestore(&b->irq_lock, flags);
>   }
>   
> -void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
> -					     struct intel_context *ce)
> -{
> -	struct intel_breadcrumbs *b = &engine->breadcrumbs;
> -	unsigned long flags;
> -
> -	spin_lock_irqsave(&b->irq_lock, flags);
> -	if (!list_empty(&ce->signals)) {
> -		struct i915_request *rq, *next;
> -
> -		/* Queue for executing the signal callbacks in the irq_work */
> -		list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
> -			GEM_BUG_ON(rq->engine != engine);
> -			GEM_BUG_ON(!__request_completed(rq));
> -
> -			__signal_request(rq, &b->signaled_requests);
> -		}
> -
> -		INIT_LIST_HEAD(&ce->signals);
> -		list_del_init(&ce->signal_link);
> -
> -		irq_work_queue(&b->irq_work);
> -	}
> -	spin_unlock_irqrestore(&b->irq_lock, flags);
> -}
> -
>   void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
>   {
>   }
> @@ -317,6 +290,17 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
>   		return;
>   
> +	/*
> +	 * If the request is already completed, we can transfer it
> +	 * straight onto a signaled list, and queue the irq worker for
> +	 * its signal completion.
> +	 */
> +	if (__request_completed(rq)) {
> +		__signal_request(rq, &b->signaled_requests);
> +		irq_work_queue(&b->irq_work);
> +		return;
> +	}
> +
>   	__intel_breadcrumbs_arm_irq(b);
>   
>   	/*
> @@ -341,8 +325,10 @@ static void insert_breadcrumb(struct i915_request *rq,
>   			break;
>   	}
>   	list_add(&rq->signal_link, pos);
> -	if (pos == &ce->signals) /* catch transitions from empty list */
> +	if (pos == &ce->signals) { /* catch transitions from empty list */
>   		list_move_tail(&ce->signal_link, &b->signalers);
> +		irq_work_queue(&b->irq_work); /* check after enabling irq */
> +	}
>   	GEM_BUG_ON(!check_signal_order(ce, rq));
>   
>   	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> @@ -401,7 +387,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>   
>   	spin_unlock(&b->irq_lock);
>   
> -	return !__request_completed(rq);
> +	return true;

Maybe my in head diff apply is failing me, but I think there isn't a 
"return false" path left so could be made a return void function.

Regards,

Tvrtko

>   }
>   
>   void i915_request_cancel_breadcrumb(struct i915_request *rq)
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index a9249a23903a..faf00a353e25 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -237,9 +237,6 @@ intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
>   void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
>   void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
>   
> -void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
> -					     struct intel_context *ce);
> -
>   void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
>   				    struct drm_printer *p);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 21c16e31c4fe..88a5c155154d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1805,18 +1805,6 @@ static bool virtual_matches(const struct virtual_engine *ve,
>   	return true;
>   }
>   
> -static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
> -{
> -	/*
> -	 * All the outstanding signals on ve->siblings[0] must have
> -	 * been completed, just pending the interrupt handler. As those
> -	 * signals still refer to the old sibling (via rq->engine), we must
> -	 * transfer those to the old irq_worker to keep our locking
> -	 * consistent.
> -	 */
> -	intel_engine_transfer_stale_breadcrumbs(ve->siblings[0], &ve->context);
> -}
> -
>   #define for_each_waiter(p__, rq__) \
>   	list_for_each_entry_lockless(p__, \
>   				     &(rq__)->sched.waiters_list, \
> @@ -2275,9 +2263,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   					virtual_update_register_offsets(regs,
>   									engine);
>   
> -				if (!list_empty(&ve->context.signals))
> -					virtual_xfer_breadcrumbs(ve);
> -
>   				/*
>   				 * Move the bound engine to the top of the list
>   				 * for future execution. We then kick this
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index fc25382e1201..d88f046ccbdd 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -609,9 +609,8 @@ bool __i915_request_submit(struct i915_request *request)
>   	 */
>   	__notify_execute_cb_irq(request);
>   
> -	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
> -	    !i915_request_enable_breadcrumb(request))
> -		intel_engine_signal_breadcrumbs(engine);
> +	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
> +		i915_request_enable_breadcrumb(request);
>   
>   	return result;
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
