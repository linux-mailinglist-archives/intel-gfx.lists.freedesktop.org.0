Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F9F166130
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 16:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4053A6EDBE;
	Thu, 20 Feb 2020 15:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050F96EDBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 15:43:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 07:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="224895801"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2020 07:43:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 17:43:11 +0200
Date: Thu, 20 Feb 2020 17:43:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200220154311.GD13686@intel.com>
References: <20200220152347.2530-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220152347.2530-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Use intel_plane_data_rate for
 min_cdclk calculation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 20, 2020 at 05:23:47PM +0200, Stanislav Lisovskiy wrote:
> There seems to be a bit of confusing redundancy in a way, how
> plane data rate/min cdclk are calculated.
> In fact both min cdclk, pixel rate and plane data rate are all
> part of the same formula as per BSpec.
> =

> However currently we have intel_plane_data_rate, which is used
> to calculate plane data rate and which is also used in bandwidth
> calculations. However for calculating min_cdclk we have another
> piece of code, doing almost same calculation, but a bit differently
> and in a different place. However as both are actually part of same
> formula, probably would be wise to use plane data rate calculations
> as a basis anyway, thus avoiding code duplication and possible bugs
> related to this.
> =

> Another thing is that I've noticed that during min_cdclk calculations
> we account for plane scaling, while for plane data rate, we don't.
> crtc->pixel_rate seems to account only for pipe ratio, however it is
> clearly stated in BSpec that plane data rate also need to account
> plane ratio as well.
> =

> So what this commit does is:
> - Adds a plane ratio calculation to intel_plane_data_rate
> - Removes redundant calculations from skl_plane_min_cdclk which is
>   used for gen9+ and now uses intel_plane_data_rate as a basis from
>   there as well.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 16 ++++++-
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 46 +++++++++++--------
>  2 files changed, 41 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index c86d7a35c816..702dfa14d112 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -133,15 +133,27 @@ intel_plane_destroy_state(struct drm_plane *plane,
>  	kfree(plane_state);
>  }
>  =

> +
> +
>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_s=
tate,
>  				   const struct intel_plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	unsigned int cpp;
> +	unsigned int src_w, src_h, dst_w, dst_h;
>  =

>  	if (!plane_state->uapi.visible)
>  		return 0;
>  =

> +	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +	/* Downscaling limits the maximum pixel rate */
> +	dst_w =3D min(src_w, dst_w);
> +	dst_h =3D min(src_h, dst_h);
> +
>  	cpp =3D fb->format->cpp[0];
>  =

>  	/*
> @@ -153,7 +165,9 @@ unsigned int intel_plane_data_rate(const struct intel=
_crtc_state *crtc_state,
>  	if (fb->format->is_yuv && fb->format->num_planes > 1)
>  		cpp *=3D 4;
>  =

> -	return cpp * crtc_state->pixel_rate;
> +	return DIV64_U64_ROUND_UP(mul_u32_u32(cpp * crtc_state->pixel_rate,
> +					      src_w * src_h),
> +				  mul_u32_u32(dst_w, dst_h));

You don't need a 64bit divisor for this.

>  }
>  =

>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 7abeefe8dce5..75afb78ff1b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -330,24 +330,34 @@ bool icl_is_hdr_plane(struct drm_i915_private *dev_=
priv, enum plane_id plane_id)
>  }
>  =

>  static void
> -skl_plane_ratio(const struct intel_crtc_state *crtc_state,
> -		const struct intel_plane_state *plane_state,
> -		unsigned int *num, unsigned int *den)
> +skl_plane_bpp_constraints(const struct intel_crtc_state *crtc_state,
> +			  const struct intel_plane_state *plane_state,
> +			  unsigned int *num, unsigned int *den)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int cpp =3D fb->format->cpp[0];
> +
> +	/*
> +	 * Based on HSD#:1408715493
> +	 * NV12 cpp =3D=3D 4, P010 cpp =3D=3D 8
> +	 *
> +	 * FIXME what is the logic behind this?
> +	 */
> +	if (fb->format->is_yuv && fb->format->num_planes > 1)
> +		cpp *=3D 4;

This is ugly. I think we need a plane pixel rate instead of =

abusing the data rate as the pixel rate like this.

>  =

>  	if (fb->format->cpp[0] =3D=3D 8) {
>  		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
>  			*num =3D 10;
> -			*den =3D 8;
> +			*den =3D 8 * cpp;
>  		} else {
>  			*num =3D 9;
> -			*den =3D 8;
> +			*den =3D 8 * cpp;
>  		}
>  	} else {
>  		*num =3D 1;
> -		*den =3D 1;
> +		*den =3D cpp;
>  	}
>  }
>  =

> @@ -355,27 +365,23 @@ static int skl_plane_min_cdclk(const struct intel_c=
rtc_state *crtc_state,
>  			       const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> -	unsigned int pixel_rate =3D crtc_state->pixel_rate;
> -	unsigned int src_w, src_h, dst_w, dst_h;
>  	unsigned int num, den;
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  =

> -	skl_plane_ratio(crtc_state, plane_state, &num, &den);
> +	skl_plane_bpp_constraints(crtc_state, plane_state, &num, &den);
>  =

>  	/* two pixels per clock on glk+ */
>  	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
>  		den *=3D 2;
>  =

> -	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -	dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> -	dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> -
> -	/* Downscaling limits the maximum pixel rate */
> -	dst_w =3D min(src_w, dst_w);
> -	dst_h =3D min(src_h, dst_h);
> -
> -	return DIV64_U64_ROUND_UP(mul_u32_u32(pixel_rate * num, src_w * src_h),
> -				  mul_u32_u32(den, dst_w * dst_h));
> +	/*
> +	 * intel_atomic_check_planes has already been called by this
> +	 * time in intel_atomic_check, so use calculated plane
> +	 * data rate as a basis, in order not to have duplicate code.
> +	 * According to BSpec, plane data rate is anyway used as
> +	 * a basis for this calculation.
> +	 */
> +	return DIV64_U64_ROUND_UP(crtc_state->data_rate[plane->id] * num, den);
>  }
>  =

>  static unsigned int
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
