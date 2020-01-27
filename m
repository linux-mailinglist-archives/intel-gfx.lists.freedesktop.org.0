Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910E614A8BD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 18:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D186E193;
	Mon, 27 Jan 2020 17:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A450C6E193
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 17:11:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:11:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="306264669"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:11:33 -0800
Date: Mon, 27 Jan 2020 19:11:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200127171124.GB5006@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-19-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-19-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 17/17] drm/i915: Store active_pipes bitmask
 in cdclk state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:28PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's add a copy of the active_pipes bitmask into the cdclk_state.
> While this is duplicating a bit of information we may already
> have elsewhere, I think it's worth it to decopule the cdclk stuff
> from whatever else wants to use that bitmask. Also we want to get
> rid of all the old ad-hoc global state which is what the current
> bitmask is, so this removes one obstacle.
> =

> The one extra thing we have to remember is write locking the cdclk
> state whenever the bitmask changes.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 20 +++++++++++---------
>  drivers/gpu/drm/i915/display/intel_cdclk.h   |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c |  8 +++++---
>  3 files changed, 19 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index e14bda2bec71..f8e4510f4bd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2125,7 +2125,7 @@ static int vlv_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  	cdclk_state->logical.voltage_level =3D
>  		vlv_calc_voltage_level(dev_priv, cdclk);
>  =

> -	if (!state->active_pipes) {
> +	if (!cdclk_state->active_pipes) {
>  		cdclk =3D vlv_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
>  =

>  		cdclk_state->actual.cdclk =3D cdclk;
> @@ -2140,7 +2140,6 @@ static int vlv_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  =

>  static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	int min_cdclk, cdclk;
>  =

>  	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> @@ -2157,7 +2156,7 @@ static int bdw_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  	cdclk_state->logical.voltage_level =3D
>  		bdw_calc_voltage_level(cdclk);
>  =

> -	if (!state->active_pipes) {
> +	if (!cdclk_state->active_pipes) {
>  		cdclk =3D bdw_calc_cdclk(cdclk_state->force_min_cdclk);
>  =

>  		cdclk_state->actual.cdclk =3D cdclk;
> @@ -2209,7 +2208,6 @@ static int skl_dpll0_vco(struct intel_cdclk_state *=
cdclk_state)
>  =

>  static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> -	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	int min_cdclk, cdclk, vco;
>  =

>  	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
> @@ -2229,7 +2227,7 @@ static int skl_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  	cdclk_state->logical.voltage_level =3D
>  		skl_calc_voltage_level(cdclk);
>  =

> -	if (!state->active_pipes) {
> +	if (!cdclk_state->active_pipes) {
>  		cdclk =3D skl_calc_cdclk(cdclk_state->force_min_cdclk, vco);
>  =

>  		cdclk_state->actual.vco =3D vco;
> @@ -2266,7 +2264,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdcl=
k_state *cdclk_state)
>  		max_t(int, min_voltage_level,
>  		      dev_priv->display.calc_voltage_level(cdclk));
>  =

> -	if (!state->active_pipes) {
> +	if (!cdclk_state->active_pipes) {
>  		cdclk =3D bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
>  		vco =3D bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
>  =

> @@ -2402,6 +2400,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  =

>  	old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>  =

> +	new_cdclk_state->active_pipes =3D
> +		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
> +
>  	ret =3D dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
>  	if (ret)
>  		return ret;
> @@ -2415,7 +2416,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  		ret =3D intel_atomic_serialize_global_state(&new_cdclk_state->base);
>  		if (ret)
>  			return ret;
> -	} else if (intel_cdclk_changed(&old_cdclk_state->logical,
> +	} else if (old_cdclk_state->active_pipes !=3D new_cdclk_state->active_p=
ipes ||
> +		   intel_cdclk_changed(&old_cdclk_state->logical,
>  				       &new_cdclk_state->logical)) {
>  		ret =3D intel_atomic_lock_global_state(&new_cdclk_state->base);
>  		if (ret)
> @@ -2424,14 +2426,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_=
state *state)
>  		return 0;
>  	}
>  =

> -	if (is_power_of_2(state->active_pipes) &&
> +	if (is_power_of_2(new_cdclk_state->active_pipes) &&
>  	    intel_cdclk_can_cd2x_update(dev_priv,
>  					&old_cdclk_state->actual,
>  					&new_cdclk_state->actual)) {
>  		struct intel_crtc *crtc;
>  		struct intel_crtc_state *crtc_state;
>  =

> -		pipe =3D ilog2(state->active_pipes);
> +		pipe =3D ilog2(new_cdclk_state->active_pipes);
>  		crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
>  =

>  		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index 195fca70bfcb..df21dbdcc575 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -50,6 +50,9 @@ struct intel_cdclk_state {
>  	/* forced minimum cdclk for glk+ audio w/a */
>  	int force_min_cdclk;
>  	bool force_min_cdclk_changed;
> +
> +	/* bitmask of active pipes */
> +	u8 active_pipes;
>  };
>  =

>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_sta=
te);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dca100546be8..27878c484307 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7551,6 +7551,7 @@ static void intel_crtc_disable_noatomic(struct inte=
l_crtc *crtc,
>  	dev_priv->active_pipes &=3D ~BIT(pipe);
>  	cdclk_state->min_cdclk[pipe] =3D 0;
>  	cdclk_state->min_voltage_level[pipe] =3D 0;
> +	cdclk_state->active_pipes &=3D ~BIT(pipe);
>  =

>  	bw_state->data_rate[pipe] =3D 0;
>  	bw_state->num_active_planes[pipe] =3D 0;
> @@ -18120,10 +18121,9 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>  	struct intel_encoder *encoder;
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
> +	u8 active_pipes =3D 0;
>  	int i;
>  =

> -	dev_priv->active_pipes =3D 0;
> -
>  	for_each_intel_crtc(dev, crtc) {
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
> @@ -18139,13 +18139,15 @@ static void intel_modeset_readout_hw_state(stru=
ct drm_device *dev)
>  		crtc->active =3D crtc_state->hw.active;
>  =

>  		if (crtc_state->hw.active)
> -			dev_priv->active_pipes |=3D BIT(crtc->pipe);
> +			active_pipes |=3D BIT(crtc->pipe);
>  =

>  		DRM_DEBUG_KMS("[CRTC:%d:%s] hw state readout: %s\n",
>  			      crtc->base.base.id, crtc->base.name,
>  			      enableddisabled(crtc_state->hw.active));
>  	}
>  =

> +	dev_priv->active_pipes =3D cdclk_state->active_pipes =3D active_pipes;
> +
>  	readout_plane_state(dev_priv);
>  =

>  	for (i =3D 0; i < dev_priv->num_shared_dpll; i++) {
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
