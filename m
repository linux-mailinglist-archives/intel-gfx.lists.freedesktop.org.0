Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B100170497
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B344B6E406;
	Wed, 26 Feb 2020 16:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725F76E406
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 16:41:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 08:41:08 -0800
X-IronPort-AV: E=Sophos;i="5.70,488,1574150400"; d="scan'208";a="231458716"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 26 Feb 2020 08:41:06 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
 <20200225082233.274530-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d29def7f-7be2-2415-3c09-b3bacd6035ce@linux.intel.com>
Date: Wed, 26 Feb 2020 16:41:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225082233.274530-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915/gem: Consolidate
 ctx->engines[] release
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


On 25/02/2020 08:22, Chris Wilson wrote:
> Use the same engine_idle_release() routine for cleaning all old
> ctx->engine[] state, closing any potential races with concurrent execbuf
> submission.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1241
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
> Reorder set-closed/engine_idle_release to avoid premature killing
> Take a reference to prevent racing context free with engine cleanup
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 199 +++++++++++---------
>   drivers/gpu/drm/i915/gem/i915_gem_context.h |   1 -
>   2 files changed, 108 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index adcebf22a3d3..0862a77d81ed 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -243,7 +243,6 @@ static void __free_engines(struct i915_gem_engines *e, unsigned int count)
>   		if (!e->engines[count])
>   			continue;
>   
> -		RCU_INIT_POINTER(e->engines[count]->gem_context, NULL);
>   		intel_context_put(e->engines[count]);
>   	}
>   	kfree(e);
> @@ -256,7 +255,11 @@ static void free_engines(struct i915_gem_engines *e)
>   
>   static void free_engines_rcu(struct rcu_head *rcu)
>   {
> -	free_engines(container_of(rcu, struct i915_gem_engines, rcu));
> +	struct i915_gem_engines *engines =
> +		container_of(rcu, struct i915_gem_engines, rcu);
> +
> +	i915_sw_fence_fini(&engines->fence);

This was missing so far?

> +	free_engines(engines);
>   }
>   
>   static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
> @@ -270,8 +273,6 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
>   	if (!e)
>   		return ERR_PTR(-ENOMEM);
>   
> -	e->ctx = ctx;
> -
>   	for_each_engine(engine, gt, id) {
>   		struct intel_context *ce;
>   
> @@ -305,7 +306,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>   	list_del(&ctx->link);
>   	spin_unlock(&ctx->i915->gem.contexts.lock);
>   
> -	free_engines(rcu_access_pointer(ctx->engines));
>   	mutex_destroy(&ctx->engines_mutex);
>   
>   	if (ctx->timeline)
> @@ -492,30 +492,110 @@ static void kill_engines(struct i915_gem_engines *engines)
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
> +		break;
> +
> +	case FENCE_FREE:
> +		i915_gem_context_put(engines->ctx);

This put can go under FENCE_COMPLETE?

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
> +		int err = 0;
> +
> +		RCU_INIT_POINTER(ce->gem_context, NULL);
> +
> +		if (!ce->timeline) { /* XXX serialisation with execbuf? */
> +			intel_context_set_banned(ce);

What is banned for?

> +			continue;
> +		}
> +
> +		mutex_lock(&ce->timeline->mutex);
> +		if (!list_empty(&ce->timeline->requests)) {
> +			struct i915_request *rq;
> +
> +			rq = list_last_entry(&ce->timeline->requests,
> +					     typeof(*rq),
> +					     link);

Why no more i915_active_fence_get?

> +
> +			err = i915_sw_fence_await_dma_fence(&engines->fence,
> +							    &rq->fence, 0,
> +							    GFP_KERNEL);
> +		}
> +		mutex_unlock(&ce->timeline->mutex);
> +		if (err < 0)
> +			goto kill;
> +	}
> +
> +	spin_lock_irq(&engines->ctx->stale.lock);
> +	if (!i915_gem_context_is_closed(engines->ctx))
> +		list_add_tail(&engines->link, &engines->ctx->stale.engines);
> +	spin_unlock_irq(&engines->ctx->stale.lock);
> +
> +kill:
> +	if (list_empty(&engines->link)) /* raced, already closed */
> +		kill_engines(engines);
> +
> +	i915_sw_fence_commit(&engines->fence);
>   }
>   
>   static void set_closed_name(struct i915_gem_context *ctx)
> @@ -539,11 +619,16 @@ static void context_close(struct i915_gem_context *ctx)
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
> @@ -1562,77 +1647,6 @@ static const i915_user_extension_fn set_engines__extensions[] = {
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
> @@ -1675,8 +1689,6 @@ set_engines(struct i915_gem_context *ctx,
>   	if (!set.engines)
>   		return -ENOMEM;
>   
> -	set.engines->ctx = ctx;
> -
>   	for (n = 0; n < num_engines; n++) {
>   		struct i915_engine_class_instance ci;
>   		struct intel_engine_cs *engine;
> @@ -1729,6 +1741,11 @@ set_engines(struct i915_gem_context *ctx,
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
> @@ -1737,7 +1754,7 @@ set_engines(struct i915_gem_context *ctx,
>   	mutex_unlock(&ctx->engines_mutex);
>   
>   	/* Keep track of old engine sets for kill_context() */
> -	engines_idle_release(set.engines);
> +	engines_idle_release(ctx, set.engines);
>   
>   	return 0;
>   }
> @@ -1995,8 +2012,6 @@ static int clone_engines(struct i915_gem_context *dst,
>   	if (!clone)
>   		goto err_unlock;
>   
> -	clone->ctx = dst;
> -
>   	for (n = 0; n < e->num_engines; n++) {
>   		struct intel_engine_cs *engine;
>   
> @@ -2033,8 +2048,7 @@ static int clone_engines(struct i915_gem_context *dst,
>   	i915_gem_context_unlock_engines(src);
>   
>   	/* Serialised by constructor */
> -	free_engines(__context_engines_static(dst));
> -	RCU_INIT_POINTER(dst->engines, clone);
> +	engines_idle_release(dst, rcu_replace_pointer(dst->engines, clone, 1));
>   	if (user_engines)
>   		i915_gem_context_set_user_engines(dst);
>   	else
> @@ -2461,6 +2475,9 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it)
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
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
