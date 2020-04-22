Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 711011B4F79
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 23:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B786E117;
	Wed, 22 Apr 2020 21:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E25A6E117
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 21:40:45 +0000 (UTC)
IronPort-SDR: nmxiITEwR2V8JeB88OZ+JPaB73wSydIPRfUT+ClkO3l0BVxvaazEHyTm0OOF1euY4os3X+FxQf
 xW4y9rxPu4lQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 14:40:44 -0700
IronPort-SDR: MofaH1T1CwzEm5+RL+OgeabdftzIN4BKl0CKKznfHWFK/ZGOvFtayA+2TNZU5q9BTuRVx5oBzp
 VRPAlqH/hiHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="402693006"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 22 Apr 2020 14:40:44 -0700
Date: Wed, 22 Apr 2020 14:42:03 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200422214203.GD28167@intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
 <20200422161917.17389-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422161917.17389-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915: Have pfit calculations
 return an error code
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

On Wed, Apr 22, 2020 at 07:19:17PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Change intel_{gmch,pch}_panel_fitting() to return a normal
> error vs. success int. We'll need this later to validate that
> the margin properties aren't misconfigured.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Yes makes total sense to return an ERR Value

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_hdmi.c  | 23 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_lvds.c  | 13 +++++++-----
>  drivers/gpu/drm/i915/display/intel_panel.c | 19 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_panel.h |  6 +++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c     |  6 ++++--
>  7 files changed, 49 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 6650590f18fd..4fec5bd64920 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1526,13 +1526,17 @@ static int gen11_dsi_compute_config(struct intel_=
encoder *encoder,
>  						   base);
>  	struct intel_connector *intel_connector =3D intel_dsi->attached_connect=
or;
>  	const struct drm_display_mode *fixed_mode =3D
> -					intel_connector->panel.fixed_mode;
> +		intel_connector->panel.fixed_mode;
>  	struct drm_display_mode *adjusted_mode =3D
> -					&pipe_config->hw.adjusted_mode;
> +		&pipe_config->hw.adjusted_mode;
> +	int ret;
>  =

>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	intel_fixed_panel_mode(fixed_mode, adjusted_mode);
> -	intel_pch_panel_fitting(pipe_config, conn_state);
> +
> +	ret =3D intel_pch_panel_fitting(pipe_config, conn_state);
> +	if (ret)
> +		return ret;
>  =

>  	adjusted_mode->flags =3D 0;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7c4c9a4f4238..5c7009b74c24 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2354,9 +2354,7 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  =

>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(crtc_state, conn_state);
> -
> -	return 0;
> +	return intel_pch_panel_fitting(crtc_state, conn_state);
>  }
>  =

>  bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_st=
ate,
> @@ -2568,9 +2566,11 @@ intel_dp_compute_config(struct intel_encoder *enco=
der,
>  				       adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(pipe_config, conn_state);
> +			ret =3D intel_gmch_panel_fitting(pipe_config, conn_state);
>  		else
> -			intel_pch_panel_fitting(pipe_config, conn_state);
> +			ret =3D intel_pch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
>  	}
>  =

>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 0edbdd39f462..010f37240710 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2321,24 +2321,27 @@ static bool hdmi_deep_color_possible(const struct=
 intel_crtc_state *crtc_state,
>  	return true;
>  }
>  =

> -static bool
> +static int
>  intel_hdmi_ycbcr420_config(struct intel_crtc_state *crtc_state,
>  			   const struct drm_connector_state *conn_state)
>  {
>  	struct drm_connector *connector =3D conn_state->connector;
>  	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if (!drm_mode_is_420_only(&connector->display_info, adjusted_mode))
> +		return 0;
>  =

>  	if (!connector->ycbcr_420_allowed) {
>  		drm_err(&i915->drm,
>  			"Platform doesn't support YCBCR420 output\n");
> -		return false;
> +		return -EINVAL;
>  	}
>  =

>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(crtc_state, conn_state);
> -
> -	return true;
> +	return intel_pch_panel_fitting(crtc_state, conn_state);
>  }
>  =

>  static int intel_hdmi_port_clock(int clock, int bpc)
> @@ -2466,13 +2469,9 @@ int intel_hdmi_compute_config(struct intel_encoder=
 *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		pipe_config->pixel_multiplier =3D 2;
>  =

> -	if (drm_mode_is_420_only(&connector->display_info, adjusted_mode)) {
> -		if (!intel_hdmi_ycbcr420_config(pipe_config, conn_state)) {
> -			drm_err(&dev_priv->drm,
> -				"Can't support YCBCR420 output\n");
> -			return -EINVAL;
> -		}
> -	}
> +	ret =3D intel_hdmi_ycbcr420_config(pipe_config, conn_state);
> +	if (ret)
> +		return ret;
>  =

>  	pipe_config->limited_color_range =3D
>  		intel_hdmi_limited_color_range(pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index ae658d9354b7..872f2a489339 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -403,6 +403,7 @@ static int intel_lvds_compute_config(struct intel_enc=
oder *intel_encoder,
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	unsigned int lvds_bpp;
> +	int ret;
>  =

>  	/* Should never happen!! */
>  	if (INTEL_GEN(dev_priv) < 4 && intel_crtc->pipe =3D=3D 0) {
> @@ -436,13 +437,15 @@ static int intel_lvds_compute_config(struct intel_e=
ncoder *intel_encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  =

> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(dev_priv))
>  		pipe_config->has_pch_encoder =3D true;
>  =

> -		intel_pch_panel_fitting(pipe_config, conn_state);
> -	} else {
> -		intel_gmch_panel_fitting(pipe_config, conn_state);
> -	}
> +	if (HAS_GMCH(dev_priv))
> +		ret =3D intel_gmch_panel_fitting(pipe_config, conn_state);
> +	else
> +		ret =3D intel_pch_panel_fitting(pipe_config, conn_state);
> +	if (ret)
> +		return ret;
>  =

>  	/*
>  	 * XXX: It would be nice to support lower refresh rates on the
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index b4bb1cfc54a9..aa931f9f0d6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -176,9 +176,8 @@ intel_panel_vbt_fixed_mode(struct intel_connector *co=
nnector)
>  }
>  =

>  /* adjusted_mode has been preset to be the panel's fixed mode */
> -void
> -intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state)
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> @@ -188,7 +187,7 @@ intel_pch_panel_fitting(struct intel_crtc_state *crtc=
_state,
>  	if (adjusted_mode->crtc_hdisplay =3D=3D crtc_state->pipe_src_w &&
>  	    adjusted_mode->crtc_vdisplay =3D=3D crtc_state->pipe_src_h &&
>  	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> -		return;
> +		return 0;
>  =

>  	switch (conn_state->scaling_mode) {
>  	case DRM_MODE_SCALE_CENTER:
> @@ -239,12 +238,14 @@ intel_pch_panel_fitting(struct intel_crtc_state *cr=
tc_state,
>  =

>  	default:
>  		MISSING_CASE(conn_state->scaling_mode);
> -		return;
> +		return -EINVAL;
>  	}
>  =

>  	drm_rect_init(&crtc_state->pch_pfit.dst,
>  		      x, y, width, height);
>  	crtc_state->pch_pfit.enabled =3D true;
> +
> +	return 0;
>  }
>  =

>  static void
> @@ -381,8 +382,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  	}
>  }
>  =

> -void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			      const struct drm_connector_state *conn_state)
> +int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			     const struct drm_connector_state *conn_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -431,7 +432,7 @@ void intel_gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  		break;
>  	default:
>  		MISSING_CASE(conn_state->scaling_mode);
> -		return;
> +		return -EINVAL;
>  	}
>  =

>  	/* 965+ wants fuzzy fitting */
> @@ -452,6 +453,8 @@ void intel_gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	crtc_state->gmch_pfit.control =3D pfit_control;
>  	crtc_state->gmch_pfit.pgm_ratios =3D pfit_pgm_ratios;
>  	crtc_state->gmch_pfit.lvds_border_bits =3D border;
> +
> +	return 0;
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index a26db895038e..968b95281cb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -25,10 +25,10 @@ int intel_panel_init(struct intel_panel *panel,
>  void intel_panel_fini(struct intel_panel *panel);
>  void intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
>  			    struct drm_display_mode *adjusted_mode);
> -void intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state);
> +int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state);
> -void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> -			      const struct drm_connector_state *conn_state);
>  void intel_panel_set_backlight_acpi(const struct drm_connector_state *co=
nn_state,
>  				    u32 level, u32 max);
>  int intel_panel_setup_backlight(struct drm_connector *connector,
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 9c9ea89d2107..f582ab52f0b0 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -278,9 +278,11 @@ static int intel_dsi_compute_config(struct intel_enc=
oder *encoder,
>  		intel_fixed_panel_mode(fixed_mode, adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(pipe_config, conn_state);
> +			ret =3D intel_gmch_panel_fitting(pipe_config, conn_state);
>  		else
> -			intel_pch_panel_fitting(pipe_config, conn_state);
> +			ret =3D intel_pch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
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
