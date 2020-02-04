Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EF1151C29
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD156EF42;
	Tue,  4 Feb 2020 14:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1FAF6EF42
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:26:27 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:26:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="263850499"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Feb 2020 06:26:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:26:23 +0200
Date: Tue, 4 Feb 2020 16:26:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200204142623.GL13686@intel.com>
References: <20200204094801.877288-1-chris@chris-wilson.co.uk>
 <20200204094801.877288-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204094801.877288-2-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Be explicit in
 handling the preallocated vma
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

On Tue, Feb 04, 2020 at 09:48:02AM +0000, Chris Wilson wrote:
> As only the display codes tries to pin its preallocated framebuffer into
> an exact location in the GGTT, remove the convenience function and make
> the pin management explicit in the display code. Then throughout the
> display management, we track the framebuffer and its plane->vma; with
> less single purpose code and ready for first class i915_vma.
> =

> In doing so, this should fix the BUG_ON(vma->pages) on fi-kbl-soraka.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
> Ville, you mentioned you had a plan... This should prevent an oops during
> boot for kbl-soraka, so it would be nice :)
> -Chris
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 141 +++++++++++-------
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  82 ++--------
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |   1 -
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |   1 -
>  5 files changed, 102 insertions(+), 124 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b07971204492..c3695317d74a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3389,6 +3389,68 @@ int skl_format_to_fourcc(int format, bool rgb_orde=
r, bool alpha)
>  	}
>  }
>  =

> +static struct i915_vma *
> +initial_plane_vma(struct drm_i915_private *i915,
> +		  struct intel_initial_plane_config *plane_config)
> +{
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	u32 base, size;
> +
> +	if (plane_config->size =3D=3D 0)
> +		return NULL;
> +
> +	base =3D round_down(plane_config->base,
> +			  I915_GTT_MIN_ALIGNMENT);
> +	size =3D round_up(plane_config->base + plane_config->size,
> +			I915_GTT_MIN_ALIGNMENT);
> +	size -=3D base;
> +
> +	/*
> +	 * If the FB is too big, just don't use it since fbdev is not very
> +	 * important and we should probably use that space with FBC or other
> +	 * features.
> +	 */
> +	if (size * 2 > i915->stolen_usable_size)
> +		return NULL;
> +
> +	obj =3D i915_gem_object_create_stolen_for_preallocated(i915, base, size=
);
> +	if (IS_ERR(obj))
> +		return NULL;
> +
> +	switch (plane_config->tiling) {
> +	case I915_TILING_NONE:
> +		break;
> +	case I915_TILING_X:
> +	case I915_TILING_Y:
> +		obj->tiling_and_stride =3D
> +			plane_config->fb->base.pitches[0] |
> +			plane_config->tiling;
> +		break;
> +	default:
> +		MISSING_CASE(plane_config->tiling);
> +		goto err_obj;
> +	}
> +
> +	vma =3D i915_vma_instance(obj, &i915->ggtt.vm, NULL);
> +	if (IS_ERR(vma))
> +		goto err_obj;
> +
> +	if (i915_vma_pin(vma, 0, 0,
> +			 PIN_GLOBAL | PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
> +		goto err_obj;
> +
> +	if (i915_gem_object_is_tiled(obj) &&
> +	    !i915_vma_is_map_and_fenceable(vma))
> +		goto err_obj;
> +
> +	return vma;
> +
> +err_obj:
> +	i915_gem_object_put(obj);
> +	return NULL;
> +}
> +
>  static bool
>  intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  			      struct intel_initial_plane_config *plane_config)
> @@ -3397,22 +3459,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *c=
rtc,
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct drm_mode_fb_cmd2 mode_cmd =3D { 0 };
>  	struct drm_framebuffer *fb =3D &plane_config->fb->base;
> -	u32 base_aligned =3D round_down(plane_config->base, PAGE_SIZE);
> -	u32 size_aligned =3D round_up(plane_config->base + plane_config->size,
> -				    PAGE_SIZE);
> -	struct drm_i915_gem_object *obj;
> -	bool ret =3D false;
> -
> -	size_aligned -=3D base_aligned;
> -
> -	if (plane_config->size =3D=3D 0)
> -		return false;
> -
> -	/* If the FB is too big, just don't use it since fbdev is not very
> -	 * important and we should probably use that space with FBC or other
> -	 * features. */
> -	if (size_aligned * 2 > dev_priv->stolen_usable_size)
> -		return false;
> +	struct i915_vma *vma;
>  =

>  	switch (fb->modifier) {
>  	case DRM_FORMAT_MOD_LINEAR:
> @@ -3426,25 +3473,10 @@ intel_alloc_initial_plane_obj(struct intel_crtc *=
crtc,
>  		return false;
>  	}
>  =

> -	obj =3D i915_gem_object_create_stolen_for_preallocated(dev_priv,
> -							     base_aligned,
> -							     base_aligned,
> -							     size_aligned);
> -	if (IS_ERR(obj))
> +	vma =3D initial_plane_vma(dev_priv, plane_config);
> +	if (!vma)
>  		return false;
>  =

> -	switch (plane_config->tiling) {
> -	case I915_TILING_NONE:
> -		break;
> -	case I915_TILING_X:
> -	case I915_TILING_Y:
> -		obj->tiling_and_stride =3D fb->pitches[0] | plane_config->tiling;
> -		break;
> -	default:
> -		MISSING_CASE(plane_config->tiling);
> -		goto out;
> -	}
> -
>  	mode_cmd.pixel_format =3D fb->format->format;
>  	mode_cmd.width =3D fb->width;
>  	mode_cmd.height =3D fb->height;
> @@ -3452,17 +3484,18 @@ intel_alloc_initial_plane_obj(struct intel_crtc *=
crtc,
>  	mode_cmd.modifier[0] =3D fb->modifier;
>  	mode_cmd.flags =3D DRM_MODE_FB_MODIFIERS;
>  =

> -	if (intel_framebuffer_init(to_intel_framebuffer(fb), obj, &mode_cmd)) {
> +	if (intel_framebuffer_init(to_intel_framebuffer(fb),
> +				   vma->obj, &mode_cmd)) {
>  		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
> -		goto out;
> +		goto err_vma;
>  	}
>  =

> +	plane_config->vma =3D vma;
> +	return true;
>  =

> -	drm_dbg_kms(&dev_priv->drm, "initial plane fb obj %p\n", obj);
> -	ret =3D true;
> -out:
> -	i915_gem_object_put(obj);
> -	return ret;
> +err_vma:
> +	i915_vma_put(vma);
> +	return false;
>  }
>  =

>  static void
> @@ -3561,12 +3594,14 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
>  	struct intel_plane_state *intel_state =3D
>  		to_intel_plane_state(plane_state);
>  	struct drm_framebuffer *fb;
> +	struct i915_vma *vma;
>  =

>  	if (!plane_config->fb)
>  		return;
>  =

>  	if (intel_alloc_initial_plane_obj(intel_crtc, plane_config)) {
>  		fb =3D &plane_config->fb->base;
> +		vma =3D plane_config->vma;
>  		goto valid_fb;
>  	}
>  =

> @@ -3589,6 +3624,7 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  =

>  		if (intel_plane_ggtt_offset(state) =3D=3D plane_config->base) {
>  			fb =3D state->hw.fb;
> +			vma =3D state->vma;
>  			goto valid_fb;
>  		}
>  	}
> @@ -3611,21 +3647,11 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
>  	intel_state->color_plane[0].stride =3D
>  		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
>  =

> -	intel_state->vma =3D
> -		intel_pin_and_fence_fb_obj(fb,
> -					   &intel_state->view,
> -					   intel_plane_uses_fence(intel_state),
> -					   &intel_state->flags);
> -	if (IS_ERR(intel_state->vma)) {
> -		drm_err(&dev_priv->drm,
> -			"failed to pin boot fb on pipe %d: %li\n",
> -			intel_crtc->pipe, PTR_ERR(intel_state->vma));
> -
> -		intel_state->vma =3D NULL;
> -		return;
> -	}
> -
> -	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
> +	__i915_vma_pin(vma);
> +	intel_state->vma =3D i915_vma_get(vma);
> +	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) =3D=
=3D 0)
> +		if (vma->fence)
> +			intel_state->flags |=3D PLANE_HAS_FENCE;

Was slighly worried whether the gen2/3 special case would be needed
here, but I doubt we could get this far on those anyway since the
BIOS will be using VGA mode anyway. And even if we did I guess there's
no real way we wouldn't be able to get the fence.

>  =

>  	plane_state->src_x =3D 0;
>  	plane_state->src_y =3D 0;
> @@ -3649,6 +3675,8 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  	plane_state->crtc =3D &intel_crtc->base;
>  	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
>  =

> +	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
> +
>  	atomic_or(to_intel_plane(primary)->frontbuffer_bit,
>  		  &to_intel_frontbuffer(fb)->bits);
>  }
> @@ -17863,6 +17891,9 @@ static void plane_config_fini(struct intel_initia=
l_plane_config *plane_config)
>  		else
>  			kfree(fb);
>  	}
> +
> +	if (plane_config->vma)
> +		i915_vma_put(plane_config->vma);
>  }
>  =

>  int intel_modeset_init(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 7c6133a9c51b..7ae0bc8b80d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -592,6 +592,7 @@ struct intel_plane_state {
>  =

>  struct intel_initial_plane_config {
>  	struct intel_framebuffer *fb;
> +	struct i915_vma *vma;
>  	unsigned int tiling;
>  	int size;
>  	u32 base;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm=
/i915/gem/i915_gem_stolen.c
> index b47e7109be6a..491cfbaaa330 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -686,28 +686,24 @@ struct intel_memory_region *i915_gem_stolen_setup(s=
truct drm_i915_private *i915)
>  struct drm_i915_gem_object *
>  i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *=
i915,
>  					       resource_size_t stolen_offset,
> -					       resource_size_t gtt_offset,
>  					       resource_size_t size)
>  {
>  	struct intel_memory_region *mem =3D i915->mm.regions[INTEL_REGION_STOLE=
N];
> -	struct i915_ggtt *ggtt =3D &i915->ggtt;
>  	struct drm_i915_gem_object *obj;
>  	struct drm_mm_node *stolen;
> -	struct i915_vma *vma;
>  	int ret;
>  =

>  	if (!drm_mm_initialized(&i915->mm.stolen))
>  		return ERR_PTR(-ENODEV);
>  =

>  	drm_dbg(&i915->drm,
> -		"creating preallocated stolen object: stolen_offset=3D%pa, gtt_offset=
=3D%pa, size=3D%pa\n",
> -		&stolen_offset, &gtt_offset, &size);
> +		"creating preallocated stolen object: stolen_offset=3D%pa, size=3D%pa\=
n",
> +		&stolen_offset, &size);
>  =

>  	/* KISS and expect everything to be page-aligned */
> -	if (drm_WARN_ON(&i915->drm, size =3D=3D 0) ||
> -	    drm_WARN_ON(&i915->drm, !IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
> -	    drm_WARN_ON(&i915->drm,
> -			!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
> +	if (GEM_WARN_ON(size =3D=3D 0) ||
> +	    GEM_WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
> +	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))

Were these intentional?

>  		return ERR_PTR(-EINVAL);
>  =

>  	stolen =3D kzalloc(sizeof(*stolen), GFP_KERNEL);
> @@ -720,68 +716,20 @@ i915_gem_object_create_stolen_for_preallocated(stru=
ct drm_i915_private *i915,
>  	ret =3D drm_mm_reserve_node(&i915->mm.stolen, stolen);
>  	mutex_unlock(&i915->mm.stolen_lock);
>  	if (ret) {
> -		drm_dbg(&i915->drm, "failed to allocate stolen space\n");
> -		kfree(stolen);
> -		return ERR_PTR(ret);
> +		obj =3D ERR_PTR(ret);
> +		goto err_free;
>  	}
>  =

>  	obj =3D __i915_gem_object_create_stolen(mem, stolen);
> -	if (IS_ERR(obj)) {
> -		drm_dbg(&i915->drm, "failed to allocate stolen object\n");
> -		i915_gem_stolen_remove_node(i915, stolen);
> -		kfree(stolen);
> -		return obj;
> -	}
> -
> -	/* Some objects just need physical mem from stolen space */
> -	if (gtt_offset =3D=3D I915_GTT_OFFSET_NONE)
> -		return obj;
> -
> -	ret =3D i915_gem_object_pin_pages(obj);
> -	if (ret)
> -		goto err;
> -
> -	vma =3D i915_vma_instance(obj, &ggtt->vm, NULL);
> -	if (IS_ERR(vma)) {
> -		ret =3D PTR_ERR(vma);
> -		goto err_pages;
> -	}
> -
> -	/* To simplify the initialisation sequence between KMS and GTT,
> -	 * we allow construction of the stolen object prior to
> -	 * setting up the GTT space. The actual reservation will occur
> -	 * later.
> -	 */
> -	mutex_lock(&ggtt->vm.mutex);
> -	ret =3D i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
> -				   size, gtt_offset, obj->cache_level,
> -				   0);
> -	if (ret) {
> -		drm_dbg(&i915->drm, "failed to allocate stolen GTT space\n");
> -		mutex_unlock(&ggtt->vm.mutex);
> -		goto err_pages;
> -	}
> -
> -	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> -
> -	GEM_BUG_ON(vma->pages);
> -	vma->pages =3D obj->mm.pages;
> -	atomic_set(&vma->pages_count, I915_VMA_PAGES_ACTIVE);
> -
> -	set_bit(I915_VMA_GLOBAL_BIND_BIT, __i915_vma_flags(vma));
> -	__i915_vma_set_map_and_fenceable(vma);
> -
> -	list_add_tail(&vma->vm_link, &ggtt->vm.bound_list);
> -	mutex_unlock(&ggtt->vm.mutex);
> -
> -	GEM_BUG_ON(i915_gem_object_is_shrinkable(obj));
> -	atomic_inc(&obj->bind_count);
> +	if (IS_ERR(obj))
> +		goto err_stolen;
>  =

> +	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);

Moved here from pin_and_fence() I guess. Do we overwrite the PTEs
when we pin the vma? Or just assuming they already match this?
IIRC we anyway assume that ggtt has a 1:1 mapping of stolen at this
point and we don't double check that the PTEs really point to stolen.

Looks all right to me. Series is =

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	return obj;
>  =

> -err_pages:
> -	i915_gem_object_unpin_pages(obj);
> -err:
> -	i915_gem_object_put(obj);
> -	return ERR_PTR(ret);
> +err_stolen:
> +	i915_gem_stolen_remove_node(i915, stolen);
> +err_free:
> +	kfree(stolen);
> +	return obj;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm=
/i915/gem/i915_gem_stolen.h
> index c1040627fbf3..e15c0adad8af 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> @@ -28,7 +28,6 @@ i915_gem_object_create_stolen(struct drm_i915_private *=
dev_priv,
>  struct drm_i915_gem_object *
>  i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *=
dev_priv,
>  					       resource_size_t stolen_offset,
> -					       resource_size_t gtt_offset,
>  					       resource_size_t size);
>  =

>  #endif /* __I915_GEM_STOLEN_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/g=
t/intel_rc6.c
> index 01a99fdbb3c4..cc0882ee2a80 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -299,7 +299,6 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
>  		pcbr_offset =3D (pcbr & ~4095) - i915->dsm.start;
>  		pctx =3D i915_gem_object_create_stolen_for_preallocated(i915,
>  								      pcbr_offset,
> -								      I915_GTT_OFFSET_NONE,
>  								      pctx_size);
>  		if (IS_ERR(pctx))
>  			return PTR_ERR(pctx);
> -- =

> 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
