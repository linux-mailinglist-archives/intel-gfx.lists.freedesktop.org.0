Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B316012909B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 02:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25AC26E12E;
	Mon, 23 Dec 2019 01:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A586E12E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 01:16:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Dec 2019 17:16:46 -0800
X-IronPort-AV: E=Sophos;i="5.69,345,1571727600"; d="scan'208";a="211391835"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Dec 2019 17:16:45 -0800
Date: Mon, 23 Dec 2019 03:16:18 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191223011618.GA21697@ideak-desk.fi.intel.com>
References: <20191222210256.2066451-1-chris@chris-wilson.co.uk>
 <20191222210256.2066451-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191222210256.2066451-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Introduce a vma.kref
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 22, 2019 at 09:02:55PM +0000, Chris Wilson wrote:
> Start introducing a kref on i915_vma in order to protect the vma unbind
> from a parallel destruction. Later, we will use the refcount to manage
> all access.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>

The patchset got rid of the vma unbind/destroy race I could repro with
kms_plane:

Tested-and-acked-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |  3 +--
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +--
>  drivers/gpu/drm/i915/i915_gem.c               | 27 +++++++------------
>  drivers/gpu/drm/i915/i915_gem_gtt.c           |  5 ++--
>  drivers/gpu/drm/i915/i915_vma.c               |  9 ++++---
>  drivers/gpu/drm/i915/i915_vma.h               | 25 ++++++++++++++---
>  7 files changed, 44 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index ddc82a7a34ff..46bacc82ddc4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -194,7 +194,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  				GEM_BUG_ON(vma->obj != obj);
>  				spin_unlock(&obj->vma.lock);
>  
> -				i915_vma_destroy(vma);
> +				__i915_vma_put(vma);
>  
>  				spin_lock(&obj->vma.lock);
>  			}
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 497c367a79ca..2479395c1873 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1110,8 +1110,7 @@ static int __igt_write_huge(struct intel_context *ce,
>  out_vma_unpin:
>  	i915_vma_unpin(vma);
>  out_vma_close:
> -	i915_vma_destroy(vma);
> -
> +	__i915_vma_put(vma);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 591435c5f368..cbf796da64e3 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -163,7 +163,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
>  	kunmap(p);
>  
>  out:
> -	i915_vma_destroy(vma);
> +	__i915_vma_put(vma);
>  	return err;
>  }
>  
> @@ -257,7 +257,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
>  		if (err)
>  			return err;
>  
> -		i915_vma_destroy(vma);
> +		__i915_vma_put(vma);
>  
>  		if (igt_timeout(end_time,
>  				"%s: timed out after tiling=%d stride=%d\n",
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index e9f82e9cb6ff..9ddcf17230e6 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -136,7 +136,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
>  						       struct i915_vma,
>  						       obj_link))) {
>  		struct i915_address_space *vm = vma->vm;
> -		bool awake = false;
>  
>  		list_move_tail(&vma->obj_link, &still_in_list);
>  		if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
> @@ -147,26 +146,18 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
>  			break;
>  
>  		/* Prevent vma being freed by i915_vma_parked as we unbind */
> -		if (intel_gt_pm_get_if_awake(vm->gt)) {
> -			awake = true;
> -		} else {
> -			if (i915_vma_is_closed(vma)) {
> -				spin_unlock(&obj->vma.lock);
> -				i915_vma_parked(vm->gt);
> -				goto err_vm;
> -			}
> -		}
> -
> +		vma = __i915_vma_get(vma);
>  		spin_unlock(&obj->vma.lock);
>  
> -		ret = -EBUSY;
> -		if (flags & I915_GEM_OBJECT_UNBIND_ACTIVE ||
> -		    !i915_vma_is_active(vma))
> -			ret = i915_vma_unbind(vma);
> +		if (vma) {
> +			ret = -EBUSY;
> +			if (flags & I915_GEM_OBJECT_UNBIND_ACTIVE ||
> +			    !i915_vma_is_active(vma))
> +				ret = i915_vma_unbind(vma);
> +
> +			__i915_vma_put(vma);
> +		}
>  
> -		if (awake)
> -			intel_gt_pm_put(vm->gt);
> -err_vm:
>  		i915_vm_close(vm);
>  		spin_lock(&obj->vma.lock);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index 2ad2fc5efdbf..1efe58ad0ce9 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -534,7 +534,7 @@ void __i915_vm_close(struct i915_address_space *vm)
>  
>  		atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
>  		WARN_ON(__i915_vma_unbind(vma));
> -		i915_vma_destroy(vma);
> +		__i915_vma_put(vma);
>  
>  		i915_gem_object_put(obj);
>  	}
> @@ -1812,7 +1812,7 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
>  {
>  	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
>  
> -	i915_vma_destroy(ppgtt->vma);
> +	__i915_vma_put(ppgtt->vma);
>  
>  	gen6_ppgtt_free_pd(ppgtt);
>  	free_scratch(vm);
> @@ -1895,6 +1895,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
>  
>  	i915_active_init(&vma->active, NULL, NULL);
>  
> +	kref_init(&vma->ref);
>  	mutex_init(&vma->pages_mutex);
>  	vma->vm = i915_vm_get(&ggtt->vm);
>  	vma->ops = &pd_vma_ops;
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index f3ac837ba3b3..cbd783c31adb 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -114,6 +114,7 @@ vma_create(struct drm_i915_gem_object *obj,
>  	if (vma == NULL)
>  		return ERR_PTR(-ENOMEM);
>  
> +	kref_init(&vma->ref);
>  	mutex_init(&vma->pages_mutex);
>  	vma->vm = i915_vm_get(vm);
>  	vma->ops = &vm->vma_ops;
> @@ -1021,8 +1022,10 @@ void i915_vma_reopen(struct i915_vma *vma)
>  		__i915_vma_remove_closed(vma);
>  }
>  
> -void i915_vma_destroy(struct i915_vma *vma)
> +void i915_vma_release(struct kref *ref)
>  {
> +	struct i915_vma *vma = container_of(ref, typeof(*vma), ref);
> +
>  	if (drm_mm_node_allocated(&vma->node)) {
>  		mutex_lock(&vma->vm->mutex);
>  		atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
> @@ -1072,7 +1075,7 @@ void i915_vma_parked(struct intel_gt *gt)
>  		spin_unlock_irq(&gt->closed_lock);
>  
>  		if (obj) {
> -			i915_vma_destroy(vma);
> +			__i915_vma_put(vma);
>  			i915_gem_object_put(obj);
>  		}
>  
> @@ -1236,7 +1239,7 @@ int __i915_vma_unbind(struct i915_vma *vma)
>  	i915_vma_detach(vma);
>  	vma_unbind_pages(vma);
>  
> -	drm_mm_remove_node(&vma->node); /* pairs with i915_vma_destroy() */
> +	drm_mm_remove_node(&vma->node); /* pairs with i915_vma_release() */
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 0e0b61c24551..5fffa3c58908 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -51,14 +51,19 @@ enum i915_cache_level;
>   */
>  struct i915_vma {
>  	struct drm_mm_node node;
> -	struct drm_i915_gem_object *obj;
> +
>  	struct i915_address_space *vm;
>  	const struct i915_vma_ops *ops;
> -	struct i915_fence_reg *fence;
> +
> +	struct drm_i915_gem_object *obj;
>  	struct dma_resv *resv; /** Alias of obj->resv */
> +
>  	struct sg_table *pages;
>  	void __iomem *iomap;
>  	void *private; /* owned by creator */
> +
> +	struct i915_fence_reg *fence;
> +
>  	u64 size;
>  	u64 display_alignment;
>  	struct i915_page_sizes page_sizes;
> @@ -74,6 +79,7 @@ struct i915_vma {
>  	 * handles (but same file) for execbuf, i.e. the number of aliases
>  	 * that exist in the ctx->handle_vmas LUT for this vma.
>  	 */
> +	struct kref ref;
>  	atomic_t open_count;
>  	atomic_t flags;
>  	/**
> @@ -336,7 +342,20 @@ int __must_check i915_vma_unbind(struct i915_vma *vma);
>  void i915_vma_unlink_ctx(struct i915_vma *vma);
>  void i915_vma_close(struct i915_vma *vma);
>  void i915_vma_reopen(struct i915_vma *vma);
> -void i915_vma_destroy(struct i915_vma *vma);
> +
> +static inline struct i915_vma *__i915_vma_get(struct i915_vma *vma)
> +{
> +	if (kref_get_unless_zero(&vma->ref))
> +		return vma;
> +
> +	return NULL;
> +}
> +
> +void i915_vma_release(struct kref *ref);
> +static inline void __i915_vma_put(struct i915_vma *vma)
> +{
> +	kref_put(&vma->ref, i915_vma_release);
> +}
>  
>  #define assert_vma_held(vma) dma_resv_assert_held((vma)->resv)
>  
> -- 
> 2.24.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
