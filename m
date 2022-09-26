Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAE85EAC5C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA6B10E2F2;
	Mon, 26 Sep 2022 16:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104BF10E2F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664209349; x=1695745349;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Xfrxi39TbxhJNAQWKO2XKdwRxqw59Ak6hSgMBeh+3CA=;
 b=hhZjMe/BjPortmBcoJBV1ezmoaYplRi8wBrh4nZ6PNGvrdW15wn4E7JF
 /HbtJ1uSHAksKJNFGmO9lPAnpr8ddi7QqwgxsaQQ3HPsjAMEeckwWCx8c
 aFOcRtM0zC5dri3Hwdw0EalT8rsFvthB6sEGocncWPSP1VshUAEWyyXyJ
 lY3qa+51vKTKZxUsRfG+7KYX6MdbdOxxA6j3wULqLS0XSiTrIyLVGsUK5
 1ZquGN6OLTmkEaH7/MV8GyWcy7MmJa9pUHzcjECPiSH6MU5bCLF8UVtv/
 rZRUzAwLB4zW4EqJ1vwx3DoYekheif+CyAT1UrhDlR8fEig5OF/M2jZAl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="284190685"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="284190685"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:22:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616464673"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616464673"
Received: from vnyaykal-mobl1.ger.corp.intel.com (HELO [10.252.4.169])
 ([10.252.4.169])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:22:27 -0700
Message-ID: <f9852362-47ff-91b5-11f6-54b521faa8cd@intel.com>
Date: Mon, 26 Sep 2022 17:22:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220923143125.5768-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Grab wakeref at
 i915_ttm_unmap_virtual
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

On 23/09/2022 15:31, Anshuman Gupta wrote:
> We had already grabbed the rpm wakeref at obj destruction path,
> but it also required to grab the wakeref when object moves.
> When i915_gem_object_release_mmap_offset() gets called by
> i915_ttm_move_notify(), it will release the mmap offset without
> grabbing the wakeref. We want to avoid that therefore,
> grab the wakreref at i915_ttm_unmap_virtual() accordingly.
> 
> While doing that also changed the lmem_userfault_lock from
> mutex to spinlock, as spinlock widely used for list.
> 
> Also changed if (obj->userfault_count) to
> GEM_BUG_ON(!obj->userfault_count).
> 
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 19 +++++-------
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 39 ++++++++++++++++--------
>   drivers/gpu/drm/i915/gt/intel_gt.c       | 11 ++++++-
>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  2 +-
>   4 files changed, 45 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 73d9eda1d6b7..9da561c19a47 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -557,11 +557,13 @@ void i915_gem_object_runtime_pm_release_mmap_offset(struct drm_i915_gem_object *
>   
>   	drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);
>   
> -	if (obj->userfault_count) {
> -		/* rpm wakeref provide exclusive access */
> -		list_del(&obj->userfault_link);
> -		obj->userfault_count = 0;
> -	}
> +	/*
> +	 * We have exclusive access here via runtime suspend. All other callers
> +	 * must first grab the rpm wakeref.
> +	 */
> +	GEM_BUG_ON(!obj->userfault_count);
> +	list_del(&obj->userfault_link);
> +	obj->userfault_count = 0;
>   }
>   
>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> @@ -587,13 +589,6 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>   		spin_lock(&obj->mmo.lock);
>   	}
>   	spin_unlock(&obj->mmo.lock);
> -
> -	if (obj->userfault_count) {
> -		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> -		list_del(&obj->userfault_link);
> -		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> -		obj->userfault_count = 0;
> -	}
>   }
>   
>   static struct i915_mmap_offset *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index e3fc38dd5db0..0630eeca7316 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -509,18 +509,9 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
>   static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> -	intel_wakeref_t wakeref = 0;
>   
>   	if (bo->resource && likely(obj)) {
> -		/* ttm_bo_release() already has dma_resv_lock */
> -		if (i915_ttm_cpu_maps_iomem(bo->resource))
> -			wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> -
>   		__i915_gem_object_pages_fini(obj);
> -
> -		if (wakeref)
> -			intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
> -
>   		i915_ttm_free_cached_io_rsgt(obj);
>   	}
>   }
> @@ -1052,12 +1043,15 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
>   		goto out_rpm;
>   
> -	/* ttm_bo_vm_reserve() already has dma_resv_lock */
> +	/*
> +	 * ttm_bo_vm_reserve() already has dma_resv_lock.
> +	 * userfault_count is protected by dma_resv lock and rpm wakeref.
> +	 */
>   	if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
>   		obj->userfault_count = 1;
> -		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +		spin_lock(to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
>   		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
> -		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +		spin_unlock(to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
>   	}
>   
>   	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> @@ -1123,7 +1117,28 @@ static u64 i915_ttm_mmap_offset(struct drm_i915_gem_object *obj)
>   
>   static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
>   {
> +	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
> +	intel_wakeref_t wakeref = 0;
> +
> +	assert_object_held_shared(obj);
> +
> +	if (i915_ttm_cpu_maps_iomem(bo->resource)) {
> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +
> +		/* userfault_count is protected by obj lock and rpm wakeref. */
> +		if (obj->userfault_count) {
> +			spin_lock(to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +			list_del(&obj->userfault_link);
> +			spin_unlock(to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +			obj->userfault_count = 0;
> +		}
> +
> +	}
> +
>   	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
> +
> +	if (wakeref)
> +		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
>   }
>   
>   static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index b367cfff48d5..1e63432d97bb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -41,7 +41,7 @@ void intel_gt_common_init_early(struct intel_gt *gt)
>   	spin_lock_init(gt->irq_lock);
>   
>   	INIT_LIST_HEAD(&gt->lmem_userfault_list);
> -	mutex_init(&gt->lmem_userfault_lock);
> +	spin_lock_init(gt->lmem_userfault_lock);
>   	INIT_LIST_HEAD(&gt->closed_vma);
>   	spin_lock_init(&gt->closed_lock);
>   
> @@ -71,6 +71,10 @@ int intel_root_gt_init_early(struct drm_i915_private *i915)
>   	if (!gt->irq_lock)
>   		return -ENOMEM;
>   
> +	gt->lmem_userfault_lock = drmm_kzalloc(&i915->drm, sizeof(*gt->lmem_userfault_lock), GFP_KERNEL);
> +	if (!gt->lmem_userfault_lock)
> +		return -ENOMEM;
> +
>   	intel_gt_common_init_early(gt);
>   
>   	return 0;
> @@ -813,6 +817,11 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
>   		gt->uncore = uncore;
>   		gt->irq_lock = irq_lock;
>   
> +		gt->lmem_userfault_lock = drmm_kzalloc(&gt->i915->drm,
> +						       sizeof(*gt->lmem_userfault_lock), GFP_KERNEL);
> +		if (!gt->lmem_userfault_lock)
> +			return -ENOMEM;
> +
>   		intel_gt_common_init_early(gt);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 30003d68fd51..925775310b1e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -153,7 +153,7 @@ struct intel_gt {
>   	 *  but instead has exclusive access by virtue of all other accesses requiring
>   	 *  holding the runtime pm wakeref.
>   	 */
> -	struct mutex lmem_userfault_lock;
> +	spinlock_t *lmem_userfault_lock;
>   	struct list_head lmem_userfault_list;

It looks like there were some comments off list about this. It doesn't 
look like runtime pm is really per gt, so maybe just stick all this in 
i915? Or was there some other reason for putting this in gt?

>   
>   	struct list_head closed_vma;
