Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CAC1C7192
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 15:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34A889C80;
	Wed,  6 May 2020 13:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A4989C80
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 13:21:39 +0000 (UTC)
IronPort-SDR: pQx/NCC7ItBL+yq4G9aeoLROmWXZ5UkTYTRXA7/l9NShGxJzt+PKKgOW3QiKcmF6HD0HxR0Iga
 o/gp8SFcs3pw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:21:38 -0700
IronPort-SDR: 2GKDqsfbsQ4ybRp8EUYgOeZ1Rm6XohH4BcCy0qj6oGJ9CuUmSeKS7JQN9XSeK09EUr/xUluc0S
 n5O4TmwkuHdg==
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="407241364"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:21:37 -0700
Date: Wed, 6 May 2020 16:17:20 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200506131720.GA16576@intel.com>
References: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix glk watermark calculations
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

On Thu, Apr 30, 2020 at 03:58:21PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> GLK wants the +1 adjustement for the "blocks per line" value
> for x-tile/y-tile, just like cnl+.
> =

> Also the x-tile and linear cases are almost identical. The only
> difference is this +1 which is always done for glk+, and only
> done for linear on skl/bxt. Let's unify it to a single branch
> with a special case for the +1, just like we do for y-tile.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index bfb180fe8047..65a3236ce277 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4810,7 +4810,7 @@ skl_wm_method1(const struct drm_i915_private *dev_p=
riv, u32 pixel_rate,
>  	wm_intermediate_val =3D latency * pixel_rate * cpp;
>  	ret =3D div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 10)
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
>  		ret =3D add_fixed16_u32(ret, 1);
>  =

>  	return ret;
> @@ -4945,18 +4945,19 @@ skl_compute_wm_params(const struct intel_crtc_sta=
te *crtc_state,
>  					   wp->y_min_scanlines,
>  					   wp->dbuf_block_size);
>  =

> -		if (INTEL_GEN(dev_priv) >=3D 10)
> +		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
>  			interm_pbpl++;
>  =

>  		wp->plane_blocks_per_line =3D div_fixed16(interm_pbpl,
>  							wp->y_min_scanlines);
> -	} else if (wp->x_tiled && IS_GEN(dev_priv, 9)) {
> -		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> -					   wp->dbuf_block_size);
> -		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
>  	} else {
>  		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> -					   wp->dbuf_block_size) + 1;
> +					   wp->dbuf_block_size);
> +
> +		if (!wp->x_tiled ||
> +		    INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +			interm_pbpl++;
> +

Is it so that we want +1 here only for x-tile,y-tile for GLK?
Because I guess if you have linear mapping and GLK, this will do +1 as well.

With this clarified,

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
>  	}
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
