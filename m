Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2ED64B3EF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 12:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E88B10E309;
	Tue, 13 Dec 2022 11:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9778989C55
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 11:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670930042; x=1702466042;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=/27m9B6yUrzc/EIQdqK9pMh0l7+GjQZw4Jz8cVGvoNQ=;
 b=Q8SjSBQ5RQ7zYGDd9rvEz4iXoPnGtiyZlQyGA9sobj27QaXv62/KqxA8
 i7uQyKaf+iNRlrMpmWZ5OmRFNJcBVgOYrkjdp6ErIbfH5C8+/axx3uXd+
 lBmfCTnloxq+rEblqQ0ccthoVBUCnB+CjXbUMvqh4kBrH6MuH/JuaWETk
 DerpwnHMjxRBQUpyKuKLcJaek6LEhFoS60hhxo9bNu7UDaCKSUSx2yOME
 MyGQEoxFyTdNNM8URTJn99RD755VEN5M6Ciogf7A2vzkzakk62xFacsPn
 rQBdjRIvlwWfhDG/l/Q+8+JD+3qqj/PlD5Ver9LfQ2Lj8HNs9IUB30qeg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="297785011"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="297785011"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:13:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="772929883"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="772929883"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.39.162])
 ([10.249.39.162])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:13:58 -0800
Message-ID: <a7ef23ad-3319-c5d9-0866-1369f4a69ec6@linux.intel.com>
Date: Tue, 13 Dec 2022 12:13:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20221212171958.82593-1-matthew.auld@intel.com>
 <20221212171958.82593-2-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221212171958.82593-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ttm: consider CCS for backup
 objects
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/12/2022 6:19 PM, Matthew Auld wrote:
> It seems we can have one or more framebuffers that are still pinned when
> suspending lmem, in such a case we end up creating a shmem backup
> object, instead of evicting the object directly, but this will skip
> copying the CCS aux state, since we don't allocate the extra storage for
> the CCS pages as part of the ttm_tt construction. Since we can already
> deal with pinned objects just fine, it doesn't seem too nasty to just
> extend to support dealing with the CCS aux state, if the object is a
> pinned framebuffer. This fixes display corruption (like in gnome-shell)
> seen on DG2 when returning from suspend.


This patch fixes resume corruption with full-bar as well, tested with sway.

Tested-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Thanks,

Nirmoy

>
> Fixes: da0595ae91da ("drm/i915/migrate: Evict and restore the flatccs capable lmem obj")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.19+
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c     |  3 +++
>   .../gpu/drm/i915/gem/i915_gem_object_types.h   | 10 ++++++----
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c     | 18 +++++++++++++++++-
>   3 files changed, 26 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 733696057761..1a0886b8aaa1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -785,6 +785,9 @@ bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
>   	if (!HAS_FLAT_CCS(to_i915(obj->base.dev)))
>   		return false;
>   
> +	if (obj->flags & I915_BO_ALLOC_CCS_AUX)
> +		return true;
> +
>   	for (i = 0; i < obj->mm.n_placements; i++) {
>   		/* Compression is not allowed for the objects with smem placement */
>   		if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index a7b70701617a..19c9bdd8f905 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -327,16 +327,18 @@ struct drm_i915_gem_object {
>    * dealing with userspace objects the CPU fault handler is free to ignore this.
>    */
>   #define I915_BO_ALLOC_GPU_ONLY	  BIT(6)
> +#define I915_BO_ALLOC_CCS_AUX	  BIT(7)
>   #define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
>   			     I915_BO_ALLOC_VOLATILE | \
>   			     I915_BO_ALLOC_CPU_CLEAR | \
>   			     I915_BO_ALLOC_USER | \
>   			     I915_BO_ALLOC_PM_VOLATILE | \
>   			     I915_BO_ALLOC_PM_EARLY | \
> -			     I915_BO_ALLOC_GPU_ONLY)
> -#define I915_BO_READONLY          BIT(7)
> -#define I915_TILING_QUIRK_BIT     8 /* unknown swizzling; do not release! */
> -#define I915_BO_PROTECTED         BIT(9)
> +			     I915_BO_ALLOC_GPU_ONLY | \
> +			     I915_BO_ALLOC_CCS_AUX)
> +#define I915_BO_READONLY          BIT(8)
> +#define I915_TILING_QUIRK_BIT     9 /* unknown swizzling; do not release! */
> +#define I915_BO_PROTECTED         BIT(10)
>   	/**
>   	 * @mem_flags - Mutable placement-related flags
>   	 *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
> index 07e49f22f2de..7e67742bc65e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
> @@ -50,6 +50,7 @@ static int i915_ttm_backup(struct i915_gem_apply_to_region *apply,
>   		container_of(bo->bdev, typeof(*i915), bdev);
>   	struct drm_i915_gem_object *backup;
>   	struct ttm_operation_ctx ctx = {};
> +	unsigned int flags;
>   	int err = 0;
>   
>   	if (bo->resource->mem_type == I915_PL_SYSTEM || obj->ttm.backup)
> @@ -65,7 +66,22 @@ static int i915_ttm_backup(struct i915_gem_apply_to_region *apply,
>   	if (obj->flags & I915_BO_ALLOC_PM_VOLATILE)
>   		return 0;
>   
> -	backup = i915_gem_object_create_shmem(i915, obj->base.size);
> +	/*
> +	 * It seems that we might have some framebuffers still pinned at this
> +	 * stage, but for such objects we might also need to deal with the CCS
> +	 * aux state. Make sure we force the save/restore of the CCS state,
> +	 * otherwise we might observe display corruption, when returning from
> +	 * suspend.
> +	 */
> +	flags = 0;
> +	if (i915_gem_object_needs_ccs_pages(obj)) {
> +		WARN_ON_ONCE(!i915_gem_object_is_framebuffer(obj));
> +		WARN_ON_ONCE(!pm_apply->allow_gpu);
> +
> +		flags = I915_BO_ALLOC_CCS_AUX;
> +	}
> +	backup = i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_SMEM],
> +					       obj->base.size, 0, flags);
>   	if (IS_ERR(backup))
>   		return PTR_ERR(backup);
>   
