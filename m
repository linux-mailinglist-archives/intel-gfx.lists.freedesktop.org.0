Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF42318F5C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 17:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AEAA6EE56;
	Thu, 11 Feb 2021 16:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294326EE56
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 16:06:33 +0000 (UTC)
IronPort-SDR: TVtNY8YWzPg6Epdg1zdGB61+wcqsAY8AVyAYEwVu4Aj49zYk1H2VBUWDhxzcedc5YCaMFfLUu4
 +y/Cf4VKex1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="178756221"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="178756221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 08:06:03 -0800
IronPort-SDR: jg0WW1HBNpmAL1y6aBZ/+r9uPil2OCZyNHPG5R4/znpMQRS3zvaoBhPs+n55T44REDf/bAuJw5
 TSVFVzBBOXig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="397437792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 Feb 2021 08:06:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Feb 2021 18:05:59 +0200
Date: Thu, 11 Feb 2021 18:05:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YCVV5zgZZi6T9yRp@intel.com>
References: <20210210233946.7602-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210233946.7602-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine VT-d scanout workaround
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 10, 2021 at 11:39:46PM +0000, Chris Wilson wrote:
> VT-d may cause overfetch of the scanout PTE, both before and after the
> vma (depending on the scanout orientation). bspec recommends that we
> provide a tile-row in either directions, and suggests using 160 PTE,
> warning that the accesses will wrap around the ends of the GGTT.
> Currently, we fill the entire GGTT with scratch pages when using VT-d to
> always ensure there are valid entries around every vma, including
> scanout. However, writing every PTE is slow as on recent devices we
> perform 8MiB of uncached writes, incurring an extra 100ms during resume.
> =

> If instead we focus on only putting guard pages around scanout, we can
> avoid touching the whole GGTT. To avoid having to introduce extra nodes
> around each scanout vma, we adjust the scanout drm_mm_node to be smaller
> than the allocated space, and fixup the extra PTE during dma binding.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c |  3 ++
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 37 ++++++++--------------
>  drivers/gpu/drm/i915/i915_gem_gtt.h        |  1 +
>  drivers/gpu/drm/i915/i915_vma.c            | 23 ++++++++++++++
>  drivers/gpu/drm/i915/i915_vma_types.h      |  1 +
>  5 files changed, 41 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.c
> index 0478b069c202..9f2ccc255ca1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -345,6 +345,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_=
gem_object *obj,
>  	if (ret)
>  		goto err;
>  =

> +	if (intel_scanout_needs_vtd_wa(i915))
> +		flags |=3D PIN_VTD;
> +
>  	/*
>  	 * As the user may map the buffer once pinned in the display plane
>  	 * (e.g. libkms for the bootup splash), we have to ensure that we
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index b0b8ded834f0..416f77f48561 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -238,6 +238,11 @@ static void gen8_ggtt_insert_entries(struct i915_add=
ress_space *vm,
>  =

>  	gte =3D (gen8_pte_t __iomem *)ggtt->gsm;
>  	gte +=3D vma->node.start / I915_GTT_PAGE_SIZE;
> +
> +	end =3D gte - vma->guard / I915_GTT_PAGE_SIZE;
> +	while (end < gte)
> +		gen8_set_pte(end++, vm->scratch[0]->encode);
> +
>  	end =3D gte + vma->node.size / I915_GTT_PAGE_SIZE;
>  =

>  	for_each_sgt_daddr(addr, iter, vma->pages)
> @@ -245,6 +250,7 @@ static void gen8_ggtt_insert_entries(struct i915_addr=
ess_space *vm,
>  	GEM_BUG_ON(gte > end);
>  =

>  	/* Fill the allocated but "unused" space beyond the end of the buffer */
> +	end +=3D vma->guard / I915_GTT_PAGE_SIZE;
>  	while (gte < end)
>  		gen8_set_pte(gte++, vm->scratch[0]->encode);
>  =

> @@ -289,6 +295,11 @@ static void gen6_ggtt_insert_entries(struct i915_add=
ress_space *vm,
>  =

>  	gte =3D (gen6_pte_t __iomem *)ggtt->gsm;
>  	gte +=3D vma->node.start / I915_GTT_PAGE_SIZE;
> +
> +	end =3D gte - vma->guard / I915_GTT_PAGE_SIZE;
> +	while (end < gte)
> +		gen8_set_pte(end++, vm->scratch[0]->encode);
> +
>  	end =3D gte + vma->node.size / I915_GTT_PAGE_SIZE;
>  =

>  	for_each_sgt_daddr(addr, iter, vma->pages)
> @@ -296,6 +307,7 @@ static void gen6_ggtt_insert_entries(struct i915_addr=
ess_space *vm,
>  	GEM_BUG_ON(gte > end);
>  =

>  	/* Fill the allocated but "unused" space beyond the end of the buffer */
> +	end +=3D vma->guard / I915_GTT_PAGE_SIZE;
>  	while (gte < end)
>  		iowrite32(vm->scratch[0]->encode, gte++);
>  =

> @@ -311,27 +323,6 @@ static void nop_clear_range(struct i915_address_spac=
e *vm,
>  {
>  }
>  =

> -static void gen8_ggtt_clear_range(struct i915_address_space *vm,
> -				  u64 start, u64 length)
> -{
> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> -	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
> -	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
> -	const gen8_pte_t scratch_pte =3D vm->scratch[0]->encode;
> -	gen8_pte_t __iomem *gtt_base =3D
> -		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
> -	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
> -	int i;
> -
> -	if (WARN(num_entries > max_entries,
> -		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
> -		 first_entry, num_entries, max_entries))
> -		num_entries =3D max_entries;
> -
> -	for (i =3D 0; i < num_entries; i++)
> -		gen8_set_pte(&gtt_base[i], scratch_pte);
> -}
> -
>  static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>  {
>  	/*
> @@ -898,8 +889,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.cleanup =3D gen6_gmch_remove;
>  	ggtt->vm.insert_page =3D gen8_ggtt_insert_page;
>  	ggtt->vm.clear_range =3D nop_clear_range;
> -	if (intel_scanout_needs_vtd_wa(i915))
> -		ggtt->vm.clear_range =3D gen8_ggtt_clear_range;
>  =

>  	ggtt->vm.insert_entries =3D gen8_ggtt_insert_entries;
>  =

> @@ -1045,7 +1034,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>  =

>  	ggtt->vm.clear_range =3D nop_clear_range;
> -	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
> +	if (!HAS_FULL_PPGTT(i915))
>  		ggtt->vm.clear_range =3D gen6_ggtt_clear_range;
>  	ggtt->vm.insert_page =3D gen6_ggtt_insert_page;
>  	ggtt->vm.insert_entries =3D gen6_ggtt_insert_entries;
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i=
915_gem_gtt.h
> index c9b0ee5e1d23..8a2dfc7144cf 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
> @@ -41,6 +41,7 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
>  #define PIN_HIGH		BIT_ULL(5)
>  #define PIN_OFFSET_BIAS		BIT_ULL(6)
>  #define PIN_OFFSET_FIXED	BIT_ULL(7)
> +#define PIN_VTD			BIT_ULL(8)
>  =

>  #define PIN_GLOBAL		BIT_ULL(10) /* I915_VMA_GLOBAL_BIND */
>  #define PIN_USER		BIT_ULL(11) /* I915_VMA_LOCAL_BIND */
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index caa9b041616b..dccd36ff1a6d 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -38,6 +38,8 @@
>  #include "i915_trace.h"
>  #include "i915_vma.h"
>  =

> +#define VTD_GUARD roundup_pow_of_two(160 * SZ_4K) /* 160 PTE padding */
> +
>  static struct i915_global_vma {
>  	struct i915_global base;
>  	struct kmem_cache *slab_vmas;
> @@ -552,6 +554,9 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
>  	    vma->node.start !=3D (flags & PIN_OFFSET_MASK))
>  		return true;
>  =

> +	if (flags & PIN_VTD && vma->guard < VTD_GUARD)
> +		return true;
> +
>  	return false;
>  }
>  =

> @@ -637,6 +642,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 =
alignment, u64 flags)
>  				  alignment, vma->fence_alignment);
>  	}
>  =

> +	/* VT-d requires padding before/after the vma */
> +	if (flags & PIN_VTD) {
> +		alignment =3D max_t(typeof(alignment), alignment, VTD_GUARD);
> +		vma->guard =3D alignment;
> +		size +=3D 2 * vma->guard;
> +	}
> +
>  	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
>  	GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
>  	GEM_BUG_ON(!is_power_of_2(alignment));
someh> @@ -725,6 +737,11 @@ i915_vma_insert(struct i915_vma *vma, u64 size,=
 u64 alignment, u64 flags)
>  =

>  	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
>  =

> +	if (flags & PIN_VTD) {
> +		vma->node.start +=3D vma->guard;

Was a bit worried for a second that this might give the display
a potentially misaligned vma start. But looks like you did consider
all that: VTD_GUARD=3D=3DPOT, alignment + guard both get bumped
to the max(). So AFAICS should guarantee everyone is happy.

I guess we're now wasting a lot more ggtt address space though?
Not sure if anyone has ever been at risk of running out though.
And DPT should help with this on new platforms.

> +		vma->node.size -=3D 2 * vma->guard;
> +	}
> +
>  	return 0;
>  }
>  =

> @@ -734,6 +751,12 @@ i915_vma_detach(struct i915_vma *vma)
>  	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
>  	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL=
_BIND));
>  =

> +	if (vma->guard) {
> +		vma->node.start -=3D vma->guard;
> +		vma->node.size +=3D 2 * vma->guard;
> +		vma->guard =3D 0;
> +	}
> +
>  	/*
>  	 * And finally now the object is completely decoupled from this
>  	 * vma, we can drop its hold on the backing storage and allow
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index f5cb848b7a7e..bafec4e0b042 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -190,6 +190,7 @@ struct i915_vma {
>  =

>  	u32 fence_size;
>  	u32 fence_alignment;
> +	u32 guard;
>  =

>  	/**
>  	 * Count of the number of times this vma has been opened by different
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
