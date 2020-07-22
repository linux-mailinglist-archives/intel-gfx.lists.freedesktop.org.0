Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110DB229929
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 15:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530CF6E827;
	Wed, 22 Jul 2020 13:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824AA6E829
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 13:26:41 +0000 (UTC)
IronPort-SDR: RcuDZqofeW/aHJIHonPazblT0/aoW7SU4wr1DVjz3BoQwQdFAgtLt5O7tA0P0i6M4qd4zN9xZK
 GqGJRl13hPng==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="168467252"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="168467252"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 06:26:40 -0700
IronPort-SDR: 4ENgfhj78uoS+e2SaeUz3A3EyD/xnJpTTaxQioywrlBjhoA9t4zEq3OvYOjO3RfyVoFTzzSdKq
 gkhd7qBXxSXg==
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="462452227"
Received: from unknown (HELO [10.214.224.104]) ([10.214.224.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 06:26:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <59af1fe0-9aaa-6ac7-02ba-b1e573f9ad40@linux.intel.com>
Date: Wed, 22 Jul 2020 14:26:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720092312.16975-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/gt: Track signaled
 breadcrumbs outside of the breadcrumb spinlock
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
> Make b->signaled_requests a lockless-list so that we can manipulate it
> outside of the b->irq_lock.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 42 +++++++++----------
>   .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
>   drivers/gpu/drm/i915/i915_request.h           |  6 ++-
>   3 files changed, 26 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 59e8cd505569..2b3ad17c63b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -175,32 +175,23 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>   		intel_engine_add_retire(b->irq_engine, tl);
>   }
>   
> -static bool __signal_request(struct i915_request *rq, struct list_head *signals)
> -{
> -	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> -
> -	if (!__dma_fence_signal(&rq->fence))
> -		return false;
> -
> -	list_add_tail(&rq->signal_link, signals);
> -	return true;
> -}
> -
>   static void signal_irq_work(struct irq_work *work)
>   {
>   	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
>   	const ktime_t timestamp = ktime_get();
> +	struct llist_node *signal, *sn;
>   	struct intel_context *ce, *cn;
>   	struct list_head *pos, *next;
> -	LIST_HEAD(signal);
> +
> +	signal = NULL;
> +	if (!llist_empty(&b->signaled_requests))
> +		signal = llist_del_all(&b->signaled_requests);

Uncoditional llist_del_all? It's not likely list will be empty and if it 
is llist_del_all will return NULL.

>   
>   	spin_lock(&b->irq_lock);
>   
> -	if (b->irq_armed && list_empty(&b->signalers))
> +	if (!signal && b->irq_armed && list_empty(&b->signalers))

Why !signal check in here? Couldn't figure out what changed to make this 
needed.

>   		__intel_breadcrumbs_disarm_irq(b);
>   
> -	list_splice_init(&b->signaled_requests, &signal);
> -
>   	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
>   		GEM_BUG_ON(list_empty(&ce->signals));
>   
> @@ -217,8 +208,13 @@ static void signal_irq_work(struct irq_work *work)
>   			 * spinlock as the callback chain may end up adding
>   			 * more signalers to the same context or engine.
>   			 */
> -			if (!__signal_request(rq, &signal))
> +			clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> +			if (__dma_fence_signal(&rq->fence)) {
> +				rq->signal_node.next = signal;
> +				signal = &rq->signal_node;

Okay it creates a bit of a differently ordered list like this but I 
think it doesn't matter.

> +			} else {
>   				i915_request_put(rq);
> +			}
>   		}
>   
>   		/*
> @@ -238,9 +234,9 @@ static void signal_irq_work(struct irq_work *work)
>   
>   	spin_unlock(&b->irq_lock);
>   
> -	list_for_each_safe(pos, next, &signal) {
> +	llist_for_each_safe(signal, sn, signal) {
>   		struct i915_request *rq =
> -			list_entry(pos, typeof(*rq), signal_link);
> +			llist_entry(signal, typeof(*rq), signal_node);
>   		struct list_head cb_list;
>   
>   		spin_lock(&rq->lock);
> @@ -264,7 +260,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
>   
>   	spin_lock_init(&b->irq_lock);
>   	INIT_LIST_HEAD(&b->signalers);
> -	INIT_LIST_HEAD(&b->signaled_requests);
> +	init_llist_head(&b->signaled_requests);
>   
>   	init_irq_work(&b->irq_work, signal_irq_work);
>   
> @@ -329,10 +325,12 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	 * its signal completion.
>   	 */
>   	if (__request_completed(rq)) {
> -		if (__signal_request(rq, &b->signaled_requests))
> -			irq_work_queue(&b->irq_work);
> -		else
> +		if (__dma_fence_signal(&rq->fence)) {
> +			if (llist_add(&rq->signal_node, &b->signaled_requests))
> +				irq_work_queue(&b->irq_work);
> +		} else {
>   			i915_request_put(rq);
> +		}
>   		return;
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> index 8e53b9942695..3fa19820b37a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> @@ -35,7 +35,7 @@ struct intel_breadcrumbs {
>   	struct intel_engine_cs *irq_engine;
>   
>   	struct list_head signalers;
> -	struct list_head signaled_requests;
> +	struct llist_head signaled_requests;
>   
>   	struct irq_work irq_work; /* for use from inside irq_lock */
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 16b721080195..874af6db6103 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -176,7 +176,11 @@ struct i915_request {
>   	struct intel_context *context;
>   	struct intel_ring *ring;
>   	struct intel_timeline __rcu *timeline;
> -	struct list_head signal_link;
> +
> +	union {
> +		struct list_head signal_link;
> +		struct llist_node signal_node;

Transition is only from signal_link to signal_node, which uses and 
initializes only one field, so I think potential garbage in other ones 
is safe.

> +	};
>   
>   	/*
>   	 * The rcu epoch of when this request was allocated. Used to judiciously
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
