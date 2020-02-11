Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36431159021
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:41:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C696EA5D;
	Tue, 11 Feb 2020 13:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68B26EA5D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 13:41:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:41:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226506004"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Feb 2020 05:41:24 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5e404774-1e4b-1c8a-f5ca-45826d7bda86@linux.intel.com>
Date: Tue, 11 Feb 2020 13:41:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200210205722.794180-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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


On 10/02/2020 20:57, Chris Wilson wrote:
> If we have a set of active engines marked as being non-persistent, we
> lose track of those if the user replaces those engines with
> I915_CONTEXT_PARAM_ENGINES. As part of our uABI contract is that
> non-persistent requests are terminated if they are no longer being
> tracked by the user's context (in order to prevent a lost request
> causing an untracked and so unstoppable GPU hang), we need to apply the
> same context cancellation upon changing engines.
> 
> v2: Track stale engines[] so we only reap at context closure.
> 
> Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
> Testcase: igt/gem_ctx_peristence/replace
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 118 ++++++++++++++++--
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  13 +-
>   drivers/gpu/drm/i915/i915_sw_fence.c          |  19 ++-
>   drivers/gpu/drm/i915/i915_sw_fence.h          |   2 +-
>   4 files changed, 139 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index cfaf5bbdbcab..ba29462bd501 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -270,7 +270,8 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
>   	if (!e)
>   		return ERR_PTR(-ENOMEM);
>   
> -	init_rcu_head(&e->rcu);
> +	e->ctx = ctx;
> +
>   	for_each_engine(engine, gt, id) {
>   		struct intel_context *ce;
>   
> @@ -450,7 +451,7 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
>   	return engine;
>   }
>   
> -static void kill_context(struct i915_gem_context *ctx)
> +static void kill_engines(struct i915_gem_engines *engines)
>   {
>   	struct i915_gem_engines_iter it;
>   	struct intel_context *ce;
> @@ -462,7 +463,7 @@ static void kill_context(struct i915_gem_context *ctx)
>   	 * However, we only care about pending requests, so only include
>   	 * engines on which there are incomplete requests.
>   	 */
> -	for_each_gem_engine(ce, __context_engines_static(ctx), it) {
> +	for_each_gem_engine(ce, engines, it) {
>   		struct intel_engine_cs *engine;
>   
>   		if (intel_context_set_banned(ce))
> @@ -484,10 +485,41 @@ static void kill_context(struct i915_gem_context *ctx)
>   			 * the context from the GPU, we have to resort to a full
>   			 * reset. We hope the collateral damage is worth it.
>   			 */
> -			__reset_context(ctx, engine);
> +			__reset_context(engines->ctx, engine);
>   	}
>   }
>   
> +static void kill_stale_engines(struct i915_gem_context *ctx)
> +{
> +	struct i915_gem_engines *pos, *next;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&ctx->stale.lock, flags);
> +	list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
> +		if (!i915_sw_fence_await(&pos->fence))
> +			continue;
> +
> +		spin_unlock_irqrestore(&ctx->stale.lock, flags);
> +
> +		kill_engines(pos);
> +
> +		spin_lock_irqsave(&ctx->stale.lock, flags);
> +		list_safe_reset_next(pos, next, link);
> +		list_del_init(&pos->link); /* decouple from FENCE_COMPLETE */
> +
> +		i915_sw_fence_complete(&pos->fence);
> +	}
> +	spin_unlock_irqrestore(&ctx->stale.lock, flags);
> +}
> +
> +static void kill_context(struct i915_gem_context *ctx)
> +{
> +	if (!list_empty(&ctx->stale.engines))
> +		kill_stale_engines(ctx);

Lets see.. set_engines can freely race with context_close. The former is 
adding entries to the list under the lock, the latter is here inspecting 
list state unlocked. But then proceeds to lock it and all is good if 
false negative are not an issue. But looks like it could happen and then 
it fails to clean up. All that is needed is for this thread to not see 
the addition to the list. And since this is not a hot path how about you 
just always call kill_state_engines?

> +
> +	kill_engines(__context_engines_static(ctx));
> +}
> +
>   static void set_closed_name(struct i915_gem_context *ctx)
>   {
>   	char *s;
> @@ -602,6 +634,9 @@ __create_context(struct drm_i915_private *i915)
>   	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
>   	mutex_init(&ctx->mutex);
>   
> +	spin_lock_init(&ctx->stale.lock);
> +	INIT_LIST_HEAD(&ctx->stale.engines);
> +
>   	mutex_init(&ctx->engines_mutex);
>   	e = default_engines(ctx);
>   	if (IS_ERR(e)) {
> @@ -1529,6 +1564,71 @@ static const i915_user_extension_fn set_engines__extensions[] = {
>   	[I915_CONTEXT_ENGINES_EXT_BOND] = set_engines__bond,
>   };
>   
> +static int engines_notify(struct i915_sw_fence *fence,
> +			  enum i915_sw_fence_notify state)
> +{
> +	struct i915_gem_engines *engines =
> +		container_of(fence, typeof(*engines), fence);
> +
> +	switch (state) {
> +	case FENCE_COMPLETE:
> +		if (!list_empty(&engines->link)) {

This unlocked peek indeed looks okay as you said in the previous thread. 
engines at this point "belong" (are only reachable) from the sw_fence, 
for purpose of touching this field, so looks fine.

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
> +		init_rcu_head(&engines->rcu);
> +		call_rcu(&engines->rcu, free_engines_rcu);
> +		break;
> +	}
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static void engines_idle_release(struct i915_gem_engines *engines)
> +{
> +	struct i915_gem_engines_iter it;
> +	struct intel_context *ce;
> +	unsigned long flags;
> +
> +	GEM_BUG_ON(!engines);
> +	i915_sw_fence_init(&engines->fence, engines_notify);
> +
> +	spin_lock_irqsave(&engines->ctx->stale.lock, flags);
> +	list_add(&engines->link, &engines->ctx->stale.engines);
> +	spin_unlock_irqrestore(&engines->ctx->stale.lock, flags);
> +
> +	for_each_gem_engine(ce, engines, it) {
> +		struct dma_fence *fence;
> +		int err;
> +
> +		if (!ce->timeline)
> +			continue;
> +
> +		fence = i915_active_fence_get(&ce->timeline->last_request);
> +		if (!fence)
> +			continue;
> +
> +		err = i915_sw_fence_await_dma_fence(&engines->fence,
> +						    fence, 0,
> +						    GFP_KERNEL);
> +
> +		dma_fence_put(fence);
> +		if (err < 0) {
> +			kill_engines(engines);
> +			break;
> +		}
> +	}
> +
> +	i915_sw_fence_commit(&engines->fence);
> +}
> +
>   static int
>   set_engines(struct i915_gem_context *ctx,
>   	    const struct drm_i915_gem_context_param *args)
> @@ -1571,7 +1671,8 @@ set_engines(struct i915_gem_context *ctx,
>   	if (!set.engines)
>   		return -ENOMEM;
>   
> -	init_rcu_head(&set.engines->rcu);
> +	set.engines->ctx = ctx;
> +
>   	for (n = 0; n < num_engines; n++) {
>   		struct i915_engine_class_instance ci;
>   		struct intel_engine_cs *engine;
> @@ -1631,7 +1732,8 @@ set_engines(struct i915_gem_context *ctx,
>   	set.engines = rcu_replace_pointer(ctx->engines, set.engines, 1);
>   	mutex_unlock(&ctx->engines_mutex);
>   
> -	call_rcu(&set.engines->rcu, free_engines_rcu);
> +	/* Keep track of old engine sets for kill_context() */
> +	engines_idle_release(set.engines);
>   
>   	return 0;
>   }
> @@ -1646,7 +1748,6 @@ __copy_engines(struct i915_gem_engines *e)
>   	if (!copy)
>   		return ERR_PTR(-ENOMEM);
>   
> -	init_rcu_head(&copy->rcu);
>   	for (n = 0; n < e->num_engines; n++) {
>   		if (e->engines[n])
>   			copy->engines[n] = intel_context_get(e->engines[n]);
> @@ -1890,7 +1991,8 @@ static int clone_engines(struct i915_gem_context *dst,
>   	if (!clone)
>   		goto err_unlock;
>   
> -	init_rcu_head(&clone->rcu);
> +	clone->ctx = dst;
> +
>   	for (n = 0; n < e->num_engines; n++) {
>   		struct intel_engine_cs *engine;
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 017ca803ab47..8d996dde8046 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -20,6 +20,7 @@
>   #include "gt/intel_context_types.h"
>   
>   #include "i915_scheduler.h"
> +#include "i915_sw_fence.h"
>   
>   struct pid;
>   
> @@ -30,7 +31,12 @@ struct intel_timeline;
>   struct intel_ring;
>   
>   struct i915_gem_engines {
> -	struct rcu_head rcu;
> +	union {
> +		struct rcu_head rcu;
> +		struct list_head link;
> +	};
> +	struct i915_sw_fence fence;
> +	struct i915_gem_context *ctx;
>   	unsigned int num_engines;
>   	struct intel_context *engines[];
>   };
> @@ -173,6 +179,11 @@ struct i915_gem_context {
>   	 * context in messages.
>   	 */
>   	char name[TASK_COMM_LEN + 8];
> +
> +	struct {
> +		struct spinlock lock;
> +		struct list_head engines;
> +	} stale;
>   };
>   
>   #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 51ba97daf2a0..bc6d4f8b78f0 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -211,10 +211,23 @@ void i915_sw_fence_complete(struct i915_sw_fence *fence)
>   	__i915_sw_fence_complete(fence, NULL);
>   }
>   
> -void i915_sw_fence_await(struct i915_sw_fence *fence)
> +bool i915_sw_fence_await(struct i915_sw_fence *fence)
>   {
> -	debug_fence_assert(fence);
> -	WARN_ON(atomic_inc_return(&fence->pending) <= 1);
> +	int old, new;
> +
> +	/*
> +	 * It is only safe to add a new await to the fence while it has
> +	 * not yet been signaled.
> +	 */
> +	new = atomic_read(&fence->pending);
> +	do {
> +		if (new < 1)
> +			return false;
> +
> +		old = new++;
> +	} while ((new = atomic_cmpxchg(&fence->pending, old, new)) != old);

Simplify with atomic_try_cmpxchg?

I need a refresher on sw_fence->pending. (See your new comments and 
raise you lack of old! ;)

-1 = completed
0 = ??
1 = new, not waited upon
2 = waited upon

?

> +
> +	return true;
>   }
>   
>   void __i915_sw_fence_init(struct i915_sw_fence *fence,
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
> index 19e806ce43bc..30a863353ee6 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.h
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.h
> @@ -91,7 +91,7 @@ int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
>   				    unsigned long timeout,
>   				    gfp_t gfp);
>   
> -void i915_sw_fence_await(struct i915_sw_fence *fence);
> +bool i915_sw_fence_await(struct i915_sw_fence *fence);
>   void i915_sw_fence_complete(struct i915_sw_fence *fence);
>   
>   static inline bool i915_sw_fence_signaled(const struct i915_sw_fence *fence)
> 

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
