Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEA5337994
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:39:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E32DF6EA85;
	Thu, 11 Mar 2021 16:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09E96E2E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:39:31 +0000 (UTC)
IronPort-SDR: c3FGO8UZmBfrgFwE8UPC3tvZjgucBs/mR+FTrkTUjqlh9mV1v+4CalSfnzbfD4SEHQCXh64Kub
 mwZfdX2jJ83g==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="185339580"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="185339580"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:39:31 -0800
IronPort-SDR: T0YbaJZE0gjSr1SxcFsCG2kJLQ3zGZnWG+kz46HK0JppU98rc9TxdE9OyV/n6yx37corF853G/
 lJlXa1GBdMbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="448335251"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 11 Mar 2021 08:39:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:39:28 +0200
Date: Thu, 11 Mar 2021 18:39:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpHwAtS2AaGVwiF@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-16-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-16-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915/intel_fb: Factor out
 calc_plane_aligned_offset()
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

On Thu, Mar 11, 2021 at 12:17:28AM +0200, Imre Deak wrote:
> Factor out to a new function the logic to convert the FB plane x/y
> values to a tile size based offset and new x/y relative to this offset.
> This makes intel_fill_fb_info() and intel_plane_remap_gtt() somewhat
> more readable.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 26 ++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 806341c229f0..62a8e37dca38 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -559,6 +559,21 @@ static int convert_plane_offset_to_xy(const struct i=
ntel_framebuffer *fb, int co
>  	return 0;
>  }
>  =

> +static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb,=
 int color_plane, int *x, int *y)
> +{
> +	const struct drm_framebuffer *drm_fb =3D &fb->base;
> +	struct drm_i915_private *i915 =3D to_i915(drm_fb->dev);
> +	unsigned int tile_size =3D intel_tile_size(i915);
> +	u32 offset;
> +
> +	offset =3D intel_compute_aligned_offset(i915, x, y, drm_fb, color_plane,
> +					      drm_fb->pitches[color_plane],
> +					      DRM_MODE_ROTATE_0,
> +					      tile_size);
> +
> +	return offset / tile_size;
> +}
> +
>  /*
>   * Setup the rotated view for an FB plane and return the size the GTT ma=
pping
>   * requires for this view.
> @@ -661,11 +676,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915=
, struct drm_framebuffer *fb
>  		intel_fb->normal[i].x =3D x;
>  		intel_fb->normal[i].y =3D y;
>  =

> -		offset =3D intel_compute_aligned_offset(i915, &x, &y, fb, i,
> -						      fb->pitches[i],
> -						      DRM_MODE_ROTATE_0,
> -						      tile_size);
> -		offset /=3D tile_size;
> +		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
>  =

>  		if (!is_surface_linear(fb, i)) {
>  			struct intel_remapped_plane_info plane_info;
> @@ -774,10 +785,7 @@ static void intel_plane_remap_gtt(struct intel_plane=
_state *plane_state)
>  		x +=3D intel_fb->normal[i].x;
>  		y +=3D intel_fb->normal[i].y;
>  =

> -		offset =3D intel_compute_aligned_offset(i915, &x, &y,
> -						      fb, i, fb->pitches[i],
> -						      DRM_MODE_ROTATE_0, tile_size);
> -		offset /=3D tile_size;
> +		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
>  =

>  		drm_WARN_ON(&i915->drm, i >=3D ARRAY_SIZE(info->plane));
>  		info->plane[i].offset =3D offset;
> -- =

> 2.25.1
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
