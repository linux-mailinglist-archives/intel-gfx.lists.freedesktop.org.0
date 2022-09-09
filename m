Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A95B3C1E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 17:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA61510E031;
	Fri,  9 Sep 2022 15:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54DA710E031
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 15:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662737776; x=1694273776;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=V0DG3Tt1fxGubL/eX8/nMrmfi/jzoJlgnccACddcRG4=;
 b=R1G3bgRq8ZL4k4lP37LT5/A7QJt7zKDlpyqfTggniLCE6wyuxbEpNxNS
 pXTQzZ25kNFq4z52CBAJeYpN+3RWuhzCJ7lCbRWqp6XglZj/UC6J9yEoD
 DWhDhqSqzHSiB1XU0jJC9TDshQyObHMgNd2MHIlqSQtybbNu6/WWmNntG
 huSYxazOS/B/+7zX8rZarOuvkaj/COkyZVS4UBaonhNQF5kjsfeFAFZdQ
 3pFAW4dvqAgwbK0UtLbJbM8FAbHv6he1uIRWlzX8/6VGpR0oohIx88IVb
 Njrkl6fTU+n0HNd6HRe+fHhvrzv5OT1lq/ayjeRcf0v6FGv7UWHhIPnv2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="361455977"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="361455977"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 08:36:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="741086050"
Received: from andreybr-mobl1.ger.corp.intel.com (HELO [10.252.0.122])
 ([10.252.0.122])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 08:36:13 -0700
Message-ID: <f8e3431d-b06a-352e-967a-5d4fdd501eb8@intel.com>
Date: Fri, 9 Sep 2022 16:36:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220909112419.26901-1-anshuman.gupta@intel.com>
 <20220909112419.26901-3-anshuman.gupta@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220909112419.26901-3-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: chris@chris-wilson.co.uk, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09/09/2022 12:24, Anshuman Gupta wrote:
> Release all mmap mapping for all lmem objects which are associated
> with userfault such that, while pcie function in D3hot, any access
> to memory mappings will raise a userfault.
> 
> Runtime resume the dgpu(when gem object lies in lmem).
> This will transition the dgpu graphics function to D0
> state if it was in D3 in order to access the mmap memory
> mappings.
> 
> v2:
> - Squashes the patches. [Matt Auld]
> - Add adequate locking for lmem_userfault_list addition. [Matt Auld]
> - Reused obj->userfault_count to avoid double addition. [Matt Auld]
> - Added i915_gem_object_lock to check
>    i915_gem_object_is_lmem. [Matt Auld]
> 
> v3:
> - Use i915_ttm_cpu_maps_iomem. [Matt Auld]
> - Fix 'ret == 0 to ret == VM_FAULT_NOPAGE'. [Matt Auld]
> - Reuse obj->userfault_count as a bool 0 or 1. [Matt Auld]
> - Delete the mmaped obj from lmem_userfault_list in obj
>    destruction path. [Matt Auld]
> - Get a wakeref for object destruction patch. [Matt Auld]
> - Use intel_wakeref_auto to delay runtime PM. [Matt Auld]
> 
> PCIe Specs 5.3.1.4.1
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 18 ++++++--
>   drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 46 ++++++++++++++++---
>   drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
>   drivers/gpu/drm/i915/i915_driver.c            |  1 -
>   drivers/gpu/drm/i915/i915_gem.c               |  5 ++
>   9 files changed, 68 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 2be222c03c82..55a4e9fba5ba 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -550,13 +550,10 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>   }
>   
> -void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> +void __i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>   {
>   	struct i915_mmap_offset *mmo, *mn;
>   
> -	if (obj->ops->unmap_virtual)
> -		obj->ops->unmap_virtual(obj);
> -
>   	spin_lock(&obj->mmo.lock);
>   	rbtree_postorder_for_each_entry_safe(mmo, mn,
>   					     &obj->mmo.offsets, offset) {
> @@ -573,6 +570,19 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>   		spin_lock(&obj->mmo.lock);
>   	}
>   	spin_unlock(&obj->mmo.lock);
> +
> +	if (obj->userfault_count) {
> +		list_del(&obj->userfault_link);
> +		obj->userfault_count = 0;
> +	}
> +}
> +
> +void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> +{
> +	if (obj->ops->unmap_virtual)
> +		obj->ops->unmap_virtual(obj);
> +
> +	__i915_gem_object_release_mmap_offset(obj);
>   }
>   
>   static struct i915_mmap_offset *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> index efee9e0d2508..271039fdf875 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> @@ -27,6 +27,7 @@ int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
>   void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>   void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>   
> +void __i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 389e9f157ca5..f6e60cc86b9e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -238,7 +238,7 @@ static void __i915_gem_object_free_mmaps(struct drm_i915_gem_object *obj)
>   {
>   	/* Skip serialisation and waking the device if known to be not used. */
>   
> -	if (obj->userfault_count)
> +	if (obj->userfault_count && !IS_DGFX(to_i915(obj->base.dev)))
>   		i915_gem_object_release_mmap_gtt(obj);
>   
>   	if (!RB_EMPTY_ROOT(&obj->mmo.offsets)) {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 9f6b14ec189a..40305e2bcd49 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -298,7 +298,8 @@ struct drm_i915_gem_object {
>   	};
>   
>   	/**
> -	 * Whether the object is currently in the GGTT mmap.
> +	 * Whether the object is currently in the GGTT or any other supported
> +	 * fake offset mmap backed by lmem.
>   	 */
>   	unsigned int userfault_count;
>   	struct list_head userfault_link;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index bc9c432edffe..bfb2074d65ae 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -509,9 +509,17 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
>   static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	intel_wakeref_t wakeref = 0;
>   
>   	if (likely(obj)) {
> +		if (i915_ttm_cpu_maps_iomem(bo->resource))
> +			wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +
>   		__i915_gem_object_pages_fini(obj);
> +
> +		if (wakeref)
> +			intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
> +
>   		i915_ttm_free_cached_io_rsgt(obj);
>   	}
>   }
> @@ -981,6 +989,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	struct ttm_buffer_object *bo = area->vm_private_data;
>   	struct drm_device *dev = bo->base.dev;
>   	struct drm_i915_gem_object *obj;
> +	intel_wakeref_t wakeref = 0;
>   	vm_fault_t ret;
>   	int idx;
>   
> @@ -990,16 +999,22 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   
>   	/* Sanity check that we allow writing into this object */
>   	if (unlikely(i915_gem_object_is_readonly(obj) &&
> -		     area->vm_flags & VM_WRITE))
> -		return VM_FAULT_SIGBUS;
> +		     area->vm_flags & VM_WRITE)) {
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;
> +	}
>   
>   	ret = ttm_bo_vm_reserve(bo, vmf);
>   	if (ret)
> -		return ret;
> +		goto out_rpm;
> +
> +	if (i915_ttm_cpu_maps_iomem(bo->resource))
> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);

Could maybe move this down a bit. No need to grab the wakeref if the 
object is marked as DONTNEED.

>   
>   	if (obj->mm.madv != I915_MADV_WILLNEED) {
>   		dma_resv_unlock(bo->base.resv);
> -		return VM_FAULT_SIGBUS;
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;
>   	}
>   
>   	if (!i915_ttm_resource_mappable(bo->resource)) {
> @@ -1023,7 +1038,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		if (err) {
>   			drm_dbg(dev, "Unable to make resource CPU accessible\n");
>   			dma_resv_unlock(bo->base.resv);
> -			return VM_FAULT_SIGBUS;
> +			ret = VM_FAULT_SIGBUS;
> +			goto out_rpm;
>   		}
>   	}
>   
> @@ -1034,12 +1050,30 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	} else {
>   		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
>   	}
> +
>   	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
> -		return ret;
> +		goto out_rpm;
> +
> +	/* ttm_bo_vm_reserve() already has dma_resv_lock */
> +	if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
> +		obj->userfault_count = 1;
> +		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
> +		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +	}
> +
> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> +		intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))->userfault_wakeref,
> +				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>   
>   	i915_ttm_adjust_lru(obj);
>   
>   	dma_resv_unlock(bo->base.resv);
> +
> +out_rpm:
> +	if (wakeref)
> +		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
> +
>   	return ret;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 1ce344cfa827..ee9ee815f505 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -39,6 +39,8 @@ static void __intel_gt_init_early(struct intel_gt *gt)
>   {
>   	spin_lock_init(&gt->irq_lock);
>   
> +	INIT_LIST_HEAD(&gt->lmem_userfault_list);
> +	mutex_init(&gt->lmem_userfault_lock);
>   	INIT_LIST_HEAD(&gt->closed_vma);
>   	spin_lock_init(&gt->closed_lock);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index e6a662f9d7c0..a2d87e742161 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -132,6 +132,9 @@ struct intel_gt {
>   	struct intel_wakeref wakeref;
>   	atomic_t user_wakeref;
>   
> +	struct mutex lmem_userfault_lock; /* Protects access to usefault list */
> +	struct list_head lmem_userfault_list;

Probably needs a big comment explaining how this all works, since it 
seems quite tricky.

"If we are outside of the runtime suspend path, access to 
@lmem_userfault_list requires always first grabbing the runtime pm, to 
ensure we can't race against runtime suspend removing items. Once we 
have that we also need to grab @lmem_userfault_lock, at which point we 
have exclusive access. The runtime suspend path is special since it 
doens't really hold any locks, but instead has exlusive access by virtue 
of all other accesses requiring holding the runtime pm."

Also according to that we are then missing holding lmem_userfault_lock 
in i915_gem_object_release_mmap_offset(), for the object destruction 
case. We are only holding the runtime pm, which only saves us from 
runtime suspend, and not some other concurrent user, like a different 
object destroy or fault touching the list.

> +
>   	struct list_head closed_vma;
>   	spinlock_t closed_lock; /* guards the list of closed_vma */
>   
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 1332c70370a6..81699aa505e2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1591,7 +1591,6 @@ static int intel_runtime_suspend(struct device *kdev)
>   		return -ENODEV;
>   
>   	drm_dbg(&dev_priv->drm, "Suspending device\n");
> -
>   	disable_rpm_wakeref_asserts(rpm);
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 70f082f7911a..01f23c0e7fec 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -842,6 +842,11 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
>   				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
>   		__i915_gem_object_release_mmap_gtt(obj);
>   
> +	list_for_each_entry_safe(obj, on,
> +				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
> +		__i915_gem_object_release_mmap_offset(obj);

drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);

I don't think mm.offsets is tracking the ttm node...

> +	}
> +
>   	/*
>   	 * The fence will be lost when the device powers down. If any were
>   	 * in use by hardware (i.e. they are pinned), we should not be powering
