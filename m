Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F56D4E92EF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E2D10E0B4;
	Mon, 28 Mar 2022 11:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A84210E0B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465271; x=1680001271;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YoJjVDXEB4JIsjGiuC7h2GXfTW9vkQknvwbH44QOnz0=;
 b=UQYaSi34L3PEQ42TGATiQHwT9LaHttAqEdQ9iGXGpemGNvuawMNdQVEC
 CHxQ9/2dbhzRVMwySOpXWljTXUENMrQ8f3fqQ4rJt1CAoosx0kIi+Q+QX
 Gih+IlVwdZ1MU6E8BS10t4EFZDPO9xIm3/uuXlnrKjAL3ShQQmgi0U+kC
 iRZ6mkXn8J+vmsCZxOuxwIQK5Ib6PQGriPNnWtToKIB2rxnl40zMc3zyC
 M2vUQ68eu+g4JNDeuujxru8TVCX3qRbdAdhswt8CckOfcA0jFPwmeTYte
 CVK5rgBGtUr/LqIa6YXPodweptQapRKwTEd6pZoXIwvJ7f7tFKouU7XVj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="241122347"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="241122347"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:01:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563549307"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:01:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-5-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:01:00 +0300
Message-ID: <87sfr2fij7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: Adjust
 .crtc_compute_clock() calling convention
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

On Fri, 25 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pass the full atomic state+crtc rather than the redundant
> crtc+crtc_state pair. We already need the full atomic state
> in the hsw+ codepath anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 83 ++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll.h    |  4 +-
>  3 files changed, 53 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 57d9b065622f..bb1ababe4577 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5001,7 +5001,7 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
>=20=20
>  	if (mode_changed && crtc_state->hw.enable &&
>  	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> -		ret =3D intel_dpll_crtc_compute_clock(crtc_state);
> +		ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 1bd4a05dff7c..1c05ec167046 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -18,7 +18,8 @@
>  #include "vlv_sideband.h"
>=20=20
>  struct intel_dpll_funcs {
> -	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
> +	int (*crtc_compute_clock)(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  };
>=20=20
>  struct intel_limit {
> @@ -759,8 +760,8 @@ chv_find_best_dpll(const struct intel_limit *limit,
>  bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
>  			struct dpll *best_clock)
>  {
> -	int refclk =3D 100000;
>  	const struct intel_limit *limit =3D &intel_limits_bxt;
> +	int refclk =3D 100000;
>=20=20
>  	return chv_find_best_dpll(limit, crtc_state,
>  				  crtc_state->port_clock, refclk,
> @@ -927,12 +928,12 @@ static void i8xx_compute_dpll(struct intel_crtc_sta=
te *crtc_state,
>  	crtc_state->dpll_hw_state.dpll =3D dpll;
>  }
>=20=20
> -static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
>  	int ret;
> @@ -1070,12 +1071,12 @@ static void ilk_compute_dpll(struct intel_crtc_st=
ate *crtc_state,
>  	crtc_state->dpll_hw_state.dpll =3D dpll;
>  }
>=20=20
> -static int ilk_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 120000;
>  	int ret;
> @@ -1167,11 +1168,14 @@ void chv_compute_dpll(struct intel_crtc_state *cr=
tc_state)
>  		(crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
>  }
>=20=20
> -static int chv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int chv_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	int refclk =3D 100000;
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit =3D &intel_limits_chv;
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	int refclk =3D 100000;
>=20=20
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));
> @@ -1188,11 +1192,14 @@ static int chv_crtc_compute_clock(struct intel_cr=
tc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int vlv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	int refclk =3D 100000;
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit =3D &intel_limits_vlv;
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	int refclk =3D 100000;
>=20=20
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));
> @@ -1209,10 +1216,12 @@ static int vlv_crtc_compute_clock(struct intel_cr=
tc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int g4x_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> @@ -1255,10 +1264,12 @@ static int g4x_crtc_compute_clock(struct intel_cr=
tc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int pnv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> @@ -1292,10 +1303,12 @@ static int pnv_crtc_compute_clock(struct intel_cr=
tc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int i9xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> @@ -1329,10 +1342,12 @@ static int i9xx_crtc_compute_clock(struct intel_c=
rtc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int i8xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 48000;
>=20=20
> @@ -1400,12 +1415,12 @@ static const struct intel_dpll_funcs i8xx_dpll_fu=
ncs =3D {
>  	.crtc_compute_clock =3D i8xx_crtc_compute_clock,
>  };
>=20=20
> -int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state)
> +int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>=20=20
> -	return i915->dpll_funcs->crtc_compute_clock(crtc_state);
> +	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
>  }
>=20=20
>  void
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/=
i915/display/intel_dpll.h
> index 69b06a9e473e..e9731b2dd01c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -10,12 +10,14 @@
>=20=20
>  struct dpll;
>  struct drm_i915_private;
> +struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  enum pipe;
>=20=20
>  void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
> -int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state);
> +int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  int vlv_calc_dpll_params(int refclk, struct dpll *clock);
>  int pnv_calc_dpll_params(int refclk, struct dpll *clock);
>  int i9xx_calc_dpll_params(int refclk, struct dpll *clock);

--=20
Jani Nikula, Intel Open Source Graphics Center
