Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E72223B7E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DB96E05D;
	Fri, 17 Jul 2020 12:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D1C6E05D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:38:06 +0000 (UTC)
IronPort-SDR: owRGHsZfsdCf1CdhsSDYO2Qeo29l8mMg8wi4lu2+P8O0gaspbB5wPAx/2eprf6bRDSbWksLHTG
 js5eF88wHVUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167711641"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="167711641"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:38:05 -0700
IronPort-SDR: RACegHuh9E8QbrGY1FVysw9O5+18wZbJBm2xWnBC/mu5W7osL9IijLQ/dWyrBzz/4sWuCZQ9Yy
 zSlldZz7tt1w==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460834657"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:38:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <56599d70-6c62-4246-ab85-398ae24f8353@linux.intel.com>
Date: Fri, 17 Jul 2020 13:38:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/66] drm/i915: Keep the most recently used
 active-fence upon discard
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


On 15/07/2020 12:50, Chris Wilson wrote:
> Whenever an i915_active idles, we prune its tree of old fence slots to
> prevent a gradual leak should it be used to track many, many timelines.
> The downside is that we then have to frequently reallocate the rbtree.
> A compromise is that we keep the most recently used fence slot, and
> reuse that for the next active reference as that is the most likely
> timeline to be reused.
 >
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 27 ++++++++++++++++++++-------
>   drivers/gpu/drm/i915/i915_active.h |  4 ----
>   2 files changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 799282fb1bb9..0854b1552bc1 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -130,8 +130,8 @@ static inline void debug_active_assert(struct i915_active *ref) { }
>   static void
>   __active_retire(struct i915_active *ref)
>   {
> +	struct rb_root root = RB_ROOT;
>   	struct active_node *it, *n;
> -	struct rb_root root;
>   	unsigned long flags;
>   
>   	GEM_BUG_ON(i915_active_is_idle(ref));
> @@ -143,9 +143,21 @@ __active_retire(struct i915_active *ref)
>   	GEM_BUG_ON(rcu_access_pointer(ref->excl.fence));
>   	debug_active_deactivate(ref);
>   
> -	root = ref->tree;
> -	ref->tree = RB_ROOT;
> -	ref->cache = NULL;
> +	/* Even if we have not used the cache, we may still have a barrier */
> +	if (!ref->cache)
> +		ref->cache = fetch_node(ref->tree.rb_node);
> +
> +	/* Keep the MRU cached node for reuse */
> +	if (ref->cache) {
> +		/* Discard all other nodes in the tree */
> +		rb_erase(&ref->cache->node, &ref->tree);
> +		root = ref->tree;
> +
> +		/* Rebuild the tree with only the cached node */
> +		rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
> +		rb_insert_color(&ref->cache->node, &ref->tree);
> +		GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
> +	}
>   
>   	spin_unlock_irqrestore(&ref->tree_lock, flags);
>   
> @@ -156,6 +168,7 @@ __active_retire(struct i915_active *ref)
>   	/* ... except if you wait on it, you must manage your own references! */
>   	wake_up_var(ref);
>   
> +	/* Finally free the discarded timeline tree  */
>   	rbtree_postorder_for_each_entry_safe(it, n, &root, node) {
>   		GEM_BUG_ON(i915_active_fence_isset(&it->base));
>   		kmem_cache_free(global.slab_cache, it);

Here it frees everything.. so how does ref->cache, being in the tree, 
survives?

> @@ -750,16 +763,16 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
>   	return await_active(ref, flags, sw_await_fence, fence, fence);
>   }
>   
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
>   void i915_active_fini(struct i915_active *ref)
>   {
>   	debug_active_fini(ref);
>   	GEM_BUG_ON(atomic_read(&ref->count));
>   	GEM_BUG_ON(work_pending(&ref->work));
> -	GEM_BUG_ON(!RB_EMPTY_ROOT(&ref->tree));
>   	mutex_destroy(&ref->mutex);
> +
> +	if (ref->cache)
> +		kmem_cache_free(global.slab_cache, ref->cache);
>   }
> -#endif
>   
>   static inline bool is_idle_barrier(struct active_node *node, u64 idx)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 73ded3c52a04..b9e0394e2975 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -217,11 +217,7 @@ i915_active_is_idle(const struct i915_active *ref)
>   	return !atomic_read(&ref->count);
>   }
>   
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
>   void i915_active_fini(struct i915_active *ref);
> -#else
> -static inline void i915_active_fini(struct i915_active *ref) { }
> -#endif
>   
>   int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>   					    struct intel_engine_cs *engine);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
