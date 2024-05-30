Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B90E8D4C1A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 14:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6320610EB72;
	Thu, 30 May 2024 12:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsgT0SoU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCA110EB72
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 12:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717073691; x=1748609691;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Jrfo5bmMIP+kX6BZ3AEPjt9asjUvn2SuayMQ4zkbdF0=;
 b=FsgT0SoU8t0kFY8AP5kxR6xQnGjwpHO1SJHRKyv/OIseV+D7rMefG+4D
 K6n2Sz1NAsCFci7MqL+6wUcHl6o5/19Y8nZMCFZufgU11wsV+A4Mfhl3p
 +DnC/s2RAjnGCucvVHnM7OBwS+V20roU/PfCuNXJo40GuXJ2WhcY3XG6u
 I1MLHQObgLSOnF3/iTVlmSgOYDPKtcDvxAYKk9ezyoaeLNubidxLHfVje
 giFQq0acpcCbqtOMutvSAtPVYbT5I1cjHxpWkfwismHu3pO1xSn50G3jF
 /XgxmOUhuY7TLNcKM4a/yQTfGgQIIzvQMrOo0gsl9Y1U2La4t0a/Kg7Jn Q==;
X-CSE-ConnectionGUID: 1my2Rnv2TeupuhgvClgePg==
X-CSE-MsgGUID: vU2ts0VBS9CY13jbrOmSiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31076377"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="31076377"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 05:54:46 -0700
X-CSE-ConnectionGUID: g3CTrTSgQ9yfextZwgSuWg==
X-CSE-MsgGUID: s6gUeyE+TKW31XJeSt4siw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="35881440"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 05:54:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/cdclk: Plumb the full atomic state deeper
In-Reply-To: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
Date: Thu, 30 May 2024 15:54:42 +0300
Message-ID: <87y17rh33h.fsf@intel.com>
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Various parts of the cdclk code need access the full atomic
> state. Currently it's being dug out via the cdclk_state->base.state
> pointer, which is not great as that pointer isn't always valid.
> Instead plumb the full atomic state from the top so that it's
> clear that it is in fact valid.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 60 +++++++++++++---------
>  1 file changed, 35 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index b78154c82a71..7ef8dcb1601a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -113,7 +113,7 @@ struct intel_cdclk_funcs {
>  	void (*set_cdclk)(struct drm_i915_private *i915,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe);
> -	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
> +	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
>  };
>=20=20
> @@ -130,10 +130,11 @@ static void intel_cdclk_set_cdclk(struct drm_i915_p=
rivate *dev_priv,
>  	dev_priv->display.funcs.cdclk->set_cdclk(dev_priv, cdclk_config, pipe);
>  }
>=20=20
> -static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_p=
riv,
> -					  struct intel_cdclk_state *cdclk_config)
> +static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *sta=
te)
>  {
> -	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(cdclk_config);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +
> +	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(state);

The dev_priv is an eyesore. Could already start doing:

	const struct intel_display *display =3D to_intel_display(state->base.dev);

	return display->funcs.cdclk->modeset_calc_cdclk(state);

And if you wanted to, could also make to_intel_display() handle struct
intel_atomic_state so it would only need to_intel_display(state).

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>  }
>=20=20
>  static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_pr=
iv,
> @@ -2834,10 +2835,11 @@ int intel_crtc_compute_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  	return min_cdclk;
>  }
>=20=20
> -static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> +static int intel_compute_min_cdclk(struct intel_atomic_state *state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	const struct intel_bw_state *bw_state;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
> @@ -2916,10 +2918,11 @@ static int intel_compute_min_cdclk(struct intel_c=
dclk_state *cdclk_state)
>   * future platforms this code will need to be
>   * adjusted.
>   */
> -static int bxt_compute_min_voltage_level(struct intel_cdclk_state *cdclk=
_state)
> +static int bxt_compute_min_voltage_level(struct intel_atomic_state *stat=
e)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	u8 min_voltage_level;
> @@ -2952,13 +2955,14 @@ static int bxt_compute_min_voltage_level(struct i=
ntel_cdclk_state *cdclk_state)
>  	return min_voltage_level;
>  }
>=20=20
> -static int vlv_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
> +static int vlv_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	int min_cdclk, cdclk;
>=20=20
> -	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> +	min_cdclk =3D intel_compute_min_cdclk(state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>=20=20
> @@ -2981,11 +2985,13 @@ static int vlv_modeset_calc_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	return 0;
>  }
>=20=20
> -static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
> +static int bdw_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	int min_cdclk, cdclk;
>=20=20
> -	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> +	min_cdclk =3D intel_compute_min_cdclk(state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>=20=20
> @@ -3008,10 +3014,11 @@ static int bdw_modeset_calc_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	return 0;
>  }
>=20=20
> -static int skl_dpll0_vco(struct intel_cdclk_state *cdclk_state)
> +static int skl_dpll0_vco(struct intel_atomic_state *state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	int vco, i;
> @@ -3045,15 +3052,17 @@ static int skl_dpll0_vco(struct intel_cdclk_state=
 *cdclk_state)
>  	return vco;
>  }
>=20=20
> -static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
> +static int skl_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	int min_cdclk, cdclk, vco;
>=20=20
> -	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> +	min_cdclk =3D intel_compute_min_cdclk(state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>=20=20
> -	vco =3D skl_dpll0_vco(cdclk_state);
> +	vco =3D skl_dpll0_vco(state);
>=20=20
>  	cdclk =3D skl_calc_cdclk(min_cdclk, vco);
>=20=20
> @@ -3076,17 +3085,18 @@ static int skl_modeset_calc_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	return 0;
>  }
>=20=20
> -static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
> +static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	int min_cdclk, min_voltage_level, cdclk, vco;
>=20=20
> -	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> +	min_cdclk =3D intel_compute_min_cdclk(state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>=20=20
> -	min_voltage_level =3D bxt_compute_min_voltage_level(cdclk_state);
> +	min_voltage_level =3D bxt_compute_min_voltage_level(state);
>  	if (min_voltage_level < 0)
>  		return min_voltage_level;
>=20=20
> @@ -3114,7 +3124,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  	return 0;
>  }
>=20=20
> -static int fixed_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_stat=
e)
> +static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
>  	int min_cdclk;
>=20=20
> @@ -3123,7 +3133,7 @@ static int fixed_modeset_calc_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	 * check that the required minimum frequency doesn't exceed
>  	 * the actual cdclk frequency.
>  	 */
> -	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> +	min_cdclk =3D intel_compute_min_cdclk(state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>=20=20
> @@ -3263,7 +3273,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  	new_cdclk_state->active_pipes =3D
>  		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
>=20=20
> -	ret =3D intel_cdclk_modeset_calc_cdclk(dev_priv, new_cdclk_state);
> +	ret =3D intel_cdclk_modeset_calc_cdclk(state);
>  	if (ret)
>  		return ret;

--=20
Jani Nikula, Intel
