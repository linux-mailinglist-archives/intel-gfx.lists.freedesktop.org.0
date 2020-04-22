Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE711B4F6D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 23:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A246E0E5;
	Wed, 22 Apr 2020 21:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2613A6E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 21:34:11 +0000 (UTC)
IronPort-SDR: N65lSmvXpDr5XDmdq7wuEL4y0/HNQyVTYrhjzEOWGeaPkedqm95n8ddWA4M2ukWEP7TSmkJN+D
 pAdR1ZQfGWfw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 14:34:10 -0700
IronPort-SDR: xnVqLTGyf/qoz1aZGGCQvaG5c66GwaqvwvHHj3LSE+6O2L1/zgYcrm3Hruz0pOeO2aElIyICFb
 2KcGhayQAYjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="290976103"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2020 14:34:10 -0700
Date: Wed, 22 Apr 2020 14:35:29 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200422213529.GC28167@intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
 <20200422161917.17389-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422161917.17389-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915: Pass connector state to
 pfit calculations
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 22, 2020 at 07:19:16PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Pass the entire connector state to intel_{gmch,pch}_panel_fitting().
> For now we just need to get at .scaling_mode but in the future we'll
> want access to the margin properties as well.
> =

> v2: Deal with intel_dp_ycbcr420_config()
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Looks good to me,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c    | 17 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdmi.c  | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_panel.c | 17 ++++++++++-------
>  drivers/gpu/drm/i915/display/intel_panel.h |  4 ++--
>  drivers/gpu/drm/i915/display/vlv_dsi.c     |  6 ++----
>  7 files changed, 31 insertions(+), 33 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index fb9291de55d0..6650590f18fd 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1532,7 +1532,7 @@ static int gen11_dsi_compute_config(struct intel_en=
coder *encoder,
>  =

>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	intel_fixed_panel_mode(fixed_mode, adjusted_mode);
> -	intel_pch_panel_fitting(pipe_config, conn_state->scaling_mode);
> +	intel_pch_panel_fitting(pipe_config, conn_state);
>  =

>  	adjusted_mode->flags =3D 0;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b9a760012b3f..7c4c9a4f4238 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2339,9 +2339,10 @@ intel_dp_compute_link_config(struct intel_encoder =
*encoder,
>  =

>  static int
>  intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
> -			 struct drm_connector *connector,
> -			 struct intel_crtc_state *crtc_state)
> +			 struct intel_crtc_state *crtc_state,
> +			 const struct drm_connector_state *conn_state)
>  {
> +	struct drm_connector *connector =3D conn_state->connector;
>  	const struct drm_display_info *info =3D &connector->display_info;
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> @@ -2353,7 +2354,7 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  =

>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(crtc_state, DRM_MODE_SCALE_FULLSCREEN);
> +	intel_pch_panel_fitting(crtc_state, conn_state);
>  =

>  	return 0;
>  }
> @@ -2549,8 +2550,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (lspcon->active)
>  		lspcon_ycbcr420_config(&intel_connector->base, pipe_config);
>  	else
> -		ret =3D intel_dp_ycbcr420_config(intel_dp, &intel_connector->base,
> -					       pipe_config);
> +		ret =3D intel_dp_ycbcr420_config(intel_dp, pipe_config,
> +					       conn_state);
>  	if (ret)
>  		return ret;
>  =

> @@ -2567,11 +2568,9 @@ intel_dp_compute_config(struct intel_encoder *enco=
der,
>  				       adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(pipe_config,
> -						 conn_state->scaling_mode);
> +			intel_gmch_panel_fitting(pipe_config, conn_state);
>  		else
> -			intel_pch_panel_fitting(pipe_config,
> -						conn_state->scaling_mode);
> +			intel_pch_panel_fitting(pipe_config, conn_state);
>  	}
>  =

>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 275a676c7b08..0edbdd39f462 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2322,9 +2322,10 @@ static bool hdmi_deep_color_possible(const struct =
intel_crtc_state *crtc_state,
>  }
>  =

>  static bool
> -intel_hdmi_ycbcr420_config(struct drm_connector *connector,
> -			   struct intel_crtc_state *config)
> +intel_hdmi_ycbcr420_config(struct intel_crtc_state *crtc_state,
> +			   const struct drm_connector_state *conn_state)
>  {
> +	struct drm_connector *connector =3D conn_state->connector;
>  	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  =

>  	if (!connector->ycbcr_420_allowed) {
> @@ -2333,9 +2334,9 @@ intel_hdmi_ycbcr420_config(struct drm_connector *co=
nnector,
>  		return false;
>  	}
>  =

> -	config->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
> +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(config, DRM_MODE_SCALE_FULLSCREEN);
> +	intel_pch_panel_fitting(crtc_state, conn_state);
>  =

>  	return true;
>  }
> @@ -2466,7 +2467,7 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  		pipe_config->pixel_multiplier =3D 2;
>  =

>  	if (drm_mode_is_420_only(&connector->display_info, adjusted_mode)) {
> -		if (!intel_hdmi_ycbcr420_config(connector, pipe_config)) {
> +		if (!intel_hdmi_ycbcr420_config(pipe_config, conn_state)) {
>  			drm_err(&dev_priv->drm,
>  				"Can't support YCBCR420 output\n");
>  			return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 276db41b95ef..ae658d9354b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -439,12 +439,9 @@ static int intel_lvds_compute_config(struct intel_en=
coder *intel_encoder,
>  	if (HAS_PCH_SPLIT(dev_priv)) {
>  		pipe_config->has_pch_encoder =3D true;
>  =

> -		intel_pch_panel_fitting(pipe_config,
> -					conn_state->scaling_mode);
> +		intel_pch_panel_fitting(pipe_config, conn_state);
>  	} else {
> -		intel_gmch_panel_fitting(pipe_config,
> -					 conn_state->scaling_mode);
> -
> +		intel_gmch_panel_fitting(pipe_config, conn_state);
>  	}
>  =

>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3ea1704277a8..b4bb1cfc54a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -178,7 +178,7 @@ intel_panel_vbt_fixed_mode(struct intel_connector *co=
nnector)
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  void
>  intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			int fitting_mode)
> +			const struct drm_connector_state *conn_state)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> @@ -190,7 +190,7 @@ intel_pch_panel_fitting(struct intel_crtc_state *crtc=
_state,
>  	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return;
>  =

> -	switch (fitting_mode) {
> +	switch (conn_state->scaling_mode) {
>  	case DRM_MODE_SCALE_CENTER:
>  		width =3D crtc_state->pipe_src_w;
>  		height =3D crtc_state->pipe_src_h;
> @@ -227,6 +227,10 @@ intel_pch_panel_fitting(struct intel_crtc_state *crt=
c_state,
>  		}
>  		break;
>  =

> +	case DRM_MODE_SCALE_NONE:
> +		WARN_ON(adjusted_mode->crtc_hdisplay !=3D crtc_state->pipe_src_w);
> +		WARN_ON(adjusted_mode->crtc_vdisplay !=3D crtc_state->pipe_src_h);
> +		/* fall through */
>  	case DRM_MODE_SCALE_FULLSCREEN:
>  		x =3D y =3D 0;
>  		width =3D adjusted_mode->crtc_hdisplay;
> @@ -234,7 +238,7 @@ intel_pch_panel_fitting(struct intel_crtc_state *crtc=
_state,
>  		break;
>  =

>  	default:
> -		MISSING_CASE(fitting_mode);
> +		MISSING_CASE(conn_state->scaling_mode);
>  		return;
>  	}
>  =

> @@ -378,7 +382,7 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  }
>  =

>  void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			      int fitting_mode)
> +			      const struct drm_connector_state *conn_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -390,7 +394,7 @@ void intel_gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	    adjusted_mode->crtc_vdisplay =3D=3D crtc_state->pipe_src_h)
>  		goto out;
>  =

> -	switch (fitting_mode) {
> +	switch (conn_state->scaling_mode) {
>  	case DRM_MODE_SCALE_CENTER:
>  		/*
>  		 * For centered modes, we have to calculate border widths &
> @@ -426,8 +430,7 @@ void intel_gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  		}
>  		break;
>  	default:
> -		drm_WARN(&dev_priv->drm, 1, "bad panel fit mode: %d\n",
> -			 fitting_mode);
> +		MISSING_CASE(conn_state->scaling_mode);
>  		return;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 92dcb773763c..a26db895038e 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -26,9 +26,9 @@ void intel_panel_fini(struct intel_panel *panel);
>  void intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
>  			    struct drm_display_mode *adjusted_mode);
>  void intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			     int fitting_mode);
> +			     const struct drm_connector_state *conn_state);
>  void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			      int fitting_mode);
> +			      const struct drm_connector_state *conn_state);
>  void intel_panel_set_backlight_acpi(const struct drm_connector_state *co=
nn_state,
>  				    u32 level, u32 max);
>  int intel_panel_setup_backlight(struct drm_connector *connector,
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index fe7c9d3ec418..9c9ea89d2107 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -278,11 +278,9 @@ static int intel_dsi_compute_config(struct intel_enc=
oder *encoder,
>  		intel_fixed_panel_mode(fixed_mode, adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(pipe_config,
> -						 conn_state->scaling_mode);
> +			intel_gmch_panel_fitting(pipe_config, conn_state);
>  		else
> -			intel_pch_panel_fitting(pipe_config,
> -						conn_state->scaling_mode);
> +			intel_pch_panel_fitting(pipe_config, conn_state);
>  	}
>  =

>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
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
