Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626AD4675D4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 12:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585E773928;
	Fri,  3 Dec 2021 11:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D9073911
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 11:01:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="224198334"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="224198334"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 03:01:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="655914354"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 03:01:55 -0800
Date: Fri, 3 Dec 2021 16:35:10 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20211203110502.GE25851@intel.com>
References: <20211202092424.4000107-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20211202092424.4000107-4-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211202092424.4000107-4-tejaskumarx.surendrakumar.upadhyay@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH V2 3/3] drm/i915: Refine VT-d scanout
 workaround
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-12-02 at 14:54:24 +0530, Tejas Upadhyay wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> VT-d may cause overfetch of the scanout PTE, both before and after the
> vma (depending on the scanout orientation). bspec recommends that we
> provide a tile-row in either directions, and suggests using 168 PTE,
> warning that the accesses will wrap around the ends of the GGTT.
> Currently, we fill the entire GGTT with scratch pages when using VT-d to
> always ensure there are valid entries around every vma, including
> scanout. However, writing every PTE is slow as on recent devices we
> perform 8MiB of uncached writes, incurring an extra 100ms during resume.
> 
> If instead we focus on only putting guard pages around scanout, we can
> avoid touching the whole GGTT. To avoid having to introduce extra nodes
> around each scanout vma, we adjust the scanout drm_mm_node to be smaller
> than the allocated space, and fixup the extra PTE during dma binding.
> 
> v2: Move the guard from modifying drm_mm_node.start which is still used
> by the drm_mm itself, into an adjustment of node.start at the point of
> use.
> 
> v3: Pass the requested guard padding from the caller, so we can drop the
> VT-d w/a knowledge from the i915_vma allocator.
> 
> v4: Bump minimum padding to 168 PTE and cautiously ensure that a full
> tile row around the vma is included with the guard.

Looks good to me

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 13 +++++++++++
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 25 +---------------------
>  drivers/gpu/drm/i915/i915_gem_gtt.h        |  1 +
>  drivers/gpu/drm/i915/i915_vma.c            |  8 +++++++
>  4 files changed, 23 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 26532c07d467..03876af45c8b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -16,6 +16,8 @@
>  #include "i915_gem_lmem.h"
>  #include "i915_gem_mman.h"
>  
> +#define VTD_GUARD (168u * I915_GTT_PAGE_SIZE) /* 168 or tile-row PTE padding */
> +
>  static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
>  {
>  	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> @@ -423,6 +425,17 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
>  	if (ret)
>  		return ERR_PTR(ret);
>  
> +	/* VT-d may overfetch before/after the vma, so pad with scratch */
> +	if (intel_scanout_needs_vtd_wa(i915)) {
> +		unsigned int guard = VTD_GUARD;
> +
> +		if (i915_gem_object_is_tiled(obj))
> +			guard = max(guard,
> +				    i915_gem_object_get_tile_row_size(obj));
> +
> +		flags |= PIN_OFFSET_GUARD | guard;
> +	}
> +
>  	/*
>  	 * As the user may map the buffer once pinned in the display plane
>  	 * (e.g. libkms for the bootup splash), we have to ensure that we
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 282ed6dd3ca2..4a0f916ab03f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -337,27 +337,6 @@ static void nop_clear_range(struct i915_address_space *vm,
>  {
>  }
>  
> -static void gen8_ggtt_clear_range(struct i915_address_space *vm,
> -				  u64 start, u64 length)
> -{
> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> -	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
> -	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
> -	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
> -	gen8_pte_t __iomem *gtt_base =
> -		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
> -	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
> -	int i;
> -
> -	if (WARN(num_entries > max_entries,
> -		 "First entry = %d; Num entries = %d (max=%d)\n",
> -		 first_entry, num_entries, max_entries))
> -		num_entries = max_entries;
> -
> -	for (i = 0; i < num_entries; i++)
> -		gen8_set_pte(&gtt_base[i], scratch_pte);
> -}
> -
>  static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>  {
>  	/*
> @@ -956,8 +935,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.cleanup = gen6_gmch_remove;
>  	ggtt->vm.insert_page = gen8_ggtt_insert_page;
>  	ggtt->vm.clear_range = nop_clear_range;
> -	if (intel_scanout_needs_vtd_wa(i915))
> -		ggtt->vm.clear_range = gen8_ggtt_clear_range;
>  
>  	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
>  
> @@ -1105,7 +1082,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>  
>  	ggtt->vm.clear_range = nop_clear_range;
> -	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
> +	if (!HAS_FULL_PPGTT(i915))
>  		ggtt->vm.clear_range = gen6_ggtt_clear_range;
>  	ggtt->vm.insert_page = gen6_ggtt_insert_page;
>  	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
> index c9b0ee5e1d23..f3ae9afdee15 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
> @@ -41,6 +41,7 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
>  #define PIN_HIGH		BIT_ULL(5)
>  #define PIN_OFFSET_BIAS		BIT_ULL(6)
>  #define PIN_OFFSET_FIXED	BIT_ULL(7)
> +#define PIN_OFFSET_GUARD	BIT_ULL(8)
>  
>  #define PIN_GLOBAL		BIT_ULL(10) /* I915_VMA_GLOBAL_BIND */
>  #define PIN_USER		BIT_ULL(11) /* I915_VMA_LOCAL_BIND */
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 080ffa583edf..d92a9f938c68 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -587,6 +587,9 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
>  	    i915_vma_offset(vma) != (flags & PIN_OFFSET_MASK))
>  		return true;
>  
> +	if (flags & PIN_OFFSET_GUARD && vma->guard < (flags & PIN_OFFSET_MASK))
> +		return true;
> +
>  	return false;
>  }
>  
> @@ -664,6 +667,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>  
>  	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND));
>  	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
> +	GEM_BUG_ON(hweight64(flags & (PIN_OFFSET_GUARD | PIN_OFFSET_FIXED | PIN_OFFSET_BIAS)) > 1);
>  
>  	size = max(size, vma->size);
>  	alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
> @@ -678,6 +682,10 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>  	GEM_BUG_ON(!is_power_of_2(alignment));
>  
>  	guard = vma->guard; /* retain guard across rebinds */
> +	if (flags & PIN_OFFSET_GUARD) {
> +		GEM_BUG_ON(overflows_type(flags & PIN_OFFSET_MASK, u32));
> +		guard = max_t(u32, guard, flags & PIN_OFFSET_MASK);
> +	}
>  	guard = ALIGN(guard, alignment);
>  
>  	start = flags & PIN_OFFSET_BIAS ? flags & PIN_OFFSET_MASK : 0;
> -- 
> 2.31.1
> 
