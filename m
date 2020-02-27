Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CF31719A2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 14:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78FA189E86;
	Thu, 27 Feb 2020 13:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAF289E86
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 13:47:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 05:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285339583"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Feb 2020 05:47:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 15:47:00 +0200
Date: Thu, 27 Feb 2020 15:47:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200227134700.GO13686@intel.com>
References: <20200227132010.28102-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227132010.28102-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Use intel_plane_data_rate for
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

On Thu, Feb 27, 2020 at 03:20:10PM +0200, Stanislav Lisovskiy wrote:
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

> v2: - Don't use 64 division if not needed(Ville Syrj=E4l=E4)
>     - Now use intel_plane_pixel_rate as a basis for calculations both
>       at intel_plane_data_rate and skl_plane_min_cdclk(Ville Syrj=E4l=E4)
> =

> v3: - Again fix the division macro
>     - Fix plane_pixel_rate to pixel_rate at intel_plane_pixel_rate
>       callsites
> =

> v4: - Renamed skl_plane_ratio function back(Ville Syrj=E4l=E4)
> =

> v5: - Don't precalculate plane pixel rate for invisible plane,
>       check for visibility first, as in invisible case it will
>       have dst_w and dst_h equal to zero, causing divide error.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 26 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 15 ++---------
>  3 files changed, 30 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index c86d7a35c816..956af022cf5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -133,15 +133,39 @@ intel_plane_destroy_state(struct drm_plane *plane,
>  	kfree(plane_state);
>  }
>  =

> +unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_=
state,
> +				    const struct intel_plane_state *plane_state)
> +{
> +	unsigned int src_w, src_h, dst_w, dst_h;
> +
> +	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +	/* Downscaling limits the maximum pixel rate */
> +	dst_w =3D min(src_w, dst_w);
> +	dst_h =3D min(src_h, dst_h);
> +
> +	WARN_ON(!dst_w || !dst_h);

Pointless warn. You'll get a div by zero anyway.

> +
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(crtc_state->pixel_rate,
> +				src_w * src_h),

Bogus alignment.

> +				dst_w * dst_h);
> +}
> +
>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_s=
tate,
>  				   const struct intel_plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	unsigned int cpp;
> +	unsigned int pixel_rate;
>  =

>  	if (!plane_state->uapi.visible)
>  		return 0;
>  =

> +	pixel_rate =3D intel_plane_pixel_rate(crtc_state, plane_state);
> +
>  	cpp =3D fb->format->cpp[0];
>  =

>  	/*
> @@ -153,7 +177,7 @@ unsigned int intel_plane_data_rate(const struct intel=
_crtc_state *crtc_state,
>  	if (fb->format->is_yuv && fb->format->num_planes > 1)
>  		cpp *=3D 4;
>  =

> -	return cpp * crtc_state->pixel_rate;
> +	return pixel_rate * cpp;
>  }
>  =

>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 2bcf15e34728..a6bbf42bae1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -18,6 +18,9 @@ struct intel_plane_state;
>  =

>  extern const struct drm_plane_helper_funcs intel_plane_helper_funcs;
>  =

> +unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_=
state,
> +				    const struct intel_plane_state *plane_state);
> +
>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_s=
tate,
>  				   const struct intel_plane_state *plane_state);
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_s=
tate,
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 7abeefe8dce5..d16e17be26b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -355,9 +355,8 @@ static int skl_plane_min_cdclk(const struct intel_crt=
c_state *crtc_state,
>  			       const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> -	unsigned int pixel_rate =3D crtc_state->pixel_rate;
> -	unsigned int src_w, src_h, dst_w, dst_h;
>  	unsigned int num, den;
> +	int pixel_rate =3D intel_plane_pixel_rate(crtc_state, plane_state);

unsigned int?

>  =

>  	skl_plane_ratio(crtc_state, plane_state, &num, &den);
>  =

> @@ -365,17 +364,7 @@ static int skl_plane_min_cdclk(const struct intel_cr=
tc_state *crtc_state,
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
> +	return DIV_ROUND_UP(pixel_rate * num, den);
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
