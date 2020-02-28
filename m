Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B191736D1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289706F436;
	Fri, 28 Feb 2020 12:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D666F436
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:08:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:08:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232225643"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 28 Feb 2020 04:08:21 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-5-chris@chris-wilson.co.uk>
 <20200227110131.1975034-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b46f5046-c8ca-7771-6213-696b7d13cc80@linux.intel.com>
Date: Fri, 28 Feb 2020 12:08:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227110131.1975034-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Consolidate ctx->engines[]
 release
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


On 27/02/2020 11:01, Chris Wilson wrote:
> Use the same engine_idle_release() routine for cleaning all old
> ctx->engine[] state, closing any potential races with concurrent execbuf
> submission.
> 
> v2ish: Use the ce->pin_count to close the execbuf gap.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1241
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
> Remember to initialise the mock_context as well.
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 193 +++++++++---------
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   1 -
>   .../gpu/drm/i915/gem/selftests/mock_context.c |   3 +
>   3 files changed, 105 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index e525ead073f7..cb6b6be48978 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -242,7 +242,6 @@ static void __free_engines(struct i915_gem_engines *e, unsigned int count)
>   		if (!e->engines[count])
>   			continue;
>   
> -		RCU_INIT_POINTER(e->engines[count]->gem_context, NULL);
>   		intel_context_put(e->engines[count]);
>   	}
>   	kfree(e);
> @@ -255,7 +254,11 @@ static void free_engines(struct i915_gem_engines *e)
>   
>   static void free_engines_rcu(struct rcu_head *rcu)
>   {
> -	free_engines(container_of(rcu, struct i915_gem_engines, rcu));
> +	struct i915_gem_engines *engines =
> +		container_of(rcu, struct i915_gem_engines, rcu);
> +
> +	i915_sw_fence_fini(&engines->fence);
> +	free_engines(engines);
>   }
>   
>   static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
> @@ -269,8 +272,6 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
>   	if (!e)
>   		return ERR_PTR(-ENOMEM);
>   
> -	e->ctx = ctx;
> -
>   	for_each_engine(engine, gt, id) {
>   		struct intel_context *ce;
>   
> @@ -304,7 +305,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>   	list_del(&ctx->link);
>   	spin_unlock(&ctx->i915->gem.contexts.lock);
>   
> -	free_engines(rcu_access_pointer(ctx->engines));
>   	mutex_destroy(&ctx->engines_mutex);
>   
>   	if (ctx->timeline)
> @@ -491,30 +491,104 @@ static void kill_engines(struct i915_gem_engines *engines)
>   static void kill_stale_engines(struct i915_gem_context *ctx)
>   {
>   	struct i915_gem_engines *pos, *next;
> -	unsigned long flags;
>   
> -	spin_lock_irqsave(&ctx->stale.lock, flags);
> +	spin_lock_irq(&ctx->stale.lock);
> +	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>   	list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
> -		if (!i915_sw_fence_await(&pos->fence))
> +		if (!i915_sw_fence_await(&pos->fence)) {
> +			list_del_init(&pos->link);
>   			continue;
> +		}
>   
> -		spin_unlock_irqrestore(&ctx->stale.lock, flags);
> +		spin_unlock_irq(&ctx->stale.lock);
>   
>   		kill_engines(pos);
>   
> -		spin_lock_irqsave(&ctx->stale.lock, flags);
> +		spin_lock_irq(&ctx->stale.lock);
> +		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
>   		list_safe_reset_next(pos, next, link);
>   		list_del_init(&pos->link); /* decouple from FENCE_COMPLETE */
>   
>   		i915_sw_fence_complete(&pos->fence);
>   	}
> -	spin_unlock_irqrestore(&ctx->stale.lock, flags);
> +	spin_unlock_irq(&ctx->stale.lock);
>   }
>   
>   static void kill_context(struct i915_gem_context *ctx)
>   {
>   	kill_stale_engines(ctx);
> -	kill_engines(__context_engines_static(ctx));
> +}
> +
> +static int engines_notify(struct i915_sw_fence *fence,
> +			  enum i915_sw_fence_notify state)
> +{
> +	struct i915_gem_engines *engines =
> +		container_of(fence, typeof(*engines), fence);
> +
> +	switch (state) {
> +	case FENCE_COMPLETE:
> +		if (!list_empty(&engines->link)) {
> +			struct i915_gem_context *ctx = engines->ctx;
> +			unsigned long flags;
> +
> +			spin_lock_irqsave(&ctx->stale.lock, flags);
> +			list_del(&engines->link);
> +			spin_unlock_irqrestore(&ctx->stale.lock, flags);
> +		}
> +		i915_gem_context_put(engines->ctx);
> +		break;
> +
> +	case FENCE_FREE:
> +		init_rcu_head(&engines->rcu);
> +		call_rcu(&engines->rcu, free_engines_rcu);
> +		break;
> +	}
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static void engines_idle_release(struct i915_gem_context *ctx,
> +				 struct i915_gem_engines *engines)
> +{
> +	struct i915_gem_engines_iter it;
> +	struct intel_context *ce;
> +
> +	i915_sw_fence_init(&engines->fence, engines_notify);
> +	INIT_LIST_HEAD(&engines->link);
> +
> +	engines->ctx = i915_gem_context_get(ctx);
> +
> +	for_each_gem_engine(ce, engines, it) {
> +		struct dma_fence *fence;
> +		int err = 0;
> +
> +		/* serialises with execbuf */
> +		RCU_INIT_POINTER(ce->gem_context, NULL);

What is the purpose of this? Looks dodgy - like it can't really 
guarantee much.

> +		if (!intel_context_pin_if_active(ce))
> +			continue;
> +
> +		fence = i915_active_fence_get(&ce->timeline->last_request);
> +		if (fence) {
> +			err = i915_sw_fence_await_dma_fence(&engines->fence,
> +							    fence, 0,
> +							    GFP_KERNEL);
> +			dma_fence_put(fence);
> +		}
> +		intel_context_unpin(ce);
> +		if (err < 0)
> +			goto kill;
> +	}
> +
> +	spin_lock_irq(&ctx->stale.lock);
> +	if (!i915_gem_context_is_closed(ctx))
> +		list_add_tail(&engines->link, &ctx->stale.engines);
> +	spin_unlock_irq(&ctx->stale.lock);
> +
> +kill:
> +	if (list_empty(&engines->link)) /* raced, already closed */
> +		kill_engines(engines);

Raced with.. ? context_close? Can't be the fence yet, before it has been 
committed.

Regards,

Tvrtko

> +
> +	i915_sw_fence_commit(&engines->fence);
>   }
>   
>   static void set_closed_name(struct i915_gem_context *ctx)
> @@ -538,11 +612,16 @@ static void context_close(struct i915_gem_context *ctx)
>   {
>   	struct i915_address_space *vm;
>   
> +	/* Flush any concurrent set_engines() */
> +	mutex_lock(&ctx->engines_mutex);
> +	engines_idle_release(ctx, rcu_replace_pointer(ctx->engines, NULL, 1));
>   	i915_gem_context_set_closed(ctx);
> -	set_closed_name(ctx);
> +	mutex_unlock(&ctx->engines_mutex);
>   
>   	mutex_lock(&ctx->mutex);
>   
> +	set_closed_name(ctx);
> +
>   	vm = i915_gem_context_vm(ctx);
>   	if (vm)
>   		i915_vm_close(vm);
> @@ -1626,77 +1705,6 @@ static const i915_user_extension_fn set_engines__extensions[] = {
>   	[I915_CONTEXT_ENGINES_EXT_BOND] = set_engines__bond,
>   };
>   
> -static int engines_notify(struct i915_sw_fence *fence,
> -			  enum i915_sw_fence_notify state)
> -{
> -	struct i915_gem_engines *engines =
> -		container_of(fence, typeof(*engines), fence);
> -
> -	switch (state) {
> -	case FENCE_COMPLETE:
> -		if (!list_empty(&engines->link)) {
> -			struct i915_gem_context *ctx = engines->ctx;
> -			unsigned long flags;
> -
> -			spin_lock_irqsave(&ctx->stale.lock, flags);
> -			list_del(&engines->link);
> -			spin_unlock_irqrestore(&ctx->stale.lock, flags);
> -		}
> -		break;
> -
> -	case FENCE_FREE:
> -		init_rcu_head(&engines->rcu);
> -		call_rcu(&engines->rcu, free_engines_rcu);
> -		break;
> -	}
> -
> -	return NOTIFY_DONE;
> -}
> -
> -static void engines_idle_release(struct i915_gem_engines *engines)
> -{
> -	struct i915_gem_engines_iter it;
> -	struct intel_context *ce;
> -	unsigned long flags;
> -
> -	GEM_BUG_ON(!engines);
> -	i915_sw_fence_init(&engines->fence, engines_notify);
> -
> -	INIT_LIST_HEAD(&engines->link);
> -	spin_lock_irqsave(&engines->ctx->stale.lock, flags);
> -	if (!i915_gem_context_is_closed(engines->ctx))
> -		list_add(&engines->link, &engines->ctx->stale.engines);
> -	spin_unlock_irqrestore(&engines->ctx->stale.lock, flags);
> -	if (list_empty(&engines->link)) /* raced, already closed */
> -		goto kill;
> -
> -	for_each_gem_engine(ce, engines, it) {
> -		struct dma_fence *fence;
> -		int err;
> -
> -		if (!ce->timeline)
> -			continue;
> -
> -		fence = i915_active_fence_get(&ce->timeline->last_request);
> -		if (!fence)
> -			continue;
> -
> -		err = i915_sw_fence_await_dma_fence(&engines->fence,
> -						    fence, 0,
> -						    GFP_KERNEL);
> -
> -		dma_fence_put(fence);
> -		if (err < 0)
> -			goto kill;
> -	}
> -	goto out;
> -
> -kill:
> -	kill_engines(engines);
> -out:
> -	i915_sw_fence_commit(&engines->fence);
> -}
> -
>   static int
>   set_engines(struct i915_gem_context *ctx,
>   	    const struct drm_i915_gem_context_param *args)
> @@ -1739,8 +1747,6 @@ set_engines(struct i915_gem_context *ctx,
>   	if (!set.engines)
>   		return -ENOMEM;
>   
> -	set.engines->ctx = ctx;
> -
>   	for (n = 0; n < num_engines; n++) {
>   		struct i915_engine_class_instance ci;
>   		struct intel_engine_cs *engine;
> @@ -1793,6 +1799,11 @@ set_engines(struct i915_gem_context *ctx,
>   
>   replace:
>   	mutex_lock(&ctx->engines_mutex);
> +	if (i915_gem_context_is_closed(ctx)) {
> +		mutex_unlock(&ctx->engines_mutex);
> +		free_engines(set.engines);
> +		return -ENOENT;
> +	}
>   	if (args->size)
>   		i915_gem_context_set_user_engines(ctx);
>   	else
> @@ -1801,7 +1812,7 @@ set_engines(struct i915_gem_context *ctx,
>   	mutex_unlock(&ctx->engines_mutex);
>   
>   	/* Keep track of old engine sets for kill_context() */
> -	engines_idle_release(set.engines);
> +	engines_idle_release(ctx, set.engines);
>   
>   	return 0;
>   }
> @@ -2077,8 +2088,6 @@ static int clone_engines(struct i915_gem_context *dst,
>   	if (!clone)
>   		goto err_unlock;
>   
> -	clone->ctx = dst;
> -
>   	for (n = 0; n < e->num_engines; n++) {
>   		struct intel_engine_cs *engine;
>   
> @@ -2121,8 +2130,7 @@ static int clone_engines(struct i915_gem_context *dst,
>   	i915_gem_context_unlock_engines(src);
>   
>   	/* Serialised by constructor */
> -	free_engines(__context_engines_static(dst));
> -	RCU_INIT_POINTER(dst->engines, clone);
> +	engines_idle_release(dst, rcu_replace_pointer(dst->engines, clone, 1));
>   	if (user_engines)
>   		i915_gem_context_set_user_engines(dst);
>   	else
> @@ -2553,6 +2561,9 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it)
>   	const struct i915_gem_engines *e = it->engines;
>   	struct intel_context *ctx;
>   
> +	if (unlikely(!e))
> +		return NULL;
> +
>   	do {
>   		if (it->idx >= e->num_engines)
>   			return NULL;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 3ae61a355d87..57b7ae2893e1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -207,7 +207,6 @@ static inline void
>   i915_gem_engines_iter_init(struct i915_gem_engines_iter *it,
>   			   struct i915_gem_engines *engines)
>   {
> -	GEM_BUG_ON(!engines);
>   	it->engines = engines;
>   	it->idx = 0;
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> index b12ea1daa29d..e7e3c620f542 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> @@ -23,6 +23,9 @@ mock_context(struct drm_i915_private *i915,
>   	INIT_LIST_HEAD(&ctx->link);
>   	ctx->i915 = i915;
>   
> +	spin_lock_init(&ctx->stale.lock);
> +	INIT_LIST_HEAD(&ctx->stale.engines);
> +
>   	i915_gem_context_set_persistence(ctx);
>   
>   	mutex_init(&ctx->engines_mutex);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
