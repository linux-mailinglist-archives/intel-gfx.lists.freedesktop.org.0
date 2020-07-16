Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC0221F3C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 11:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7434F6EC25;
	Thu, 16 Jul 2020 09:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005DF6EC25
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 09:01:18 +0000 (UTC)
IronPort-SDR: LRJGgOKz61pokIueLwfzUKd/SKUtcC6fu936KMZ3UEll4/8ufbJ6bw5J7yVrdwZn+rXk07oHlI
 OPJG91mZYTTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="146855808"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="146855808"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 02:01:18 -0700
IronPort-SDR: FynPIzObdn1eiFnPTRuMcmsL/Q0hod8g2yEteyq/gWkueLkwM3VCTOxWMk2ak8GzrhPb/KdweN
 7XFJxHuewu4g==
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="460406834"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 02:01:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200714094709.15775-1-chris@chris-wilson.co.uk>
 <20200714094709.15775-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bb3940a2-c422-0460-4844-0d86799b7213@linux.intel.com>
Date: Thu, 16 Jul 2020 10:01:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200714094709.15775-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove requirement for
 holding i915_request.lock for breadcrumbs
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


On 14/07/2020 10:47, Chris Wilson wrote:
> Since the breadcrumb enabling/cancelling itself is serialised by the
> breadcrumbs.irq_lock, with a bit of care we can remove the outer

A few sentences explaining this care would be really helpful for review.

> serialisation with i915_request.lock for concurrent
> dma_fence_enable_signaling(). This has the important side-effect of
> eliminating the nested i915_request.lock within request submission.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 100 +++++++++++---------
>   drivers/gpu/drm/i915/gt/intel_lrc.c         |  14 ---
>   drivers/gpu/drm/i915/i915_request.c         |  25 ++---
>   3 files changed, 60 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 91786310c114..87fd06d3eb3f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -220,17 +220,17 @@ static void signal_irq_work(struct irq_work *work)
>   	}
>   }
>   
> -static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
> +static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
>   {
>   	struct intel_engine_cs *engine =
>   		container_of(b, struct intel_engine_cs, breadcrumbs);
>   
>   	lockdep_assert_held(&b->irq_lock);
>   	if (b->irq_armed)
> -		return true;
> +		return;
>   
>   	if (!intel_gt_pm_get_if_awake(engine->gt))
> -		return false;
> +		return;
>   
>   	/*
>   	 * The breadcrumb irq will be disarmed on the interrupt after the
> @@ -250,8 +250,6 @@ static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
>   
>   	if (!b->irq_enabled++)
>   		irq_enable(engine);
> -
> -	return true;
>   }
>   
>   void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
> @@ -310,57 +308,69 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
>   {
>   }
>   
> -bool i915_request_enable_breadcrumb(struct i915_request *rq)
> +static void insert_breadcrumb(struct i915_request *rq,
> +			      struct intel_breadcrumbs *b)
>   {
> -	lockdep_assert_held(&rq->lock);
> +	struct intel_context *ce = rq->context;
> +	struct list_head *pos;
>   
> -	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
> -		return true;
> +	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
> +		return;
>   
> -	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
> -		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
> -		struct intel_context *ce = rq->context;
> -		struct list_head *pos;
> +	__intel_breadcrumbs_arm_irq(b);
>   
> -		spin_lock(&b->irq_lock);
> +	/*
> +	 * We keep the seqno in retirement order, so we can break
> +	 * inside intel_engine_signal_breadcrumbs as soon as we've
> +	 * passed the last completed request (or seen a request that
> +	 * hasn't event started). We could walk the timeline->requests,
> +	 * but keeping a separate signalers_list has the advantage of
> +	 * hopefully being much smaller than the full list and so
> +	 * provides faster iteration and detection when there are no
> +	 * more interrupts required for this context.
> +	 *
> +	 * We typically expect to add new signalers in order, so we
> +	 * start looking for our insertion point from the tail of
> +	 * the list.
> +	 */
> +	list_for_each_prev(pos, &ce->signals) {
> +		struct i915_request *it =
> +			list_entry(pos, typeof(*it), signal_link);
> +
> +		if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
> +			break;
> +	}
> +	list_add(&rq->signal_link, pos);
> +	if (pos == &ce->signals) /* catch transitions from empty list */
> +		list_move_tail(&ce->signal_link, &b->signalers);
> +	GEM_BUG_ON(!check_signal_order(ce, rq));
>   
> -		if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
> -			goto unlock;
> +	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> +}
>   
> -		if (!__intel_breadcrumbs_arm_irq(b))
> -			goto unlock;
> +bool i915_request_enable_breadcrumb(struct i915_request *rq)
> +{
> +	struct intel_breadcrumbs *b;
>   
> -		/*
> -		 * We keep the seqno in retirement order, so we can break
> -		 * inside intel_engine_signal_breadcrumbs as soon as we've
> -		 * passed the last completed request (or seen a request that
> -		 * hasn't event started). We could walk the timeline->requests,
> -		 * but keeping a separate signalers_list has the advantage of
> -		 * hopefully being much smaller than the full list and so
> -		 * provides faster iteration and detection when there are no
> -		 * more interrupts required for this context.
> -		 *
> -		 * We typically expect to add new signalers in order, so we
> -		 * start looking for our insertion point from the tail of
> -		 * the list.
> -		 */
> -		list_for_each_prev(pos, &ce->signals) {
> -			struct i915_request *it =
> -				list_entry(pos, typeof(*it), signal_link);
> +	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
> +		return true;
>   
> -			if (i915_seqno_passed(rq->fence.seqno, it->fence.seqno))
> -				break;
> -		}
> -		list_add(&rq->signal_link, pos);
> -		if (pos == &ce->signals) /* catch transitions from empty list */
> -			list_move_tail(&ce->signal_link, &b->signalers);
> -		GEM_BUG_ON(!check_signal_order(ce, rq));
> +	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
> +		return true;
>   
> -		set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> -unlock:
> +	b = &READ_ONCE(rq->engine)->breadcrumbs;
> +	spin_lock(&b->irq_lock);
> +	while (unlikely(b != &READ_ONCE(rq->engine)->breadcrumbs)) {
>   		spin_unlock(&b->irq_lock);
> +		b = &READ_ONCE(rq->engine)->breadcrumbs;
> +		spin_lock(&b->irq_lock);
>   	}

Comment is needed for this loop.

>   
> +	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
> +		insert_breadcrumb(rq, b);
> +
> +	spin_unlock(&b->irq_lock);
> +
>   	return !__request_completed(rq);
>   }
>   
> @@ -368,8 +378,6 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   {
>   	struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
>   
> -	lockdep_assert_held(&rq->lock);
> -
>   	/*
>   	 * We must wait for b->irq_lock so that we know the interrupt handler
>   	 * has released its reference to the intel_context and has completed
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e0280a672f1d..aa7be7f05f8c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1148,20 +1148,6 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   		} else {
>   			struct intel_engine_cs *owner = rq->context->engine;
>   
> -			/*
> -			 * Decouple the virtual breadcrumb before moving it
> -			 * back to the virtual engine -- we don't want the
> -			 * request to complete in the background and try
> -			 * and cancel the breadcrumb on the virtual engine
> -			 * (instead of the old engine where it is linked)!
> -			 */
> -			if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> -				     &rq->fence.flags)) {
> -				spin_lock_nested(&rq->lock,
> -						 SINGLE_DEPTH_NESTING);
> -				i915_request_cancel_breadcrumb(rq);
> -				spin_unlock(&rq->lock);
> -			}

Why is this not needed any more?

>   			WRITE_ONCE(rq->engine, owner);
>   			owner->submit_request(rq);
>   			active = NULL;
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index c59315def07d..df82b31dc35c 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -315,7 +315,7 @@ bool i915_request_retire(struct i915_request *rq)
>   	i915_request_mark_complete(rq);
>   	if (!i915_request_signaled(rq))
>   		dma_fence_signal_locked(&rq->fence);
> -	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
> +	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
>   		i915_request_cancel_breadcrumb(rq);
>   	if (i915_request_has_waitboost(rq)) {
>   		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
> @@ -548,17 +548,9 @@ bool __i915_request_submit(struct i915_request *request)
>   	}
>   	__notify_execute_cb(request);
>   
> -	/* We may be recursing from the signal callback of another i915 fence */
> -	if (!i915_request_signaled(request)) {
> -		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> -
> -		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> -			     &request->fence.flags) &&
> -		    !i915_request_enable_breadcrumb(request))
> -			intel_engine_signal_breadcrumbs(engine);
> -
> -		spin_unlock(&request->lock);
> -	}
> +	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
> +	    !i915_request_enable_breadcrumb(request))
> +		intel_engine_signal_breadcrumbs(engine);
>   
>   	return result;
>   }
> @@ -590,17 +582,12 @@ void __i915_request_unsubmit(struct i915_request *request)
>   	 * is kept in seqno/ring order.
>   	 */
>   
> -	/* We may be recursing from the signal callback of another i915 fence */
> -	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> +	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
> +	clear_bit_unlock(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);

Why is release barrier important for this flag? (Comment as well please.)

>   
>   	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
>   		i915_request_cancel_breadcrumb(request);
>   
> -	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
> -	clear_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
> -
> -	spin_unlock(&request->lock);
> -
>   	/* We've already spun, don't charge on resubmitting. */
>   	if (request->sched.semaphores && i915_request_started(request))
>   		request->sched.semaphores = 0;
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
