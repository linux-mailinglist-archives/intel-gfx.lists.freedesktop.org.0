Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1063274979E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7121110E484;
	Thu,  6 Jul 2023 08:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32ED10E484
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632884; x=1720168884;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aCm74Foo6pokmrVTe0FC6VCO1JEyp9sQfNaTNqRAWk4=;
 b=BpOjwsHq6E+m4tpo1hiVw3tFrU+33pehF6S8hBdWD3aVJppoHY3TsJZq
 A/UkE/0uwWeRlM27kuBPBi3tVAM8hQVxkvQQ8coYZ/rQS+OmPw+YgbgwK
 bUOtLWh9s5izRY9o2nHKSZI0IVseVhyUj/LNXlaHMdYqRtc0Mir7IZ6OH
 Nu7t9K2uIEM2sRL/rK9ZU+2pbTHRi//2i13wRybvXMzgpwkgAcyUbm4C0
 MPi7+9wuGMLJvUWWw4NsDiwM4/Q6pSZi/BnUj3huZNmPJwdLKGREcubVq
 XSlqLTDea/h8Tiz9534mrQeisw7xfASqihlmakESOWVqy42m94A/ZHGaj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366118503"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366118503"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:41:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="749063834"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="749063834"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:41:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-6-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:41:18 +0300
Message-ID: <87mt09xwi9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Fully populate
 crtc_state->dpll
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
> Call *_calc_dpll_params() even in cases where the encoder has
> computed the DPLL params for us.
>
> The SDVO TV output code doesn't populate crtc_state->dpll.dot
> leading to the dotclock getting calculated as zero, and that
> leads to all kinds of real problems. The g4x DP code also
> doesn't populate the derived dividers nor .vco, which could
> also create some confusion.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

It's entirely possible there are corner cases I missed, but overall
makes sense.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 71bfeea4cef2..2255ad651486 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1182,6 +1182,8 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  				refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>=20=20
> @@ -1256,6 +1258,8 @@ static int chv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  				refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	chv_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	chv_compute_dpll(crtc_state);
>=20=20
>  	/* FIXME this is a mess */
> @@ -1278,9 +1282,10 @@ static int vlv_crtc_compute_clock(struct intel_ato=
mic_state *state,
>=20=20
>  	if (!crtc_state->clock_set &&
>  	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
> -				refclk, NULL, &crtc_state->dpll)) {
> +				refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
> -	}
> +
> +	vlv_calc_dpll_params(refclk, &crtc_state->dpll);
>=20=20
>  	vlv_compute_dpll(crtc_state);
>=20=20
> @@ -1330,6 +1335,8 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  				refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> @@ -1368,6 +1375,8 @@ static int pnv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  				refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	pnv_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> @@ -1404,6 +1413,8 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  				 refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> @@ -1444,6 +1455,8 @@ static int i8xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  				 refclk, NULL, &crtc_state->dpll))
>  		return -EINVAL;
>=20=20
> +	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
> +
>  	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);

--=20
Jani Nikula, Intel Open Source Graphics Center
