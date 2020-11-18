Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D12B7C0F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 12:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD7288843;
	Wed, 18 Nov 2020 11:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6506588843
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 11:05:29 +0000 (UTC)
IronPort-SDR: VPF43e6uJ6Ib8+tTYHph1zy9ktx8QanNNXTxfZv3mpC9UwQcd8kSxvlypVuLsHi+9Rd+k8WBJi
 jYbpZPu/w50g==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="235246427"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="235246427"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:05:28 -0800
IronPort-SDR: z3p9cQEKa55pGQw58DWAqUCQBml1+rjJqwBbjZYmcbGD0p60q5x6EzFnvbKzrH7vGivLam7R3C
 HT7eYzo/bIKw==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="544467806"
Received: from shaid-mobl.ger.corp.intel.com (HELO [10.255.202.56])
 ([10.255.202.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:05:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-14-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <86cb67d0-ac39-7f83-8ff8-eed3ef7c5943@linux.intel.com>
Date: Wed, 18 Nov 2020 11:05:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-14-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/28] drm/i915/gt: Free stale request on
 destroying the virtual engine
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


On 17/11/2020 11:30, Chris Wilson wrote:
> Since preempt-to-busy, we may unsubmit a request while it is still on
> the HW and completes asynchronously. That means it may be retired and in
> the process destroy the virtual engine (as the user has closed their
> context), but that engine may still be holding onto the unsubmitted
> compelted request. Therefore we need to potentially cleanup the old
> request on destroying the virtual engine. We also have to keep the
> virtual_engine alive until after the sibling's execlists_dequeue() have
> finished peeking into the virtual engines, for which we serialise with
> RCU.
> 
> v2: Be paranoid and flush the tasklet as well.
> v3: And flush the tasklet before the engines, as the tasklet may
> re-attach an rb_node after our removal from the siblings.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 61 +++++++++++++++++++++++++----
>   1 file changed, 54 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 17cb7060eb29..c11433884cf6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -182,6 +182,7 @@
>   struct virtual_engine {
>   	struct intel_engine_cs base;
>   	struct intel_context context;
> +	struct rcu_work rcu;
>   
>   	/*
>   	 * We allow only a single request through the virtual engine at a time
> @@ -5470,44 +5471,90 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
>   	return &ve->base.execlists.default_priolist.requests[0];
>   }
>   
> -static void virtual_context_destroy(struct kref *kref)
> +static void rcu_virtual_context_destroy(struct work_struct *wrk)
>   {
>   	struct virtual_engine *ve =
> -		container_of(kref, typeof(*ve), context.ref);
> +		container_of(wrk, typeof(*ve), rcu.work);
>   	unsigned int n;
>   
> -	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> -	GEM_BUG_ON(ve->request);
>   	GEM_BUG_ON(ve->context.inflight);
>   
> +	/* Preempt-to-busy may leave a stale request behind. */
> +	if (unlikely(ve->request)) {
> +		struct i915_request *old;
> +
> +		spin_lock_irq(&ve->base.active.lock);
> +
> +		old = fetch_and_zero(&ve->request);
> +		if (old) {
> +			GEM_BUG_ON(!i915_request_completed(old));
> +			__i915_request_submit(old);
> +			i915_request_put(old);
> +		}
> +
> +		spin_unlock_irq(&ve->base.active.lock);
> +	}
> +
> +	/*
> +	 * Flush the tasklet in case it is still running on another core.
> +	 *
> +	 * This needs to be done before we remove ourselves from the siblings'
> +	 * rbtrees as in the case it is running in parallel, it may reinsert
> +	 * the rb_node into a sibling.
> +	 */
> +	tasklet_kill(&ve->base.execlists.tasklet);

Can it still be running after an RCU period?

> +
> +	/* Decouple ourselves from the siblings, no more access allowed. */
>   	for (n = 0; n < ve->num_siblings; n++) {
>   		struct intel_engine_cs *sibling = ve->siblings[n];
>   		struct rb_node *node = &ve->nodes[sibling->id].rb;
> -		unsigned long flags;
>   
>   		if (RB_EMPTY_NODE(node))
>   			continue;
>   
> -		spin_lock_irqsave(&sibling->active.lock, flags);
> +		spin_lock_irq(&sibling->active.lock);
>   
>   		/* Detachment is lazily performed in the execlists tasklet */
>   		if (!RB_EMPTY_NODE(node))
>   			rb_erase_cached(node, &sibling->execlists.virtual);
>   
> -		spin_unlock_irqrestore(&sibling->active.lock, flags);
> +		spin_unlock_irq(&sibling->active.lock);
>   	}
>   	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
> +	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
>   
>   	if (ve->context.state)
>   		__execlists_context_fini(&ve->context);
>   	intel_context_fini(&ve->context);
>   
>   	intel_engine_free_request_pool(&ve->base);
> +	intel_breadcrumbs_free(ve->base.breadcrumbs);

This looks to belong to some other patch.

Regards,

Tvrtko

>   
>   	kfree(ve->bonds);
>   	kfree(ve);
>   }
>   
> +static void virtual_context_destroy(struct kref *kref)
> +{
> +	struct virtual_engine *ve =
> +		container_of(kref, typeof(*ve), context.ref);
> +
> +	GEM_BUG_ON(!list_empty(&ve->context.signals));
> +
> +	/*
> +	 * When destroying the virtual engine, we have to be aware that
> +	 * it may still be in use from an hardirq/softirq context causing
> +	 * the resubmission of a completed request (background completion
> +	 * due to preempt-to-busy). Before we can free the engine, we need
> +	 * to flush the submission code and tasklets that are still potentially
> +	 * accessing the engine. Flushing the tasklets require process context,
> +	 * and since we can guard the resubmit onto the engine with an RCU read
> +	 * lock, we can delegate the free of the engine to an RCU worker.
> +	 */
> +	INIT_RCU_WORK(&ve->rcu, rcu_virtual_context_destroy);
> +	queue_rcu_work(system_wq, &ve->rcu);
> +}
> +
>   static void virtual_engine_initial_hint(struct virtual_engine *ve)
>   {
>   	int swp;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
