Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EA330D5B8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A6B6EA1C;
	Wed,  3 Feb 2021 09:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6528E6EA1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:00:59 +0000 (UTC)
IronPort-SDR: mPVqVwqyfxe4OjOB9uPb6laNKDkBmsYB6pSz9mwehMktu3p5WEzGLuiiAczXVFAB+6FNi4BNe/
 IiUsYckko0Mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="199962767"
X-IronPort-AV: E=Sophos;i="5.79,397,1602572400"; d="scan'208";a="199962767"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:00:57 -0800
IronPort-SDR: WJ/0RNXpTEJwadsPo09r2a/yN1Aqyo3FNE8KEmhut7tTANmNTUn25OwkfL0Qaj+9upxJPNDRyp
 PnljVpYMRZ3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,397,1602572400"; d="scan'208";a="359364664"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 03 Feb 2021 01:00:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Feb 2021 11:00:54 +0200
Date: Wed, 3 Feb 2021 11:00:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YBpmRoq5ROk6/hMb@intel.com>
References: <20210203083841.19735-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203083841.19735-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Apply VT-d scanout adjustment to
 the VMA
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 03, 2021 at 08:38:41AM +0000, Chris Wilson wrote:
> Currently, we allocate exactly the VMA requested for the framebuffer and
> rely on filling the whole of the GGTT with scratch pages to catch when
> VT-d prefetches beyond the bounds of the surface. However, this means
> that we have to scrub the GGTT on startup and resume, and on recent HW
> this is made even slower as the only access to GSM is uncached.
> =

> Since we do fill the pad-to-size PTE with scratch pages, and this is
> also reapplied on resume, we can forgo the overzealous clearing of the
> entire GGTT and instead pad the VMA to avoid the VT-d prefetches going
> outside of the VMA.

We have a lot of these "allocate a huge pile of extra PTEs
after (or before for rotation) the scanout surface" workarounds
we're not handling at all. Not sure ths is sufficient to cover
those.

> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 18 ++++++++++++-----
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 23 ----------------------
>  2 files changed, 13 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.c
> index 36f54cedaaeb..2668a79383c8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -359,19 +359,26 @@ int i915_gem_set_caching_ioctl(struct drm_device *d=
ev, void *data,
>   */
>  struct i915_vma *
>  i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
> -				     u32 alignment,
> +				     u32 align,
>  				     const struct i915_ggtt_view *view,
>  				     unsigned int flags)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>  	struct i915_gem_ww_ctx ww;
>  	struct i915_vma *vma;
> +	u64 size;
>  	int ret;
>  =

>  	/* Frame buffer must be in LMEM (no migration yet) */
>  	if (HAS_LMEM(i915) && !i915_gem_object_is_lmem(obj))
>  		return ERR_PTR(-EINVAL);
>  =

> +	size =3D obj->base.size;
> +	if (intel_scanout_needs_vtd_wa(i915)) {
> +		size =3D ALIGN(size, SZ_256K);
> +		align =3D ALIGN(align, SZ_256K);
> +	}
> +
>  	i915_gem_ww_ctx_init(&ww, true);
>  retry:
>  	ret =3D i915_gem_object_lock(obj, &ww);
> @@ -404,18 +411,19 @@ i915_gem_object_pin_to_display_plane(struct drm_i91=
5_gem_object *obj,
>  	vma =3D ERR_PTR(-ENOSPC);
>  	if ((flags & PIN_MAPPABLE) =3D=3D 0 &&
>  	    (!view || view->type =3D=3D I915_GGTT_VIEW_NORMAL))
> -		vma =3D i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0, alignment,
> +		vma =3D i915_gem_object_ggtt_pin_ww(obj, &ww, view,
> +						  size, align,
>  						  flags | PIN_MAPPABLE |
>  						  PIN_NONBLOCK);
>  	if (IS_ERR(vma) && vma !=3D ERR_PTR(-EDEADLK))
> -		vma =3D i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0,
> -						  alignment, flags);
> +		vma =3D i915_gem_object_ggtt_pin_ww(obj, &ww, view,
> +						  size, align, flags);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
>  		goto err;
>  	}
>  =

> -	vma->display_alignment =3D max_t(u64, vma->display_alignment, alignment=
);
> +	vma->display_alignment =3D max_t(u64, vma->display_alignment, align);
>  	i915_vma_mark_scanout(vma);
>  =

>  	i915_gem_object_flush_if_display_locked(obj);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index fc399ac16eda..126b061862ad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -304,27 +304,6 @@ static void nop_clear_range(struct i915_address_spac=
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
> @@ -884,8 +863,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.cleanup =3D gen6_gmch_remove;
>  	ggtt->vm.insert_page =3D gen8_ggtt_insert_page;
>  	ggtt->vm.clear_range =3D nop_clear_range;
> -	if (intel_scanout_needs_vtd_wa(i915))
> -		ggtt->vm.clear_range =3D gen8_ggtt_clear_range;
>  =

>  	ggtt->vm.insert_entries =3D gen8_ggtt_insert_entries;
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
