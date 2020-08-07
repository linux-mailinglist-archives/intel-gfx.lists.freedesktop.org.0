Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F0223ED1A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 14:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20ADA6E125;
	Fri,  7 Aug 2020 12:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4497E6E125
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 12:08:14 +0000 (UTC)
IronPort-SDR: LiTBdr0cG2GCOkq0hMpxaEhB/2V2WP2vLW06+JW3ZbhtAGdJx4hV5/1fY/QMy4CONI+916H1RS
 9Qwa8OlS48Pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150781796"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="150781796"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 05:08:13 -0700
IronPort-SDR: x9L5Fmw4fyCiM/puF3r5FcWDuzHiXnHq6Nn2zhfTYy3/UVQK5TaGsC3up05FtsnFNZM+rZtaAg
 KI906DGZyztw==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437884531"
Received: from kmatyuch-mobl.ger.corp.intel.com (HELO [10.255.197.120])
 ([10.255.197.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 05:08:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7566ff71-bb34-6c77-2d82-8b2c8ab18e7c@linux.intel.com>
Date: Fri, 7 Aug 2020 13:08:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200807083256.32761-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Free stale request on
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


On 07/08/2020 09:32, Chris Wilson wrote:
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
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 50 ++++++++++++++++++++++++-----
>   1 file changed, 42 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 0c632f15f677..87528393276c 100644
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
> @@ -5387,33 +5388,47 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
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
> -	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));

Hm why remove this assert? I understood the point of doing this via rcu 
is to guarantee tasklet would be finished, if it was queued or in progress.

> +
> +	tasklet_kill(&ve->base.execlists.tasklet);

And then if this tasklet_kill actually does something it collapses my 
image of how this race and the fix.

Regards,

Tvrtko

> +	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
>   
>   	if (ve->context.state)
>   		__execlists_context_fini(&ve->context);
> @@ -5425,6 +5440,25 @@ static void virtual_context_destroy(struct kref *kref)
>   	kfree(ve);
>   }
>   
> +static void virtual_context_destroy(struct kref *kref)
> +{
> +	struct virtual_engine *ve =
> +		container_of(kref, typeof(*ve), context.ref);
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
