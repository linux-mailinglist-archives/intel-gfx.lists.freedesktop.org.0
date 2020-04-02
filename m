Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F45919CB98
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 22:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476D26E15E;
	Thu,  2 Apr 2020 20:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193C76E15E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 20:38:16 +0000 (UTC)
IronPort-SDR: s55U+lEeEpifZopQfU6VtZrpEzUiQDcBpl/835jgiOT0xzkx5NW14Qu4y9BgoZ9Rpm2ZU1EDRA
 SWzBGmQnsquQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 13:38:16 -0700
IronPort-SDR: i3grcaAUxpQwAnc7epH3XNxGS6ft/MIZ7uhWtKJ3Gxk+N6Q5ivB6QmAoY0HzQ49RMoWvnnmDAa
 /kNuKqQx1crA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="451068592"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 02 Apr 2020 13:38:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EB0C65C1EF4; Thu,  2 Apr 2020 23:36:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200402124218.6375-1-chris@chris-wilson.co.uk>
References: <20200402124218.6375-1-chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 23:36:35 +0300
Message-ID: <87wo6xoca4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Utilize rcu iteration of
 context engines
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Now that we can peek at GEM->engines[] and obtain a reference to them
> using RCU, do so for instances where we can safely iterate the
> potentially old copy of the engines. For setting, we can do this when we
> know the engine properties are copied over before swapping, so we know
> the new engines already have the global property and we update the old
> before they are discarded. For reading, we only need to be safe; as we
> do so on behalf of the user, their races are their own problem.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 59 +++++++++++----------
>  1 file changed, 31 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 50e7580f9337..2b6dd08de6f1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -757,21 +757,46 @@ __create_context(struct drm_i915_private *i915)
>  	return ERR_PTR(err);
>  }
>  
> +static inline struct i915_gem_engines *
> +__context_engines_await(const struct i915_gem_context *ctx)
> +{
> +	struct i915_gem_engines *engines;
> +
> +	rcu_read_lock();
> +	do {
> +		engines = rcu_dereference(ctx->engines);
> +		GEM_BUG_ON(!engines);
> +
> +		if (unlikely(!i915_sw_fence_await(&engines->fence)))
> +			continue;
> +
> +		if (likely(engines == rcu_access_pointer(ctx->engines)))
> +			break;
> +
> +		i915_sw_fence_complete(&engines->fence);
> +	} while (1);
> +	rcu_read_unlock();
> +
> +	return engines;
> +}
> +
>  static int
>  context_apply_all(struct i915_gem_context *ctx,
>  		  int (*fn)(struct intel_context *ce, void *data),
>  		  void *data)
>  {
>  	struct i915_gem_engines_iter it;
> +	struct i915_gem_engines *e;
>  	struct intel_context *ce;
>  	int err = 0;
>  
> -	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> +	e = __context_engines_await(ctx);
> +	for_each_gem_engine(ce, e, it) {
>  		err = fn(ce, data);
>  		if (err)
>  			break;
>  	}
> -	i915_gem_context_unlock_engines(ctx);
> +	i915_sw_fence_complete(&e->fence);
>  
>  	return err;
>  }
> @@ -786,11 +811,13 @@ static int __apply_ppgtt(struct intel_context *ce, void *vm)
>  static struct i915_address_space *
>  __set_ppgtt(struct i915_gem_context *ctx, struct i915_address_space *vm)
>  {
> -	struct i915_address_space *old = i915_gem_context_vm(ctx);
> +	struct i915_address_space *old;
>  
> +	old = rcu_replace_pointer(ctx->vm,
> +				  i915_vm_open(vm),
> +				  lockdep_is_held(&ctx->mutex));
>  	GEM_BUG_ON(old && i915_vm_is_4lvl(vm) != i915_vm_is_4lvl(old));
>  
> -	rcu_assign_pointer(ctx->vm, i915_vm_open(vm));
>  	context_apply_all(ctx, __apply_ppgtt, vm);
>  
>  	return old;
> @@ -1069,30 +1096,6 @@ static void cb_retire(struct i915_active *base)
>  	kfree(cb);
>  }
>  
> -static inline struct i915_gem_engines *
> -__context_engines_await(const struct i915_gem_context *ctx)
> -{
> -	struct i915_gem_engines *engines;
> -
> -	rcu_read_lock();
> -	do {
> -		engines = rcu_dereference(ctx->engines);
> -		if (unlikely(!engines))
> -			break;
> -
> -		if (unlikely(!i915_sw_fence_await(&engines->fence)))
> -			continue;
> -
> -		if (likely(engines == rcu_access_pointer(ctx->engines)))
> -			break;
> -
> -		i915_sw_fence_complete(&engines->fence);
> -	} while (1);
> -	rcu_read_unlock();
> -
> -	return engines;
> -}
> -
>  I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
>  static int context_barrier_task(struct i915_gem_context *ctx,
>  				intel_engine_mask_t engines,
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
