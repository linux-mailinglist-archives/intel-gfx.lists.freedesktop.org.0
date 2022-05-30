Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F2A537AAC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F4D10E76D;
	Mon, 30 May 2022 12:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C557C10E76D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653913907; x=1685449907;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LaJwgvbikUaiNR/G/8K2Z2nh6/RIZT/XUbP+nLEJ8bA=;
 b=Y+Nn8/QmMwP448aFu+PirTy9d2qxsgbG/j9P89AL8WDW7hyOTFXNRY2+
 tu0492SoGMJ4WxLbihYb8SeYtgZAIsXAn7aub2BbT5/xdjLNhzKtqdsnD
 Pmc3olszm/BH418ynRgKLZERTZqUHyooyl/gwf5J7DgBGfVu+iF/yiOfB
 zJtg7dd739K8VIDKpkE0Y1I6WhH26cS0sDY5c8BK9E7nkfD8485ztYhtE
 aP6azAsyVennTTnI1QK5WRNvBe6OB2fJmg8UrOEEwbQAqdRZ60nU+E1AI
 U7VpuBNkHnfbT7ncPmb03i8uEofW07PzxP47C0radJJcHQQKJA/3qeOv+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="257051593"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="257051593"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:31:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="529158816"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:31:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-4-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:31:42 +0300
Message-ID: <87leujrykx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Accept more fixed modes with
 VRR panels
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

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> It seem that when dealing with VRR capable eDP panels we need
> to accept fixed modes with variable vblank length (which is what
> VRR varies dynamically). Typically the preferred mode seems to be
> a non-VRR more (lowish dotclock/refresh rate + short vblank).
>
> We also have examples where it looks like even the hblank length
> is a bit different between the preferred mode vs. VRR mode(s).
> So let's just accept anything that has matching hdisp+vdisp+flags.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  3 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  3 +-
>  drivers/gpu/drm/i915/display/intel_panel.c | 48 ++++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_panel.h |  3 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c  |  2 +-
>  5 files changed, 43 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 1bc1f6458e81..b8e2d3cd4d68 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5217,7 +5217,8 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  			      IS_ERR(edid) ? NULL : edid);
>=20=20
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> -					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE);
> +					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE,
> +					 intel_vrr_is_capable(intel_connector));
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 595f03343939..e55802b45461 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -972,7 +972,8 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>=20=20
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> -					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE);
> +					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE,
> +					 false);
>=20=20
>  	/* Failed to get EDID, what about VBT? */
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index f55e4eafd74e..963b24293b50 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -71,6 +71,27 @@ intel_panel_fixed_mode(struct intel_connector *connect=
or,
>  	return best_mode;
>  }
>=20=20
> +static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
> +			     const struct drm_display_mode *preferred_mode)
> +{
> +	return drm_mode_match(mode, preferred_mode,
> +			      DRM_MODE_MATCH_TIMINGS |
> +			      DRM_MODE_MATCH_FLAGS |
> +			      DRM_MODE_MATCH_3D_FLAGS) &&
> +		mode->clock !=3D preferred_mode->clock;
> +}
> +
> +static bool is_alt_vrr_mode(const struct drm_display_mode *mode,
> +			    const struct drm_display_mode *preferred_mode)
> +{
> +	return drm_mode_match(mode, preferred_mode,
> +			      DRM_MODE_MATCH_FLAGS |
> +			      DRM_MODE_MATCH_3D_FLAGS) &&
> +		mode->hdisplay =3D=3D preferred_mode->hdisplay &&
> +		mode->vdisplay =3D=3D preferred_mode->vdisplay &&
> +		mode->clock !=3D preferred_mode->clock;
> +}
> +
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode)
> @@ -83,7 +104,8 @@ intel_panel_downclock_mode(struct intel_connector *con=
nector,
>  	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>  		int vrefresh =3D drm_mode_vrefresh(fixed_mode);
>=20=20
> -		if (vrefresh >=3D min_vrefresh && vrefresh < max_vrefresh) {
> +		if (is_alt_drrs_mode(fixed_mode, adjusted_mode) &&
> +		    vrefresh >=3D min_vrefresh && vrefresh < max_vrefresh) {
>  			max_vrefresh =3D vrefresh;
>  			best_mode =3D fixed_mode;
>  		}
> @@ -151,16 +173,17 @@ int intel_panel_compute_config(struct intel_connect=
or *connector,
>  }
>=20=20
>  static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> -			      const struct drm_display_mode *preferred_mode)
> +			      const struct drm_display_mode *preferred_mode,
> +			      bool has_vrr)
>  {
> -	return drm_mode_match(mode, preferred_mode,
> -			      DRM_MODE_MATCH_TIMINGS |
> -			      DRM_MODE_MATCH_FLAGS |
> -			      DRM_MODE_MATCH_3D_FLAGS) &&
> -		mode->clock !=3D preferred_mode->clock;
> +	if (has_vrr)
> +		return is_alt_vrr_mode(mode, preferred_mode);
> +	else
> +		return is_alt_drrs_mode(mode, preferred_mode);

This assumes is_alt_drrs_mode() accepts a subset of
is_alt_vrr_mode(). Which is true and fine. But maybe deserves a comment,
as otherwise I believe we should try both if the vrr one fails.

A really defensive solution would be to WARN_ON(!is_alt_vrr_mode()) in
is_alt_drrs_mode() if everything else is true. Maybe overkill.

>  }
>=20=20
> -static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector =
*connector)
> +static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector =
*connector,
> +						 bool has_vrr)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *preferred_mode =3D
> @@ -168,7 +191,7 @@ static void intel_panel_add_edid_alt_fixed_modes(stru=
ct intel_connector *connect
>  	struct drm_display_mode *mode, *next;
>=20=20
>  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> -		if (!is_alt_fixed_mode(mode, preferred_mode))
> +		if (!is_alt_fixed_mode(mode, preferred_mode, has_vrr))
>  			continue;

Should we perhaps debug log if it was vrr or drrs?

Anyway, with the comment added,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

The rest is up to you.

>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -226,11 +249,12 @@ static void intel_panel_destroy_probed_modes(struct=
 intel_connector *connector)
>  	}
>  }
>=20=20
> -void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs)
> +void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
> +				      bool has_drrs, bool has_vrr)
>  {
>  	intel_panel_add_edid_preferred_mode(connector);
> -	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
> -		intel_panel_add_edid_alt_fixed_modes(connector);
> +	if (intel_panel_preferred_fixed_mode(connector) && (has_drrs || has_vrr=
))
> +		intel_panel_add_edid_alt_fixed_modes(connector, has_vrr);
>  	intel_panel_destroy_probed_modes(connector);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 2e32bb728beb..b087c0c3cc6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -40,7 +40,8 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_s=
tate,
>  			const struct drm_connector_state *conn_state);
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);
> -void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs);
> +void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
> +				      bool has_drrs, bool has_vrr);
>  void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r);
>  void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or);
>  void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d9de2c4d67a7..2b78a790e1b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2911,7 +2911,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> -		intel_panel_add_edid_fixed_modes(intel_connector, false);
> +		intel_panel_add_edid_fixed_modes(intel_connector, false, false);
>  	}
>=20=20
>  	intel_panel_init(intel_connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
