Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC643697E8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 19:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01916EC20;
	Fri, 23 Apr 2021 17:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB6C6EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 17:04:39 +0000 (UTC)
IronPort-SDR: S8Rez6lJ1ZCZmEOLhet4f/AsyLqd3qAuwZo+VpFv9DXToXdkGGGvkfn3kc6C92pdMycwmHYQqe
 ssGBM8LMGsNA==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="196161275"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="196161275"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 10:04:38 -0700
IronPort-SDR: Z67LGKWrfvYtdf+bKl3a+R1Ov9jZJ9lyHlHdQhwnztyP0GwJXNofBTnhu0HnLgqq4dO2C0zDNO
 fTaOa7rYzbWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="386437978"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 23 Apr 2021 10:04:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Apr 2021 20:04:35 +0300
Date: Fri, 23 Apr 2021 20:04:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YIL+IyMTSL64Hm50@intel.com>
References: <20210421121959.3577881-1-imre.deak@intel.com>
 <20210421173220.3587009-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421173220.3587009-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Simplify CCS and UV plane
 alignment handling
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

On Wed, Apr 21, 2021 at 08:32:20PM +0300, Imre Deak wrote:
> We can handle the surface alignment of CCS and UV color planes for all
> modifiers at one place, so do this. An AUX color plane can be a CCS or a
> UV plane, use only the more specific query functions and remove
> is_aux_plane() becoming redundant.
> =

> While at it add a TODO for linear UV color plane alignments. The spec
> requires this to be stride-in-bytes * 64 on all platforms, whereas the
> driver uses an alignment of 4k for gen<12 and 256k for gen>=3D12 for
> linear UV planes.
> =

> v2:
> - Restore previous alignment for linear UV surfaces.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 27 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_fb.c      |  8 ------
>  drivers/gpu/drm/i915/display/intel_fb.h      |  1 -
>  3 files changed, 18 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a10e26380ef3d..e246e5cf75866 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -973,10 +973,26 @@ unsigned int intel_surf_alignment(const struct drm_=
framebuffer *fb,
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
>  =

>  	/* AUX_DIST needs only 4K alignment */
> -	if ((DISPLAY_VER(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
> -	    is_ccs_plane(fb, color_plane))
> +	if (is_ccs_plane(fb, color_plane))
>  		return 4096;
>  =

> +	if (is_semiplanar_uv_plane(fb, color_plane)) {
> +		/*
> +		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
> +		 * alignment for linear UV planes on all platforms.
> +		 */

I think it's just saying that UV should always start at an integer
multiple of Y stride, whether we're dealing with linear or tiled.
Dunno if that's true or not. I suppose there could be some
tlb/prefetch related reasons for it.

I think the same tile row/stride alignment requirements are specified
for all gen9+ platforms actually. So if it's supposedly really needed
then I guess we should do it on all platforms. And if it's not actually
needed we shoud just nuke it all and be happy with 4k alignment.

What are the chances we can even find a suitbly aligned page boundary?
Not sure.

Oh and there's some oddball mention of the UV start having to be a
multiple of four lines. Is it talking about AUX_DIST of AUX_OFFSET.y?
No idea. What lines? Maybe Y lines? Not sure.


> +		if (DISPLAY_VER(dev_priv) >=3D 12) {
> +			if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR)
> +				return intel_linear_alignment(dev_priv);
> +
> +			return intel_tile_row_size(fb, color_plane);
> +		}
> +
> +		return 4096;
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm, color_plane !=3D 0);
> +
>  	switch (fb->modifier) {
>  	case DRM_FORMAT_MOD_LINEAR:
>  		return intel_linear_alignment(dev_priv);
> @@ -985,19 +1001,12 @@ unsigned int intel_surf_alignment(const struct drm=
_framebuffer *fb,
>  			return 256 * 1024;
>  		return 0;
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		if (is_semiplanar_uv_plane(fb, color_plane))
> -			return intel_tile_row_size(fb, color_plane);
> -		fallthrough;
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		return 16 * 1024;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED:
> -		if (DISPLAY_VER(dev_priv) >=3D 12 &&
> -		    is_semiplanar_uv_plane(fb, color_plane))
> -			return intel_tile_row_size(fb, color_plane);
> -		fallthrough;
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return 1 * 1024 * 1024;

As for these IIRC TGL+ should not need any extra alignment anymore.
But that's material for a separate patch.

Anyways patch seems ok.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 0ec9ad7220a14..c8aaca3e79e97 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -30,14 +30,6 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffe=
r *fb, int plane)
>  	       plane =3D=3D 2;
>  }
>  =

> -bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
> -{
> -	if (is_ccs_modifier(fb->modifier))
> -		return is_ccs_plane(fb, plane);
> -
> -	return plane =3D=3D 1;
> -}
> -
>  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_=
plane)
>  {
>  	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 6acf792a8c44a..13244ec1ad214 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -19,7 +19,6 @@ struct intel_plane_state;
>  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> -bool is_aux_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_=
plane);
>  =

>  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane=
);
> -- =

> 2.27.0
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
