Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A42D142A272
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 12:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5066E8E5;
	Tue, 12 Oct 2021 10:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67426E8E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 10:40:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214050338"
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="214050338"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 03:40:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="490910471"
Received: from pakumpul-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.207])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 03:40:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211012043502.1377715-6-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211012043502.1377715-1-airlied@gmail.com>
 <20211012043502.1377715-6-airlied@gmail.com>
Date: Tue, 12 Oct 2021 13:40:17 +0300
Message-ID: <87fst6zfu6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/display: move pin/unpin
 fb/plane code to a new file.
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

On Tue, 12 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This just moves this code out of the i915_display.c into a new
> standalone file.
>
> Signed-off-by: Dave Airlie <airlied@redhat.com>

Thanks for the patches, pushed up to and including this one, it's all
pure code movement AFAICS. The next one needs slightly more thought. To
be continued...

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
>  drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 258 -----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   8 -
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 274 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   |  28 ++
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |   1 +
>  8 files changed, 306 insertions(+), 267 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 5d9794d80bc2..f35485806ec5 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -216,6 +216,7 @@ i915-y +=3D \
>  	display/intel_drrs.o \
>  	display/intel_dsb.o \
>  	display/intel_fb.o \
> +	display/intel_fb_pin.o \
>  	display/intel_fbc.o \
>  	display/intel_fdi.o \
>  	display/intel_fifo_underrun.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 53ee56453270..0be8c00e3db9 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -39,6 +39,7 @@
>  #include "intel_atomic_plane.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
> +#include "intel_fb_pin.h"
>  #include "intel_pm.h"
>  #include "intel_sprite.h"
>  #include "gt/intel_rps.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index f6dcb5aa63f6..11842f212613 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -17,7 +17,7 @@
>  #include "intel_display_types.h"
>  #include "intel_display.h"
>  #include "intel_fb.h"
> -
> +#include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_pm.h"
>  #include "intel_psr.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b0684537f987..0fe3c2f50971 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -862,198 +862,6 @@ bool intel_plane_uses_fence(const struct intel_plan=
e_state *plane_state)
>  		 plane_state->view.gtt.type =3D=3D I915_GGTT_VIEW_NORMAL);
>  }
>=20=20
> -static struct i915_vma *
> -intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> -		     const struct i915_ggtt_view *view,
> -		     bool uses_fence,
> -		     unsigned long *out_flags,
> -		     struct i915_address_space *vm)
> -{
> -	struct drm_device *dev =3D fb->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> -	struct i915_vma *vma;
> -	u32 alignment;
> -	int ret;
> -
> -	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
> -		return ERR_PTR(-EINVAL);
> -
> -	alignment =3D 4096 * 512;
> -
> -	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> -
> -	ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
> -	if (ret) {
> -		vma =3D ERR_PTR(ret);
> -		goto err;
> -	}
> -
> -	vma =3D i915_vma_instance(obj, vm, view);
> -	if (IS_ERR(vma))
> -		goto err;
> -
> -	if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> -		ret =3D i915_vma_unbind(vma);
> -		if (ret) {
> -			vma =3D ERR_PTR(ret);
> -			goto err;
> -		}
> -	}
> -
> -	ret =3D i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
> -	if (ret) {
> -		vma =3D ERR_PTR(ret);
> -		goto err;
> -	}
> -
> -	vma->display_alignment =3D max_t(u64, vma->display_alignment, alignment=
);
> -
> -	i915_gem_object_flush_if_display(obj);
> -
> -	i915_vma_get(vma);
> -err:
> -	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> -
> -	return vma;
> -}
> -
> -struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> -			   bool phys_cursor,
> -			   const struct i915_ggtt_view *view,
> -			   bool uses_fence,
> -			   unsigned long *out_flags)
> -{
> -	struct drm_device *dev =3D fb->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> -	intel_wakeref_t wakeref;
> -	struct i915_gem_ww_ctx ww;
> -	struct i915_vma *vma;
> -	unsigned int pinctl;
> -	u32 alignment;
> -	int ret;
> -
> -	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
> -		return ERR_PTR(-EINVAL);
> -
> -	if (phys_cursor)
> -		alignment =3D intel_cursor_alignment(dev_priv);
> -	else
> -		alignment =3D intel_surf_alignment(fb, 0);
> -	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
> -		return ERR_PTR(-EINVAL);
> -
> -	/* Note that the w/a also requires 64 PTE of padding following the
> -	 * bo. We currently fill all unused PTE with the shadow page and so
> -	 * we should always have valid PTE following the scanout preventing
> -	 * the VT-d warning.
> -	 */
> -	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
> -		alignment =3D 256 * 1024;
> -
> -	/*
> -	 * Global gtt pte registers are special registers which actually forward
> -	 * writes to a chunk of system memory. Which means that there is no risk
> -	 * that the register values disappear as soon as we call
> -	 * intel_runtime_pm_put(), so it is correct to wrap only the
> -	 * pin/unpin/fence and not more.
> -	 */
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> -
> -	/*
> -	 * Valleyview is definitely limited to scanning out the first
> -	 * 512MiB. Lets presume this behaviour was inherited from the
> -	 * g4x display engine and that all earlier gen are similarly
> -	 * limited. Testing suggests that it is a little more
> -	 * complicated than this. For example, Cherryview appears quite
> -	 * happy to scanout from anywhere within its global aperture.
> -	 */
> -	pinctl =3D 0;
> -	if (HAS_GMCH(dev_priv))
> -		pinctl |=3D PIN_MAPPABLE;
> -
> -	i915_gem_ww_ctx_init(&ww, true);
> -retry:
> -	ret =3D i915_gem_object_lock(obj, &ww);
> -	if (!ret && phys_cursor)
> -		ret =3D i915_gem_object_attach_phys(obj, alignment);
> -	else if (!ret && HAS_LMEM(dev_priv))
> -		ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM);
> -	/* TODO: Do we need to sync when migration becomes async? */
> -	if (!ret)
> -		ret =3D i915_gem_object_pin_pages(obj);
> -	if (ret)
> -		goto err;
> -
> -	if (!ret) {
> -		vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> -							   view, pinctl);
> -		if (IS_ERR(vma)) {
> -			ret =3D PTR_ERR(vma);
> -			goto err_unpin;
> -		}
> -	}
> -
> -	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
> -		/*
> -		 * Install a fence for tiled scan-out. Pre-i965 always needs a
> -		 * fence, whereas 965+ only requires a fence if using
> -		 * framebuffer compression.  For simplicity, we always, when
> -		 * possible, install a fence as the cost is not that onerous.
> -		 *
> -		 * If we fail to fence the tiled scanout, then either the
> -		 * modeset will reject the change (which is highly unlikely as
> -		 * the affected systems, all but one, do not have unmappable
> -		 * space) or we will not be able to enable full powersaving
> -		 * techniques (also likely not to apply due to various limits
> -		 * FBC and the like impose on the size of the buffer, which
> -		 * presumably we violated anyway with this unmappable buffer).
> -		 * Anyway, it is presumably better to stumble onwards with
> -		 * something and try to run the system in a "less than optimal"
> -		 * mode that matches the user configuration.
> -		 */
> -		ret =3D i915_vma_pin_fence(vma);
> -		if (ret !=3D 0 && DISPLAY_VER(dev_priv) < 4) {
> -			i915_vma_unpin(vma);
> -			goto err_unpin;
> -		}
> -		ret =3D 0;
> -
> -		if (vma->fence)
> -			*out_flags |=3D PLANE_HAS_FENCE;
> -	}
> -
> -	i915_vma_get(vma);
> -
> -err_unpin:
> -	i915_gem_object_unpin_pages(obj);
> -err:
> -	if (ret =3D=3D -EDEADLK) {
> -		ret =3D i915_gem_ww_ctx_backoff(&ww);
> -		if (!ret)
> -			goto retry;
> -	}
> -	i915_gem_ww_ctx_fini(&ww);
> -	if (ret)
> -		vma =3D ERR_PTR(ret);
> -
> -	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -	return vma;
> -}
> -
> -void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
> -{
> -	if (flags & PLANE_HAS_FENCE)
> -		i915_vma_unpin_fence(vma);
> -	i915_vma_unpin(vma);
> -	i915_vma_put(vma);
> -}
> -
>  /*
>   * Convert the x/y offsets into a linear offset.
>   * Only valid with 0/180 degree rotation, which is fine since linear
> @@ -10245,72 +10053,6 @@ static int intel_atomic_commit(struct drm_device=
 *dev,
>  	return 0;
>  }
>=20=20
> -int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct i915_vma *vma;
> -	bool phys_cursor =3D
> -		plane->id =3D=3D PLANE_CURSOR &&
> -		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> -
> -	if (!intel_fb_uses_dpt(fb)) {
> -		vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> -						 &plane_state->view.gtt,
> -						 intel_plane_uses_fence(plane_state),
> -						 &plane_state->flags);
> -		if (IS_ERR(vma))
> -			return PTR_ERR(vma);
> -
> -		plane_state->ggtt_vma =3D vma;
> -	} else {
> -		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -
> -		vma =3D intel_dpt_pin(intel_fb->dpt_vm);
> -		if (IS_ERR(vma))
> -			return PTR_ERR(vma);
> -
> -		plane_state->ggtt_vma =3D vma;
> -
> -		vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
> -					   &plane_state->flags, intel_fb->dpt_vm);
> -		if (IS_ERR(vma)) {
> -			intel_dpt_unpin(intel_fb->dpt_vm);
> -			plane_state->ggtt_vma =3D NULL;
> -			return PTR_ERR(vma);
> -		}
> -
> -		plane_state->dpt_vma =3D vma;
> -
> -		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
> -	}
> -
> -	return 0;
> -}
> -
> -void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> -{
> -	struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
> -	struct i915_vma *vma;
> -
> -	if (!intel_fb_uses_dpt(fb)) {
> -		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> -		if (vma)
> -			intel_unpin_fb_vma(vma, old_plane_state->flags);
> -	} else {
> -		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -
> -		vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
> -		if (vma)
> -			intel_unpin_fb_vma(vma, old_plane_state->flags);
> -
> -		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> -		if (vma)
> -			intel_dpt_unpin(intel_fb->dpt_vm);
> -	}
> -}
> -
>  /**
>   * intel_plane_destroy - destroy a plane
>   * @plane: plane to destroy
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 38afc758d7d4..0c76bf57f86b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -576,12 +576,6 @@ int intel_get_load_detect_pipe(struct drm_connector =
*connector,
>  void intel_release_load_detect_pipe(struct drm_connector *connector,
>  				    struct intel_load_detect_pipe *old,
>  				    struct drm_modeset_acquire_ctx *ctx);
> -struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb, bool phys_cursor,
> -			   const struct i915_ggtt_view *view,
> -			   bool uses_fence,
> -			   unsigned long *out_flags);
> -void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
>  struct drm_framebuffer *
>  intel_framebuffer_create(struct drm_i915_gem_object *obj,
>  			 struct drm_mode_fb_cmd2 *mode_cmd);
> @@ -620,8 +614,6 @@ bool
>  intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
>  				    u64 modifier);
>=20=20
> -int intel_plane_pin_fb(struct intel_plane_state *plane_state);
> -void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
>  struct intel_encoder *
>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>  			   const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> new file mode 100644
> index 000000000000..3f77f3013584
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -0,0 +1,274 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +/**
> + * DOC: display pinning helpers
> + */
> +
> +#include "intel_display_types.h"
> +#include "intel_fb_pin.h"
> +#include "intel_fb.h"
> +
> +#include "intel_dpt.h"
> +
> +#include "gem/i915_gem_object.h"
> +
> +static struct i915_vma *
> +intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> +		     const struct i915_ggtt_view *view,
> +		     bool uses_fence,
> +		     unsigned long *out_flags,
> +		     struct i915_address_space *vm)
> +{
> +	struct drm_device *dev =3D fb->dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> +	struct i915_vma *vma;
> +	u32 alignment;
> +	int ret;
> +
> +	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
> +		return ERR_PTR(-EINVAL);
> +
> +	alignment =3D 4096 * 512;
> +
> +	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> +
> +	ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
> +	if (ret) {
> +		vma =3D ERR_PTR(ret);
> +		goto err;
> +	}
> +
> +	vma =3D i915_vma_instance(obj, vm, view);
> +	if (IS_ERR(vma))
> +		goto err;
> +
> +	if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> +		ret =3D i915_vma_unbind(vma);
> +		if (ret) {
> +			vma =3D ERR_PTR(ret);
> +			goto err;
> +		}
> +	}
> +
> +	ret =3D i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
> +	if (ret) {
> +		vma =3D ERR_PTR(ret);
> +		goto err;
> +	}
> +
> +	vma->display_alignment =3D max_t(u64, vma->display_alignment, alignment=
);
> +
> +	i915_gem_object_flush_if_display(obj);
> +
> +	i915_vma_get(vma);
> +err:
> +	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> +
> +	return vma;
> +}
> +
> +struct i915_vma *
> +intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> +			   bool phys_cursor,
> +			   const struct i915_ggtt_view *view,
> +			   bool uses_fence,
> +			   unsigned long *out_flags)
> +{
> +	struct drm_device *dev =3D fb->dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> +	intel_wakeref_t wakeref;
> +	struct i915_gem_ww_ctx ww;
> +	struct i915_vma *vma;
> +	unsigned int pinctl;
> +	u32 alignment;
> +	int ret;
> +
> +	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
> +		return ERR_PTR(-EINVAL);
> +
> +	if (phys_cursor)
> +		alignment =3D intel_cursor_alignment(dev_priv);
> +	else
> +		alignment =3D intel_surf_alignment(fb, 0);
> +	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
> +		return ERR_PTR(-EINVAL);
> +
> +	/* Note that the w/a also requires 64 PTE of padding following the
> +	 * bo. We currently fill all unused PTE with the shadow page and so
> +	 * we should always have valid PTE following the scanout preventing
> +	 * the VT-d warning.
> +	 */
> +	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
> +		alignment =3D 256 * 1024;
> +
> +	/*
> +	 * Global gtt pte registers are special registers which actually forward
> +	 * writes to a chunk of system memory. Which means that there is no risk
> +	 * that the register values disappear as soon as we call
> +	 * intel_runtime_pm_put(), so it is correct to wrap only the
> +	 * pin/unpin/fence and not more.
> +	 */
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> +
> +	/*
> +	 * Valleyview is definitely limited to scanning out the first
> +	 * 512MiB. Lets presume this behaviour was inherited from the
> +	 * g4x display engine and that all earlier gen are similarly
> +	 * limited. Testing suggests that it is a little more
> +	 * complicated than this. For example, Cherryview appears quite
> +	 * happy to scanout from anywhere within its global aperture.
> +	 */
> +	pinctl =3D 0;
> +	if (HAS_GMCH(dev_priv))
> +		pinctl |=3D PIN_MAPPABLE;
> +
> +	i915_gem_ww_ctx_init(&ww, true);
> +retry:
> +	ret =3D i915_gem_object_lock(obj, &ww);
> +	if (!ret && phys_cursor)
> +		ret =3D i915_gem_object_attach_phys(obj, alignment);
> +	else if (!ret && HAS_LMEM(dev_priv))
> +		ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM);
> +	/* TODO: Do we need to sync when migration becomes async? */
> +	if (!ret)
> +		ret =3D i915_gem_object_pin_pages(obj);
> +	if (ret)
> +		goto err;
> +
> +	if (!ret) {
> +		vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> +							   view, pinctl);
> +		if (IS_ERR(vma)) {
> +			ret =3D PTR_ERR(vma);
> +			goto err_unpin;
> +		}
> +	}
> +
> +	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
> +		/*
> +		 * Install a fence for tiled scan-out. Pre-i965 always needs a
> +		 * fence, whereas 965+ only requires a fence if using
> +		 * framebuffer compression.  For simplicity, we always, when
> +		 * possible, install a fence as the cost is not that onerous.
> +		 *
> +		 * If we fail to fence the tiled scanout, then either the
> +		 * modeset will reject the change (which is highly unlikely as
> +		 * the affected systems, all but one, do not have unmappable
> +		 * space) or we will not be able to enable full powersaving
> +		 * techniques (also likely not to apply due to various limits
> +		 * FBC and the like impose on the size of the buffer, which
> +		 * presumably we violated anyway with this unmappable buffer).
> +		 * Anyway, it is presumably better to stumble onwards with
> +		 * something and try to run the system in a "less than optimal"
> +		 * mode that matches the user configuration.
> +		 */
> +		ret =3D i915_vma_pin_fence(vma);
> +		if (ret !=3D 0 && DISPLAY_VER(dev_priv) < 4) {
> +			i915_vma_unpin(vma);
> +			goto err_unpin;
> +		}
> +		ret =3D 0;
> +
> +		if (vma->fence)
> +			*out_flags |=3D PLANE_HAS_FENCE;
> +	}
> +
> +	i915_vma_get(vma);
> +
> +err_unpin:
> +	i915_gem_object_unpin_pages(obj);
> +err:
> +	if (ret =3D=3D -EDEADLK) {
> +		ret =3D i915_gem_ww_ctx_backoff(&ww);
> +		if (!ret)
> +			goto retry;
> +	}
> +	i915_gem_ww_ctx_fini(&ww);
> +	if (ret)
> +		vma =3D ERR_PTR(ret);
> +
> +	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	return vma;
> +}
> +
> +void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
> +{
> +	if (flags & PLANE_HAS_FENCE)
> +		i915_vma_unpin_fence(vma);
> +	i915_vma_unpin(vma);
> +	i915_vma_put(vma);
> +}
> +
> +int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct i915_vma *vma;
> +	bool phys_cursor =3D
> +		plane->id =3D=3D PLANE_CURSOR &&
> +		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> +
> +	if (!intel_fb_uses_dpt(fb)) {
> +		vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> +						 &plane_state->view.gtt,
> +						 intel_plane_uses_fence(plane_state),
> +						 &plane_state->flags);
> +		if (IS_ERR(vma))
> +			return PTR_ERR(vma);
> +
> +		plane_state->ggtt_vma =3D vma;
> +	} else {
> +		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +
> +		vma =3D intel_dpt_pin(intel_fb->dpt_vm);
> +		if (IS_ERR(vma))
> +			return PTR_ERR(vma);
> +
> +		plane_state->ggtt_vma =3D vma;
> +
> +		vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
> +					   &plane_state->flags, intel_fb->dpt_vm);
> +		if (IS_ERR(vma)) {
> +			intel_dpt_unpin(intel_fb->dpt_vm);
> +			plane_state->ggtt_vma =3D NULL;
> +			return PTR_ERR(vma);
> +		}
> +
> +		plane_state->dpt_vma =3D vma;
> +
> +		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
> +	}
> +
> +	return 0;
> +}
> +
> +void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> +{
> +	struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
> +	struct i915_vma *vma;
> +
> +	if (!intel_fb_uses_dpt(fb)) {
> +		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> +		if (vma)
> +			intel_unpin_fb_vma(vma, old_plane_state->flags);
> +	} else {
> +		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +
> +		vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
> +		if (vma)
> +			intel_unpin_fb_vma(vma, old_plane_state->flags);
> +
> +		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> +		if (vma)
> +			intel_dpt_unpin(intel_fb->dpt_vm);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> new file mode 100644
> index 000000000000..e4fcd0218d9d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_FB_PIN_H__
> +#define __INTEL_FB_PIN_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_framebuffer;
> +struct i915_vma;
> +struct intel_plane_state;
> +struct i915_ggtt_view;
> +
> +struct i915_vma *
> +intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> +			   bool phys_cursor,
> +			   const struct i915_ggtt_view *view,
> +			   bool uses_fence,
> +			   unsigned long *out_flags);
> +
> +void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
> +
> +int intel_plane_pin_fb(struct intel_plane_state *plane_state);
> +void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 53484267b2a4..adc3a81be9f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -46,6 +46,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
> +#include "intel_fb_pin.h"
>  #include "intel_fbdev.h"
>  #include "intel_frontbuffer.h"

--=20
Jani Nikula, Intel Open Source Graphics Center
