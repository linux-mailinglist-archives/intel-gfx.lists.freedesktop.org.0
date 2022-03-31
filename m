Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422BC4EDA2A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7498810F1B2;
	Thu, 31 Mar 2022 13:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2F810F1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648731914; x=1680267914;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ppJ2b2bPs1Ifa4NAiKGX2NqWiuEjpXjucjp96sODqSg=;
 b=gW/SglxePGdbiQX5Cc7+n/IYGio7yeNSMeVm0ekDOMOQ2sTNAY5LYubU
 sN9hRQAjtsxgFahLFfZ6wafElR3+ffHbXPPSWVqPv1vJNpEJp02ToL+9k
 nwyLHD1EC1xhGdqBLzScC9h8qK8I085QxeScfXaHx7ZD+O7wbOYOJu87a
 2hPzbLRDfRalwrt1fM7wXeuz624brbl7H8hnha2O6+pC/AMsc0yKAPUJX
 Wn+2DngDid1WRlVQ2PzaR8jRL7W4AxuxUxqwBr/HGLfAC7cLVNpOg1AOM
 3snPq3+roATnwetMS0JiDEdnWfdEBO8I3UkqKr/Vd2v6pHfbRmc2ZSoB0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258663484"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="258663484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:05:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566466780"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:05:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-3-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:04:57 +0300
Message-ID: <87lewq9ssm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915: Put fixed modes directly
 onto the panel's fixed_modes list
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rather than having the connector init get the fixed mode back from
> intel_panel and then feed it straight back into intel_panel_init()
> let's just make the fixed mode lookup put the mode directly onto
> the panel's fixed_modes list. Avoids the pointless round trip and
> opens the door for further enhancements to the fixed mode handling.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     |  8 +--
>  drivers/gpu/drm/i915/display/intel_dp.c    | 22 ++++----
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 20 ++-----
>  drivers/gpu/drm/i915/display/intel_drrs.h  |  3 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c   |  9 ++-
>  drivers/gpu/drm/i915/display/intel_lvds.c  | 31 +++++------
>  drivers/gpu/drm/i915/display/intel_panel.c | 64 +++++++++-------------
>  drivers/gpu/drm/i915/display/intel_panel.h | 22 +++-----
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 10 ++--
>  drivers/gpu/drm/i915/display/vlv_dsi.c     |  9 +--
>  10 files changed, 81 insertions(+), 117 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 44f4c65522b9..084cc51d1c41 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1993,7 +1993,6 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	struct intel_encoder *encoder;
>  	struct intel_connector *intel_connector;
>  	struct drm_connector *connector;
> -	struct drm_display_mode *fixed_mode;
>  	enum port port;
>=20=20
>  	if (!intel_bios_is_dsi_present(dev_priv, &port))
> @@ -2050,15 +2049,16 @@ void icl_dsi_init(struct drm_i915_private *dev_pr=
iv)
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
>  	mutex_lock(&dev->mode_config.mutex);
> -	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
> +	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
> -	if (!fixed_mode) {
> +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
>  		goto err;
>  	}
>=20=20
> -	intel_panel_init(intel_connector, fixed_mode, NULL);
> +	intel_panel_init(intel_connector);
> +
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	if (dev_priv->vbt.dsi.config->dual_link)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2c23ec0a880a..67472555211d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5015,8 +5015,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	struct drm_connector *connector =3D &intel_connector->base;
> -	struct drm_display_mode *fixed_mode =3D NULL;
> -	struct drm_display_mode *downclock_mode =3D NULL;
> +	struct drm_display_mode *fixed_mode;
>  	bool has_dpcd;
>  	enum pipe pipe =3D INVALID_PIPE;
>  	struct edid *edid;
> @@ -5073,20 +5072,22 @@ static bool intel_edp_init_connector(struct intel=
_dp *intel_dp,
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> -	if (fixed_mode && intel_edp_has_drrs(intel_dp))
> -		downclock_mode =3D intel_drrs_init(intel_connector, fixed_mode);
> +	intel_panel_add_edid_fixed_mode(intel_connector);
> +	if (intel_panel_preferred_fixed_mode(intel_connector) &&
> +	    intel_edp_has_drrs(intel_dp))
> +		intel_drrs_init(intel_connector);
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);
>=20=20
>  	/* multiply the mode clock and horizontal timings for MSO */
> -	intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
> -	intel_edp_mso_mode_fixup(intel_connector, downclock_mode);
> +	list_for_each_entry(fixed_mode, &intel_connector->panel.fixed_modes, he=
ad)
> +		intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
>=20=20
>  	/* fallback to VBT if available for eDP */
> -	if (!fixed_mode)
> -		fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
> +		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> +
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> @@ -5108,7 +5109,8 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  			    pipe_name(pipe));
>  	}
>=20=20
> -	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
> +	intel_panel_init(intel_connector);
> +
>  	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>  		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>  	intel_backlight_setup(intel_connector, pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 1448c3029b8e..8fd280c7c83f 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -358,7 +358,6 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
>  /**
>   * intel_drrs_init - Init DRRS for eDP connector
>   * @connector: eDP connector
> - * @fixed_mode: preferred mode of panel
>   *
>   * This function is called only once at driver load to initialize
>   * DRRS support for the connector.
> @@ -368,25 +367,14 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
>   * DRRS support is determined by the presence of downclock mode (apart
>   * from VBT setting).
>   */
> -struct drm_display_mode *
> -intel_drrs_init(struct intel_connector *connector,
> -		const struct drm_display_mode *fixed_mode)
> +void intel_drrs_init(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct drm_display_mode *downclock_mode;
> -
> -	downclock_mode =3D intel_panel_edid_downclock_mode(connector, fixed_mod=
e);
> -	if (!downclock_mode) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported due to lack of downclock mo=
de\n",
> -			    connector->base.base.id, connector->base.name);
> -		return NULL;
> -	}
> +
> +	intel_panel_add_edid_downclock_mode(connector);

What if there's no downclock mode, just one native mode with one
vrefresh? We'll now now say drrs type is this or that below, but it'll
never get enabled in compute config?

Should intel_panel_add_edid_downclock_mode() debug log when there's no
downclock mode?

BR,
Jani.


>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
> +		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
>  		    connector->base.base.id, connector->base.name,
>  		    intel_drrs_type_str(dev_priv->vbt.drrs_type));
> -
> -	return downclock_mode;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index e2f78cc10061..3ea52220cd69 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -27,7 +27,6 @@ void intel_drrs_compute_config(struct intel_connector *=
connector,
>  			       struct intel_crtc_state *pipe_config,
>  			       int output_bpp, bool constant_n);
>  void intel_crtc_drrs_init(struct intel_crtc *crtc);
> -struct drm_display_mode *intel_drrs_init(struct intel_connector *connect=
or,
> -					 const struct drm_display_mode *fixed_mode);
> +void intel_drrs_init(struct intel_connector *connector);
>=20=20
>  #endif /* __INTEL_DRRS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 8c98897d8313..5572e43026e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -520,8 +520,6 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
>=20=20
>  		intel_connector_attach_encoder(intel_connector, intel_encoder);
>  		if (dvo->type =3D=3D INTEL_DVO_CHIP_LVDS) {
> -			struct drm_display_mode *fixed_mode;
> -
>  			/*
>  			 * For our LVDS chipsets, we should hopefully be able
>  			 * to dig the fixed panel mode out of the BIOS data.
> @@ -530,10 +528,11 @@ void intel_dvo_init(struct drm_i915_private *dev_pr=
iv)
>  			 * headers, likely), so for now, just get the current
>  			 * mode being output through DVO.
>  			 */
> -			fixed_mode =3D intel_panel_encoder_fixed_mode(intel_connector,
> -								    intel_encoder);
> +			intel_panel_add_encoder_fixed_mode(intel_connector,
> +							   intel_encoder);
> +
> +			intel_panel_init(intel_connector);
>=20=20
> -			intel_panel_init(intel_connector, fixed_mode, NULL);
>  			intel_dvo->panel_wants_dither =3D true;
>  		}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 5b2367bc3cd2..193daffadc90 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -829,8 +829,6 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	struct intel_connector *intel_connector;
>  	struct drm_connector *connector;
>  	struct drm_encoder *encoder;
> -	struct drm_display_mode *fixed_mode =3D NULL;
> -	struct drm_display_mode *downclock_mode =3D NULL;
>  	struct edid *edid;
>  	i915_reg_t lvds_reg;
>  	u32 lvds;
> @@ -969,30 +967,29 @@ void intel_lvds_init(struct drm_i915_private *dev_p=
riv)
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> -	if (fixed_mode)
> -		goto out;
> +	/* Try EDID first */
> +	intel_panel_add_edid_fixed_mode(intel_connector);
>=20=20
>  	/* Failed to get EDID, what about VBT? */
> -	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
> -	if (fixed_mode)
> -		goto out;
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
> +		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>=20=20
>  	/*
> -	 * If we didn't get EDID, try checking if the panel is already turned
> -	 * on.  If so, assume that whatever is currently programmed is the
> -	 * correct mode.
> +	 * If we didn't get a fixed mode from EDID or VBT, try checking
> +	 * if the panel is already turned on.  If so, assume that
> +	 * whatever is currently programmed is the correct mode.
>  	 */
> -	fixed_mode =3D intel_panel_encoder_fixed_mode(intel_connector, intel_en=
coder);
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
> +		intel_panel_add_encoder_fixed_mode(intel_connector, intel_encoder);
> +
> +	mutex_unlock(&dev->mode_config.mutex);
>=20=20
>  	/* If we still don't have a mode after all that, give up. */
> -	if (!fixed_mode)
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
>  		goto failed;
>=20=20
> -out:
> -	mutex_unlock(&dev->mode_config.mutex);
> +	intel_panel_init(intel_connector);
>=20=20
> -	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder);
> @@ -1004,8 +1001,6 @@ void intel_lvds_init(struct drm_i915_private *dev_p=
riv)
>  	return;
>=20=20
>  failed:
> -	mutex_unlock(&dev->mode_config.mutex);
> -
>  	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
>  	drm_connector_cleanup(connector);
>  	drm_encoder_cleanup(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 882e424973d4..415aa381f732 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -158,11 +158,11 @@ static bool is_downclock_mode(const struct drm_disp=
lay_mode *downclock_mode,
>  		downclock_mode->clock < fixed_mode->clock;
>  }
>=20=20
> -struct drm_display_mode *
> -intel_panel_edid_downclock_mode(struct intel_connector *connector,
> -				const struct drm_display_mode *fixed_mode)
> +void intel_panel_add_edid_downclock_mode(struct intel_connector *connect=
or)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_preferred_fixed_mode(connector);
>  	const struct drm_display_mode *scan, *best_mode =3D NULL;
>  	struct drm_display_mode *downclock_mode;
>  	int best_clock =3D fixed_mode->clock;
> @@ -187,29 +187,28 @@ intel_panel_edid_downclock_mode(struct intel_connec=
tor *connector,
>  	}
>=20=20
>  	if (!best_mode)
> -		return NULL;
> +		return;
>=20=20
>  	downclock_mode =3D drm_mode_duplicate(&dev_priv->drm, best_mode);
>  	if (!downclock_mode)
> -		return NULL;
> +		return;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CONNECTOR:%d:%s] using downclock mode from EDID: " DRM_MODE_FMT =
"\n",
>  		    connector->base.base.id, connector->base.name,
>  		    DRM_MODE_ARG(downclock_mode));
>=20=20
> -	return downclock_mode;
> +	list_add_tail(&downclock_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -struct drm_display_mode *
> -intel_panel_edid_fixed_mode(struct intel_connector *connector)
> +void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *scan;
>  	struct drm_display_mode *fixed_mode;
>=20=20
>  	if (list_empty(&connector->base.probed_modes))
> -		return NULL;
> +		return;
>=20=20
>  	/* prefer fixed mode from EDID if available */
>  	list_for_each_entry(scan, &connector->base.probed_modes, head) {
> @@ -218,47 +217,45 @@ intel_panel_edid_fixed_mode(struct intel_connector =
*connector)
>=20=20
>  		fixed_mode =3D drm_mode_duplicate(&dev_priv->drm, scan);
>  		if (!fixed_mode)
> -			return NULL;
> +			return;
>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CONNECTOR:%d:%s] using preferred mode from EDID: " DRM_MODE_FMT=
 "\n",
>  			    connector->base.base.id, connector->base.name,
>  			    DRM_MODE_ARG(fixed_mode));
>=20=20
> -		return fixed_mode;
> +		list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> +		return;
>  	}
>=20=20
>  	scan =3D list_first_entry(&connector->base.probed_modes,
>  				typeof(*scan), head);
> -
>  	fixed_mode =3D drm_mode_duplicate(&dev_priv->drm, scan);
>  	if (!fixed_mode)
> -		return NULL;
> +		return;
>=20=20
>  	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> -
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name,
>  		    DRM_MODE_ARG(fixed_mode));
>=20=20
> -	return fixed_mode;
> +	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -struct drm_display_mode *
> -intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector)
> +void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct drm_display_info *info =3D &connector->base.display_info;
>  	struct drm_display_mode *fixed_mode;
>=20=20
>  	if (!dev_priv->vbt.lfp_lvds_vbt_mode)
> -		return NULL;
> +		return;
>=20=20
>  	fixed_mode =3D drm_mode_duplicate(&dev_priv->drm,
>  					dev_priv->vbt.lfp_lvds_vbt_mode);
>  	if (!fixed_mode)
> -		return NULL;
> +		return;
>=20=20
>  	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>=20=20
> @@ -269,39 +266,37 @@ intel_panel_vbt_lfp_fixed_mode(struct intel_connect=
or *connector)
>  	info->width_mm =3D fixed_mode->width_mm;
>  	info->height_mm =3D fixed_mode->height_mm;
>=20=20
> -	return fixed_mode;
> +	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -struct drm_display_mode *
> -intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector)
> +void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct drm_display_mode *fixed_mode;
>=20=20
>  	if (!i915->vbt.sdvo_lvds_vbt_mode)
> -		return NULL;
> +		return;
>=20=20
>  	fixed_mode =3D drm_mode_duplicate(&i915->drm,
>  					i915->vbt.sdvo_lvds_vbt_mode);
>  	if (!fixed_mode)
> -		return NULL;
> +		return;
>=20=20
>  	/* Guarantee the mode is preferred */
>  	fixed_mode->type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
>=20=20
> -	return fixed_mode;
> +	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -struct drm_display_mode *
> -intel_panel_encoder_fixed_mode(struct intel_connector *connector,
> -			       struct intel_encoder *encoder)
> +void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> +					struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct drm_display_mode *fixed_mode;
>=20=20
>  	fixed_mode =3D intel_encoder_current_mode(encoder);
>  	if (!fixed_mode)
> -		return NULL;
> +		return;
>=20=20
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: "=
 DRM_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name,
> @@ -309,7 +304,7 @@ intel_panel_encoder_fixed_mode(struct intel_connector=
 *connector,
>=20=20
>  	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>=20=20
> -	return fixed_mode;
> +	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
>  /* adjusted_mode has been preset to be the panel's fixed mode */
> @@ -639,19 +634,12 @@ intel_panel_mode_valid(struct intel_connector *conn=
ector,
>  	return MODE_OK;
>  }
>=20=20
> -int intel_panel_init(struct intel_connector *connector,
> -		     struct drm_display_mode *fixed_mode,
> -		     struct drm_display_mode *downclock_mode)
> +int intel_panel_init(struct intel_connector *connector)
>  {
>  	struct intel_panel *panel =3D &connector->panel;
>=20=20
>  	intel_backlight_init_funcs(panel);
>=20=20
> -	if (fixed_mode)
> -		list_add_tail(&fixed_mode->head, &panel->fixed_modes);
> -	if (downclock_mode)
> -		list_add_tail(&downclock_mode->head, &panel->fixed_modes);
> -
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 6a6ac338e9aa..5eaa2a1c2337 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -18,9 +18,7 @@ struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_encoder;
>=20=20
> -int intel_panel_init(struct intel_connector *connector,
> -		     struct drm_display_mode *fixed_mode,
> -		     struct drm_display_mode *downclock_mode);
> +int intel_panel_init(struct intel_connector *connector);
>  void intel_panel_fini(struct intel_connector *connector);
>  enum drm_connector_status
>  intel_panel_detect(struct drm_connector *connector, bool force);
> @@ -42,17 +40,11 @@ int intel_panel_fitting(struct intel_crtc_state *crtc=
_state,
>  			const struct drm_connector_state *conn_state);
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);
> -struct drm_display_mode *
> -intel_panel_edid_downclock_mode(struct intel_connector *connector,
> -				const struct drm_display_mode *fixed_mode);
> -struct drm_display_mode *
> -intel_panel_edid_fixed_mode(struct intel_connector *connector);
> -struct drm_display_mode *
> -intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
> -struct drm_display_mode *
> -intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector);
> -struct drm_display_mode *
> -intel_panel_encoder_fixed_mode(struct intel_connector *connector,
> -			       struct intel_encoder *encoder);
> +void intel_panel_add_edid_fixed_mode(struct intel_connector *connector);
> +void intel_panel_add_edid_downclock_mode(struct intel_connector *connect=
or);
> +void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r);
> +void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or);
> +void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> +					struct intel_encoder *encoder);
>=20=20
>  #endif /* __INTEL_PANEL_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index c9c3f71818d9..866e05c1a49d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2871,7 +2871,6 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  	struct drm_connector *connector;
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
> -	struct drm_display_mode *fixed_mode;
>=20=20
>  	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
>=20=20
> @@ -2904,13 +2903,14 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdv=
o, int device)
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
>  	 * SDVO->LVDS transcoders can't cope with the EDID mode.
>  	 */
> -	fixed_mode =3D intel_panel_vbt_sdvo_fixed_mode(intel_connector);
> -	if (!fixed_mode) {
> +	intel_panel_add_vbt_sdvo_fixed_mode(intel_connector);
> +
> +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> -		fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> +		intel_panel_add_edid_fixed_mode(intel_connector);
>  	}
>=20=20
> -	intel_panel_init(intel_connector, fixed_mode, NULL);
> +	intel_panel_init(intel_connector);
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))
>  		goto err;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index dc43cb8ecb86..1954f07f0d3e 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1859,7 +1859,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	struct drm_encoder *encoder;
>  	struct intel_connector *intel_connector;
>  	struct drm_connector *connector;
> -	struct drm_display_mode *current_mode, *fixed_mode;
> +	struct drm_display_mode *current_mode;
>  	enum port port;
>  	enum pipe pipe;
>=20=20
> @@ -1980,15 +1980,16 @@ void vlv_dsi_init(struct drm_i915_private *dev_pr=
iv)
>  	intel_connector_attach_encoder(intel_connector, intel_encoder);
>=20=20
>  	mutex_lock(&dev->mode_config.mutex);
> -	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
> +	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
> -	if (!fixed_mode) {
> +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
>  		goto err_cleanup_connector;
>  	}
>=20=20
> -	intel_panel_init(intel_connector, fixed_mode, NULL);
> +	intel_panel_init(intel_connector);
> +
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	vlv_dsi_add_properties(intel_connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
