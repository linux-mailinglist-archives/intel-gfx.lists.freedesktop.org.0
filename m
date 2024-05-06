Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7DC8BCFA0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBD210F079;
	Mon,  6 May 2024 14:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LS1w4SFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C322D10F088;
 Mon,  6 May 2024 14:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715004245; x=1746540245;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PTAjG2Fd+oZjsnT5RL6QbWZ/ribqIhDDqg3l+nPd9nU=;
 b=LS1w4SFdJUufxarf5iqVzx6qGANdPpLjKK9nlfT/1kL/YzVPwFGa8HBg
 +YJRLiUnVRFWxq1oxmdj3/FG+XQXhhm0oqoz42qp0KmdBwz7pUPGAX+uu
 zy0Zr5fPzKIxIa9pMG93kxy1S33bvvaxSwKKp8dyfrtpLDphye6c58jjD
 cY6IwgfZmphyNbKQ8eYgYKHWr+K8oQ7qPNVynkIFo9UJ2myNPbnYMFrSg
 N9Gk+GCYqUzI9xp4StIo9F6o3P4VfGvJCiWFqGp3vnlcfWMlLBpSVN9Df
 Zvf8bPTnuPWQMC3vcCcFELpE8QHF2cHGfCTyDr6kU3tlaChpUW0XdvQdS Q==;
X-CSE-ConnectionGUID: vrVhSkwTSlO0JsPptYpX5g==
X-CSE-MsgGUID: AQdfTcOlQOa8hwNF5C4HTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="28275444"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28275444"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:04:04 -0700
X-CSE-ConnectionGUID: yhdZ08tiSgSJGE4UtJoLXw==
X-CSE-MsgGUID: WPNl8398RmCuW21bG9n+qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32763416"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:04:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915: Clean up skl+ plane stride limits
In-Reply-To: <20240506125718.26001-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-3-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:03:59 +0300
Message-ID: <874jbbm3zk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> skl_plane_max_stride() is pretty messy. Streamline it and
> split it into clear skl+ vs. adl+ variants.
>
> TODO: Deal with icl and tgl strude limits properly
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++--------
>  1 file changed, 37 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 0a8e781a3648..b8103d6ebc1f 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -461,41 +461,46 @@ static int icl_plane_max_height(const struct drm_fr=
amebuffer *fb,
>  }
>=20=20
>  static unsigned int
> -skl_plane_max_stride(struct intel_plane *plane,
> -		     u32 pixel_format, u64 modifier,
> -		     unsigned int rotation)
> +plane_max_stride(struct intel_plane *plane,
> +		 u32 pixel_format, u64 modifier,
> +		 unsigned int rotation,
> +		 unsigned int max_pixels,
> +		 unsigned int max_bytes)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	const struct drm_format_info *info =3D drm_format_info(pixel_format);
>  	int cpp =3D info->cpp[0];
> -	int max_horizontal_pixels =3D 8192;
> -	int max_stride_bytes;
> -
> -	if (DISPLAY_VER(i915) >=3D 13) {
> -		/*
> -		 * The stride in bytes must not exceed of the size
> -		 * of 128K bytes. For pixel formats of 64bpp will allow
> -		 * for a 16K pixel surface.
> -		 */
> -		max_stride_bytes =3D 131072;
> -		if (cpp =3D=3D 8)
> -			max_horizontal_pixels =3D 16384;

The commit message doesn't mention anything about this being dropped.

BR,
Jani.

> -		else
> -			max_horizontal_pixels =3D 65536;
> -	} else {
> -		/*
> -		 * "The stride in bytes must not exceed the
> -		 * of the size of 8K pixels and 32K bytes."
> -		 */
> -		max_stride_bytes =3D 32768;
> -	}
>=20=20
>  	if (drm_rotation_90_or_270(rotation))
> -		return min(max_horizontal_pixels, max_stride_bytes / cpp);
> +		return min(max_pixels, max_bytes / cpp);
>  	else
> -		return min(max_horizontal_pixels * cpp, max_stride_bytes);
> +		return min(max_pixels * cpp, max_bytes);
>  }
>=20=20
> +static unsigned int
> +adl_plane_max_stride(struct intel_plane *plane,
> +		     u32 pixel_format, u64 modifier,
> +		     unsigned int rotation)
> +{
> +	unsigned int max_pixels =3D 65536; /* PLANE_OFFSET limit */
> +	unsigned int max_bytes =3D 128 * 1024;
> +
> +	return plane_max_stride(plane, pixel_format,
> +				modifier, rotation,
> +				max_pixels, max_bytes);
> +}
> +
> +static unsigned int
> +skl_plane_max_stride(struct intel_plane *plane,
> +		     u32 pixel_format, u64 modifier,
> +		     unsigned int rotation)
> +{
> +	unsigned int max_pixels =3D 8192; /* PLANE_OFFSET limit */
> +	unsigned int max_bytes =3D 32 * 1024;
> +
> +	return plane_max_stride(plane, pixel_format,
> +				modifier, rotation,
> +				max_pixels, max_bytes);
> +}
>=20=20
>  /* Preoffset values for YUV to RGB Conversion */
>  #define PREOFF_YUV_TO_RGB_HI		0x1800
> @@ -2357,7 +2362,11 @@ skl_universal_plane_create(struct drm_i915_private=
 *dev_priv,
>  		plane->min_cdclk =3D skl_plane_min_cdclk;
>  	}
>=20=20
> -	plane->max_stride =3D skl_plane_max_stride;
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		plane->max_stride =3D adl_plane_max_stride;
> +	else
> +		plane->max_stride =3D skl_plane_max_stride;
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		plane->update_noarm =3D icl_plane_update_noarm;
>  		plane->update_arm =3D icl_plane_update_arm;

--=20
Jani Nikula, Intel
