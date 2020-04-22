Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0529B1B4D4B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7F46E07D;
	Wed, 22 Apr 2020 19:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6FB6E07D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:25:27 +0000 (UTC)
IronPort-SDR: jYaMvXWceuXhZ9c5jeOobOXhLCMhybmCCMuSTwetLpM3zoDHAezxOMxM3MB8doyKazIDZa+Qzx
 eRGhXsEAoKGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 12:25:26 -0700
IronPort-SDR: 0weaqYVWxcFp41lzcH9DmCbdUj/VVy3PdGDkIrjXTfQ4w5p8ANkIU8BPYgdiaaS/3d5Ro+60gq
 bVP1Q7MNBVow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="280137299"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 22 Apr 2020 12:25:26 -0700
Date: Wed, 22 Apr 2020 12:26:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200422192645.GB28167@intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
 <20200422161917.17389-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422161917.17389-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915: s/pipe_config/crtc_state/
 in pfit functions
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

On Wed, Apr 22, 2020 at 07:19:15PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Follow the new naming convention and call the crtc state
> "crtc_state", and while at it drop the redundant crtc argument.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c    |  8 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c  |  4 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +-
>  drivers/gpu/drm/i915/display/intel_panel.c | 93 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_panel.h |  6 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c     |  5 +-
>  7 files changed, 58 insertions(+), 65 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 73ebd387f549..fb9291de55d0 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1525,7 +1525,6 @@ static int gen11_dsi_compute_config(struct intel_en=
coder *encoder,
>  	struct intel_dsi *intel_dsi =3D container_of(encoder, struct intel_dsi,
>  						   base);
>  	struct intel_connector *intel_connector =3D intel_dsi->attached_connect=
or;
> -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	const struct drm_display_mode *fixed_mode =3D
>  					intel_connector->panel.fixed_mode;
>  	struct drm_display_mode *adjusted_mode =3D
> @@ -1533,7 +1532,7 @@ static int gen11_dsi_compute_config(struct intel_en=
coder *encoder,
>  =

>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	intel_fixed_panel_mode(fixed_mode, adjusted_mode);
> -	intel_pch_panel_fitting(crtc, pipe_config, conn_state->scaling_mode);
> +	intel_pch_panel_fitting(pipe_config, conn_state->scaling_mode);
>  =

>  	adjusted_mode->flags =3D 0;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 9312be686413..b9a760012b3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2345,7 +2345,6 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  	const struct drm_display_info *info =3D &connector->display_info;
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  =

>  	if (!drm_mode_is_420_only(info, adjusted_mode) ||
>  	    !intel_dp_get_colorimetry_status(intel_dp) ||
> @@ -2354,7 +2353,7 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  =

>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(crtc, crtc_state, DRM_MODE_SCALE_FULLSCREEN);
> +	intel_pch_panel_fitting(crtc_state, DRM_MODE_SCALE_FULLSCREEN);
>  =

>  	return 0;
>  }
> @@ -2535,7 +2534,6 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
>  	enum port port =3D encoder->port;
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
>  	struct intel_digital_connector_state *intel_conn_state =3D
>  		to_intel_digital_connector_state(conn_state);
> @@ -2569,10 +2567,10 @@ intel_dp_compute_config(struct intel_encoder *enc=
oder,
>  				       adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(intel_crtc, pipe_config,
> +			intel_gmch_panel_fitting(pipe_config,
>  						 conn_state->scaling_mode);
>  		else
> -			intel_pch_panel_fitting(intel_crtc, pipe_config,
> +			intel_pch_panel_fitting(pipe_config,
>  						conn_state->scaling_mode);
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 000ac0fc4edc..275a676c7b08 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2326,7 +2326,6 @@ intel_hdmi_ycbcr420_config(struct drm_connector *co=
nnector,
>  			   struct intel_crtc_state *config)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(config->uapi.crtc);
>  =

>  	if (!connector->ycbcr_420_allowed) {
>  		drm_err(&i915->drm,
> @@ -2336,8 +2335,7 @@ intel_hdmi_ycbcr420_config(struct drm_connector *co=
nnector,
>  =

>  	config->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	intel_pch_panel_fitting(intel_crtc, config,
> -				DRM_MODE_SCALE_FULLSCREEN);
> +	intel_pch_panel_fitting(config, DRM_MODE_SCALE_FULLSCREEN);
>  =

>  	return true;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index fe591f82163e..276db41b95ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -439,10 +439,10 @@ static int intel_lvds_compute_config(struct intel_e=
ncoder *intel_encoder,
>  	if (HAS_PCH_SPLIT(dev_priv)) {
>  		pipe_config->has_pch_encoder =3D true;
>  =

> -		intel_pch_panel_fitting(intel_crtc, pipe_config,
> +		intel_pch_panel_fitting(pipe_config,
>  					conn_state->scaling_mode);
>  	} else {
> -		intel_gmch_panel_fitting(intel_crtc, pipe_config,
> +		intel_gmch_panel_fitting(pipe_config,
>  					 conn_state->scaling_mode);
>  =

>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3e370888ecef..3ea1704277a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -177,23 +177,23 @@ intel_panel_vbt_fixed_mode(struct intel_connector *=
connector)
>  =

>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  void
> -intel_pch_panel_fitting(struct intel_crtc *intel_crtc,
> -			struct intel_crtc_state *pipe_config,
> +intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			int fitting_mode)
>  {
> -	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
>  	int x, y, width, height;
>  =

>  	/* Native modes don't need fitting */
> -	if (adjusted_mode->crtc_hdisplay =3D=3D pipe_config->pipe_src_w &&
> -	    adjusted_mode->crtc_vdisplay =3D=3D pipe_config->pipe_src_h &&
> -	    pipe_config->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> +	if (adjusted_mode->crtc_hdisplay =3D=3D crtc_state->pipe_src_w &&
> +	    adjusted_mode->crtc_vdisplay =3D=3D crtc_state->pipe_src_h &&
> +	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return;
>  =

>  	switch (fitting_mode) {
>  	case DRM_MODE_SCALE_CENTER:
> -		width =3D pipe_config->pipe_src_w;
> -		height =3D pipe_config->pipe_src_h;
> +		width =3D crtc_state->pipe_src_w;
> +		height =3D crtc_state->pipe_src_h;
>  		x =3D (adjusted_mode->crtc_hdisplay - width + 1)/2;
>  		y =3D (adjusted_mode->crtc_vdisplay - height + 1)/2;
>  		break;
> @@ -202,18 +202,18 @@ intel_pch_panel_fitting(struct intel_crtc *intel_cr=
tc,
>  		/* Scale but preserve the aspect ratio */
>  		{
>  			u32 scaled_width =3D adjusted_mode->crtc_hdisplay
> -				* pipe_config->pipe_src_h;
> -			u32 scaled_height =3D pipe_config->pipe_src_w
> +				* crtc_state->pipe_src_h;
> +			u32 scaled_height =3D crtc_state->pipe_src_w
>  				* adjusted_mode->crtc_vdisplay;
>  			if (scaled_width > scaled_height) { /* pillar */
> -				width =3D scaled_height / pipe_config->pipe_src_h;
> +				width =3D scaled_height / crtc_state->pipe_src_h;
>  				if (width & 1)
>  					width++;
>  				x =3D (adjusted_mode->crtc_hdisplay - width + 1) / 2;
>  				y =3D 0;
>  				height =3D adjusted_mode->crtc_vdisplay;
>  			} else if (scaled_width < scaled_height) { /* letter */
> -				height =3D scaled_width / pipe_config->pipe_src_w;
> +				height =3D scaled_width / crtc_state->pipe_src_w;
>  				if (height & 1)
>  				    height++;
>  				y =3D (adjusted_mode->crtc_vdisplay - height + 1) / 2;
> @@ -238,9 +238,9 @@ intel_pch_panel_fitting(struct intel_crtc *intel_crtc,
>  		return;
>  	}
>  =

> -	drm_rect_init(&pipe_config->pch_pfit.dst,
> +	drm_rect_init(&crtc_state->pch_pfit.dst,
>  		      x, y, width, height);
> -	pipe_config->pch_pfit.enabled =3D true;
> +	crtc_state->pch_pfit.enabled =3D true;
>  }
>  =

>  static void
> @@ -299,13 +299,14 @@ static u32 panel_fitter_scaling(u32 source, u32 tar=
get)
>  	return (FACTOR * ratio + FACTOR/2) / FACTOR;
>  }
>  =

> -static void i965_scale_aspect(struct intel_crtc_state *pipe_config,
> +static void i965_scale_aspect(struct intel_crtc_state *crtc_state,
>  			      u32 *pfit_control)
>  {
> -	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
>  	u32 scaled_width =3D adjusted_mode->crtc_hdisplay *
> -		pipe_config->pipe_src_h;
> -	u32 scaled_height =3D pipe_config->pipe_src_w *
> +		crtc_state->pipe_src_h;
> +	u32 scaled_height =3D crtc_state->pipe_src_w *
>  		adjusted_mode->crtc_vdisplay;
>  =

>  	/* 965+ is easy, it does everything in hw */
> @@ -315,18 +316,18 @@ static void i965_scale_aspect(struct intel_crtc_sta=
te *pipe_config,
>  	else if (scaled_width < scaled_height)
>  		*pfit_control |=3D PFIT_ENABLE |
>  			PFIT_SCALING_LETTER;
> -	else if (adjusted_mode->crtc_hdisplay !=3D pipe_config->pipe_src_w)
> +	else if (adjusted_mode->crtc_hdisplay !=3D crtc_state->pipe_src_w)
>  		*pfit_control |=3D PFIT_ENABLE | PFIT_SCALING_AUTO;
>  }
>  =

> -static void i9xx_scale_aspect(struct intel_crtc_state *pipe_config,
> +static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
>  			      u32 *pfit_control, u32 *pfit_pgm_ratios,
>  			      u32 *border)
>  {
> -	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
>  	u32 scaled_width =3D adjusted_mode->crtc_hdisplay *
> -		pipe_config->pipe_src_h;
> -	u32 scaled_height =3D pipe_config->pipe_src_w *
> +		crtc_state->pipe_src_h;
> +	u32 scaled_height =3D crtc_state->pipe_src_w *
>  		adjusted_mode->crtc_vdisplay;
>  	u32 bits;
>  =

> @@ -338,11 +339,11 @@ static void i9xx_scale_aspect(struct intel_crtc_sta=
te *pipe_config,
>  	if (scaled_width > scaled_height) { /* pillar */
>  		centre_horizontally(adjusted_mode,
>  				    scaled_height /
> -				    pipe_config->pipe_src_h);
> +				    crtc_state->pipe_src_h);
>  =

>  		*border =3D LVDS_BORDER_ENABLE;
> -		if (pipe_config->pipe_src_h !=3D adjusted_mode->crtc_vdisplay) {
> -			bits =3D panel_fitter_scaling(pipe_config->pipe_src_h,
> +		if (crtc_state->pipe_src_h !=3D adjusted_mode->crtc_vdisplay) {
> +			bits =3D panel_fitter_scaling(crtc_state->pipe_src_h,
>  						    adjusted_mode->crtc_vdisplay);
>  =

>  			*pfit_pgm_ratios |=3D (bits << PFIT_HORIZ_SCALE_SHIFT |
> @@ -354,11 +355,11 @@ static void i9xx_scale_aspect(struct intel_crtc_sta=
te *pipe_config,
>  	} else if (scaled_width < scaled_height) { /* letter */
>  		centre_vertically(adjusted_mode,
>  				  scaled_width /
> -				  pipe_config->pipe_src_w);
> +				  crtc_state->pipe_src_w);
>  =

>  		*border =3D LVDS_BORDER_ENABLE;
> -		if (pipe_config->pipe_src_w !=3D adjusted_mode->crtc_hdisplay) {
> -			bits =3D panel_fitter_scaling(pipe_config->pipe_src_w,
> +		if (crtc_state->pipe_src_w !=3D adjusted_mode->crtc_hdisplay) {
> +			bits =3D panel_fitter_scaling(crtc_state->pipe_src_w,
>  						    adjusted_mode->crtc_hdisplay);
>  =

>  			*pfit_pgm_ratios |=3D (bits << PFIT_HORIZ_SCALE_SHIFT |
> @@ -376,17 +377,17 @@ static void i9xx_scale_aspect(struct intel_crtc_sta=
te *pipe_config,
>  	}
>  }
>  =

> -void intel_gmch_panel_fitting(struct intel_crtc *intel_crtc,
> -			      struct intel_crtc_state *pipe_config,
> +void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			      int fitting_mode)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 pfit_control =3D 0, pfit_pgm_ratios =3D 0, border =3D 0;
> -	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
>  =

>  	/* Native modes don't need fitting */
> -	if (adjusted_mode->crtc_hdisplay =3D=3D pipe_config->pipe_src_w &&
> -	    adjusted_mode->crtc_vdisplay =3D=3D pipe_config->pipe_src_h)
> +	if (adjusted_mode->crtc_hdisplay =3D=3D crtc_state->pipe_src_w &&
> +	    adjusted_mode->crtc_vdisplay =3D=3D crtc_state->pipe_src_h)
>  		goto out;
>  =

>  	switch (fitting_mode) {
> @@ -395,16 +396,16 @@ void intel_gmch_panel_fitting(struct intel_crtc *in=
tel_crtc,
>  		 * For centered modes, we have to calculate border widths &
>  		 * heights and modify the values programmed into the CRTC.
>  		 */
> -		centre_horizontally(adjusted_mode, pipe_config->pipe_src_w);
> -		centre_vertically(adjusted_mode, pipe_config->pipe_src_h);
> +		centre_horizontally(adjusted_mode, crtc_state->pipe_src_w);
> +		centre_vertically(adjusted_mode, crtc_state->pipe_src_h);
>  		border =3D LVDS_BORDER_ENABLE;
>  		break;
>  	case DRM_MODE_SCALE_ASPECT:
>  		/* Scale but preserve the aspect ratio */
>  		if (INTEL_GEN(dev_priv) >=3D 4)
> -			i965_scale_aspect(pipe_config, &pfit_control);
> +			i965_scale_aspect(crtc_state, &pfit_control);
>  		else
> -			i9xx_scale_aspect(pipe_config, &pfit_control,
> +			i9xx_scale_aspect(crtc_state, &pfit_control,
>  					  &pfit_pgm_ratios, &border);
>  		break;
>  	case DRM_MODE_SCALE_FULLSCREEN:
> @@ -412,8 +413,8 @@ void intel_gmch_panel_fitting(struct intel_crtc *inte=
l_crtc,
>  		 * Full scaling, even if it changes the aspect ratio.
>  		 * Fortunately this is all done for us in hw.
>  		 */
> -		if (pipe_config->pipe_src_h !=3D adjusted_mode->crtc_vdisplay ||
> -		    pipe_config->pipe_src_w !=3D adjusted_mode->crtc_hdisplay) {
> +		if (crtc_state->pipe_src_h !=3D adjusted_mode->crtc_vdisplay ||
> +		    crtc_state->pipe_src_w !=3D adjusted_mode->crtc_hdisplay) {
>  			pfit_control |=3D PFIT_ENABLE;
>  			if (INTEL_GEN(dev_priv) >=3D 4)
>  				pfit_control |=3D PFIT_SCALING_AUTO;
> @@ -433,7 +434,7 @@ void intel_gmch_panel_fitting(struct intel_crtc *inte=
l_crtc,
>  	/* 965+ wants fuzzy fitting */
>  	/* FIXME: handle multiple panels by failing gracefully */
>  	if (INTEL_GEN(dev_priv) >=3D 4)
> -		pfit_control |=3D PFIT_PIPE(intel_crtc->pipe) | PFIT_FILTER_FUZZY;
> +		pfit_control |=3D PFIT_PIPE(crtc->pipe) | PFIT_FILTER_FUZZY;
>  =

>  out:
>  	if ((pfit_control & PFIT_ENABLE) =3D=3D 0) {
> @@ -442,12 +443,12 @@ void intel_gmch_panel_fitting(struct intel_crtc *in=
tel_crtc,
>  	}
>  =

>  	/* Make sure pre-965 set dither correctly for 18bpp panels. */
> -	if (INTEL_GEN(dev_priv) < 4 && pipe_config->pipe_bpp =3D=3D 18)
> +	if (INTEL_GEN(dev_priv) < 4 && crtc_state->pipe_bpp =3D=3D 18)
>  		pfit_control |=3D PANEL_8TO6_DITHER_ENABLE;
>  =

> -	pipe_config->gmch_pfit.control =3D pfit_control;
> -	pipe_config->gmch_pfit.pgm_ratios =3D pfit_pgm_ratios;
> -	pipe_config->gmch_pfit.lvds_border_bits =3D border;
> +	crtc_state->gmch_pfit.control =3D pfit_control;
> +	crtc_state->gmch_pfit.pgm_ratios =3D pfit_pgm_ratios;
> +	crtc_state->gmch_pfit.lvds_border_bits =3D border;
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 11f2f6b628d8..92dcb773763c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -25,11 +25,9 @@ int intel_panel_init(struct intel_panel *panel,
>  void intel_panel_fini(struct intel_panel *panel);
>  void intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
>  			    struct drm_display_mode *adjusted_mode);
> -void intel_pch_panel_fitting(struct intel_crtc *crtc,
> -			     struct intel_crtc_state *pipe_config,
> +void intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     int fitting_mode);
> -void intel_gmch_panel_fitting(struct intel_crtc *crtc,
> -			      struct intel_crtc_state *pipe_config,
> +void intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			      int fitting_mode);
>  void intel_panel_set_backlight_acpi(const struct drm_connector_state *co=
nn_state,
>  				    u32 level, u32 max);
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 46e2895d916d..fe7c9d3ec418 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -267,7 +267,6 @@ static int intel_dsi_compute_config(struct intel_enco=
der *encoder,
>  	struct intel_dsi *intel_dsi =3D container_of(encoder, struct intel_dsi,
>  						   base);
>  	struct intel_connector *intel_connector =3D intel_dsi->attached_connect=
or;
> -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	const struct drm_display_mode *fixed_mode =3D intel_connector->panel.fi=
xed_mode;
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
>  	int ret;
> @@ -279,10 +278,10 @@ static int intel_dsi_compute_config(struct intel_en=
coder *encoder,
>  		intel_fixed_panel_mode(fixed_mode, adjusted_mode);
>  =

>  		if (HAS_GMCH(dev_priv))
> -			intel_gmch_panel_fitting(crtc, pipe_config,
> +			intel_gmch_panel_fitting(pipe_config,
>  						 conn_state->scaling_mode);
>  		else
> -			intel_pch_panel_fitting(crtc, pipe_config,
> +			intel_pch_panel_fitting(pipe_config,
>  						conn_state->scaling_mode);
>  	}
>  =

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
