Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2BF3FC4AE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 11:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6962189B38;
	Tue, 31 Aug 2021 09:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD4389B38
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 09:18:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="240687671"
X-IronPort-AV: E=Sophos;i="5.84,365,1620716400"; d="scan'208";a="240687671"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 02:18:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="540937724"
Received: from cfitzp2-mobl2.ger.corp.intel.com (HELO [10.213.255.231])
 ([10.213.255.231])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 02:18:35 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-8-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <80c12456-e409-2455-2f47-bb999468d271@linux.intel.com>
Date: Tue, 31 Aug 2021 10:18:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830121006.2978297-8-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915: vma is always backed by an
 object.
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


On 30/08/2021 13:09, Maarten Lankhorst wrote:
> vma->obj and vma->resv are now never NULL, and some checks can be removed.

Is the direction here compatible with SVM / VM_BIND?

Regards,

Tvrtko

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       |  2 +-
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
>   drivers/gpu/drm/i915/i915_vma.c               | 48 ++++++++-----------
>   drivers/gpu/drm/i915/i915_vma.h               |  3 --
>   4 files changed, 22 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 745e84c72c90..d3ad16df3ca2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -219,7 +219,7 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
>   	 */
>   
>   	err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
> -	if (!err && ce->ring->vma->obj)
> +	if (!err)
>   		err = i915_gem_object_lock(ce->ring->vma->obj, ww);
>   	if (!err && ce->state)
>   		err = i915_gem_object_lock(ce->state->obj, ww);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 3c65efcb7bed..cc31ccc13bfb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1354,7 +1354,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
>   	err = i915_gem_object_lock(timeline->hwsp_ggtt->obj, &ww);
>   	if (!err && gen7_wa_vma)
>   		err = i915_gem_object_lock(gen7_wa_vma->obj, &ww);
> -	if (!err && engine->legacy.ring->vma->obj)
> +	if (!err)
>   		err = i915_gem_object_lock(engine->legacy.ring->vma->obj, &ww);
>   	if (!err)
>   		err = intel_timeline_pin(timeline, &ww);
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index f9ac33e0bac9..ad5d52b33eb6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -40,12 +40,12 @@
>   
>   static struct kmem_cache *slab_vmas;
>   
> -struct i915_vma *i915_vma_alloc(void)
> +static struct i915_vma *i915_vma_alloc(void)
>   {
>   	return kmem_cache_zalloc(slab_vmas, GFP_KERNEL);
>   }
>   
> -void i915_vma_free(struct i915_vma *vma)
> +static void i915_vma_free(struct i915_vma *vma)
>   {
>   	return kmem_cache_free(slab_vmas, vma);
>   }
> @@ -426,10 +426,8 @@ int i915_vma_bind(struct i915_vma *vma,
>   
>   		work->base.dma.error = 0; /* enable the queue_work() */
>   
> -		if (vma->obj) {
> -			__i915_gem_object_pin_pages(vma->obj);
> -			work->pinned = i915_gem_object_get(vma->obj);
> -		}
> +		__i915_gem_object_pin_pages(vma->obj);
> +		work->pinned = i915_gem_object_get(vma->obj);
>   	} else {
>   		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
>   	}
> @@ -670,7 +668,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>   	}
>   
>   	color = 0;
> -	if (vma->obj && i915_vm_has_cache_coloring(vma->vm))
> +	if (i915_vm_has_cache_coloring(vma->vm))
>   		color = vma->obj->cache_level;
>   
>   	if (flags & PIN_OFFSET_FIXED) {
> @@ -795,17 +793,14 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
>   static int vma_get_pages(struct i915_vma *vma)
>   {
>   	int err = 0;
> -	bool pinned_pages = false;
> +	bool pinned_pages = true;
>   
>   	if (atomic_add_unless(&vma->pages_count, 1, 0))
>   		return 0;
>   
> -	if (vma->obj) {
> -		err = i915_gem_object_pin_pages(vma->obj);
> -		if (err)
> -			return err;
> -		pinned_pages = true;
> -	}
> +	err = i915_gem_object_pin_pages(vma->obj);
> +	if (err)
> +		return err;
>   
>   	/* Allocations ahoy! */
>   	if (mutex_lock_interruptible(&vma->pages_mutex)) {
> @@ -838,8 +833,8 @@ static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
>   	if (atomic_sub_return(count, &vma->pages_count) == 0) {
>   		vma->ops->clear_pages(vma);
>   		GEM_BUG_ON(vma->pages);
> -		if (vma->obj)
> -			i915_gem_object_unpin_pages(vma->obj);
> +
> +		i915_gem_object_unpin_pages(vma->obj);
>   	}
>   	mutex_unlock(&vma->pages_mutex);
>   }
> @@ -875,7 +870,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   	int err;
>   
>   #ifdef CONFIG_PROVE_LOCKING
> -	if (debug_locks && !WARN_ON(!ww) && vma->resv)
> +	if (debug_locks && !WARN_ON(!ww))
>   		assert_vma_held(vma);
>   #endif
>   
> @@ -983,7 +978,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   
>   	GEM_BUG_ON(!vma->pages);
>   	err = i915_vma_bind(vma,
> -			    vma->obj ? vma->obj->cache_level : 0,
> +			    vma->obj->cache_level,
>   			    flags, work);
>   	if (err)
>   		goto err_remove;
> @@ -1037,7 +1032,7 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>   
>   #ifdef CONFIG_LOCKDEP
> -	WARN_ON(!ww && vma->resv && dma_resv_held(vma->resv));
> +	WARN_ON(!ww && dma_resv_held(vma->resv));
>   #endif
>   
>   	do {
> @@ -1116,6 +1111,7 @@ void i915_vma_reopen(struct i915_vma *vma)
>   void i915_vma_release(struct kref *ref)
>   {
>   	struct i915_vma *vma = container_of(ref, typeof(*vma), ref);
> +	struct drm_i915_gem_object *obj = vma->obj;
>   
>   	if (drm_mm_node_allocated(&vma->node)) {
>   		mutex_lock(&vma->vm->mutex);
> @@ -1126,15 +1122,11 @@ void i915_vma_release(struct kref *ref)
>   	}
>   	GEM_BUG_ON(i915_vma_is_active(vma));
>   
> -	if (vma->obj) {
> -		struct drm_i915_gem_object *obj = vma->obj;
> -
> -		spin_lock(&obj->vma.lock);
> -		list_del(&vma->obj_link);
> -		if (!RB_EMPTY_NODE(&vma->obj_node))
> -			rb_erase(&vma->obj_node, &obj->vma.tree);
> -		spin_unlock(&obj->vma.lock);
> -	}
> +	spin_lock(&obj->vma.lock);
> +	list_del(&vma->obj_link);
> +	if (!RB_EMPTY_NODE(&vma->obj_node))
> +		rb_erase(&vma->obj_node, &obj->vma.tree);
> +	spin_unlock(&obj->vma.lock);
>   
>   	__i915_vma_remove_closed(vma);
>   	i915_vm_put(vma->vm);
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 1c930515ec3d..1ba82bf863a5 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -409,9 +409,6 @@ static inline void i915_vma_clear_scanout(struct i915_vma *vma)
>   	list_for_each_entry(V, &(OBJ)->vma.list, obj_link)		\
>   		for_each_until(!i915_vma_is_ggtt(V))
>   
> -struct i915_vma *i915_vma_alloc(void);
> -void i915_vma_free(struct i915_vma *vma);
> -
>   struct i915_vma *i915_vma_make_unshrinkable(struct i915_vma *vma);
>   void i915_vma_make_shrinkable(struct i915_vma *vma);
>   void i915_vma_make_purgeable(struct i915_vma *vma);
> 
