Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB2721873D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0FE6E8B9;
	Wed,  8 Jul 2020 12:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660F36E8BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 12:26:29 +0000 (UTC)
IronPort-SDR: z9M/IZEgp9du+z8tnZlVbwtiL0pNxK2JlorChzUM6BmjUyWTLPak4r3SgAGyjGGo6KHqXRvQGL
 FcrUnaw1/tzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="212722758"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="212722758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:26:28 -0700
IronPort-SDR: fQIbUqqo26A/65dPlSJvCkTgD+PzX8YhufUP70iY4+YrSWnKtY5ih9f5lbpOCGG0undos8YxW1
 T5jE6kJTrAAQ==
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="457485537"
Received: from ipeer3-mobl.ger.corp.intel.com (HELO [10.214.241.189])
 ([10.214.241.189])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:26:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
Date: Wed, 8 Jul 2020 13:26:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
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


On 06/07/2020 07:19, Chris Wilson wrote:
> Allocate a few dma fence context id that we can use to associate async work
> [for the CPU] launched on behalf of this context. For extra fun, we allow
> a configurable concurrency width.
> 
> A current example would be that we spawn an unbound worker for every
> userptr get_pages. In the future, we wish to charge this work to the
> context that initiated the async work and to impose concurrency limits
> based on the context.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c       | 4 ++++
>   drivers/gpu/drm/i915/gem/i915_gem_context.h       | 6 ++++++
>   drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 6 ++++++
>   3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 41784df51e58..bd68746327b3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -714,6 +714,10 @@ __create_context(struct drm_i915_private *i915)
>   	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
>   	mutex_init(&ctx->mutex);
>   
> +	ctx->async.width = rounddown_pow_of_two(num_online_cpus());
> +	ctx->async.context = dma_fence_context_alloc(ctx->async.width);
> +	ctx->async.width--;

Hey I had a tri-core CPU back in the day.. :) Really, I can only assume 
you are oding some tricks with masks which maybe only work with power of 
2 num cpus? Hard to say.. please explain in a comment.

I don't even understand what the context will be for yet and why it 
needs a separate context id.

> +
>   	spin_lock_init(&ctx->stale.lock);
>   	INIT_LIST_HEAD(&ctx->stale.engines);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 3702b2fb27ab..e104ff0ae740 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -134,6 +134,12 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
>   int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
>   				       struct drm_file *file);
>   
> +static inline u64 i915_gem_context_async_id(struct i915_gem_context *ctx)
> +{
> +	return (ctx->async.context +
> +		(atomic_fetch_inc(&ctx->async.cur) & ctx->async.width));
> +}
> +
>   static inline struct i915_gem_context *
>   i915_gem_context_get(struct i915_gem_context *ctx)
>   {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index ae14ca24a11f..52561f98000f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -85,6 +85,12 @@ struct i915_gem_context {
>   
>   	struct intel_timeline *timeline;
>   
> +	struct {
> +		u64 context;
> +		atomic_t cur;

What is cur? In which patch it gets used? (Can't see it.)

> +		unsigned int width;
> +	} async;
> +
>   	/**
>   	 * @vm: unique address space (GTT)
>   	 *
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
