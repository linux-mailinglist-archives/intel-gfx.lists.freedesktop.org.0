Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E25DE175753
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 10:39:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360506E217;
	Mon,  2 Mar 2020 09:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267366E217
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 09:39:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 01:39:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,506,1574150400"; d="scan'208";a="351503662"
Received: from pedrero-mobl.ger.corp.intel.com (HELO [10.252.52.192])
 ([10.252.52.192])
 by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2020 01:39:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-6-chris@chris-wilson.co.uk>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <32e5e1ea-5094-44ff-3cdd-8b3ac989a8e4@linux.intel.com>
Date: Mon, 2 Mar 2020 10:39:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200302085812.4172450-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/22] drm/i915/gem: Only call eb_lookup_vma
 once during execbuf ioctl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 02-03-2020 om 09:57 schreef Chris Wilson:
> As we no longer stash anything inside i915_vma under the exclusive
> protection of struct_mutex, we do not need to revoke the i915_vma
> stashes before dropping struct_mutex to handle pagefaults. Knowing that
> we must drop the struct_mutex while keeping the eb->vma around, means
> that we are required to hold onto to the object reference until we have
> marked the vma as active.
>
> Fixes: 155ab8836caa ("drm/i915: Move object close under its own lock")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

I can work with this,

For patch 4 5 and 6

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>


> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 107 +++++++-----------
>  1 file changed, 42 insertions(+), 65 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 9c888561a636..577c84872acc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -47,17 +47,15 @@ enum {
>  #define DBG_FORCE_RELOC 0 /* choose one of the above! */
>  };
>  
> -#define __EXEC_OBJECT_HAS_REF		BIT(31)
> -#define __EXEC_OBJECT_HAS_PIN		BIT(30)
> -#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
> -#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above */
> +#define __EXEC_OBJECT_HAS_PIN		BIT(31)
> +#define __EXEC_OBJECT_HAS_FENCE		BIT(30)
> +#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> +#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
>  #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
>  
>  #define __EXEC_HAS_RELOC	BIT(31)
> -#define __EXEC_VALIDATED	BIT(30)
> -#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
> +#define __EXEC_INTERNAL_FLAGS	(~0u << 31)
>  #define UPDATE			PIN_OFFSET_FIXED
>  
>  #define BATCH_OFFSET_BIAS (256*1024)
> @@ -472,24 +470,17 @@ eb_validate_vma(struct i915_execbuffer *eb,
>  	return 0;
>  }
>  
> -static int
> +static void
>  eb_add_vma(struct i915_execbuffer *eb,
>  	   unsigned int i, unsigned batch_idx,
>  	   struct i915_vma *vma)
>  {
>  	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
>  	struct eb_vma *ev = &eb->vma[i];
> -	int err;
>  
>  	GEM_BUG_ON(i915_vma_is_closed(vma));
>  
> -	if (!(eb->args->flags & __EXEC_VALIDATED)) {
> -		err = eb_validate_vma(eb, entry, vma);
> -		if (unlikely(err))
> -			return err;
> -	}
> -
> -	ev->vma = vma;
> +	ev->vma = i915_vma_get(vma);
>  	ev->exec = entry;
>  	ev->flags = entry->flags;
>  
> @@ -522,7 +513,6 @@ eb_add_vma(struct i915_execbuffer *eb,
>  		eb->batch = ev;
>  	}
>  
> -	err = 0;
>  	if (eb_pin_vma(eb, entry, ev)) {
>  		if (entry->offset != vma->node.start) {
>  			entry->offset = vma->node.start | UPDATE;
> @@ -530,12 +520,8 @@ eb_add_vma(struct i915_execbuffer *eb,
>  		}
>  	} else {
>  		eb_unreserve_vma(ev);
> -
>  		list_add_tail(&ev->bind_link, &eb->unbound);
> -		if (drm_mm_node_allocated(&vma->node))
> -			err = i915_vma_unbind(vma);
>  	}
> -	return err;
>  }
>  
>  static inline int use_cpu_reloc(const struct reloc_cache *cache,
> @@ -582,6 +568,13 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
>  	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
>  		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
>  
> +	if (drm_mm_node_allocated(&vma->node) &&
> +	    eb_vma_misplaced(entry, vma, ev->flags)) {
> +		err = i915_vma_unbind(vma);
> +		if (err)
> +			return err;
> +	}
> +
>  	err = i915_vma_pin(vma,
>  			   entry->pad_to_size, entry->alignment,
>  			   pin_flags);
> @@ -641,7 +634,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
>  			if (err)
>  				break;
>  		}
> -		if (err != -ENOSPC)
> +		if (!(err == -ENOSPC || err == -EAGAIN))
>  			return err;
>  
>  		/* Resort *all* the objects into priority order */
> @@ -672,6 +665,11 @@ static int eb_reserve(struct i915_execbuffer *eb)
>  		}
>  		list_splice_tail(&last, &eb->unbound);
>  
> +		if (err == -EAGAIN) {
> +			flush_workqueue(eb->i915->mm.userptr_wq);
> +			continue;
> +		}
> +
>  		switch (pass++) {
>  		case 0:
>  			break;
> @@ -727,17 +725,14 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>  	unsigned int i, batch;
>  	int err;
>  
> +	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
> +		return -ENOENT;
> +
>  	INIT_LIST_HEAD(&eb->relocs);
>  	INIT_LIST_HEAD(&eb->unbound);
>  
>  	batch = eb_batch_index(eb);
>  
> -	mutex_lock(&eb->gem_context->mutex);
> -	if (unlikely(i915_gem_context_is_closed(eb->gem_context))) {
> -		err = -ENOENT;
> -		goto err_ctx;
> -	}
> -
>  	for (i = 0; i < eb->buffer_count; i++) {
>  		u32 handle = eb->exec[i].handle;
>  		struct i915_lut_handle *lut;
> @@ -782,25 +777,19 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>  		i915_gem_object_unlock(obj);
>  
>  add_vma:
> -		err = eb_add_vma(eb, i, batch, vma);
> +		err = eb_validate_vma(eb, &eb->exec[i], vma);
>  		if (unlikely(err))
>  			goto err_vma;
>  
> -		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
> -			   eb_vma_misplaced(&eb->exec[i], vma, eb->vma[i].flags));
> +		eb_add_vma(eb, i, batch, vma);
>  	}
>  
> -	mutex_unlock(&eb->gem_context->mutex);
> -
> -	eb->args->flags |= __EXEC_VALIDATED;
> -	return eb_reserve(eb);
> +	return 0;
>  
>  err_obj:
>  	i915_gem_object_put(obj);
>  err_vma:
>  	eb->vma[i].vma = NULL;
> -err_ctx:
> -	mutex_unlock(&eb->gem_context->mutex);
>  	return err;
>  }
>  
> @@ -841,19 +830,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
>  		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
>  			__eb_unreserve_vma(vma, ev->flags);
>  
> -		if (ev->flags & __EXEC_OBJECT_HAS_REF)
> -			i915_vma_put(vma);
> +		i915_vma_put(vma);
>  	}
>  }
>  
> -static void eb_reset_vmas(const struct i915_execbuffer *eb)
> -{
> -	eb_release_vmas(eb);
> -	if (eb->lut_size > 0)
> -		memset(eb->buckets, 0,
> -		       sizeof(struct hlist_head) << eb->lut_size);
> -}
> -
>  static void eb_destroy(const struct i915_execbuffer *eb)
>  {
>  	GEM_BUG_ON(eb->reloc_cache.rq);
> @@ -1662,8 +1642,6 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>  		goto out;
>  	}
>  
> -	/* We may process another execbuffer during the unlock... */
> -	eb_reset_vmas(eb);
>  	mutex_unlock(&dev->struct_mutex);
>  
>  	/*
> @@ -1702,11 +1680,6 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>  		goto out;
>  	}
>  
> -	/* reacquire the objects */
> -	err = eb_lookup_vmas(eb);
> -	if (err)
> -		goto err;
> -
>  	GEM_BUG_ON(!eb->batch);
>  
>  	list_for_each_entry(ev, &eb->relocs, reloc_link) {
> @@ -1757,8 +1730,17 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>  
>  static int eb_relocate(struct i915_execbuffer *eb)
>  {
> -	if (eb_lookup_vmas(eb))
> -		goto slow;
> +	int err;
> +
> +	mutex_lock(&eb->gem_context->mutex);
> +	err = eb_lookup_vmas(eb);
> +	mutex_unlock(&eb->gem_context->mutex);
> +	if (err)
> +		return err;
> +
> +	err = eb_reserve(eb);
> +	if (err)
> +		return err;
>  
>  	/* The objects are in their final locations, apply the relocations. */
>  	if (eb->args->flags & __EXEC_HAS_RELOC) {
> @@ -1766,14 +1748,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
>  
>  		list_for_each_entry(ev, &eb->relocs, reloc_link) {
>  			if (eb_relocate_vma(eb, ev))
> -				goto slow;
> +				return eb_relocate_slow(eb);
>  		}
>  	}
>  
>  	return 0;
> -
> -slow:
> -	return eb_relocate_slow(eb);
>  }
>  
>  static int eb_move_to_gpu(struct i915_execbuffer *eb)
> @@ -1855,8 +1834,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  		i915_vma_unlock(vma);
>  
>  		__eb_unreserve_vma(vma, flags);
> -		if (unlikely(flags & __EXEC_OBJECT_HAS_REF))
> -			i915_vma_put(vma);
> +		i915_vma_put(vma);
>  
>  		ev->vma = NULL;
>  	}
> @@ -2116,8 +2094,7 @@ static int eb_parse(struct i915_execbuffer *eb)
>  		goto err_trampoline;
>  
>  	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
> -	eb->vma[eb->buffer_count].flags =
> -		__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_REF;
> +	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
>  	eb->batch = &eb->vma[eb->buffer_count++];
>  
>  	eb->trampoline = trampoline;


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
