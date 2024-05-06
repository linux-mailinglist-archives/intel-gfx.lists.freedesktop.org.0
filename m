Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C21C8BCF86
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 15:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF9210E21B;
	Mon,  6 May 2024 13:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TT2ebx5k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCCD10E21B;
 Mon,  6 May 2024 13:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715003873; x=1746539873;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=L8q0K/urtfe2d0amxbA2d8K4Z2i5k0Ttu10BUByETXU=;
 b=TT2ebx5kcX69ccdJxPwTmOr7ePtrPiuELafTk0b7seRvxJwf8hiaf3pw
 gmBTC4wZQawMC3jOTpe+nlzuzl2kN46pIVsXloZ/HGVkOsBdlZLpHv8JH
 5txJwl6DaTp48S1GNThGEeoldTAcKurU8TT6yg0OikTw9VWVpNbBAONCs
 hwME9UV4ramvTg2Cv6FBeY/uMNutwQKmsOkCuwTfvBLBZfd48i38YN8Ty
 F18Lo/fH92/ow+Oah9pEW07SyUEibd1jImhBOT08JIqjxz0eEgNhM8XDZ
 64l6N2z3h9ftT4zZCtHeUO1eo51uG6kY8v+fzcoOb2vI/jve/sVM18cre Q==;
X-CSE-ConnectionGUID: sxjQWtShSvuy5qH0YT6R5Q==
X-CSE-MsgGUID: RsS+/kTgQwq7N1CGn3Ew7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10581256"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10581256"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 06:57:52 -0700
X-CSE-ConnectionGUID: B44mz14BT66q3cJhgrRq5A==
X-CSE-MsgGUID: SbPkwNpfQ2abJ8gSgRwKhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28258679"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 06:57:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/9] drm/i915: Split gen2 vs. gen3 .max_stride()
In-Reply-To: <20240506125718.26001-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-2-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 16:57:47 +0300
Message-ID: <877cg7m49w.fsf@intel.com>
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
> Plane .max_stride() is alreayd a vfunc so having one made

*already

> up of two branches based on the display version is silly.
> Split i9xx_plane_max_stride() into gen2 vs. gen3 variants
> so  that we get rid of said check.

-' '

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c | 32 +++++++++++++----------
>  1 file changed, 18 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 3442264443e5..21303fa4f08f 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -741,23 +741,25 @@ i965_plane_max_stride(struct intel_plane *plane,
>  }
>=20=20
>  static unsigned int
> -i9xx_plane_max_stride(struct intel_plane *plane,
> +i915_plane_max_stride(struct intel_plane *plane,
>  		      u32 pixel_format, u64 modifier,
>  		      unsigned int rotation)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> +		return 8 * 1024;
> +	else
> +		return 16 * 1024;
> +}
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 3) {
> -		if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> -			return 8*1024;
> -		else
> -			return 16*1024;
> -	} else {
> -		if (plane->i9xx_plane =3D=3D PLANE_C)
> -			return 4*1024;
> -		else
> -			return 8*1024;
> -	}
> +static unsigned int
> +i8xx_plane_max_stride(struct intel_plane *plane,
> +		      u32 pixel_format, u64 modifier,
> +		      unsigned int rotation)
> +{
> +	if (plane->i9xx_plane =3D=3D PLANE_C)
> +		return 4 * 1024;
> +	else
> +		return 8 * 1024;
>  }
>=20=20
>  static const struct drm_plane_funcs i965_plane_funcs =3D {
> @@ -854,8 +856,10 @@ intel_primary_plane_create(struct drm_i915_private *=
dev_priv, enum pipe pipe)
>  	if (HAS_GMCH(dev_priv)) {
>  		if (DISPLAY_VER(dev_priv) >=3D 4)
>  			plane->max_stride =3D i965_plane_max_stride;
> +		else if (DISPLAY_VER(dev_priv) =3D=3D 3)
> +			plane->max_stride =3D i915_plane_max_stride;
>  		else
> -			plane->max_stride =3D i9xx_plane_max_stride;
> +			plane->max_stride =3D i8xx_plane_max_stride;
>  	} else {
>  		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>  			plane->max_stride =3D hsw_primary_max_stride;

--=20
Jani Nikula, Intel
