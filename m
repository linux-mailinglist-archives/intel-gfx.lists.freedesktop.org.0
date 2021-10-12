Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36669429F0A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 09:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9283F6E7D3;
	Tue, 12 Oct 2021 07:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5056E7D1;
 Tue, 12 Oct 2021 07:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="313266205"
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="313266205"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 00:53:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="441129366"
Received: from cfinne2-mobl.ger.corp.intel.com (HELO [10.213.213.112])
 ([10.213.213.112])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 00:53:27 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Cc: john.c.harrison@intel.com, daniele.ceraolospurio@intel.com
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <20211004220637.14746-25-matthew.brost@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <033fd934-26b8-2888-8605-45f80a38dffa@linux.intel.com>
Date: Tue, 12 Oct 2021 08:53:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211004220637.14746-25-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 24/26] drm/i915: Update I915_GEM_BUSY IOCTL
 to understand composite fences
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/10/2021 23:06, Matthew Brost wrote:
> Parallel submission create composite fences (dma_fence_array) for excl /
> shared slots in objects. The I915_GEM_BUSY IOCTL checks these slots to
> determine the busyness of the object. Prior to patch it only check if
> the fence in the slot was a i915_request. Update the check to understand
> composite fences and correctly report the busyness.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_busy.c      | 60 +++++++++++++++----
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  5 +-
>   drivers/gpu/drm/i915/i915_request.h           |  6 ++
>   3 files changed, 58 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> index 6234e17259c1..b89d173c62eb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> @@ -4,6 +4,8 @@
>    * Copyright © 2014-2016 Intel Corporation
>    */
>   
> +#include <linux/dma-fence-array.h>
> +
>   #include "gt/intel_engine.h"
>   
>   #include "i915_gem_ioctls.h"
> @@ -36,7 +38,7 @@ static __always_inline u32 __busy_write_id(u16 id)
>   }
>   
>   static __always_inline unsigned int
> -__busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u16 id))
> +__busy_set_if_active(struct dma_fence *fence, u32 (*flag)(u16 id))
>   {
>   	const struct i915_request *rq;
>   
> @@ -46,29 +48,63 @@ __busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u16 id))
>   	 * to eventually flush us, but to minimise latency just ask the
>   	 * hardware.
>   	 *
> -	 * Note we only report on the status of native fences.
> +	 * Note we only report on the status of native fences and we currently
> +	 * have two native fences:
> +	 *
> +	 * 1. A composite fence (dma_fence_array) constructed of i915 requests
> +	 * created during a parallel submission. In this case we deconstruct the
> +	 * composite fence into individual i915 requests and check the status of
> +	 * each request.
> +	 *
> +	 * 2. A single i915 request.
>   	 */
> -	if (!dma_fence_is_i915(fence))
> +	if (dma_fence_is_array(fence)) {
> +		struct dma_fence_array *array = to_dma_fence_array(fence);
> +		struct dma_fence **child = array->fences;
> +		unsigned int nchild = array->num_fences;
> +
> +		do {
> +			struct dma_fence *current_fence = *child++;
> +
> +			/* Not an i915 fence, can't be busy per above */
> +			if (!dma_fence_is_i915(current_fence) ||
> +			    !test_bit(I915_FENCE_FLAG_COMPOSITE,
> +				      &current_fence->flags)) {
> +				return 0;
> +			}
> +
> +			rq = to_request(current_fence);
> +			if (!i915_request_completed(rq)) {
> +				BUILD_BUG_ON(!typecheck(u16,
> +							rq->engine->uabi_class));
> +				return flag(rq->engine->uabi_class);
> +			}
> +		} while (--nchild);

Do you even need to introduce I915_FENCE_FLAG_COMPOSITE? If parallel 
submit is the only possible creator of array fences then possibly not. 
Probably even would result in less code which even keeps working in a 
hypothetical future. Otherwise you could add a debug bug on if array 
fence contains a fence without I915_FENCE_FLAG_COMPOSITE set.

Secondly, I'd also run the whole loop and not return on first busy or 
incompatible for simplicity.

And finally, with all above in place, I think you could have common 
function for the below (checking one fence) and call that both for a 
single fence and from an array loop above for less duplication. (Even 
duplicated BUILD_BUG_ON which makes no sense!)

End result would be a simpler patch like:

__busy_set_if_active_one(...)
{
    .. existing __busy_set_if_active ..
}

__busy_set_if_active(..)
{
   ...
   if (dma_fence_is_array(fence)) {
	...
	for (i = 0; i < array->num_fences; i++)
		flags |= __busy_set_if_active_one(...);
   } else {
	flags = __busy_set_if_active_one(...);
   }

Regards,

Tvrtko

> +
> +		/* All requests in array complete, not busy */
>   		return 0;
> +	} else {
> +		if (!dma_fence_is_i915(fence))
> +			return 0;
>   
> -	/* opencode to_request() in order to avoid const warnings */
> -	rq = container_of(fence, const struct i915_request, fence);
> -	if (i915_request_completed(rq))
> -		return 0;
> +		rq = to_request(fence);
> +		if (i915_request_completed(rq))
> +			return 0;
>   
> -	/* Beware type-expansion follies! */
> -	BUILD_BUG_ON(!typecheck(u16, rq->engine->uabi_class));
> -	return flag(rq->engine->uabi_class);
> +		/* Beware type-expansion follies! */
> +		BUILD_BUG_ON(!typecheck(u16, rq->engine->uabi_class));
> +		return flag(rq->engine->uabi_class);
> +	}
>   }
>   
>   static __always_inline unsigned int
> -busy_check_reader(const struct dma_fence *fence)
> +busy_check_reader(struct dma_fence *fence)
>   {
>   	return __busy_set_if_active(fence, __busy_read_flag);
>   }
>   
>   static __always_inline unsigned int
> -busy_check_writer(const struct dma_fence *fence)
> +busy_check_writer(struct dma_fence *fence)
>   {
>   	if (!fence)
>   		return 0;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5c7fb6f68bbb..16276f406fd6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2988,8 +2988,11 @@ eb_composite_fence_create(struct i915_execbuffer *eb, int out_fence_fd)
>   	if (!fences)
>   		return ERR_PTR(-ENOMEM);
>   
> -	for_each_batch_create_order(eb, i)
> +	for_each_batch_create_order(eb, i) {
>   		fences[i] = &eb->requests[i]->fence;
> +		__set_bit(I915_FENCE_FLAG_COMPOSITE,
> +			  &eb->requests[i]->fence.flags);
> +	}
>   
>   	fence_array = dma_fence_array_create(eb->num_batches,
>   					     fences,
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 24db8459376b..dc359242d1ae 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -156,6 +156,12 @@ enum {
>   	 * submission / relationship encoutered an error.
>   	 */
>   	I915_FENCE_FLAG_SKIP_PARALLEL,
> +
> +	/*
> +	 * I915_FENCE_FLAG_COMPOSITE - Indicates fence is part of a composite
> +	 * fence (dma_fence_array) and i915 generated for parallel submission.
> +	 */
> +	I915_FENCE_FLAG_COMPOSITE,
>   };
>   
>   /**
> 
