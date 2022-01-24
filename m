Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E974984A2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 17:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133AB10E841;
	Mon, 24 Jan 2022 16:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B74610E841
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 16:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643041474; x=1674577474;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=we4T+sp4ICKbLGIehXZVmjE3GYg21erE+jA/9D7Bh58=;
 b=ASAcwisztAN3DpZFDMEH8uei33Rx9jo3mPvCJOaCCK1cyp8A4Pfh3ev/
 KZAK58sRFWfOFYzgvPuNReQMzLvFGhTE7sBX4y5rlNIo4DztynGVbAJQX
 Xx5jduumCW60thKYu3vZ8yY3Zgj6zw7/zGJ1Wl9K7XYntwOSyR2fSosha
 mw57FYkgAHukwUgJ7dVFbAn8zjvpoUqBSh1tJrX70ETZEYlEPQvn0ZmPw
 2vqeSOB3Kjz+R3Vfoh0zXy1bKTXPWM8a47dbRK0HVVZlROUABeTHtDX/n
 aLKv1p/jxVvlKCeBm+ea1mOZNqV4rf4KLK8jqwPDhK7jwIrv6oFIQNPnT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="309404071"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="309404071"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:24:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="624132736"
Received: from olindum-mobl1.ger.corp.intel.com (HELO [10.249.254.70])
 ([10.249.254.70])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:24:31 -0800
Message-ID: <6b34e05e-df19-59a4-2172-211593d005dd@linux.intel.com>
Date: Mon, 24 Jan 2022 17:24:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
 <20220121222252.3296117-6-adrian.larumbe@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220121222252.3296117-6-adrian.larumbe@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/i915/flat-CCS: handle creation
 and destruction of flat CCS bo's
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

Hi, Adrian

On 1/21/22 23:22, Adrian Larumbe wrote:
> When a flat-CCS lmem-bound BO is evicted onto smem for the first time, a
> separate swap gem object is created to hold the contents of the CCS block.
> It is assumed that, for a flat-CCS bo to be migrated back onto lmem, it
> should've begun its life in lmem.
>
> It also handles destruction of the swap bo when the original TTM object
> reaches the end of its life.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>


While allocating a separate object for the CCS data is certainly
possible, it poses some additional difficulties that have not been
addressed here.

The CCS object needs to share the dma_resv of the original object. That
is because the CCS object needs to be locked and validated when we process it, and we
can only trylock within the ttm move callback which might therefore fail
and isn't sufficient on swapin. We'd need to create some
i915_gem_object_create_region_locked() that wraps ttm_bo_init_reserved().

Furthermore destruction also becomes complicated, as the main object
owns a refcount on the CCS object, but the CCS object also needs a
refcount on the dma_resv part of the main object which will create a
refcount loop requiring an additional dma_resv refcount for objects to
resolve, similar to how we've solved this for shared dma_resv shared with vms.

Also shouldn't we be destroying the CCS object when data is moved back into lmem?

Anyway, when we've earlier discussed how to handle this, we've discussed a solution where the struct ttm_tt was given an inflated size on creation to accommodate also the CCS data at the end. That would waste some memory if we ever were to migrate such an object to system while decompressing, but otherwise greatly simplify the handling. Basically we'd only look at whether the object is flat-CCS enabled in i915_ttm_tt_create() and inflate the ttm_tt size.
  
This requires an additional size parameter to ttm_tt_init(), but I've once discussed this with Christian König, and he didn't seem to object at the time. (+CC Christian König).

Thanks,
Thomas


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 11 +++
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 78 +++++++++++++++++++-
>   2 files changed, 87 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 84cae740b4a5..24708d6bfd9c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -474,11 +474,22 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
>   static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	struct drm_i915_private *i915 =
> +		container_of(bo->bdev, typeof(*i915), bdev);
>   
>   	if (likely(obj)) {
>   		__i915_gem_object_pages_fini(obj);
>   		i915_ttm_free_cached_io_rsgt(obj);
>   	}
> +
> +	if (HAS_FLAT_CCS(i915) && obj->flat_css.enabled) {
> +		struct drm_i915_gem_object *swap_obj = obj->flat_css.swap;
> +
> +		if (swap_obj) {
> +			swap_obj->base.funcs->free(&swap_obj->base);
> +			obj->flat_css.swap = NULL;
> +		}
> +	}
>   }
>   
>   static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt *ttm)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 1de306c03aaf..3479c4a37bd8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -162,6 +162,56 @@ int i915_ttm_move_notify(struct ttm_buffer_object *bo)
>   	return 0;
>   }
>   
> +static int
> +i915_ccs_handle_move(struct drm_i915_gem_object *obj,
> +		     struct ttm_resource *dst_mem)
> +{
> +	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
> +	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
> +						     bdev);
> +	struct intel_memory_region *dst_reg;
> +	size_t ccs_blk_size;
> +	int ret;
> +
> +	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
> +	ccs_blk_size = GET_CCS_SIZE(i915, obj->base.size);
> +
> +	if (dst_reg->type != INTEL_MEMORY_LOCAL &&
> +	    dst_reg->type != INTEL_MEMORY_SYSTEM) {
> +		DRM_DEBUG_DRIVER("Wrong memory region when using flat CCS.\n");
> +		return -EINVAL;
> +	}
> +
> +	if (dst_reg->type == INTEL_MEMORY_LOCAL &&
> +	    (obj->flat_css.swap == NULL || !i915_gem_object_has_pages(obj->flat_css.swap))) {
> +		/*
> +		 * All BOs begin their life cycle in smem, even if meant to be
> +		 * lmem-bound. Then, upon running the execbuf2 ioctl, get moved
> +		 * onto lmem before first use. Therefore, migrating a flat-CCS
> +		 * lmem-only buffer into lmem means a CCS swap buffer had already
> +		 * been allocated when first migrating it onto smem from lmem.
> +		 */
> +
> +		drm_err(&i915->drm, "BO hasn't been evicted into smem yet\n");
> +		return -EINVAL;
> +
> +	} else if (dst_reg->type == INTEL_MEMORY_SYSTEM &&
> +		   !obj->flat_css.swap) {
> +		/* First time object is swapped out onto smem */
> +		obj->flat_css.swap =
> +			i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_SMEM],
> +						      ccs_blk_size, 0, 0);
> +		if (IS_ERR(obj->flat_css.swap))
> +			return -ENOMEM;
> +
> +		ret = __i915_gem_object_get_pages(obj->flat_css.swap);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   					     bool clear,
>   					     struct ttm_resource *dst_mem,
> @@ -172,9 +222,10 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
>   						     bdev);
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	struct i915_refct_sgt *ccs_rsgt = NULL;
>   	struct i915_request *rq;
>   	struct ttm_tt *src_ttm = bo->ttm;
> -	enum i915_cache_level src_level, dst_level;
> +	enum i915_cache_level src_level, dst_level, ccs_level;
>   	int ret;
>   
>   	if (!to_gt(i915)->migrate.context || intel_gt_is_wedged(to_gt(i915)))
> @@ -196,6 +247,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   						  i915_ttm_gtt_binds_lmem(dst_mem),
>   						  0, &rq);
>   	} else {
> +		struct ttm_buffer_object *swap_bo;
>   		struct i915_refct_sgt *src_rsgt =
>   			i915_ttm_resource_get_st(obj, bo->resource);
>   
> @@ -203,6 +255,25 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   			return ERR_CAST(src_rsgt);
>   
>   		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
> +		ccs_level = I915_CACHE_NONE;
> +
> +		/* Handle CCS block */
> +		if (HAS_FLAT_CCS(i915) && obj->flat_css.enabled) {
> +			ret = i915_ccs_handle_move(obj, dst_mem);
> +			if (ret) {
> +				drm_err(&i915->drm,
> +					"CCS block migration failed (%d)\n", ret);
> +				return ERR_PTR(ret);
> +			}
> +
> +			swap_bo = i915_gem_to_ttm(obj->flat_css.swap);
> +			ccs_level = i915_ttm_cache_level(i915, swap_bo->resource, swap_bo->ttm);
> +			ccs_rsgt = i915_ttm_resource_get_st(i915_ttm_to_gem(swap_bo),
> +							    swap_bo->resource);
> +			if (IS_ERR(ccs_rsgt))
> +				return ERR_CAST(ccs_rsgt);
> +		}
> +
>   		intel_engine_pm_get(to_gt(i915)->migrate.context->engine);
>   		ret = intel_context_migrate_copy(to_gt(i915)->migrate.context,
>   						 deps, src_rsgt->table.sgl,
> @@ -210,9 +281,12 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   						 i915_ttm_gtt_binds_lmem(bo->resource),
>   						 dst_st->sgl, dst_level,
>   						 i915_ttm_gtt_binds_lmem(dst_mem),
> -						 &rq);
> +						 ccs_rsgt ? ccs_rsgt->table.sgl : NULL,
> +						 ccs_level, &rq);
>   
>   		i915_refct_sgt_put(src_rsgt);
> +		if (ccs_rsgt)
> +			i915_refct_sgt_put(ccs_rsgt);
>   	}
>   
>   	intel_engine_pm_put(to_gt(i915)->migrate.context->engine);
