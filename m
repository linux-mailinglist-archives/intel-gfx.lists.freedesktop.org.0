Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F062226FB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 17:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014DC6E2E0;
	Thu, 16 Jul 2020 15:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248CD6E2E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 15:29:42 +0000 (UTC)
IronPort-SDR: 0V6qvcFeD8eSdUiv9G4ktse2gPuOhGzD+60/OpXGcVv5g3wPFKdM6IHRVzllXiygowziSYMg7K
 WDYuyqYmvTWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="136858632"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="136858632"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:29:40 -0700
IronPort-SDR: VjDQi5qsbl4fGeTQBJQN3EW1F4aTFORyz1hmRlhULD3hqMtwsM0aPasxZ5r10qus+rXv5Yp/0J
 1NJjYckPfNbA==
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460511271"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:29:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716113357.7644-1-chris@chris-wilson.co.uk>
 <20200716113357.7644-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a09eea8d-2b13-8fc4-e5c3-1105f4d34ad3@linux.intel.com>
Date: Thu, 16 Jul 2020 16:29:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716113357.7644-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Drop
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


On 16/07/2020 12:33, Chris Wilson wrote:
> Now that we have serialised the request retirement's decoupling of the
> breadcrumb from the engine with the request signaling, we know that
> there should never be a stale breadcrumb attached to an unbound virtual
> engine. We can now remove the fixup code that had to migrate the
> breadcrumbs along with the virtual engine, from one sibling to the next.

What do you mean by "unbound virtual engine"? Previous siblings[0]? We 
do know that has been completed, at the point the next one is getting 
dequeued, and by the virtue of breadcrumbs doing the signaling it will 
have been removed from the list. But that was true before. Which leaves 
me confused as to why the transfer was needed.. Was it just because 
explicit wait used to be a potential signaler and that's no longer the case?

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 29 --------------------
>   drivers/gpu/drm/i915/gt/intel_engine.h       |  3 --
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c          | 15 ----------
>   4 files changed, 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index a0f52417238c..164662ae130b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -167,8 +167,6 @@ static void signal_irq_work(struct irq_work *work)
>   	if (b->irq_armed && list_empty(&b->signalers))
>   		__intel_breadcrumbs_disarm_irq(b);
>   
> -	list_splice_init(&b->signaled_requests, &signal);
> -
>   	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
>   		GEM_BUG_ON(list_empty(&ce->signals));
>   
> @@ -258,7 +256,6 @@ void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
>   
>   	spin_lock_init(&b->irq_lock);
>   	INIT_LIST_HEAD(&b->signalers);
> -	INIT_LIST_HEAD(&b->signaled_requests);
>   
>   	init_irq_work(&b->irq_work, signal_irq_work);
>   }
> @@ -278,32 +275,6 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
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
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 8de92fd7d392..e0a2ceac729f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -393,8 +393,6 @@ struct intel_engine_cs {
>   		spinlock_t irq_lock;
>   		struct list_head signalers;
>   
> -		struct list_head signaled_requests;
> -
>   		struct irq_work irq_work; /* for use from inside irq_lock */
>   
>   		unsigned int irq_enabled;
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
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
