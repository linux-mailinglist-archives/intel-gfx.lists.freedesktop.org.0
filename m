Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1005A19D83C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00F26EBC4;
	Fri,  3 Apr 2020 13:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800E06EBB8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:57 +0000 (UTC)
IronPort-SDR: AUjmXbXruyDkDr4CQ2pbkPW5S/ElvWIV0bZiTgMvZIEzgjy7nV89TAvJzEnEFjrkAPmDEokEjb
 5oUFJrr1bF8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 06:58:50 -0700
IronPort-SDR: he14udPqtd9OXWjySBiH39gf3XDwhk8/sreRV6NTqsEWM9i8Dsu+acAvEf7HzVHRsw03d6zAfW
 KFwwqllOsGZA==
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="396744586"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 06:58:48 -0700
Message-ID: <b3ce59260b89a55bb192ba6dfebc32ce9ca131dc.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 03 Apr 2020 15:58:47 +0200
In-Reply-To: <20200402184037.21630-1-chris@chris-wilson.co.uk>
References: <20200402183836.21508-1-chris@chris-wilson.co.uk>
 <20200402184037.21630-1-chris@chris-wilson.co.uk>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep a per-engine request pools
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-04-02 at 19:40 +0100, Chris Wilson wrote:
> Add a tiny per-engine request mempool so that we should always have a
> request available for powermanagement allocations from tricky
> contexts. This reserve is expected to be only used for kernel
> contexts when barriers must be emitted [almost] without fail.
> 
> The main consumer for this reserved request is expected to be engine-pm,
> for which we know that there will always be at least the previous pm
> request that we can reuse under mempressure (so there should always be
> a spare request for engine_park()).
> 
> This is an alternative to using a comparatively bulky mempool, which
> requires custom handling for both our reserved allocation requirement
> and to protect our TYPESAFE_BY_RCU slab cache.

This change resolves the issue for me, and being more simple than the
mempool approach, looks still better.

Reviewed-and-Tested-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Thanks,
Janusz

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  7 +++++
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 +++
>  drivers/gpu/drm/i915/i915_request.c          | 27 ++++++++++++++++----
>  drivers/gpu/drm/i915/i915_request.h          |  2 ++
>  4 files changed, 34 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 843cb6f2f696..5f45c8274203 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -431,7 +431,14 @@ void intel_engines_free(struct intel_gt *gt)
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  
> +	/* Free the requests! dma-resv keeps fences around for an eternity */
> +	rcu_barrier();
> +
>  	for_each_engine(engine, gt, id) {
> +		if (engine->request_pool)
> +			kmem_cache_free(i915_request_slab_cache(),
> +					engine->request_pool);
> +
>  		kfree(engine);
>  		gt->engine[id] = NULL;
>  	}
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 80cdde712842..de8e6edcf999 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -308,6 +308,9 @@ struct intel_engine_cs {
>  		struct list_head hold; /* ready requests, but on hold */
>  	} active;
>  
> +	/* keep a request in reserve for a [pm] barrier under oom */
> +	struct i915_request *request_pool;
> +
>  	struct llist_head barrier_tasks;
>  
>  	struct intel_context *kernel_context; /* pinned */
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 3388c5b610c5..22635bbabf06 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -101,6 +101,11 @@ static signed long i915_fence_wait(struct dma_fence *fence,
>  				 timeout);
>  }
>  
> +struct kmem_cache *i915_request_slab_cache(void)
> +{
> +	return global.slab_requests;
> +}
> +
>  static void i915_fence_release(struct dma_fence *fence)
>  {
>  	struct i915_request *rq = to_request(fence);
> @@ -115,6 +120,10 @@ static void i915_fence_release(struct dma_fence *fence)
>  	i915_sw_fence_fini(&rq->submit);
>  	i915_sw_fence_fini(&rq->semaphore);
>  
> +	/* Keep one request on each engine for reserved use under mempressure */
> +	if (!cmpxchg(&rq->engine->request_pool, NULL, rq))
> +		return;
> +
>  	kmem_cache_free(global.slab_requests, rq);
>  }
>  
> @@ -629,14 +638,22 @@ static void retire_requests(struct intel_timeline *tl)
>  }
>  
>  static noinline struct i915_request *
> -request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
> +request_alloc_slow(struct intel_timeline *tl,
> +		   struct i915_request **rsvd,
> +		   gfp_t gfp)
>  {
>  	struct i915_request *rq;
>  
> -	if (list_empty(&tl->requests))
> -		goto out;
> +	/* If we cannot wait, dip into our reserves */
> +	if (!gfpflags_allow_blocking(gfp)) {
> +		rq = xchg(rsvd, NULL);
> +		if (!rq) /* Use the normal failure path for one final WARN */
> +			goto out;
>  
> -	if (!gfpflags_allow_blocking(gfp))
> +		return rq;
> +	}
> +
> +	if (list_empty(&tl->requests))
>  		goto out;
>  
>  	/* Move our oldest request to the slab-cache (if not in use!) */
> @@ -721,7 +738,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>  	rq = kmem_cache_alloc(global.slab_requests,
>  			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
>  	if (unlikely(!rq)) {
> -		rq = request_alloc_slow(tl, gfp);
> +		rq = request_alloc_slow(tl, &ce->engine->request_pool, gfp);
>  		if (!rq) {
>  			ret = -ENOMEM;
>  			goto err_unreserve;
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 3c552bfea67a..d8ce908e1346 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -300,6 +300,8 @@ static inline bool dma_fence_is_i915(const struct dma_fence *fence)
>  	return fence->ops == &i915_fence_ops;
>  }
>  
> +struct kmem_cache *i915_request_slab_cache(void);
> +
>  struct i915_request * __must_check
>  __i915_request_create(struct intel_context *ce, gfp_t gfp);
>  struct i915_request * __must_check

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
