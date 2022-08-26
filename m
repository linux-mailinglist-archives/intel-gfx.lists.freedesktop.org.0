Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2919C5A2D9F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 19:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA12910E9DD;
	Fri, 26 Aug 2022 17:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB5B10E9DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 17:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661535537; x=1693071537;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Bztvgi2Wg6pI36fASMO6deJPc/fgSjS3RL/J2Fl8/3E=;
 b=XhLX4g57rbk7J1rfm2SYBQbFgUS1Gqo/JTir8Yab7w7kkoI5D7wGCCqc
 t70CaruHZPkbRzNknl0go4SUMnbqGcmOE6W7QIrHLRnnnKwp5VrmrNwoj
 /Vpb3e3jlYf8Q4W1jA49WgjMrxBqeEBSknfEj2arwE6Fu1StvsD2laDpk
 62wzBSTe0KU9ZwO207fkqy6szKZ8ap4rJzO5rRz/vjTt3PooQ0tKn3Nmf
 RzGNQmjkANQ6YNJ39cDPGJu4b0W/3jmJDG+5CcLbxtH6Opu/y0znGgeGy
 AxWLHnEST+kW9zYf8Bkv+hik1FgnpQBKsPaQWrVhcU3eAP1a5LVojHe/l A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="295832666"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="295832666"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 10:38:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="671553516"
Received: from lohlayho-mobl2.gar.corp.intel.com (HELO [10.214.158.136])
 ([10.214.158.136])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 10:38:53 -0700
Message-ID: <efccc7fb-7532-a3e7-de07-7459b83011cc@intel.com>
Date: Fri, 26 Aug 2022 18:38:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220825105409.6927-1-anshuman.gupta@intel.com>
 <20220825105409.6927-2-anshuman.gupta@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220825105409.6927-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dgfx: Release mmap on rpm
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

On 25/08/2022 11:54, Anshuman Gupta wrote:
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
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331

Just double checking, this is needed for DG1 and DG2, right? Are there 
any BSpec links we can add here?

> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 48 ++++++++++++++++---
>   drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
>   drivers/gpu/drm/i915/i915_gem.c               |  8 ++++
>   5 files changed, 57 insertions(+), 7 deletions(-)
> 
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
> index 5a5cf332d8a5..6532a634bd20 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1014,12 +1014,29 @@ static void i915_ttm_delayed_free(struct drm_i915_gem_object *obj)
>   	ttm_bo_put(i915_gem_to_ttm(obj));
>   }
>   
> +static intel_wakeref_t
> +i915_gem_ttm_get_lmem_obj_wakeref(struct drm_i915_gem_object *obj)
> +{
> +	intel_wakeref_t wakeref = 0;
> +
> +	if (i915_gem_object_lock_interruptible(obj, NULL))
> +		return 0;
> +
> +	if (i915_gem_object_is_lmem(obj))
> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +
> +	i915_gem_object_unlock(obj);
> +
> +	return wakeref;
> +}
> +
>   static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   {
>   	struct vm_area_struct *area = vmf->vma;
>   	struct ttm_buffer_object *bo = area->vm_private_data;
>   	struct drm_device *dev = bo->base.dev;
>   	struct drm_i915_gem_object *obj;
> +	intel_wakeref_t wakeref = 0;
>   	vm_fault_t ret;
>   	int idx;
>   
> @@ -1027,18 +1044,23 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	if (!obj)
>   		return VM_FAULT_SIGBUS;
>   
> +	wakeref = i915_gem_ttm_get_lmem_obj_wakeref(obj);

We shouldn't drop the lock here (also failing to acquire the lock should 
be fatal), since the object can in thoery transition to/from lmem 
inbetween dropping the object lock here and re-acquiring it again below, 
which means we might skip grabbing the wakeref here, but then later 
touch the list, if say it moves to lmem.

> +
>   	/* Sanity check that we allow writing into this object */
>   	if (unlikely(i915_gem_object_is_readonly(obj) &&
> -		     area->vm_flags & VM_WRITE))
> -		return VM_FAULT_SIGBUS;
> +		     area->vm_flags & VM_WRITE)) {
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;
> +	}
>   
>   	ret = ttm_bo_vm_reserve(bo, vmf); >   	if (ret)
> -		return ret;
> +		goto out_rpm;
>   
>   	if (obj->mm.madv != I915_MADV_WILLNEED) {
>   		dma_resv_unlock(bo->base.resv);
> -		return VM_FAULT_SIGBUS;
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;
>   	}
>   
>   	if (!i915_ttm_resource_mappable(bo->resource)) {
> @@ -1062,7 +1084,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		if (err) {
>   			drm_dbg(dev, "Unable to make resource CPU accessible\n");
>   			dma_resv_unlock(bo->base.resv);
> -			return VM_FAULT_SIGBUS;
> +			ret = VM_FAULT_SIGBUS;
> +			goto out_rpm;
>   		}
>   	}
>   
> @@ -1073,12 +1096,25 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	} else {
>   		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
>   	}
> +
> +	/* ttm_bo_vm_reserve() already has dma_resv_lock */
> +	if (!ret && i915_gem_object_is_lmem(obj) && !obj->userfault_count++) {

This might increment userfault_count more than once per mapping/object? 
Is that intentional? I would have thought that with fault_ttm the 
user_fault_count shouldn't ever be > 1 (there is no partial mmap here).

Also it look like ret == VM_FAULT_NOPAGE if all went well. Although it 
also returns that if the wait was interrupted, but I don't think that 
matters much.

Maybe we can do something like:

ret = ttm_bo_vm_reserve(bo..) /* locks the object for us */
..

wakeref = 0;
if (i915_ttm_cpu_maps_iomem(bo->resource))
    wakeref = intel_runtime_pm_get();

if (drm_dev_enter(dev, &idx)) {
} else {
}

if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
   goto out_rpm;

if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
   obj->userfault_count++; /* protected by wakeref */
   mutex_lock()
   list_add();
   mutex_unlock();
}

?

AFAICT we are then still missing something for object destruction, to 
ensure we remove the object from the list. Otherwise we can destroy the 
object, and then at some later point i915_gem_runtime_suspend() runs and 
will uaf on the list. I think the trick with GTT mmap is that it will 
always grab the wakeref when unbinding the vma (like during object 
destruction), and then it can safely remove the object from the list. 
Perhaps we will need a similar trick anyway, since destroying the object 
will likely require unbinding it, which will mean touching the 
page-tables from the CPU, which are in lmem anyway. Do we maybe just 
always grab the wakeref for dgpu? What do you think?

Also on second thought it looks like we can't directly call 
i915_gem_object_release_mmap_offset() from i915_gem_runtime_suspend(), 
without then also holding the object lock for the ttm_mem_io_free(). But 
I think it should be OK to just directly call 
drm_vma_node_unmap(&bo->base.vma_node, ...) instead.

Also, do you know if we need something like 
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND here?

> +		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
> +		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
> +	}
> +
>   	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
> -		return ret;
> +		goto out_rpm;
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
> index e4bac2431e41..63616ea198ca 100644
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
> index 4d56f7d5a3be..330e7531cf22 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -132,6 +132,9 @@ struct intel_gt {
>   	struct intel_wakeref wakeref;
>   	atomic_t user_wakeref;
>   
> +	struct mutex lmem_userfault_lock; /* Protects access to usefault list */
> +	struct list_head lmem_userfault_list;
> +
>   	struct list_head closed_vma;
>   	spinlock_t closed_lock; /* guards the list of closed_vma */
>   
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 702e5b89be22..288dc7e231dc 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -842,6 +842,14 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
>   				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
>   		__i915_gem_object_release_mmap_gtt(obj);
>   
> +	list_for_each_entry_safe(obj, on,
> +				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
> +		i915_gem_object_release_mmap_offset(obj);
> +
> +		if (!--obj->userfault_count)
> +			list_del(&obj->userfault_link);
> +	}
> +
>   	/*
>   	 * The fence will be lost when the device powers down. If any were
>   	 * in use by hardware (i.e. they are pinned), we should not be powering
