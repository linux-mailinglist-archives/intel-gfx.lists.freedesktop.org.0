Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B922C52FF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 12:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8338F6E8C7;
	Thu, 26 Nov 2020 11:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210756E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 11:32:31 +0000 (UTC)
IronPort-SDR: ADO5t7llumG3Xc3fxnBqB/RffvbMRdqw6dP0/r05ymKHzcaPjbV48m4UkxDJTGKAHBtRYV91zE
 Xqah7KMuGMpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="233878742"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="233878742"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 03:32:28 -0800
IronPort-SDR: /uLe+EGzy+LCTrIyFF588OYwkXLavh8sXSnJ+a0IE7w0yn7eFG4Y7EhbTA1JRv3YaBNENNQoQr
 ophSzlRwuYvQ==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="547685567"
Received: from gmoskovi-mobl.ger.corp.intel.com (HELO [10.251.182.78])
 ([10.251.182.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 03:32:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-5-chris@chris-wilson.co.uk>
 <20201125195634.29783-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7492efcc-e94e-2f9e-2052-5fa82d147579@linux.intel.com>
Date: Thu, 26 Nov 2020 11:32:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201125195634.29783-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Move the breadcrumb to the
 signaler if completed upon cancel
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


On 25/11/2020 19:56, Chris Wilson wrote:
> If while we are cancelling the breadcrumb signaling, we find that the
> request is already completed, move it to the irq signaler and let it be
> signaled.
> 
> v2: Tweak reference counting so that we only acquire a new reference on
> adding to a signal list, as opposed to a hidden i915_request_put of the
> caller's reference.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 41 +++++++++++----------
>   1 file changed, 22 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index a24cc1ff08a0..00918300f53f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -192,18 +192,6 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>   		intel_engine_add_retire(b->irq_engine, tl);
>   }
>   
> -static bool __signal_request(struct i915_request *rq)
> -{
> -	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
> -
> -	if (!__dma_fence_signal(&rq->fence)) {
> -		i915_request_put(rq);
> -		return false;
> -	}
> -
> -	return true;
> -}
> -
>   static struct llist_node *
>   slist_add(struct llist_node *node, struct llist_node *head)
>   {
> @@ -274,9 +262,11 @@ static void signal_irq_work(struct irq_work *work)
>   			release = remove_signaling_context(b, ce);
>   			spin_unlock(&ce->signal_lock);
>   
> -			if (__signal_request(rq))
> +			if (__dma_fence_signal(&rq->fence))
>   				/* We own signal_node now, xfer to local list */
>   				signal = slist_add(&rq->signal_node, signal);
> +			else
> +				i915_request_put(rq);
>   
>   			if (release) {
>   				add_retire(b, ce->timeline);
> @@ -363,6 +353,17 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
>   	kfree(b);
>   }
>   
> +static void irq_signal_request(struct i915_request *rq,
> +			       struct intel_breadcrumbs *b)
> +{
> +	if (!__dma_fence_signal(&rq->fence))
> +		return;
> +
> +	i915_request_get(rq);
> +	if (llist_add(&rq->signal_node, &b->signaled_requests))
> +		irq_work_queue(&b->irq_work);
> +}
> +
>   static void insert_breadcrumb(struct i915_request *rq)
>   {
>   	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
> @@ -372,17 +373,13 @@ static void insert_breadcrumb(struct i915_request *rq)
>   	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
>   		return;
>   
> -	i915_request_get(rq);
> -
>   	/*
>   	 * If the request is already completed, we can transfer it
>   	 * straight onto a signaled list, and queue the irq worker for
>   	 * its signal completion.
>   	 */
>   	if (__request_completed(rq)) {
> -		if (__signal_request(rq) &&
> -		    llist_add(&rq->signal_node, &b->signaled_requests))
> -			irq_work_queue(&b->irq_work);
> +		irq_signal_request(rq, b);
>   		return;
>   	}
>   
> @@ -413,6 +410,8 @@ static void insert_breadcrumb(struct i915_request *rq)
>   				break;
>   		}
>   	}
> +
> +	i915_request_get(rq);
>   	list_add_rcu(&rq->signal_link, pos);
>   	GEM_BUG_ON(!check_signal_order(ce, rq));
>   	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags));
> @@ -453,6 +452,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>   
>   void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   {
> +	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
>   	struct intel_context *ce = rq->context;
>   	bool release;
>   
> @@ -461,11 +461,14 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   
>   	spin_lock(&ce->signal_lock);
>   	list_del_rcu(&rq->signal_link);
> -	release = remove_signaling_context(rq->engine->breadcrumbs, ce);
> +	release = remove_signaling_context(b, ce);
>   	spin_unlock(&ce->signal_lock);
>   	if (release)
>   		intel_context_put(ce);
>   
> +	if (__request_completed(rq))
> +		irq_signal_request(rq, b);
> +
>   	i915_request_put(rq);
>   }
>   
> 

I can follow this more easily, thanks!

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
