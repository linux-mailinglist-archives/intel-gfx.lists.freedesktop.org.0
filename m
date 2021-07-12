Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6664A3C628F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 20:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D185889D66;
	Mon, 12 Jul 2021 18:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A34689D66;
 Mon, 12 Jul 2021 18:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="295679191"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="295679191"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 11:23:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="412668967"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.209.125.18])
 ([10.209.125.18])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 11:23:15 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-29-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <324bd9ac-822a-e83a-4a04-f7eb61fd43f9@intel.com>
Date: Mon, 12 Jul 2021 11:23:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624070516.21893-29-matthew.brost@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 28/47] drm/i915: Hold reference to
 intel_context over life of i915_request
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

On 6/24/2021 00:04, Matthew Brost wrote:
> Hold a reference to the intel_context over life of an i915_request.
> Without this an i915_request can exist after the context has been
> destroyed (e.g. request retired, context closed, but user space holds a
> reference to the request from an out fence). In the case of GuC
> submission + virtual engine, the engine that the request references is
> also destroyed which can trigger bad pointer dref in fence ops (e.g.
Maybe quickly explain a why this is different for GuC submission vs 
execlist? Presumably it is about only decomposing virtual engines to 
physical ones in execlist mode?


> i915_fence_get_driver_name). We could likely change
> i915_fence_get_driver_name to avoid touching the engine but let's just
> be safe and hold the intel_context reference.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 54 ++++++++++++-----------------
>   1 file changed, 22 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index de9deb95b8b1..dec5a35c9aa2 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -126,39 +126,17 @@ static void i915_fence_release(struct dma_fence *fence)
>   	i915_sw_fence_fini(&rq->semaphore);
>   
>   	/*
> -	 * Keep one request on each engine for reserved use under mempressure
> -	 *
> -	 * We do not hold a reference to the engine here and so have to be
> -	 * very careful in what rq->engine we poke. The virtual engine is
> -	 * referenced via the rq->context and we released that ref during
> -	 * i915_request_retire(), ergo we must not dereference a virtual
> -	 * engine here. Not that we would want to, as the only consumer of
> -	 * the reserved engine->request_pool is the power management parking,
> -	 * which must-not-fail, and that is only run on the physical engines.
> -	 *
> -	 * Since the request must have been executed to be have completed,
> -	 * we know that it will have been processed by the HW and will
> -	 * not be unsubmitted again, so rq->engine and rq->execution_mask
> -	 * at this point is stable. rq->execution_mask will be a single
> -	 * bit if the last and _only_ engine it could execution on was a
> -	 * physical engine, if it's multiple bits then it started on and
> -	 * could still be on a virtual engine. Thus if the mask is not a
> -	 * power-of-two we assume that rq->engine may still be a virtual
> -	 * engine and so a dangling invalid pointer that we cannot dereference
> -	 *
> -	 * For example, consider the flow of a bonded request through a virtual
> -	 * engine. The request is created with a wide engine mask (all engines
> -	 * that we might execute on). On processing the bond, the request mask
> -	 * is reduced to one or more engines. If the request is subsequently
> -	 * bound to a single engine, it will then be constrained to only
> -	 * execute on that engine and never returned to the virtual engine
> -	 * after timeslicing away, see __unwind_incomplete_requests(). Thus we
> -	 * know that if the rq->execution_mask is a single bit, rq->engine
> -	 * can be a physical engine with the exact corresponding mask.
> +	 * Keep one request on each engine for reserved use under mempressure,
> +	 * do not use with virtual engines as this really is only needed for
> +	 * kernel contexts.
>   	 */
> -	if (is_power_of_2(rq->execution_mask) &&
> -	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
> +	if (!intel_engine_is_virtual(rq->engine) &&
> +	    !cmpxchg(&rq->engine->request_pool, NULL, rq)) {
> +		intel_context_put(rq->context);
>   		return;
> +	}
> +
> +	intel_context_put(rq->context);
The put is actually unconditional? So it could be moved before the if?

John.

>   
>   	kmem_cache_free(global.slab_requests, rq);
>   }
> @@ -977,7 +955,18 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   		}
>   	}
>   
> -	rq->context = ce;
> +	/*
> +	 * Hold a reference to the intel_context over life of an i915_request.
> +	 * Without this an i915_request can exist after the context has been
> +	 * destroyed (e.g. request retired, context closed, but user space holds
> +	 * a reference to the request from an out fence). In the case of GuC
> +	 * submission + virtual engine, the engine that the request references
> +	 * is also destroyed which can trigger bad pointer dref in fence ops
> +	 * (e.g. i915_fence_get_driver_name). We could likely change these
> +	 * functions to avoid touching the engine but let's just be safe and
> +	 * hold the intel_context reference.
> +	 */
> +	rq->context = intel_context_get(ce);
>   	rq->engine = ce->engine;
>   	rq->ring = ce->ring;
>   	rq->execution_mask = ce->engine->mask;
> @@ -1054,6 +1043,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   	GEM_BUG_ON(!list_empty(&rq->sched.waiters_list));
>   
>   err_free:
> +	intel_context_put(ce);
>   	kmem_cache_free(global.slab_requests, rq);
>   err_unreserve:
>   	intel_context_unpin(ce);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
