Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA54AF29B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E7710E237;
	Wed,  9 Feb 2022 13:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A9810E237
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644413148; x=1675949148;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dzP6tDynTFeKlMxyCG8KrDTCXYRZDOtzVyJppuTATIc=;
 b=DOjo7LIAuDrubPwe9ie+dpJcJ6wUEWKODXHWbZ6an0rlJmfqUia+6XgS
 Ib0iySNr9T3athqA+JJ38sCj8YwK02ofWNJRUJFr1tM7GX1xSKWAccoho
 cpQ7fbXHEyPJLYW51YOQxghoZ+8V1+dRSYvU6ZzdrJFxqUcfBGV/eLKws
 34HeOfdQyfx45g344ic3HsF8WKrpZxbiLE7kwXF30vlAhYoX8/u3lp3PV
 TfP5N+11Y8RhAPvl/hS6uaCrwr+0HmtZVPXLpn7DDLDINZ/RSjZr04u62
 UXHaR42FjrJH/Lb2uafqiv9R/lCuDYSajvVj8ypr3WJZGdZiibRHwhCPw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="309946045"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="309946045"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:25:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="633215198"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:25:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-3-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:25:44 +0200
Message-ID: <87wni4npd3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Hoover the IPS enable/disable
 calls into the pre/post update hooks
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

On Wed, 09 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No reason the caller of the IPS pre/post update hooks should
> be responsible for the actual IPS enab/disable. Just pull those
> calls into the pre/post update hooks themselves. And while
> at it let's adjust the function naming a bit to have a consistent
> namespace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Seems like some of the calling convention changes here should've been
put in the preceding patch, but not a big deal.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 46 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_display.h |  2 -
>  2 files changed, 34 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c5d30c683911..08c59fdb24e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -125,6 +125,7 @@ static void bdw_set_pipemisc(const struct intel_crtc_=
state *crtc_state);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> +static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state);
>=20=20
>  /**
>   * intel_update_watermarks - update FIFO watermark values based on curre=
nt modes
> @@ -753,7 +754,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  	crtc_state->min_cdclk[plane->id] =3D 0;
>=20=20
>  	if (plane->id =3D=3D PLANE_PRIMARY &&
> -	    hsw_disable_ips(crtc_state))
> +	    hsw_ips_disable(crtc_state))
>  		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
>  	/*
> @@ -1091,7 +1092,7 @@ static void ilk_pfit_enable(const struct intel_crtc=
_state *crtc_state)
>  	intel_de_write(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
>  }
>=20=20
> -void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
> +static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_device *dev =3D crtc->base.dev;
> @@ -1128,7 +1129,7 @@ void hsw_enable_ips(const struct intel_crtc_state *=
crtc_state)
>  	}
>  }
>=20=20
> -bool hsw_disable_ips(const struct intel_crtc_state *crtc_state)
> +static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_device *dev =3D crtc->base.dev;
> @@ -1170,8 +1171,8 @@ static void intel_crtc_dpms_overlay_disable(struct =
intel_crtc *crtc)
>  	 */
>  }
>=20=20
> -static bool hsw_pre_update_disable_ips(struct intel_atomic_state *state,
> -				       struct intel_crtc *crtc)
> +static bool hsw_ips_need_disable(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
> @@ -1200,8 +1201,20 @@ static bool hsw_pre_update_disable_ips(struct inte=
l_atomic_state *state,
>  	return !new_crtc_state->ips_enabled;
>  }
>=20=20
> -static bool hsw_post_update_enable_ips(struct intel_atomic_state *state,
> -				       struct intel_crtc *crtc)
> +static bool hsw_ips_pre_update(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +
> +	if (!hsw_ips_need_disable(state, crtc))
> +		return false;
> +
> +	return hsw_ips_disable(old_crtc_state);
> +}
> +
> +static bool hsw_ips_need_enable(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
> @@ -1237,6 +1250,18 @@ static bool hsw_post_update_enable_ips(struct inte=
l_atomic_state *state,
>  	return !old_crtc_state->ips_enabled;
>  }
>=20=20
> +static void hsw_ips_post_update(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!hsw_ips_need_enable(state, crtc))
> +		return;
> +
> +	hsw_ips_enable(new_crtc_state);
> +}
> +
>  static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> @@ -1331,9 +1356,7 @@ static void intel_post_plane_update(struct intel_at=
omic_state *state,
>  	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
>  		intel_update_watermarks(dev_priv);
>=20=20
> -	if (hsw_post_update_enable_ips(state, crtc))
> -		hsw_enable_ips(new_crtc_state);
> -
> +	hsw_ips_post_update(state, crtc);
>  	intel_fbc_post_update(state, crtc);
>  	intel_drrs_page_flip(state, crtc);
>=20=20
> @@ -1436,8 +1459,7 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>=20=20
>  	intel_psr_pre_plane_update(state, crtc);
>=20=20
> -	if (hsw_pre_update_disable_ips(state, crtc) &&
> -	    hsw_disable_ips(old_crtc_state))
> +	if (hsw_ips_pre_update(state, crtc))
>  		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
>  	if (intel_fbc_pre_update(state, crtc))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 8f9bec36898e..2315088a280d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -633,8 +633,6 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  			 struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
> -void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
> -bool hsw_disable_ips(const struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);

--=20
Jani Nikula, Intel Open Source Graphics Center
