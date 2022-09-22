Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F07F5E677C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DDF10EC31;
	Thu, 22 Sep 2022 15:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE2610EC31
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861609; x=1695397609;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yQ+ws83keZBhLJ8oBWVfaHrXW1PWXafHwXkwnydvhPM=;
 b=YDcfHLj/3Ze5pDRRdcnSaw1I0YXcuS+Fq3UzC2afw7kq+TUptKuAgyPD
 cdZW8upq0tQpDmM4wobX1BUEUuZOfO9ZCB0GIsBRsAXaBVGO97ZV3U4w5
 892Vpf8gyuaNWGGkN0e89iCQLzDp/2916SChN9D7rP8nSObbcToutI8V1
 Q2RudhoOuPNaPf2JyPlr2G/3bREUlZDFPpCg0lXxepRDBH7nDt41JAD2i
 +CKiYe50WuA4BD3zqM//qxVQrF1gDrf8ltCjw0ESe/WIWuJij2XhMbJyG
 gvKYKIs3YlCxGfJsvUApyTexNnNDjECV+Gwrr99QtNdJH45w5F+01MuR0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="283389656"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="283389656"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:46:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="864905223"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:46:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921122343.13061-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-4-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 18:46:30 +0300
Message-ID: <878rmb5s4p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Stop requiring PLL index ==
 PLL ID
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

On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There's no good reason to keep around this PLL index =3D=3D PLL ID
> footgun. Get rid of it.
>
> Both i915->shared_dplls[] and state->shared_dpll[] are indexed
> by the same thing now, which is just the index we get at
> initialization from dpll_mgr->dpll_info[]. The rest is all about
> PLL IDs now.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 64 +++++++++++++------
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  5 +-
>  2 files changed, 47 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index f900c4c73cc6..fb09029cc4aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -110,7 +110,7 @@ static void
>  intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
>  				  struct intel_shared_dpll_state *shared_dpll)
>  {
> -	enum intel_dpll_id i;
> +	int i;
>=20=20
>  	/* Copy shared dpll state */
>  	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> @@ -137,6 +137,13 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic=
_state *s)
>  	return state->shared_dpll;
>  }
>=20=20
> +static int
> +intel_shared_dpll_idx(struct drm_i915_private *i915,
> +		      const struct intel_shared_dpll *pll)
> +{
> +	return pll - &i915->display.dpll.shared_dplls[0];
> +}

I liked getting rid of this magic in the previous patch, and would not
like to have it brought back!

I'm thinking

static int
intel_shared_dpll_idx(struct drm_i915_private *i915, enum intel_dpll_id id)

which would loop over shared_dplls[] and return the index, similar to
the function below. Feels more robust.

Otherwise LGTM.


BR,
Jani.


> +
>  /**
>   * intel_get_shared_dpll_by_id - get a DPLL given its id
>   * @dev_priv: i915 device instance
> @@ -149,7 +156,17 @@ struct intel_shared_dpll *
>  intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
>  			    enum intel_dpll_id id)
>  {
> -	return &dev_priv->display.dpll.shared_dplls[id];
> +	int i;
> +
> +	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> +		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> +
> +		if (pll->info->id =3D=3D id)
> +			return pll;
> +	}
> +
> +	MISSING_CASE(id);
> +	return NULL;
>  }
>=20=20
>  /* For ILK+ */
> @@ -305,16 +322,23 @@ intel_find_shared_dpll(struct intel_atomic_state *s=
tate,
>  		       unsigned long dpll_mask)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_shared_dpll *pll, *unused_pll =3D NULL;
>  	struct intel_shared_dpll_state *shared_dpll;
> -	enum intel_dpll_id i;
> +	struct intel_shared_dpll *unused_pll =3D NULL;
> +	enum intel_dpll_id id;
>=20=20
>  	shared_dpll =3D intel_atomic_get_shared_dpll_state(&state->base);
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
>=20=20
> -	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
> -		pll =3D &dev_priv->display.dpll.shared_dplls[i];
> +	for_each_set_bit(id, &dpll_mask, I915_NUM_PLLS) {
> +		struct intel_shared_dpll *pll;
> +		int i;
> +
> +		pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +		if (!pll)
> +			continue;
> +
> +		i =3D intel_shared_dpll_idx(dev_priv, pll);
>=20=20
>  		/* Only want to check enabled timings first */
>  		if (shared_dpll[i].pipe_mask =3D=3D 0) {
> @@ -355,27 +379,29 @@ intel_reference_shared_dpll(struct intel_atomic_sta=
te *state,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_shared_dpll_state *shared_dpll;
> -	const enum intel_dpll_id id =3D pll->info->id;
> +	int i =3D intel_shared_dpll_idx(i915, pll);
>=20=20
>  	shared_dpll =3D intel_atomic_get_shared_dpll_state(&state->base);
>=20=20
> -	if (shared_dpll[id].pipe_mask =3D=3D 0)
> -		shared_dpll[id].hw_state =3D *pll_state;
> +	if (shared_dpll[i].pipe_mask =3D=3D 0)
> +		shared_dpll[i].hw_state =3D *pll_state;
>=20=20
>  	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
>  		pipe_name(crtc->pipe));
>=20=20
> -	shared_dpll[id].pipe_mask |=3D BIT(crtc->pipe);
> +	shared_dpll[i].pipe_mask |=3D BIT(crtc->pipe);
>  }
>=20=20
>  static void intel_unreference_shared_dpll(struct intel_atomic_state *sta=
te,
>  					  const struct intel_crtc *crtc,
>  					  const struct intel_shared_dpll *pll)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_shared_dpll_state *shared_dpll;
> +	int i =3D intel_shared_dpll_idx(i915, pll);
>=20=20
>  	shared_dpll =3D intel_atomic_get_shared_dpll_state(&state->base);
> -	shared_dpll[pll->info->id].pipe_mask &=3D ~BIT(crtc->pipe);
> +	shared_dpll[i].pipe_mask &=3D ~BIT(crtc->pipe);
>  }
>=20=20
>  static void intel_put_dpll(struct intel_atomic_state *state,
> @@ -409,14 +435,13 @@ void intel_shared_dpll_swap_state(struct intel_atom=
ic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_shared_dpll_state *shared_dpll =3D state->shared_dpll;
> -	enum intel_dpll_id i;
> +	int i;
>=20=20
>  	if (!state->dpll_set)
>  		return;
>=20=20
>  	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D
> -			&dev_priv->display.dpll.shared_dplls[i];
> +		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
>=20=20
>  		swap(pll->state, shared_dpll[i]);
>  	}
> @@ -510,12 +535,12 @@ static int ibx_get_dpll(struct intel_atomic_state *=
state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id i;
> +	enum intel_dpll_id id;
>=20=20
>  	if (HAS_PCH_IBX(dev_priv)) {
>  		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
> -		i =3D (enum intel_dpll_id) crtc->pipe;
> -		pll =3D &dev_priv->display.dpll.shared_dplls[i];
> +		id =3D (enum intel_dpll_id) crtc->pipe;
> +		pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CRTC:%d:%s] using pre-allocated %s\n",
> @@ -4199,10 +4224,8 @@ void intel_shared_dpll_init(struct drm_i915_privat=
e *dev_priv)
>  	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
>  		dpll_mgr =3D &pch_pll_mgr;
>=20=20
> -	if (!dpll_mgr) {
> -		dev_priv->display.dpll.num_shared_dpll =3D 0;
> +	if (!dpll_mgr)
>  		return;
> -	}
>=20=20
>  	dpll_info =3D dpll_mgr->dpll_info;
>=20=20
> @@ -4211,7 +4234,6 @@ void intel_shared_dpll_init(struct drm_i915_private=
 *dev_priv)
>  				i >=3D ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
>  			break;
>=20=20
> -		drm_WARN_ON(&dev_priv->drm, i !=3D dpll_info[i].id);
>  		dev_priv->display.dpll.shared_dplls[i].info =3D &dpll_info[i];
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index a66097cdc1e0..4db4b8d57e21 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -533,7 +533,10 @@ static void ilk_init_pch_refclk(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  	/* Check if any DPLLs are using the SSC source */
>  	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		u32 temp =3D intel_de_read(dev_priv, PCH_DPLL(i));
> +		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> +		u32 temp;
> +
> +		temp =3D intel_de_read(dev_priv, PCH_DPLL(pll->info->id));
>=20=20
>  		if (!(temp & DPLL_VCO_ENABLE))
>  			continue;

--=20
Jani Nikula, Intel Open Source Graphics Center
