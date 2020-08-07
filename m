Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E7E23EC6A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 13:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0CD86E0D4;
	Fri,  7 Aug 2020 11:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0093A6E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 11:26:47 +0000 (UTC)
IronPort-SDR: GReL0Uyj3EaumpiEt5Wuyiv+G13NNymMSQMa3sbhaFsDTaCxfYG98djE8Np9KqRYzr/xH9r875
 rX1SP5+WF0Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="140648906"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="140648906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:26:47 -0700
IronPort-SDR: TaUJhaVcRWjxwfbSuXSVBA324D37SHs+RJn6BrJS5zBGJr5yA8yWd224hns18pSCibOG8s+LVg
 ohQH8QMJdceQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437876463"
Received: from kmatyuch-mobl.ger.corp.intel.com (HELO [10.255.197.120])
 ([10.255.197.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:26:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8dc16013-5104-b328-0ddb-15d4cc14b027@linux.intel.com>
Date: Fri, 7 Aug 2020 12:26:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200807083256.32761-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Track signaled breadcrumbs
 outside of the breadcrumb spinlock
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


On 07/08/2020 09:32, Chris Wilson wrote:
> Make b->signaled_requests a lockless-list so that we can manipulate it
> outside of the b->irq_lock.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 33 ++++++++++++-------
>   .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
>   drivers/gpu/drm/i915/i915_request.h           |  6 +++-
>   3 files changed, 27 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 6c321419441f..98923344f491 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -173,26 +173,34 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>   		intel_engine_add_retire(b->irq_engine, tl);
>   }
>   
> -static bool __signal_request(struct i915_request *rq, struct list_head *signals)
> +static bool __signal_request(struct i915_request *rq)
>   {
> -	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> -
>   	if (!__dma_fence_signal(&rq->fence)) {
>   		i915_request_put(rq);
>   		return false;
>   	}
>   
> -	list_add_tail(&rq->signal_link, signals);
>   	return true;
>   }
>   
> +static struct llist_node *
> +__llist_add(struct llist_node *node, struct llist_node *head)
> +{
> +	node->next = head;
> +	return node;
> +}
> +
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
> +	if (unlikely(!llist_empty(&b->signaled_requests)))
> +		signal = llist_del_all(&b->signaled_requests);
>   
>   	spin_lock(&b->irq_lock);
>   
> @@ -224,8 +232,6 @@ static void signal_irq_work(struct irq_work *work)
>   	if (b->irq_armed && list_empty(&b->signalers))
>   		__intel_breadcrumbs_disarm_irq(b);
>   
> -	list_splice_init(&b->signaled_requests, &signal);
> -
>   	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
>   		GEM_BUG_ON(list_empty(&ce->signals));
>   
> @@ -242,7 +248,9 @@ static void signal_irq_work(struct irq_work *work)
>   			 * spinlock as the callback chain may end up adding
>   			 * more signalers to the same context or engine.
>   			 */
> -			__signal_request(rq, &signal);
> +			clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> +			if (__signal_request(rq))
> +				signal = __llist_add(&rq->signal_node, signal);

Presumably here you count on no possible races, allowing for a more 
optimized, custom, __llist_add. It needs a comment at minimum, or even 
better just use llist_add.

Regards,

Tvrtko

>   		}
>   
>   		/*
> @@ -262,9 +270,9 @@ static void signal_irq_work(struct irq_work *work)
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
> @@ -291,7 +299,7 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
>   
>   	spin_lock_init(&b->irq_lock);
>   	INIT_LIST_HEAD(&b->signalers);
> -	INIT_LIST_HEAD(&b->signaled_requests);
> +	init_llist_head(&b->signaled_requests);
>   
>   	init_irq_work(&b->irq_work, signal_irq_work);
>   
> @@ -352,7 +360,8 @@ static void insert_breadcrumb(struct i915_request *rq,
>   	 * its signal completion.
>   	 */
>   	if (__request_completed(rq)) {
> -		if (__signal_request(rq, &b->signaled_requests))
> +		if (__signal_request(rq) &&
> +		    llist_add(&rq->signal_node, &b->signaled_requests))
>   			irq_work_queue(&b->irq_work);
>   		return;
>   	}
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
> +	};
>   
>   	/*
>   	 * The rcu epoch of when this request was allocated. Used to judiciously
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
