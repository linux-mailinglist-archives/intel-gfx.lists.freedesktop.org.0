Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5192C74973D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D38510E469;
	Thu,  6 Jul 2023 08:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6013810E07B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688631439; x=1720167439;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=R/ID1v1UtkLuO596LAK7jieKMdv1dv5c0V8MD28rdqg=;
 b=aNGPrfaJmhWm3Yq6TxIO3CLJwyIgSG4NkenutlR7cqIhD/Vfy2IjWWu4
 hf650K59YTaPmG7ovKY41Cl6M8xbDR7TFD/J8X4r2GjAsShTsppbPbCit
 B8GoQ06IU+JWnSRIJpqmvAztr5AAlCsgskWACsbzlAHpcOjV6U2oob8n7
 pH0m307sJ6OjihNNlOq0iz96HWBJgSUL0JXtXSWtdzGnSG/nbARxYhJ1l
 xm3nfAexSIFoSwYAjYHU+qtMFKeWodOBXzcgVUr5KnS/AG1xp57w+qtfW
 53m0ozrvLc81a4ZWD9tFv1KS+NuhFXTgzbSnDTdlOpCG+4wBMRuIbCnGC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="427219628"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="427219628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="784841956"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="784841956"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:17:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-5-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:17:14 +0300
Message-ID: <87cz15zc6t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: Don't warn about zero N/P
 in *_calc_dpll_params()
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Allow *_calc_dpll_params() to be called even if the N/P dividers
> are zero without warning. We'll want to call these to make sure the
> derived values are fully computed, but not all users (VLV DSI in
> particular) don't even enable the DPLL and thus the dividers will
> be left at zero.
>
> It could also be possible that the BIOS has misprogrammed the DPLL
> (IIRC happened with some SNB machines with 4k+ displays) and thus
> we'll currently generate a lot of dmesg spew. Better be silent and
> just let the normal state checker/etc. deal with any driver bugs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 37 ++++++++++++-----------
>  1 file changed, 20 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 999badfe2906..71bfeea4cef2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -314,10 +314,11 @@ int pnv_calc_dpll_params(int refclk, struct dpll *c=
lock)
>  {
>  	clock->m =3D clock->m2 + 2;
>  	clock->p =3D clock->p1 * clock->p2;
> -	if (WARN_ON(clock->n =3D=3D 0 || clock->p =3D=3D 0))
> -		return 0;
> -	clock->vco =3D DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
> -	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
> +
> +	clock->vco =3D clock->n =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
> +	clock->dot =3D clock->p =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
>  	return clock->dot;
>  }
> @@ -331,10 +332,11 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *=
clock)
>  {
>  	clock->m =3D i9xx_dpll_compute_m(clock);
>  	clock->p =3D clock->p1 * clock->p2;
> -	if (WARN_ON(clock->n + 2 =3D=3D 0 || clock->p =3D=3D 0))
> -		return 0;
> -	clock->vco =3D DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
> -	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
> +
> +	clock->vco =3D clock->n + 2 =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
> +	clock->dot =3D clock->p =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
>  	return clock->dot;
>  }
> @@ -343,10 +345,11 @@ int vlv_calc_dpll_params(int refclk, struct dpll *c=
lock)
>  {
>  	clock->m =3D clock->m1 * clock->m2;
>  	clock->p =3D clock->p1 * clock->p2 * 5;
> -	if (WARN_ON(clock->n =3D=3D 0 || clock->p =3D=3D 0))
> -		return 0;
> -	clock->vco =3D DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
> -	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
> +
> +	clock->vco =3D clock->n =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
> +	clock->dot =3D clock->p =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
>  	return clock->dot;
>  }
> @@ -355,11 +358,11 @@ int chv_calc_dpll_params(int refclk, struct dpll *c=
lock)
>  {
>  	clock->m =3D clock->m1 * clock->m2;
>  	clock->p =3D clock->p1 * clock->p2 * 5;
> -	if (WARN_ON(clock->n =3D=3D 0 || clock->p =3D=3D 0))
> -		return 0;
> -	clock->vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
> -					   clock->n << 22);
> -	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
> +
> +	clock->vco =3D clock->n =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m), clock->n << 22);
> +	clock->dot =3D clock->p =3D=3D 0 ? 0 :
> +		DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
>  	return clock->dot;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
