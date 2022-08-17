Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C255597583
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 20:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C65FA145D;
	Wed, 17 Aug 2022 18:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50FDF113866
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 18:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660759871; x=1692295871;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oMs94EIy9Q10heW6RL1IG9I3PVZDBI1Wj/RV8O3Rulg=;
 b=e2y4zCunAhPQ6AkTQqHErDaOyKOscSnbUqJsuaScDX91dQNnKzkaBfM8
 1/mRqaV4+MkKtuHhsPW6kkKh/svpvRwTPAkoAarH0HB3BGRMPQHbsVxqk
 8SDt64HOrk2FE1xNJg00sBnQ2VVDLAWjCf17FbhZuPY1rNDTMvqDJDrQL
 CJte36K9uU5v5YcKZw69A1WOJwfONVgsc4J7oYL/g0Wuf48OFHqxFiepG
 jFoAN15riptZz2h10locpnNGX/Pczpd5jBBVBd8LyNYCzrfst0pL0HqGq
 5NgZznLlQD0vDUsG56Oz+UZqOb/aYxFn2ZR8OzqkY5qA3p0ZAu4z1TA3G Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="293845938"
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="293845938"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 11:11:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="749804184"
Received: from dfkeatle-mobl.ger.corp.intel.com (HELO [10.213.227.237])
 ([10.213.227.237])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 11:11:08 -0700
Message-ID: <8d5d0839-b8cf-6e27-1de0-38ed326149a5@intel.com>
Date: Wed, 17 Aug 2022 19:11:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
 <20220817150941.25447-3-anshuman.gupta@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220817150941.25447-3-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/dgfx: Runtime resume the dgpu on
 user fault
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

On 17/08/2022 16:09, Anshuman Gupta wrote:
> Runtime resume the dgpu(when gem object lies in lmem).
> This will transition the dgpu graphics function to D0
> state if it was in D3 in order to access the mmap memory
> mappings.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 25 +++++++++++++++++++------
>   1 file changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index b49823d599e7..1e9b07473a8f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1020,6 +1020,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	struct ttm_buffer_object *bo = area->vm_private_data;
>   	struct drm_device *dev = bo->base.dev;
>   	struct drm_i915_gem_object *obj;
> +	intel_wakeref_t wakeref = 0;
>   	vm_fault_t ret;
>   	int idx;
>   
> @@ -1027,18 +1028,24 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	if (!obj)
>   		return VM_FAULT_SIGBUS;
>   
> +	if (i915_gem_object_is_lmem(obj))

We shouldn't call this without first locking the object (see 
bo_vm_reserve below), since it could be in the process of being moved to 
system memory or vice versa. For example, below we check is_lmem() again 
(this time with the lock held), which might return true, even though 
here it returned false, which means we can now race against the 
i915_gem_runtime_suspend() modifying the list as we add something.

We ofc still need to audit all the kernel internal users that are 
touching lmem though a CPU mapping, and making sure we have the right 
pm_get/put wrapping those accesses.

> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
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
>   	ret = ttm_bo_vm_reserve(bo, vmf);
>   	if (ret)
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
> @@ -1062,7 +1069,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		if (err) {
>   			drm_dbg(dev, "Unable to make resource CPU accessible\n");
>   			dma_resv_unlock(bo->base.resv);
> -			return VM_FAULT_SIGBUS;
> +			ret = VM_FAULT_SIGBUS;
> +			goto out_rpm;
>   		}
>   	}
>   
> @@ -1078,11 +1086,16 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
>   
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

Do we need something like DRM_I915_USERFAULT_AUTOSUSPEND here?

> +
>   	return ret;
>   }
>   
