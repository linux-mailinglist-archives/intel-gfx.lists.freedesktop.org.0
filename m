Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1442DE6F2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 16:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AC66E159;
	Fri, 18 Dec 2020 15:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236E56E159
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 15:52:11 +0000 (UTC)
IronPort-SDR: vQJAYxAtlGL31+8UQA8zd+jzBWoKzFRgZm7GMUXRidQFz4Nwmczu55XSpYloMG6gKYC4NluCun
 7Wl6GNxSOjTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="154677727"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="154677727"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 07:52:10 -0800
IronPort-SDR: tpWylOKWSnLLxOhZQZB6YK+FYfHvd6Yr1p6CVd9XITHvbltnKm2LgYNUaS5upliVkyyP0CENbr
 O2YegGBz51og==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="370633187"
Received: from mizrahid-mobl.ger.corp.intel.com (HELO [10.214.205.41])
 ([10.214.205.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 07:52:09 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201218091944.32417-1-chris@chris-wilson.co.uk>
 <20201218122421.18344-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <68b73001-3179-5aca-c206-449a1ff12d01@linux.intel.com>
Date: Fri, 18 Dec 2020 15:52:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201218122421.18344-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check for rq->hwsp validity
 after acquiring RCU lock
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/12/2020 12:24, Chris Wilson wrote:
> Since we allow removing the timeline map at runtime, there is a risk
> that rq->hwsp points into a stale page. To control that risk, we hold
> the RCU read lock while reading *rq->hwsp, but we missed a couple of
> important barriers. First, the unpinning / removal of the timeline map
> must be after all RCU readers into that map are complete, i.e. after an
> rcu barrier (in this case courtesy of call_rcu()). Secondly, we must
> make sure that the rq->hwsp we are about to dereference under the RCU
> lock is valid. In this case, we make the rq->hwsp pointer safe during
> i915_request_retire() and so we know that rq->hwsp may become invalid
> only after the request has been signaled. Therefore is the request is
> not yet signaled when we acquire rq->hwsp under the RCU, we know that
> rq->hwsp will remain valid for the duration of the RCU read lock.
> 
> This is a very small window that may lead to either considering the
> request not completed (causing a delay until the request is checked
> again, any wait for the request is not affected) or dereferencing an
> invalid pointer.
> 
> Fixes: 3adac4689f58 ("drm/i915: Introduce concept of per-timeline (context) HWSP")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.1+
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 11 ++----
>   drivers/gpu/drm/i915/gt/intel_timeline.c    | 10 +++---
>   drivers/gpu/drm/i915/i915_request.h         | 37 ++++++++++++++++++---
>   3 files changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 3c62fd6daa76..f96cd7d9b419 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -134,11 +134,6 @@ static bool remove_signaling_context(struct intel_breadcrumbs *b,
>   	return true;
>   }
>   
> -static inline bool __request_completed(const struct i915_request *rq)
> -{
> -	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
> -}
> -
>   __maybe_unused static bool
>   check_signal_order(struct intel_context *ce, struct i915_request *rq)
>   {
> @@ -245,7 +240,7 @@ static void signal_irq_work(struct irq_work *work)
>   		list_for_each_entry_rcu(rq, &ce->signals, signal_link) {
>   			bool release;
>   
> -			if (!__request_completed(rq))
> +			if (!__i915_request_is_complete(rq))
>   				break;
>   
>   			if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
> @@ -380,7 +375,7 @@ static void insert_breadcrumb(struct i915_request *rq)
>   	 * straight onto a signaled list, and queue the irq worker for
>   	 * its signal completion.
>   	 */
> -	if (__request_completed(rq)) {
> +	if (__i915_request_is_complete(rq)) {
>   		irq_signal_request(rq, b);
>   		return;
>   	}
> @@ -468,7 +463,7 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   	if (release)
>   		intel_context_put(ce);
>   
> -	if (__request_completed(rq))
> +	if (__i915_request_is_complete(rq))
>   		irq_signal_request(rq, b);
>   
>   	i915_request_put(rq);
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 512afacd2bdc..a005d0165bf4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -126,6 +126,10 @@ static void __rcu_cacheline_free(struct rcu_head *rcu)
>   	struct intel_timeline_cacheline *cl =
>   		container_of(rcu, typeof(*cl), rcu);
>   
> +	/* Must wait until after all *rq->hwsp are complete before removing */
> +	i915_gem_object_unpin_map(cl->hwsp->vma->obj);
> +	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
> +
>   	i915_active_fini(&cl->active);
>   	kfree(cl);
>   }
> @@ -133,11 +137,6 @@ static void __rcu_cacheline_free(struct rcu_head *rcu)
>   static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
>   {
>   	GEM_BUG_ON(!i915_active_is_idle(&cl->active));
> -
> -	i915_gem_object_unpin_map(cl->hwsp->vma->obj);
> -	i915_vma_put(cl->hwsp->vma);
> -	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
> -
>   	call_rcu(&cl->rcu, __rcu_cacheline_free);
>   }
>   
> @@ -179,7 +178,6 @@ cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
>   		return ERR_CAST(vaddr);
>   	}
>   
> -	i915_vma_get(hwsp->vma);
>   	cl->hwsp = hwsp;
>   	cl->vaddr = page_pack_bits(vaddr, cacheline);
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 92e4320c50c4..7c4453e60323 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -440,7 +440,7 @@ static inline u32 hwsp_seqno(const struct i915_request *rq)
>   
>   static inline bool __i915_request_has_started(const struct i915_request *rq)
>   {
> -	return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno - 1);
> +	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno - 1);
>   }
>   
>   /**
> @@ -471,11 +471,19 @@ static inline bool __i915_request_has_started(const struct i915_request *rq)
>    */
>   static inline bool i915_request_started(const struct i915_request *rq)
>   {
> +	bool result;
> +
>   	if (i915_request_signaled(rq))
>   		return true;
>   
> -	/* Remember: started but may have since been preempted! */
> -	return __i915_request_has_started(rq);
> +	result = true;
> +	rcu_read_lock(); /* the HWSP may be freed at runtime */
> +	if (likely(!i915_request_signaled(rq)))
> +		/* Remember: started but may have since been preempted! */
> +		result = __i915_request_has_started(rq);
> +	rcu_read_unlock();
> +
> +	return result;
>   }
>   
>   /**
> @@ -488,10 +496,16 @@ static inline bool i915_request_started(const struct i915_request *rq)
>    */
>   static inline bool i915_request_is_running(const struct i915_request *rq)
>   {
> +	bool result;
> +
>   	if (!i915_request_is_active(rq))
>   		return false;
>   
> -	return __i915_request_has_started(rq);
> +	rcu_read_lock();
> +	result = __i915_request_has_started(rq) && i915_request_is_active(rq);
> +	rcu_read_unlock();
> +
> +	return result;
>   }
>   
>   /**
> @@ -515,12 +529,25 @@ static inline bool i915_request_is_ready(const struct i915_request *rq)
>   	return !list_empty(&rq->sched.link);
>   }
>   
> +static inline bool __i915_request_is_complete(const struct i915_request *rq)
> +{
> +	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
> +}
> +
>   static inline bool i915_request_completed(const struct i915_request *rq)
>   {
> +	bool result;
> +
>   	if (i915_request_signaled(rq))
>   		return true;
>   
> -	return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno);
> +	result = true;
> +	rcu_read_lock(); /* the HWSP may be freed at runtime */
> +	if (likely(!i915_request_signaled(rq)))
> +		result = __i915_request_is_complete(rq);
> +	rcu_read_unlock();
> +
> +	return result; >   }
>   
>   static inline void i915_request_mark_complete(struct i915_request *rq)
> 

Should rq->hwsp_seqno be marked as rcu pointer?

We reset the fence signaled status before re-assigning the timeline. So 
if we were to query a request in the process of being allocated, do we 
need to do something extra to make sure !signaled status is not seen 
before the rq->hwsp_seqno is replaced? Like should the order of re-init 
be inverted?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
