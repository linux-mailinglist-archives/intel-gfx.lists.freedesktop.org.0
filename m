Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCD234842
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C195A6EAD4;
	Fri, 31 Jul 2020 15:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153F06EAD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:15:49 +0000 (UTC)
IronPort-SDR: ZUOjzhOQCUQ8P44OnQGZqFI/08ZWK1YRITh6CL6/FWBJJG6rUKHSvZSQQ0SwWI6AAyNRHuokyq
 2swdxjO3SYCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="139774826"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="139774826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:15:48 -0700
IronPort-SDR: 3oIbH9tP9YSjpP/VxZqRmNwX3yPnJ9QiDXvZ4lErGFuNS3z7qodqaa4kYY9A8XWGdPApC34HLb
 u8/BAOqZwmBQ==
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="465642791"
Received: from henyaffe-mobl2.ger.corp.intel.com (HELO [10.214.222.92])
 ([10.214.222.92])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:15:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-18-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6c74e04f-cfc7-215c-50f0-2b5be8a0b6c6@linux.intel.com>
Date: Fri, 31 Jul 2020 16:15:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200730093756.16737-18-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/21] drm/i915/gt: Protect context lifetime
 with RCU
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/07/2020 10:37, Chris Wilson wrote:
> Allow a brief period for continued access to a dead intel_context by
> deferring the release of the struct until after an RCU grace period.
> As we are using a dedicated slab cache for the contexts, we can defer
> the release of the slab pages via RCU, with the caveat that individual
> structs may be reused from the freelist within an RCU grace period. To
> handle that, we have to avoid clearing members of the zombie struct.

What was the motivation?

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 330 +++++++++++++-----------
>   drivers/gpu/drm/i915/i915_active.c      |  10 +
>   drivers/gpu/drm/i915/i915_active.h      |   2 +
>   drivers/gpu/drm/i915/i915_utils.h       |   7 +
>   4 files changed, 202 insertions(+), 147 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 52db2bde44a3..4e7924640ffa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -22,7 +22,7 @@ static struct i915_global_context {
>   
>   static struct intel_context *intel_context_alloc(void)
>   {
> -	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
> +	return kmem_cache_alloc(global.slab_ce, GFP_KERNEL);
>   }
>   
>   void intel_context_free(struct intel_context *ce)
> @@ -30,6 +30,177 @@ void intel_context_free(struct intel_context *ce)
>   	kmem_cache_free(global.slab_ce, ce);
>   }
>   
> +static int __context_pin_state(struct i915_vma *vma)
> +{
> +	unsigned int bias = i915_ggtt_pin_bias(vma) | PIN_OFFSET_BIAS;
> +	int err;
> +
> +	err = i915_ggtt_pin(vma, 0, bias | PIN_HIGH);
> +	if (err)
> +		return err;
> +
> +	err = i915_active_acquire(&vma->active);
> +	if (err)
> +		goto err_unpin;
> +
> +	/*
> +	 * And mark it as a globally pinned object to let the shrinker know
> +	 * it cannot reclaim the object until we release it.
> +	 */
> +	i915_vma_make_unshrinkable(vma);
> +	vma->obj->mm.dirty = true;
> +
> +	return 0;
> +
> +err_unpin:
> +	i915_vma_unpin(vma);
> +	return err;
> +}
> +
> +static void __context_unpin_state(struct i915_vma *vma)
> +{
> +	i915_vma_make_shrinkable(vma);
> +	i915_active_release(&vma->active);
> +	__i915_vma_unpin(vma);
> +}
> +
> +static int __ring_active(struct intel_ring *ring)
> +{
> +	int err;
> +
> +	err = intel_ring_pin(ring);
> +	if (err)
> +		return err;
> +
> +	err = i915_active_acquire(&ring->vma->active);
> +	if (err)
> +		goto err_pin;
> +
> +	return 0;
> +
> +err_pin:
> +	intel_ring_unpin(ring);
> +	return err;
> +}
> +
> +static void __ring_retire(struct intel_ring *ring)
> +{
> +	i915_active_release(&ring->vma->active);
> +	intel_ring_unpin(ring);
> +}
> +
> +__i915_active_call
> +static void __intel_context_retire(struct i915_active *active)
> +{
> +	struct intel_context *ce = container_of(active, typeof(*ce), active);
> +
> +	CE_TRACE(ce, "retire runtime: { total:%lluns, avg:%lluns }\n",
> +		 intel_context_get_total_runtime_ns(ce),
> +		 intel_context_get_avg_runtime_ns(ce));
> +
> +	set_bit(CONTEXT_VALID_BIT, &ce->flags);
> +	if (ce->state)
> +		__context_unpin_state(ce->state);
> +
> +	intel_timeline_unpin(ce->timeline);
> +	__ring_retire(ce->ring);
> +
> +	intel_context_put(ce);
> +}
> +
> +static int __intel_context_active(struct i915_active *active)
> +{
> +	struct intel_context *ce = container_of(active, typeof(*ce), active);
> +	int err;
> +
> +	CE_TRACE(ce, "active\n");
> +
> +	intel_context_get(ce);
> +
> +	err = __ring_active(ce->ring);
> +	if (err)
> +		goto err_put;
> +
> +	err = intel_timeline_pin(ce->timeline);
> +	if (err)
> +		goto err_ring;
> +
> +	if (!ce->state)
> +		return 0;
> +
> +	err = __context_pin_state(ce->state);
> +	if (err)
> +		goto err_timeline;
> +
> +	return 0;
> +
> +err_timeline:
> +	intel_timeline_unpin(ce->timeline);
> +err_ring:
> +	__ring_retire(ce->ring);
> +err_put:
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static void __intel_context_ctor(void *arg)
> +{
> +	struct intel_context *ce = arg;
> +
> +	INIT_LIST_HEAD(&ce->signal_link);
> +	INIT_LIST_HEAD(&ce->signals);
> +
> +	atomic_set(&ce->pin_count, 0);
> +	mutex_init(&ce->pin_mutex);
> +
> +	ce->active_count = 0;
> +	i915_active_init(&ce->active,
> +			 __intel_context_active, __intel_context_retire);
> +
> +	ce->inflight = NULL;
> +	ce->lrc_reg_state = NULL;
> +	ce->lrc.desc = 0;
> +}
> +
> +static void
> +__intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
> +{
> +	GEM_BUG_ON(!engine->cops);
> +	GEM_BUG_ON(!engine->gt->vm);
> +
> +	kref_init(&ce->ref);
> +	i915_active_reinit(&ce->active);
> +	mutex_reinit(&ce->pin_mutex);
> +
> +	ce->engine = engine;
> +	ce->ops = engine->cops;
> +	ce->sseu = engine->sseu;
> +
> +	ce->wa_bb_page = 0;
> +	ce->flags = 0;
> +	ce->tag = 0;
> +
> +	memset(&ce->runtime, 0, sizeof(ce->runtime));
> +
> +	ce->vm = i915_vm_get(engine->gt->vm);
> +	ce->gem_context = NULL;
> +
> +	ce->ring = __intel_context_ring_size(SZ_4K);
> +	ce->timeline = NULL;
> +	ce->state = NULL;
> +
> +	GEM_BUG_ON(atomic_read(&ce->pin_count));
> +	GEM_BUG_ON(ce->active_count);
> +	GEM_BUG_ON(ce->inflight);
> +}
> +
> +void
> +intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
> +{
> +	__intel_context_ctor(ce);
> +	__intel_context_init(ce, engine);
> +}
> +
>   struct intel_context *
>   intel_context_create(struct intel_engine_cs *engine)
>   {
> @@ -39,7 +210,7 @@ intel_context_create(struct intel_engine_cs *engine)
>   	if (!ce)
>   		return ERR_PTR(-ENOMEM);
>   
> -	intel_context_init(ce, engine);
> +	__intel_context_init(ce, engine);
>   	return ce;
>   }
>   
> @@ -158,154 +329,13 @@ void intel_context_unpin(struct intel_context *ce)
>   	/*
>   	 * Once released, we may asynchronously drop the active reference.
>   	 * As that may be the only reference keeping the context alive,
> -	 * take an extra now so that it is not freed before we finish
> +	 * hold onto RCU so that it is not freed before we finish
>   	 * dereferencing it.
>   	 */
> -	intel_context_get(ce);
> +	rcu_read_lock();
>   	intel_context_active_release(ce);
> -	intel_context_put(ce);
> -}
> -
> -static int __context_pin_state(struct i915_vma *vma)
> -{
> -	unsigned int bias = i915_ggtt_pin_bias(vma) | PIN_OFFSET_BIAS;
> -	int err;
> -
> -	err = i915_ggtt_pin(vma, 0, bias | PIN_HIGH);
> -	if (err)
> -		return err;
> -
> -	err = i915_active_acquire(&vma->active);
> -	if (err)
> -		goto err_unpin;
> -
> -	/*
> -	 * And mark it as a globally pinned object to let the shrinker know
> -	 * it cannot reclaim the object until we release it.
> -	 */
> -	i915_vma_make_unshrinkable(vma);
> -	vma->obj->mm.dirty = true;
> -
> -	return 0;
> -
> -err_unpin:
> -	i915_vma_unpin(vma);
> -	return err;
> -}
> -
> -static void __context_unpin_state(struct i915_vma *vma)
> -{
> -	i915_vma_make_shrinkable(vma);
> -	i915_active_release(&vma->active);
> -	__i915_vma_unpin(vma);
> -}
> -
> -static int __ring_active(struct intel_ring *ring)
> -{
> -	int err;
> -
> -	err = intel_ring_pin(ring);
> -	if (err)
> -		return err;
> -
> -	err = i915_active_acquire(&ring->vma->active);
> -	if (err)
> -		goto err_pin;
> -
> -	return 0;
> -
> -err_pin:
> -	intel_ring_unpin(ring);
> -	return err;
> -}
> -
> -static void __ring_retire(struct intel_ring *ring)
> -{
> -	i915_active_release(&ring->vma->active);
> -	intel_ring_unpin(ring);
> +	rcu_read_unlock();
>   }
> -
> -__i915_active_call
> -static void __intel_context_retire(struct i915_active *active)
> -{
> -	struct intel_context *ce = container_of(active, typeof(*ce), active);
> -
> -	CE_TRACE(ce, "retire runtime: { total:%lluns, avg:%lluns }\n",
> -		 intel_context_get_total_runtime_ns(ce),
> -		 intel_context_get_avg_runtime_ns(ce));
> -
> -	set_bit(CONTEXT_VALID_BIT, &ce->flags);
> -	if (ce->state)
> -		__context_unpin_state(ce->state);
> -
> -	intel_timeline_unpin(ce->timeline);
> -	__ring_retire(ce->ring);
> -
> -	intel_context_put(ce);
> -}
> -
> -static int __intel_context_active(struct i915_active *active)
> -{
> -	struct intel_context *ce = container_of(active, typeof(*ce), active);
> -	int err;
> -
> -	CE_TRACE(ce, "active\n");
> -
> -	intel_context_get(ce);
> -
> -	err = __ring_active(ce->ring);
> -	if (err)
> -		goto err_put;
> -
> -	err = intel_timeline_pin(ce->timeline);
> -	if (err)
> -		goto err_ring;
> -
> -	if (!ce->state)
> -		return 0;
> -
> -	err = __context_pin_state(ce->state);
> -	if (err)
> -		goto err_timeline;
> -
> -	return 0;
> -
> -err_timeline:
> -	intel_timeline_unpin(ce->timeline);
> -err_ring:
> -	__ring_retire(ce->ring);
> -err_put:
> -	intel_context_put(ce);
> -	return err;
> -}
> -
> -void
> -intel_context_init(struct intel_context *ce,
> -		   struct intel_engine_cs *engine)
> -{
> -	GEM_BUG_ON(!engine->cops);
> -	GEM_BUG_ON(!engine->gt->vm);
> -
> -	kref_init(&ce->ref);
> -
> -	ce->engine = engine;
> -	ce->ops = engine->cops;
> -	ce->sseu = engine->sseu;
> -	ce->ring = __intel_context_ring_size(SZ_4K);
> -
> -	ewma_runtime_init(&ce->runtime.avg);
> -
> -	ce->vm = i915_vm_get(engine->gt->vm);
> -
> -	INIT_LIST_HEAD(&ce->signal_link);
> -	INIT_LIST_HEAD(&ce->signals);
> -
> -	mutex_init(&ce->pin_mutex);
> -
> -	i915_active_init(&ce->active,
> -			 __intel_context_active, __intel_context_retire);
> -}
> -
>   void intel_context_fini(struct intel_context *ce)
>   {
>   	if (ce->timeline)
> @@ -333,7 +363,13 @@ static struct i915_global_context global = { {
>   
>   int __init i915_global_context_init(void)
>   {
> -	global.slab_ce = KMEM_CACHE(intel_context, SLAB_HWCACHE_ALIGN);
> +	global.slab_ce =
> +		kmem_cache_create("intel_context",
> +				  sizeof(struct intel_context),
> +				  __alignof__(struct intel_context),
> +				  SLAB_HWCACHE_ALIGN |
> +				  SLAB_TYPESAFE_BY_RCU,
> +				  __intel_context_ctor);
>   	if (!global.slab_ce)
>   		return -ENOMEM;
>   
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 5dd52bb6d38c..878fe6664f19 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -795,6 +795,16 @@ void i915_active_fini(struct i915_active *ref)
>   		kmem_cache_free(global.slab_cache, ref->cache);
>   }
>   
> +void i915_active_reinit(struct i915_active *ref)
> +{
> +	GEM_BUG_ON(!i915_active_is_idle(ref));
> +	debug_active_init(ref);
> +	mutex_reinit(&ref->mutex);
> +
> +	ref->cache = NULL;
> +	ref->tree = RB_ROOT;
> +}
> +
>   static inline bool is_idle_barrier(struct active_node *node, u64 idx)
>   {
>   	return node->timeline == idx && !i915_active_fence_isset(&node->base);
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index fb165d3f01cf..6df7e721616d 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -219,6 +219,8 @@ i915_active_is_idle(const struct i915_active *ref)
>   
>   void i915_active_fini(struct i915_active *ref);
>   
> +void i915_active_reinit(struct i915_active *ref);
> +
>   int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>   					    struct intel_engine_cs *engine);
>   void i915_active_acquire_barrier(struct i915_active *ref);
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 54773371e6bd..ef8db3aa75c7 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -443,6 +443,13 @@ static inline bool timer_expired(const struct timer_list *t)
>   	return READ_ONCE(t->expires) && !timer_pending(t);
>   }
>   
> +static inline void mutex_reinit(struct mutex *lock)
> +{
> +#if IS_ENABLED(CONFIG_DEBUG_MUTEXES)
> +	lock->magic = lock;
> +#endif
> +}
> +
>   /*
>    * This is a lookalike for IS_ENABLED() that takes a kconfig value,
>    * e.g. CONFIG_DRM_I915_SPIN_REQUEST, and evaluates whether it is non-zero
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
