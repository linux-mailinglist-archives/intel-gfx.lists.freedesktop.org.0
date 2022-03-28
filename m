Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2E4E92F9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CC910E28D;
	Mon, 28 Mar 2022 11:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC30110E4A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465543; x=1680001543;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EmLaiB4ANlRal/KFHisqTn3onteSaCdCojP7qTfHqPE=;
 b=NfLkhPfwALbxfUidCL/IM5/wPf1DjNHHudZGyQdLBJqhfErL/OjAH4pv
 xctyI6MHn3CHbzg1g3BA2FQPT7cKkS5IVPiHU++jngWc5/j5GCHymrH/L
 TyeROjHlVq+z4BZdRL1HI2CucdNlwUiKWCuUGZp1PG8H7K6pqgqa+GCm3
 cVnE0MjE6ZSiCGz2ljigQPiK9oo+d7PZtPVjRF8CBd2o9W3g0vM5qRnwo
 2BmteOmz/vE/xLaVXw9qH/S/Y80gxmJv4U9OhEFydBfNTnktOBmwT4Z+X
 c9UeljknWQRV21ugJeDB4Faw2hr5esIY9IH79tWTjmVKZi/i2hqHQUq85 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="246459176"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="246459176"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:05:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="545915752"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:05:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-7-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:05:32 +0300
Message-ID: <87mthafibn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Move the dpll_hw_state
 clearing to intel_dpll_crtc_compute_clock()
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
> All .crtc_compute_clock() implementations do the same memset() to
> clear the dpll_hw_state (since we preserve it across
> intel_crtc_prepare_cleared_state()). Move the memset() to the common
> wrapper.
>
> Also clear it when we're about disable the pipe. Previously
> it looks like we just left the old junk in there.

Looks like you split this part to a separate patch. Which is good. Apart
from the stale commit message. ;)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 24 +++----------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 15 ------------
>  2 files changed, 3 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 88d78a585304..494a343850e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1081,9 +1081,6 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	int refclk =3D 120000;
>  	int ret;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
>  	if (!crtc_state->has_pch_encoder)
>  		return 0;
> @@ -1177,9 +1174,6 @@ static int chv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	const struct intel_limit *limit =3D &intel_limits_chv;
>  	int refclk =3D 100000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (!crtc_state->clock_set &&
>  	    !chv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
>  				refclk, NULL, &crtc_state->dpll)) {
> @@ -1201,9 +1195,6 @@ static int vlv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	const struct intel_limit *limit =3D &intel_limits_vlv;
>  	int refclk =3D 100000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (!crtc_state->clock_set &&
>  	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
>  				refclk, NULL, &crtc_state->dpll)) {
> @@ -1225,9 +1216,6 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
>  		if (intel_panel_use_ssc(dev_priv)) {
>  			refclk =3D dev_priv->vbt.lvds_ssc_freq;
> @@ -1273,9 +1261,6 @@ static int pnv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
>  		if (intel_panel_use_ssc(dev_priv)) {
>  			refclk =3D dev_priv->vbt.lvds_ssc_freq;
> @@ -1312,9 +1297,6 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	const struct intel_limit *limit;
>  	int refclk =3D 96000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
>  		if (intel_panel_use_ssc(dev_priv)) {
>  			refclk =3D dev_priv->vbt.lvds_ssc_freq;
> @@ -1351,9 +1333,6 @@ static int i8xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	const struct intel_limit *limit;
>  	int refclk =3D 48000;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
>  		if (intel_panel_use_ssc(dev_priv)) {
>  			refclk =3D dev_priv->vbt.lvds_ssc_freq;
> @@ -1430,6 +1409,9 @@ int intel_dpll_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	if (!crtc_state->hw.enable)
>  		return 0;
>=20=20
> +	memset(&crtc_state->dpll_hw_state, 0,
> +	       sizeof(crtc_state->dpll_hw_state));
> +
>  	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index dc3c889b0aa6..22f55574a35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -1068,9 +1068,6 @@ static int hsw_get_dpll(struct intel_atomic_state *=
state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_shared_dpll *pll =3D NULL;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		pll =3D hsw_ddi_wrpll_get_dpll(state, crtc);
>  	else if (intel_crtc_has_dp_encoder(crtc_state))
> @@ -1595,9 +1592,6 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_c=
rtc_state *crtc_state)
>  		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
>  		wrpll_params.central_freq;
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
>  	crtc_state->dpll_hw_state.cfgcr1 =3D cfgcr1;
>  	crtc_state->dpll_hw_state.cfgcr2 =3D cfgcr2;
> @@ -1708,9 +1702,6 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_stat=
e *crtc_state)
>  		break;
>  	}
>=20=20
> -	memset(&crtc_state->dpll_hw_state, 0,
> -	       sizeof(crtc_state->dpll_hw_state));
> -
>  	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
>=20=20
>  	return 0;
> @@ -2139,8 +2130,6 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_c=
rtc_state *crtc_state,
>  	u32 prop_coef, int_coef, gain_ctl, targ_cnt;
>  	u32 lanestagger;
>=20=20
> -	memset(dpll_hw_state, 0, sizeof(*dpll_hw_state));
> -
>  	if (vco >=3D 6200000 && vco <=3D 6700000) {
>  		prop_coef =3D 4;
>  		int_coef =3D 9;
> @@ -2701,8 +2690,6 @@ static void icl_calc_dpll_state(struct drm_i915_pri=
vate *i915,
>  {
>  	u32 dco_fraction =3D pll_params->dco_fraction;
>=20=20
> -	memset(pll_state, 0, sizeof(*pll_state));
> -
>  	if (ehl_combo_pll_div_frac_wa_needed(i915))
>  		dco_fraction =3D DIV_ROUND_CLOSEST(dco_fraction, 2);
>=20=20
> @@ -2820,8 +2807,6 @@ static int icl_calc_mg_pll_state(struct intel_crtc_=
state *crtc_state,
>  	bool is_dkl =3D DISPLAY_VER(dev_priv) >=3D 12;
>  	int ret;
>=20=20
> -	memset(pll_state, 0, sizeof(*pll_state));
> -
>  	ret =3D icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
>  				       pll_state, is_dkl);
>  	if (ret) {

--=20
Jani Nikula, Intel Open Source Graphics Center
