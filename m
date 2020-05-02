Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CFD1C21FB
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 02:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1452E6E037;
	Sat,  2 May 2020 00:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D3B6E037
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 00:33:25 +0000 (UTC)
IronPort-SDR: /pQ7YlU71zDUdkGEthZXY16rXuzUuBdLA66+J8fYe4fgHOP4hfQjvegY2d2HxIHOVd/KfqcCg4
 329hPU91NR5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 17:33:25 -0700
IronPort-SDR: eV9IzWh0MGWu6RFU2JK2oxrKd9akEfu673a0kMtDlB24mUvb+TTu1Cs2u6DHUFTrmTZaujlr+a
 LImdgiEq8uRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,342,1583222400"; d="scan'208";a="247650331"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 01 May 2020 17:33:25 -0700
Date: Fri, 1 May 2020 17:33:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200502003324.GL188376@mdroper-desk1.amr.corp.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429101034.8208-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/fbc: Fix fence_y_offset
 handling
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

On Wed, Apr 29, 2020 at 01:10:25PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The current fence_y_offset calculation is broken. I think it more or
> less used to do the right thing, but then I changed the plane code
> to put the final x/y source offsets back into the src rectangle so
> now it's just subtraacting the same value from itself. The code would
> never have worked if we allowed the framebuffer to have a non-zero
> offset.
> =

> Let's do this in a better way by just calculating the fence_y_offset
> from the final plane surface offset. Note that we don't align the
> plane surface address to fence rows so with horizontal panning there's
> often a horizontal offset from the fence start to the surface address
> as well. We have no way to tell the hardware about that so we just
> ignore it. Based on some quick tests the invlidation still happens
> correctly. I presume due to the invalidation nuking at least the full
> line (or a segment of multiple lines).
> =

> Fixes: 54d4d719fa11 ("drm/i915: Overcome display engine stride limits via=
 GTT remapping")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c     | 32 ++++++--------------
>  drivers/gpu/drm/i915/i915_drv.h              |  6 ++--
>  4 files changed, 25 insertions(+), 25 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6bb87965801e..e5fa49337883 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3822,6 +3822,17 @@ skl_check_main_ccs_coordinates(struct intel_plane_=
state *plane_state,
>  	return true;
>  }
>  =

> +unsigned int
> +intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
> +{
> +	int x =3D 0, y =3D 0;
> +
> +	intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> +					  plane_state->color_plane[0].offset, 0);
> +
> +	return y;
> +}
> +
>  static int skl_check_main_surface(struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index efb4da205ea2..3a06f72c9859 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -608,6 +608,7 @@ unsigned int i9xx_plane_max_stride(struct intel_plane=
 *plane,
>  				   u32 pixel_format, u64 modifier,
>  				   unsigned int rotation);
>  int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
> +unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *=
plane_state);
>  =

>  struct intel_display_error_state *
>  intel_display_capture_error_state(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 192c5ff142ee..613ab499d42e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -47,19 +47,6 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>  =

> -/*
> - * In some platforms where the CRTC's x:0/y:0 coordinates doesn't match =
the
> - * frontbuffer's x:0/y:0 coordinates we lie to the hardware about the pl=
ane's
> - * origin so the x and y offsets can actually fit the registers. As a
> - * consequence, the fence doesn't really start exactly at the display pl=
ane
> - * address we program because it starts at the real start of the buffer,=
 so we
> - * have to take this into consideration here.
> - */
> -static unsigned int get_crtc_fence_y_offset(struct intel_fbc *fbc)
> -{
> -	return fbc->state_cache.plane.y - fbc->state_cache.plane.adjusted_y;
> -}
> -
>  /*
>   * For SKL+, the plane source size used by the hardware is based on the =
value we
>   * write to the PLANE_SIZE register. For BDW-, the hardware looks at the=
 value
> @@ -141,7 +128,7 @@ static void i8xx_fbc_activate(struct drm_i915_private=
 *dev_priv)
>  			fbc_ctl2 |=3D FBC_CTL_CPU_FENCE;
>  		intel_de_write(dev_priv, FBC_CONTROL2, fbc_ctl2);
>  		intel_de_write(dev_priv, FBC_FENCE_OFF,
> -			       params->crtc.fence_y_offset);
> +			       params->fence_y_offset);
>  	}
>  =

>  	/* enable it... */
> @@ -175,7 +162,7 @@ static void g4x_fbc_activate(struct drm_i915_private =
*dev_priv)
>  	if (params->fence_id >=3D 0) {
>  		dpfc_ctl |=3D DPFC_CTL_FENCE_EN | params->fence_id;
>  		intel_de_write(dev_priv, DPFC_FENCE_YOFF,
> -			       params->crtc.fence_y_offset);
> +			       params->fence_y_offset);
>  	} else {
>  		intel_de_write(dev_priv, DPFC_FENCE_YOFF, 0);
>  	}
> @@ -243,7 +230,7 @@ static void ilk_fbc_activate(struct drm_i915_private =
*dev_priv)
>  			intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
>  				       SNB_CPU_FENCE_ENABLE | params->fence_id);
>  			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
> -				       params->crtc.fence_y_offset);
> +				       params->fence_y_offset);
>  		}
>  	} else {
>  		if (IS_GEN(dev_priv, 6)) {
> @@ -253,7 +240,7 @@ static void ilk_fbc_activate(struct drm_i915_private =
*dev_priv)
>  	}
>  =

>  	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
> -		       params->crtc.fence_y_offset);
> +		       params->fence_y_offset);
>  	/* enable it... */
>  	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
>  =

> @@ -320,7 +307,7 @@ static void gen7_fbc_activate(struct drm_i915_private=
 *dev_priv)
>  		intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
>  			       SNB_CPU_FENCE_ENABLE | params->fence_id);
>  		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
> -			       params->crtc.fence_y_offset);
> +			       params->fence_y_offset);
>  	} else if (dev_priv->ggtt.num_fences) {
>  		intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
>  		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
> @@ -628,8 +615,8 @@ static bool rotation_is_valid(struct drm_i915_private=
 *dev_priv,
>  /*
>   * For some reason, the hardware tracking starts looking at whatever we
>   * programmed as the display plane base address register. It does not lo=
ok at
> - * the X and Y offset registers. That's why we look at the crtc->adjuste=
d{x,y}
> - * variables instead of just looking at the pipe/plane size.
> + * the X and Y offset registers. That's why we include the src x/y offse=
ts
> + * instead of just looking at the plane size.
>   */
>  static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
>  {
> @@ -702,7 +689,6 @@ static void intel_fbc_update_state_cache(struct intel=
_crtc *crtc,
>  	cache->plane.src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
>  	cache->plane.adjusted_x =3D plane_state->color_plane[0].x;
>  	cache->plane.adjusted_y =3D plane_state->color_plane[0].y;
> -	cache->plane.y =3D plane_state->uapi.src.y1 >> 16;
>  =

>  	cache->plane.pixel_blend_mode =3D plane_state->hw.pixel_blend_mode;
>  =

> @@ -710,6 +696,8 @@ static void intel_fbc_update_state_cache(struct intel=
_crtc *crtc,
>  	cache->fb.modifier =3D fb->modifier;
>  	cache->fb.stride =3D plane_state->color_plane[0].stride;
>  =

> +	cache->fence_y_offset =3D intel_plane_fence_y_offset(plane_state);
> +
>  	drm_WARN_ON(&dev_priv->drm, plane_state->flags & PLANE_HAS_FENCE &&
>  		    !plane_state->vma->fence);
>  =

> @@ -880,10 +868,10 @@ static void intel_fbc_get_reg_params(struct intel_c=
rtc *crtc,
>  	memset(params, 0, sizeof(*params));
>  =

>  	params->fence_id =3D cache->fence_id;
> +	params->fence_y_offset =3D cache->fence_y_offset;
>  =

>  	params->crtc.pipe =3D crtc->pipe;
>  	params->crtc.i9xx_plane =3D to_intel_plane(crtc->base.primary)->i9xx_pl=
ane;
> -	params->crtc.fence_y_offset =3D get_crtc_fence_y_offset(fbc);
>  =

>  	params->fb.format =3D cache->fb.format;
>  	params->fb.stride =3D cache->fb.stride;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index b00f0845cbc3..a634fd2330c3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -408,8 +408,6 @@ struct intel_fbc {
>  			int adjusted_x;
>  			int adjusted_y;
>  =

> -			int y;
> -
>  			u16 pixel_blend_mode;
>  		} plane;
>  =

> @@ -418,6 +416,8 @@ struct intel_fbc {
>  			unsigned int stride;
>  			u64 modifier;
>  		} fb;
> +
> +		unsigned int fence_y_offset;
>  		u16 gen9_wa_cfb_stride;
>  		s8 fence_id;
>  	} state_cache;
> @@ -433,7 +433,6 @@ struct intel_fbc {
>  		struct {
>  			enum pipe pipe;
>  			enum i9xx_plane_id i9xx_plane;
> -			unsigned int fence_y_offset;
>  		} crtc;
>  =

>  		struct {
> @@ -442,6 +441,7 @@ struct intel_fbc {
>  		} fb;
>  =

>  		int cfb_size;
> +		unsigned int fence_y_offset;
>  		u16 gen9_wa_cfb_stride;
>  		s8 fence_id;
>  		bool plane_visible;
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
