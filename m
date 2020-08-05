Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3ED23CB50
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 15:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB266E7DA;
	Wed,  5 Aug 2020 13:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645F06E7DA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 13:59:50 +0000 (UTC)
IronPort-SDR: HX6ZeWEBQKFbyMoSTUOOE3i+hKRR8+lBjGTRjTm9UUSj3AdxV74tuU5AijmPnBnfveV546w84V
 fMR2S84OJ+pA==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="151758321"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="151758321"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:59:49 -0700
IronPort-SDR: zicvPHYsR6DV3KMpU5IfUSTUxpVij84iE+s1L4RmozdficSgP8rd3wmR5Geodo/0s89g/hxJip
 +41+kKi3zyYw==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467473559"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:59:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-18-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6ace4cff-9eac-efce-1608-fc7e0ed605a0@linux.intel.com>
Date: Wed, 5 Aug 2020 14:59:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-18-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/37] drm/i915/gem: Assign context id for
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


On 05/08/2020 13:22, Chris Wilson wrote:
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
> index db893f6c516b..bc80e7d3c50a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -721,6 +721,10 @@ __create_context(struct drm_i915_private *i915)
>   	mutex_init(&ctx->mutex);
>   	INIT_LIST_HEAD(&ctx->link);
>   
> +	ctx->async.width = rounddown_pow_of_two(num_online_cpus());
> +	ctx->async.context = dma_fence_context_alloc(ctx->async.width);
> +	ctx->async.width--;
> +
>   	spin_lock_init(&ctx->stale.lock);
>   	INIT_LIST_HEAD(&ctx->stale.engines);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index a133f92bbedb..f254458a795e 100644
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
> +		unsigned int width;
> +	} async;
> +
>   	/**
>   	 * @vm: unique address space (GTT)
>   	 *
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
