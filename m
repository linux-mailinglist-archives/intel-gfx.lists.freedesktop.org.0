Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCD221F1C7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 14:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5556E1B9;
	Tue, 14 Jul 2020 12:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B346E077
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 12:48:08 +0000 (UTC)
IronPort-SDR: CTjrfSVvlQl8EE8Wr91VNCXthu193ew2yb2eUXMSXoDpnrB0zpXnC4LuvI/pBMQESkc/sGkrpx
 BJC+zWAm7MYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="137020858"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="137020858"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 05:48:07 -0700
IronPort-SDR: +rySaIyuBgjsCvFfb+bdwJxsrkaIo20QiTRijcu+1i1P4rUWuR9xd21qQFdauO2Vnmy2Fxhn6P
 AfaUFzRhQZnQ==
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="285741401"
Received: from alaskov-mobl.ger.corp.intel.com (HELO [10.214.244.103])
 ([10.214.244.103])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 05:48:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-15-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a811ae0-1bd8-8708-0102-13e31d841270@linux.intel.com>
Date: Tue, 14 Jul 2020 13:48:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/20] drm/i915/gem: Include cmdparser in
 common execbuf pinning
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
> Pull the cmdparser allocations in to the reservation phase, and then
> they are included in the common vma pinning pass.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 348 ++++++++++--------
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  10 +
>   drivers/gpu/drm/i915/i915_cmd_parser.c        |  21 +-
>   3 files changed, 218 insertions(+), 161 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c14c3b7e0dfd..8e4681427ce3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -25,6 +25,7 @@
>   #include "i915_gem_clflush.h"
>   #include "i915_gem_context.h"
>   #include "i915_gem_ioctls.h"
> +#include "i915_memcpy.h"
>   #include "i915_sw_fence_work.h"
>   #include "i915_trace.h"
>   
> @@ -52,6 +53,7 @@ struct eb_bind_vma {
>   
>   struct eb_vma_array {
>   	struct kref kref;
> +	struct list_head aux_list;

Why is the aux_list needed (code comment would do).

>   	struct eb_vma vma[];
>   };
>   
> @@ -246,7 +248,6 @@ struct i915_execbuffer {
>   
>   	struct i915_request *request; /** our request to build */
>   	struct eb_vma *batch; /** identity of the batch obj/vma */
> -	struct i915_vma *trampoline; /** trampoline used for chaining */
>   
>   	/** actual size of execobj[] as we may extend it for the cmdparser */
>   	unsigned int buffer_count;
> @@ -281,6 +282,11 @@ struct i915_execbuffer {
>   		unsigned int rq_size;
>   	} reloc_cache;
>   
> +	struct eb_cmdparser {
> +		struct eb_vma *shadow;
> +		struct eb_vma *trampoline;
> +	} parser;
> +
>   	u64 invalid_flags; /** Set of execobj.flags that are invalid */
>   	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
>   
> @@ -298,6 +304,10 @@ struct i915_execbuffer {
>   	struct eb_vma_array *array;
>   };
>   
> +static struct drm_i915_gem_exec_object2 no_entry = {
> +	.offset = -1ull

Is the -1 ever used or just the unique element address is enough?

> +};
> +
>   static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
>   {
>   	return intel_engine_requires_cmd_parser(eb->engine) ||
> @@ -314,6 +324,7 @@ static struct eb_vma_array *eb_vma_array_create(unsigned int count)
>   		return NULL;
>   
>   	kref_init(&arr->kref);
> +	INIT_LIST_HEAD(&arr->aux_list);
>   	arr->vma[0].vma = NULL;
>   
>   	return arr;
> @@ -339,16 +350,31 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
>   		       __EXEC_OBJECT_HAS_FENCE);
>   }
>   
> +static void eb_vma_destroy(struct eb_vma *ev)
> +{
> +	eb_unreserve_vma(ev);
> +	i915_vma_put(ev->vma);
> +}
> +
> +static void eb_destroy_aux(struct eb_vma_array *arr)
> +{
> +	struct eb_vma *ev, *en;
> +
> +	list_for_each_entry_safe(ev, en, &arr->aux_list, reloc_link) {
> +		eb_vma_destroy(ev);
> +		kfree(ev);
> +	}
> +}
> +
>   static void eb_vma_array_destroy(struct kref *kref)
>   {
>   	struct eb_vma_array *arr = container_of(kref, typeof(*arr), kref);
> -	struct eb_vma *ev = arr->vma;
> +	struct eb_vma *ev;
>   
> -	while (ev->vma) {
> -		eb_unreserve_vma(ev);
> -		i915_vma_put(ev->vma);
> -		ev++;
> -	}
> +	eb_destroy_aux(arr);
> +
> +	for (ev = arr->vma; ev->vma; ev++)
> +		eb_vma_destroy(ev);
>   
>   	kvfree(arr);
>   }
> @@ -396,8 +422,8 @@ eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
>   
>   static int eb_create(struct i915_execbuffer *eb)
>   {
> -	/* Allocate an extra slot for use by the command parser + sentinel */
> -	eb->array = eb_vma_array_create(eb->buffer_count + 2);
> +	/* Allocate an extra slot for use by the sentinel */
> +	eb->array = eb_vma_array_create(eb->buffer_count + 1);
>   	if (!eb->array)
>   		return -ENOMEM;
>   
> @@ -1078,7 +1104,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   	GEM_BUG_ON(!(drm_mm_node_allocated(&vma->node) ^
>   		     drm_mm_node_allocated(&bind->hole)));
>   
> -	if (entry->offset != vma->node.start) {
> +	if (entry != &no_entry && entry->offset != vma->node.start) {
>   		entry->offset = vma->node.start | UPDATE;
>   		*work->p_flags |= __EXEC_HAS_RELOC;
>   	}
> @@ -1374,7 +1400,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		struct i915_vma *vma = ev->vma;
>   
>   		if (eb_pin_vma_inplace(eb, entry, ev)) {
> -			if (entry->offset != vma->node.start) {
> +			if (entry != &no_entry &&
> +			    entry->offset != vma->node.start) {
>   				entry->offset = vma->node.start | UPDATE;
>   				eb->args->flags |= __EXEC_HAS_RELOC;
>   			}
> @@ -1514,6 +1541,113 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   	} while (1);
>   }
>   
> +static int eb_alloc_cmdparser(struct i915_execbuffer *eb)
> +{
> +	struct intel_gt_buffer_pool_node *pool;
> +	struct i915_vma *vma;
> +	struct eb_vma *ev;
> +	unsigned int len;
> +	int err;
> +
> +	if (range_overflows_t(u64,
> +			      eb->batch_start_offset, eb->batch_len,
> +			      eb->batch->vma->size)) {
> +		drm_dbg(&eb->i915->drm,
> +			"Attempting to use out-of-bounds batch\n");
> +		return -EINVAL;
> +	}
> +
> +	if (eb->batch_len == 0)
> +		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;

The two checks kind of don't fit under the "alloc cmdparser" heading. 
Maybe move to separate eb_prepare_batch which then calls 
eb_alloc_cmdparser? I mean it's stupid details so probably not even 
important..

> +
> +	if (!eb_use_cmdparser(eb))
> +		return 0;
> +
> +	len = eb->batch_len;
> +	if (!CMDPARSER_USES_GGTT(eb->i915)) {
> +		/*
> +		 * ppGTT backed shadow buffers must be mapped RO, to prevent
> +		 * post-scan tampering
> +		 */
> +		if (!eb->context->vm->has_read_only) {
> +			drm_dbg(&eb->i915->drm,
> +				"Cannot prevent post-scan tampering without RO capable vm\n");
> +			return -EINVAL;
> +		}
> +	} else {
> +		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
> +	}
> +
> +	pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
> +	if (IS_ERR(pool))
> +		return PTR_ERR(pool);
> +
> +	ev = kzalloc(sizeof(*ev), GFP_KERNEL);
> +	if (!ev) {
> +		err = -ENOMEM;
> +		goto err_pool;
> +	}
> +
> +	vma = i915_vma_instance(pool->obj, eb->context->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err_ev;
> +	}
> +	i915_gem_object_set_readonly(vma->obj);
> +	i915_gem_object_set_cache_coherency(vma->obj, I915_CACHE_LLC);
> +	vma->private = pool;
> +
> +	ev->vma = i915_vma_get(vma);
> +	ev->exec = &no_entry;
> +	list_add(&ev->reloc_link, &eb->array->aux_list);
> +	list_add(&ev->bind_link, &eb->bind_list);
> +	list_add(&ev->submit_link, &eb->submit_list);
> +
> +	if (CMDPARSER_USES_GGTT(eb->i915)) {
> +		eb->parser.trampoline = ev;
> +
> +		/*
> +		 * Special care when binding will be required for full-ppgtt
> +		 * as there will be distinct vm involved, and we will need to
> +		 * separate the binding/eviction passes (different vm->mutex).
> +		 */
> +		if (GEM_WARN_ON(eb->context->vm != &eb->engine->gt->ggtt->vm)) {
> +			ev = kzalloc(sizeof(*ev), GFP_KERNEL);
> +			if (!ev) {
> +				err = -ENOMEM;
> +				goto err_pool;
> +			}
> +
> +			vma = i915_vma_instance(pool->obj,
> +						&eb->engine->gt->ggtt->vm,
> +						NULL);
> +			if (IS_ERR(vma)) {
> +				err = PTR_ERR(vma);
> +				goto err_ev;
> +			}
> +			vma->private = pool;
> +
> +			ev->vma = i915_vma_get(vma);
> +			ev->exec = &no_entry;
> +			list_add(&ev->reloc_link, &eb->array->aux_list);
> +			list_add(&ev->bind_link, &eb->bind_list);
> +			list_add(&ev->submit_link, &eb->submit_list);
> +		}
> +
> +		ev->flags = EXEC_OBJECT_NEEDS_GTT;
> +		eb->batch_flags |= I915_DISPATCH_SECURE;
> +	}
> +
> +	eb->parser.shadow = ev;
> +	return 0;
> +
> +err_ev:
> +	kfree(ev);
> +err_pool:
> +	intel_gt_buffer_pool_put(pool);
> +	return err;
> +}
> +
>   static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
>   {
>   	if (eb->args->flags & I915_EXEC_BATCH_FIRST)
> @@ -1684,9 +1818,7 @@ static void eb_destroy(const struct i915_execbuffer *eb)
>   {
>   	GEM_BUG_ON(eb->reloc_cache.rq);
>   
> -	if (eb->array)
> -		eb_vma_array_put(eb->array);
> -
> +	eb_vma_array_put(eb->array);

This change can go to the patch which adds the code.

>   	if (eb->lut_size > 0)
>   		kfree(eb->buckets);
>   }
> @@ -2306,6 +2438,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   	if (err)
>   		return err;
>   
> +	err = eb_alloc_cmdparser(eb);
> +	if (err)
> +		return err;
> +
>   	err = eb_reserve_vm(eb);
>   	if (err)
>   		return err;
> @@ -2392,8 +2528,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   	}
>   	ww_acquire_fini(&acquire);
>   
> -	eb_vma_array_put(fetch_and_zero(&eb->array));

How come this is not needed any more? Maybe it was never needed in which 
case the change can get moved to the original patch.

> -
>   	if (unlikely(err))
>   		goto err_skip;
>   
> @@ -2457,25 +2591,6 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
>   	return 0;
>   }
>   
> -static struct i915_vma *
> -shadow_batch_pin(struct drm_i915_gem_object *obj,
> -		 struct i915_address_space *vm,
> -		 unsigned int flags)
> -{
> -	struct i915_vma *vma;
> -	int err;
> -
> -	vma = i915_vma_instance(obj, vm, NULL);
> -	if (IS_ERR(vma))
> -		return vma;
> -
> -	err = i915_vma_pin(vma, 0, 0, flags);
> -	if (err)
> -		return ERR_PTR(err);
> -
> -	return vma;
> -}
> -
>   struct eb_parse_work {
>   	struct dma_fence_work base;
>   	struct intel_engine_cs *engine;
> @@ -2502,6 +2617,9 @@ static void __eb_parse_release(struct dma_fence_work *work)
>   {
>   	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
>   
> +	i915_gem_object_unpin_pages(pw->shadow->obj);
> +	i915_gem_object_unpin_pages(pw->batch->obj);
> +
>   	if (pw->trampoline)
>   		i915_active_release(&pw->trampoline->active);
>   	i915_active_release(&pw->shadow->active);
> @@ -2527,35 +2645,48 @@ __parser_mark_active(struct i915_vma *vma,
>   static int
>   parser_mark_active(struct eb_parse_work *pw, struct intel_timeline *tl)
>   {
> -	int err;
> -
> -	err = __parser_mark_active(pw->shadow, tl, &pw->base.dma);
> -	if (err)
> -		return err;
> -
> -	if (pw->trampoline) {
> -		err = __parser_mark_active(pw->trampoline, tl, &pw->base.dma);
> -		if (err)
> -			return err;
> -	}
> +	GEM_BUG_ON(pw->trampoline &&
> +		   pw->trampoline->private != pw->shadow->private);
>   
> -	return 0;
> +	return __parser_mark_active(pw->shadow, tl, &pw->base.dma);

Trampoling is marked as active somewhere else now?

>   }
>   
>   static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   			     struct i915_vma *shadow,
>   			     struct i915_vma *trampoline)
>   {
> +	struct i915_vma *batch = eb->batch->vma;
>   	struct eb_parse_work *pw;
> +	void *ptr;
>   	int err;
>   
> +	GEM_BUG_ON(!i915_vma_is_pinned(shadow));
> +	GEM_BUG_ON(trampoline && !i915_vma_is_pinned(trampoline));
> +
>   	pw = kzalloc(sizeof(*pw), GFP_KERNEL);
>   	if (!pw)
>   		return -ENOMEM;
>   
> +	ptr = i915_gem_object_pin_map(shadow->obj, I915_MAP_FORCE_WB);

I did not spot any new unpin_map calls for these two (^^^ vvv) so maybe 
they are missing.

> +	if (IS_ERR(ptr)) {
> +		err = PTR_ERR(ptr);
> +		goto err_free;
> +	}
> +
> +	if (!(batch->obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ) &&
> +	    i915_has_memcpy_from_wc()) {
> +		ptr = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +		if (IS_ERR(ptr)) {
> +			err = PTR_ERR(ptr);
> +			goto err_dst;
> +		}
> +	} else {
> +		__i915_gem_object_pin_pages(batch->obj);
> +	}
> +
>   	err = i915_active_acquire(&eb->batch->vma->active);
>   	if (err)
> -		goto err_free;
> +		goto err_src;
>   
>   	err = i915_active_acquire(&shadow->active);
>   	if (err)
> @@ -2620,6 +2751,10 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   	i915_active_release(&shadow->active);
>   err_batch:
>   	i915_active_release(&eb->batch->vma->active);
> +err_src:
> +	i915_gem_object_unpin_pages(batch->obj);
> +err_dst:
> +	i915_gem_object_unpin_pages(shadow->obj);
>   err_free:
>   	kfree(pw);
>   	return err;
> @@ -2627,82 +2762,26 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   
>   static int eb_parse(struct i915_execbuffer *eb)
>   {
> -	struct drm_i915_private *i915 = eb->i915;
> -	struct intel_gt_buffer_pool_node *pool;
> -	struct i915_vma *shadow, *trampoline;
> -	unsigned int len;
>   	int err;
>   
> -	if (!eb_use_cmdparser(eb))
> -		return 0;
> -
> -	len = eb->batch_len;
> -	if (!CMDPARSER_USES_GGTT(eb->i915)) {
> -		/*
> -		 * ppGTT backed shadow buffers must be mapped RO, to prevent
> -		 * post-scan tampering
> -		 */
> -		if (!eb->context->vm->has_read_only) {
> -			drm_dbg(&i915->drm,
> -				"Cannot prevent post-scan tampering without RO capable vm\n");
> -			return -EINVAL;
> -		}
> -	} else {
> -		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
> -	}
> -
> -	pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
> -	if (IS_ERR(pool))
> -		return PTR_ERR(pool);
> -
> -	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
> -	if (IS_ERR(shadow)) {
> -		err = PTR_ERR(shadow);
> -		goto err;
> +	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
> +		drm_dbg(&eb->i915->drm,
> +			"Attempting to use self-modifying batch buffer\n");
> +		return -EINVAL;
>   	}
> -	i915_gem_object_set_readonly(shadow->obj);
> -	shadow->private = pool;
> -
> -	trampoline = NULL;
> -	if (CMDPARSER_USES_GGTT(eb->i915)) {
> -		trampoline = shadow;
> -
> -		shadow = shadow_batch_pin(pool->obj,
> -					  &eb->engine->gt->ggtt->vm,
> -					  PIN_GLOBAL);
> -		if (IS_ERR(shadow)) {
> -			err = PTR_ERR(shadow);
> -			shadow = trampoline;
> -			goto err_shadow;
> -		}
> -		shadow->private = pool;
>   
> -		eb->batch_flags |= I915_DISPATCH_SECURE;
> -	}
> +	if (!eb->parser.shadow)
> +		return 0;
>   
> -	err = eb_parse_pipeline(eb, shadow, trampoline);
> +	err = eb_parse_pipeline(eb,
> +				eb->parser.shadow->vma,
> +				eb->parser.trampoline ? eb->parser.trampoline->vma : NULL);
>   	if (err)
> -		goto err_trampoline;
> -
> -	eb->batch = &eb->vma[eb->buffer_count++];
> -	eb->batch->vma = i915_vma_get(shadow);
> -	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
> -	list_add_tail(&eb->batch->submit_link, &eb->submit_list);
> -	eb->vma[eb->buffer_count].vma = NULL;
> +		return err;
>   
> -	eb->trampoline = trampoline;
> +	eb->batch = eb->parser.shadow;
>   	eb->batch_start_offset = 0;
> -
>   	return 0;
> -
> -err_trampoline:
> -	if (trampoline)
> -		i915_vma_unpin(trampoline);
> -err_shadow:
> -	i915_vma_unpin(shadow);
> -err:
> -	intel_gt_buffer_pool_put(pool);
> -	return err;
>   }
>   
>   static void
> @@ -2751,10 +2830,10 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
>   	if (err)
>   		return err;
>   
> -	if (eb->trampoline) {
> +	if (eb->parser.trampoline) {
>   		GEM_BUG_ON(eb->batch_start_offset);
>   		err = eb->engine->emit_bb_start(eb->request,
> -						eb->trampoline->node.start +
> +						eb->parser.trampoline->vma->node.start +
>   						eb->batch_len,
>   						0, 0);
>   		if (err)
> @@ -3239,7 +3318,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	eb.buffer_count = args->buffer_count;
>   	eb.batch_start_offset = args->batch_start_offset;
>   	eb.batch_len = args->batch_len;
> -	eb.trampoline = NULL;
> +	memset(&eb.parser, 0, sizeof(eb.parser));
>   
>   	eb.batch_flags = 0;
>   	if (args->flags & I915_EXEC_SECURE) {
> @@ -3305,24 +3384,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		goto err_vma;
>   	}
>   
> -	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
> -		drm_dbg(&i915->drm,
> -			"Attempting to use self-modifying batch buffer\n");
> -		err = -EINVAL;
> -		goto err_vma;
> -	}
> -
> -	if (range_overflows_t(u64,
> -			      eb.batch_start_offset, eb.batch_len,
> -			      eb.batch->vma->size)) {
> -		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
> -		err = -EINVAL;
> -		goto err_vma;
> -	}
> -
> -	if (eb.batch_len == 0)
> -		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
> -
>   	err = eb_parse(&eb);
>   	if (err)
>   		goto err_vma;
> @@ -3348,7 +3409,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
>   		if (IS_ERR(vma)) {
>   			err = PTR_ERR(vma);
> -			goto err_parse;
> +			goto err_vma;
>   		}
>   
>   		GEM_BUG_ON(vma->obj != batch->obj);
> @@ -3400,8 +3461,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	 * to explicitly hold another reference here.
>   	 */
>   	eb.request->batch = batch;
> -	if (batch->private)
> -		intel_gt_buffer_pool_mark_active(batch->private, eb.request);
> +	if (eb.parser.shadow)
> +		intel_gt_buffer_pool_mark_active(eb.parser.shadow->vma->private,
> +						 eb.request);
>   
>   	trace_i915_request_queue(eb.request, eb.batch_flags);
>   	err = eb_submit(&eb, batch);
> @@ -3428,13 +3490,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   err_batch_unpin:
>   	if (eb.batch_flags & I915_DISPATCH_SECURE)
>   		i915_vma_unpin(batch);
> -err_parse:
> -	if (batch->private)
> -		intel_gt_buffer_pool_put(batch->private);
> -	i915_vma_put(batch);
>   err_vma:
> -	if (eb.trampoline)
> -		i915_vma_unpin(eb.trampoline);
> +	if (eb.parser.shadow)
> +		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
>   	eb_unpin_engine(&eb);
>   err_context:
>   	i915_gem_context_put(eb.gem_context);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 2faa481cc18f..25714bf70b6a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -372,6 +372,16 @@ enum i915_map_type {
>   void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>   					   enum i915_map_type type);
>   
> +static inline void *__i915_gem_object_mapping(struct drm_i915_gem_object *obj)
> +{
> +	return page_mask_bits(obj->mm.mapping);
> +}
> +
> +static inline int __i915_gem_object_mapping_type(struct drm_i915_gem_object *obj)
> +{
> +	return page_unmask_bits(obj->mm.mapping);
> +}
> +
>   void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>   				 unsigned long offset,
>   				 unsigned long size);
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 372354d33f55..dc8770206bb8 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1140,29 +1140,22 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>   {
>   	bool needs_clflush;
>   	void *dst, *src;
> -	int ret;
>   
> -	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
> -	if (IS_ERR(dst))
> -		return dst;
> +	GEM_BUG_ON(!i915_gem_object_has_pages(src_obj));
>   
> -	ret = i915_gem_object_pin_pages(src_obj);
> -	if (ret) {
> -		i915_gem_object_unpin_map(dst_obj);
> -		return ERR_PTR(ret);
> -	}
> +	dst = __i915_gem_object_mapping(dst_obj);
> +	GEM_BUG_ON(!dst);
>   
>   	needs_clflush =
>   		!(src_obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ);
>   
>   	src = ERR_PTR(-ENODEV);
>   	if (needs_clflush && i915_has_memcpy_from_wc()) {
> -		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
> -		if (!IS_ERR(src)) {
> +		if (__i915_gem_object_mapping_type(src_obj) == I915_MAP_WC) {
> +			src = __i915_gem_object_mapping(src_obj);
>   			i915_unaligned_memcpy_from_wc(dst,
>   						      src + offset,
>   						      length);
> -			i915_gem_object_unpin_map(src_obj);
>   		}
>   	}
>   	if (IS_ERR(src)) {
> @@ -1198,9 +1191,6 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>   		}
>   	}
>   
> -	i915_gem_object_unpin_pages(src_obj);
> -
> -	/* dst_obj is returned with vmap pinned */
>   	return dst;
>   }
>   
> @@ -1546,7 +1536,6 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
>   
>   	if (!IS_ERR_OR_NULL(jump_whitelist))
>   		kfree(jump_whitelist);
> -	i915_gem_object_unpin_map(shadow->obj);
>   	return ret;
>   }
>   
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
