Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8729C597522
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 19:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7A79ECD0;
	Wed, 17 Aug 2022 17:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125C18D89A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 17:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660757649; x=1692293649;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+PfNkO0Hfa9wdmS86nHOegkvhCZD3jRUSJrZd7BLpTY=;
 b=GOWoICint8K6ls9MmiDbZr68mnpqKwmSE6deJG+zFLsGboeI9fhSMJMz
 mKn/EDQbiYEwSQGoNcd58yrImT+iwwTql26JVGGaw/Z6gadPMQGulvmjI
 FkQrh9buRY9pMHYFS8HSBFrOhLftV9OVMqE71Vr9+l+c23+WizlKkhjS8
 E91a4Xif7TVW+/TmsGtRGIGNaVcyxAzHvLpxDecsUJrmi9h35CErEXtsD
 aKDeQtPiWVKOofLP0o4+ksoo3gioLmnuclg+zHJDhNYwbyDG6aG77P2Go
 JBdp3Db+dgoD7ulb2oABtpOjH11b4KC1y0rlrzslx7EUHTOnTd9gC0tFL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="272329247"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="272329247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 10:34:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="749792651"
Received: from dfkeatle-mobl.ger.corp.intel.com (HELO [10.213.227.237])
 ([10.213.227.237])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 10:34:04 -0700
Message-ID: <a802d213-cf66-db97-541c-727d6daf62ff@intel.com>
Date: Wed, 17 Aug 2022 18:34:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
 <20220817150941.25447-2-anshuman.gupta@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220817150941.25447-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915/dgfx: Release mmap on rpm suspend
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
> Release all mmap mapping for all lmem objects which are associated
> with userfault such that, while pcie function in D3hot, any access
> to memory mappings will raise a userfault.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 4 ++++
>   drivers/gpu/drm/i915/gt/intel_gt.c       | 1 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h | 2 ++
>   drivers/gpu/drm/i915/i915_gem.c          | 6 ++++++
>   4 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 5a5cf332d8a5..b49823d599e7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1073,6 +1073,10 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   	} else {
>   		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
>   	}
> +
> +	if (i915_gem_object_is_lmem(obj))
> +		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);

Both patches need to be squashed together I think. Also AFAIK we need 
some kind of lock here to protect against concurrent list_add(). We also 
need something to prevent against double list_add(). And we should 
probably first check the ret value before touching the list.

> +
>   	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
>   		return ret;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index e4bac2431e41..f0d641c3153c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -39,6 +39,7 @@ static void __intel_gt_init_early(struct intel_gt *gt)
>   {
>   	spin_lock_init(&gt->irq_lock);
>   
> +	INIT_LIST_HEAD(&gt->lmem_userfault_list);
>   	INIT_LIST_HEAD(&gt->closed_vma);
>   	spin_lock_init(&gt->closed_lock);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 4d56f7d5a3be..3e915df255f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -132,6 +132,8 @@ struct intel_gt {
>   	struct intel_wakeref wakeref;
>   	atomic_t user_wakeref;
>   
> +	struct list_head lmem_userfault_list;
> +
>   	struct list_head closed_vma;
>   	spinlock_t closed_lock; /* guards the list of closed_vma */
>   
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 702e5b89be22..1e6ce6d06c11 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -842,6 +842,12 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
>   				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
>   		__i915_gem_object_release_mmap_gtt(obj);
>   
> +	list_for_each_entry_safe(obj, on,
> +				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
> +		i915_gem_object_release_mmap_offset(obj);
> +		list_del(&obj->userfault_link);
> +	}
> +
>   	/*
>   	 * The fence will be lost when the device powers down. If any were
>   	 * in use by hardware (i.e. they are pinned), we should not be powering
