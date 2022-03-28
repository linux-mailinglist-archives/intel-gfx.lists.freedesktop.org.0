Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F39E4E9308
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C383C10E18D;
	Mon, 28 Mar 2022 11:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2CD10E234
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465852; x=1680001852;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=j6BKLCxks74QHXtnnIs/88niVfKb5sBlx0Onm3wc0pc=;
 b=csyV6RyoZzh1jAi+XW4Fas+QBJ8oybW3Zepc+SRkLdVOoY14SffOHA6g
 t85miF0YvXI+Nf4hxABORRls1Ae64Nk3UeCM3+gZ+ruWgv1U7E8SpWecd
 W6BzaoaywA28zAvfQtUP0VXsWzO8eV1SfwUouoRU8HpgbIjEa6uD2D7k1
 +Zz8Rlo20m65JBjRQHFTnIoQXtD62gxv6gP6xfq3LUgI+up2jm4s6tJRC
 m/P+KJpd9OC53vNco4DPH5PEQ/fe/B97JVqn5NLazdslbjN7HIKCg0zw5
 0VXFCMXw9vtgcTYu2wEj1kJPelg2bmVJ88yAc/B3Ho8ii+nyQ56FiizCj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="241124693"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="241124693"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:10:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563556606"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:10:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-10-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:10:41 +0300
Message-ID: <87ee2mfi32.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915: Add crtc
 .crtc_get_shared_dpll()
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
> Start splitting the .compute_crtc_clock() into two parts; one
> part does the computation, the second part does the shared dpll
> assignment. I want to move the actual computation part much earlier
> into the compute_config() phase.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 54 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dpll.h    |  2 +
>  3 files changed, 59 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7c68bc07c925..1b7bc764498c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5003,6 +5003,10 @@ static int intel_crtc_atomic_check(struct intel_at=
omic_state *state,
>  		ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  		if (ret)
>  			return ret;
> +
> +		ret =3D intel_dpll_crtc_get_shared_dpll(state, crtc);
> +		if (ret)
> +			return ret;
>  	}
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index bc59efe18e89..2ee7255f3c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -20,6 +20,8 @@
>  struct intel_dpll_funcs {
>  	int (*crtc_compute_clock)(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
> +	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc);
>  };
>=20=20
>  struct intel_limit {
> @@ -930,6 +932,12 @@ static void i8xx_compute_dpll(struct intel_crtc_stat=
e *crtc_state,
>=20=20
>  static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
> +{
> +	return 0;
> +}
> +
> +static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
> @@ -964,6 +972,12 @@ static int dg2_crtc_compute_clock(struct intel_atomi=
c_state *state,
>  	return intel_mpllb_calc_state(crtc_state, encoder);
>  }
>=20=20
> +static int dg2_crtc_get_shared_dpll(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	return 0;
> +}
> +

This seems superfluous at this time because
intel_dpll_crtc_get_shared_dpll() checks for NULL
.crtc_get_shared_dpll() and does exactly that.

Not a biggie.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
>  {
>  	return dpll->m < factor * dpll->n;
> @@ -1087,7 +1101,6 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 120000;
> -	int ret;
>=20=20
>  	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
>  	if (!crtc_state->has_pch_encoder)
> @@ -1127,6 +1140,21 @@ static int ilk_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>=20=20
> +	return 0;
> +}
> +
> +static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	int ret;
> +
> +	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
> +	if (!crtc_state->has_pch_encoder)
> +		return 0;
> +
>  	ret =3D intel_reserve_shared_dplls(state, crtc, NULL);
>  	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1372,14 +1400,17 @@ static int i8xx_crtc_compute_clock(struct intel_a=
tomic_state *state,
>=20=20
>  static const struct intel_dpll_funcs dg2_dpll_funcs =3D {
>  	.crtc_compute_clock =3D dg2_crtc_compute_clock,
> +	.crtc_get_shared_dpll =3D dg2_crtc_get_shared_dpll,
>  };
>=20=20
>  static const struct intel_dpll_funcs hsw_dpll_funcs =3D {
>  	.crtc_compute_clock =3D hsw_crtc_compute_clock,
> +	.crtc_get_shared_dpll =3D hsw_crtc_get_shared_dpll,
>  };
>=20=20
>  static const struct intel_dpll_funcs ilk_dpll_funcs =3D {
>  	.crtc_compute_clock =3D ilk_crtc_compute_clock,
> +	.crtc_get_shared_dpll =3D ilk_crtc_get_shared_dpll,
>  };
>=20=20
>  static const struct intel_dpll_funcs chv_dpll_funcs =3D {
> @@ -1427,6 +1458,27 @@ int intel_dpll_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
>  }
>=20=20
> +int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
> +
> +	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
> +		return 0;
> +
> +	if (!crtc_state->hw.enable)
> +		return 0;
> +
> +	if (!i915->dpll_funcs->crtc_get_shared_dpll)
> +		return 0;
> +
> +	return i915->dpll_funcs->crtc_get_shared_dpll(state, crtc);
> +}
> +
>  void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/=
i915/display/intel_dpll.h
> index e9731b2dd01c..bbc30542f29f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -18,6 +18,8 @@ enum pipe;
>  void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
>  int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
> +int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc);
>  int vlv_calc_dpll_params(int refclk, struct dpll *clock);
>  int pnv_calc_dpll_params(int refclk, struct dpll *clock);
>  int i9xx_calc_dpll_params(int refclk, struct dpll *clock);

--=20
Jani Nikula, Intel Open Source Graphics Center
