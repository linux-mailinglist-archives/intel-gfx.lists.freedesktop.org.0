Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B6225BB0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 11:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065AA899FF;
	Mon, 20 Jul 2020 09:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67CAB899FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 09:32:39 +0000 (UTC)
IronPort-SDR: p+mDjtBeCq+4e/HOYotP6VvKfagd0esh4jmUCA7fdB12AfLI+LJkpWFN6CCdZINarWJmHjLgfR
 FOcR0xm/XjDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="137361669"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="137361669"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 02:32:38 -0700
IronPort-SDR: xbjWuDk2W4uFc/Jri6FonQBPFydhZYd1yoUsC0MnD0tme1f5ijp1eAPbiKV3WPXm2Pmb/Nt2Dx
 FdL+QBnYJuqQ==
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="309777074"
Received: from unknown (HELO [10.214.238.211]) ([10.214.238.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 02:32:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <60d26e6f-f6af-3eee-fd56-5f5e68cafd87@linux.intel.com>
Date: Mon, 20 Jul 2020 10:32:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720092312.16975-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/gt: Replace
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


On 20/07/2020 10:23, Chris Wilson wrote:
> After staring at the breadcrumb enabling/cancellation and coming to the
> conclusion that the cause of the mysterious stale breadcrumbs must the
> act of submitting a completed requests, we can then redirect those
> completed requests onto a dedicated signaled_list at the time of
> construction and so eliminate intel_engine_transfer_stale_breadcrumbs().
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 50 ++++++++-------------
>   drivers/gpu/drm/i915/gt/intel_engine.h      |  3 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 15 -------
>   drivers/gpu/drm/i915/i915_request.c         |  5 +--
>   4 files changed, 21 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 3d211a0c2b5a..fbdc465a5870 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -142,16 +142,16 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>   	intel_engine_add_retire(engine, tl);
>   }
>   
> -static void __signal_request(struct i915_request *rq, struct list_head *signals)
> +static bool __signal_request(struct i915_request *rq, struct list_head *signals)
>   {
> -	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
>   	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>   
>   	if (!__dma_fence_signal(&rq->fence))
> -		return;
> +		return false;
>   
>   	i915_request_get(rq);
>   	list_add_tail(&rq->signal_link, signals);
> +	return true;
>   }
>   
>   static void signal_irq_work(struct irq_work *work)
> @@ -278,32 +278,6 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
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
> @@ -317,6 +291,17 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
>   		return;
>   
> +	/*
> +	 * If the request is already completed, we can transfer it
> +	 * straight onto a signaled list, and queue the irq worker for
> +	 * its signal completion.
> +	 */
> +	if (__request_completed(rq)) {
> +		if (__signal_request(rq, &b->signaled_requests))
> +			irq_work_queue(&b->irq_work);
> +		return;
> +	}
> +
>   	__intel_breadcrumbs_arm_irq(b);
>   
>   	/*
> @@ -344,8 +329,11 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	if (pos == &ce->signals) /* catch transitions from empty list */
>   		list_move_tail(&ce->signal_link, &b->signalers);
>   	GEM_BUG_ON(!check_signal_order(ce, rq));
> -
>   	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> +
> +	/* Check after attaching to irq, interrupt may have already fired. */
> +	if (__request_completed(rq))
> +		irq_work_queue(&b->irq_work);
>   }
>   
>   bool i915_request_enable_breadcrumb(struct i915_request *rq)
> @@ -401,7 +389,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>   
>   	spin_unlock(&b->irq_lock);
>   
> -	return !__request_completed(rq);
> +	return true;
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
> index 58e37f96ae21..ada630677cf3 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -592,9 +592,8 @@ bool __i915_request_submit(struct i915_request *request)
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
