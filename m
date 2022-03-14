Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDB94D7F70
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C8C10E023;
	Mon, 14 Mar 2022 10:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF0810E023
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647252597; x=1678788597;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AecVJBQY8To73KFHytWJNLg1JxwtsRPJ65BprgiqMCc=;
 b=cKWG2sXo59SDhRTXaHbWJlilpZn15I//g0CDRm0tua+hQ84GuOdrteR5
 A6V18/1x7p/C6ETWepqSc2/AfkrglNEyI7UVfMa32pJHUYTJ906OxSwoW
 9GzABzPE1/fJ64yV5Do7pH7OZdAqGmUj4hULvRr6rdCHg3/Fojftv1UDY
 W2nLZufNHyhKw6WW/Xx1rtkmL8bg9n6W4ZADGnXO3CChKl8irSghkDL8N
 1VA4FXzkSF8/5OtzoHrjNG5kJkGQw/2AQ6tl5y+2J0Oxcd9n/P8P0u+eX
 UfEZ5o0VLiPdhcAMu1+iYXzuur+YDB4lVjGgIl6cxnO3DTSFu1+srsNgZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="342411080"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="342411080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:09:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556343774"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:09:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-7-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:09:51 +0200
Message-ID: <87tuc0vo9c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/16] drm/i915: Introduce
 intel_panel_{fixed, downclock}_mode()
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Abstract away the details on where we store the fixed/downclock
> modes, and also how we select them. Will be useful for static
> DRRS (aka. allowing the user to select the refresh rate for the
> panel).
>
> We pass in the user requested mode to intel_panel_fixed_mode()
> so that in the future it may try to match the refresh rate.
> And intel_panel_downclock_mode() gets passed the adjusted_mode
> we actually chose to use so that it may find a suitable lower
> resresh rate variant.
>
> v2: Hook it up for all encoders
>     s/fixed_mode/adjusted_mode/ in intel_panel_downclock_mode() (Jani)
>     Elaborate on the choice or arguments for the functions (Jani)
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  7 +++++--
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_dsi.c   |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dvo.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  3 ++-
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_panel.h |  8 ++++++--
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 20 ++++++++++++--------
>  8 files changed, 55 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 619546441eae..92a2651a71a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -918,8 +918,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  {
>  	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	struct drm_display_mode *fixed_mode =3D intel_connector->panel.fixed_mo=
de;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +	const struct drm_display_mode *fixed_mode;
>  	int target_clock =3D mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int max_dotclk =3D dev_priv->max_dotclk_freq;
> @@ -934,6 +934,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		return MODE_H_ILLEGAL;
>=20=20
> +	fixed_mode =3D intel_panel_fixed_mode(intel_connector, mode);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		status =3D intel_panel_mode_valid(intel_connector, mode);
>  		if (status !=3D MODE_OK)
> @@ -1797,6 +1798,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	const struct drm_display_mode *fixed_mode;
>  	enum port port =3D encoder->port;
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
>  	struct intel_digital_connector_state *intel_conn_state =3D
> @@ -1823,7 +1825,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	else
>  		pipe_config->has_audio =3D intel_conn_state->force_audio =3D=3D HDMI_A=
UDIO_ON;
>=20=20
> -	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
> +	fixed_mode =3D intel_panel_fixed_mode(intel_connector, adjusted_mode);
> +	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		ret =3D intel_panel_compute_config(intel_connector, adjusted_mode);
>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 4afbc903f169..2a58bf4cb6cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -48,7 +48,8 @@
>   */
>=20=20
>  static bool can_enable_drrs(struct intel_connector *connector,
> -			    const struct intel_crtc_state *pipe_config)
> +			    const struct intel_crtc_state *pipe_config,
> +			    const struct drm_display_mode *downclock_mode)
>  {
>  	const struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
> @@ -64,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *con=
nector,
>  	if (pipe_config->has_psr)
>  		return false;
>=20=20
> -	return connector->panel.downclock_mode &&
> +	return downclock_mode &&
>  		i915->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS;
>  }
>=20=20
> @@ -75,9 +76,11 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>  {
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	const struct drm_display_mode *downclock_mode =3D
> +		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
>  	int pixel_clock;
>=20=20
> -	if (!can_enable_drrs(connector, pipe_config)) {
> +	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
>  		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
>  			intel_zero_m_n(&pipe_config->dp_m2_n2);
>  		return;
> @@ -88,7 +91,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>=20=20
>  	pipe_config->has_drrs =3D true;
>=20=20
> -	pixel_clock =3D connector->panel.downclock_mode->clock;
> +	pixel_clock =3D downclock_mode->clock;
>  	if (pipe_config->splitter.enable)
>  		pixel_clock /=3D pipe_config->splitter.link_count;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i=
915/display/intel_dsi.c
> index a50422e03a7e..37f280b1f179 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -61,7 +61,8 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_co=
nnector *connector,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	const struct drm_display_mode *fixed_mode =3D intel_connector->panel.fi=
xed_mode;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_fixed_mode(intel_connector, mode);
>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
>  	enum drm_mode_status status;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 2eeb209afc64..0367e6a1bac7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -226,7 +226,7 @@ intel_dvo_mode_valid(struct drm_connector *connector,
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
>  	struct intel_dvo *intel_dvo =3D intel_attached_dvo(intel_connector);
>  	const struct drm_display_mode *fixed_mode =3D
> -		intel_connector->panel.fixed_mode;
> +		intel_panel_fixed_mode(intel_connector, mode);
>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
>  	int target_clock =3D mode->clock;
>=20=20
> @@ -257,9 +257,9 @@ static int intel_dvo_compute_config(struct intel_enco=
der *encoder,
>  {
>  	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
>  	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> -	const struct drm_display_mode *fixed_mode =3D
> -		intel_dvo->attached_connector->panel.fixed_mode;
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
>=20=20
>  	/*
>  	 * If we have timings from the BIOS for the panel, put them in
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index dd7292d3c88e..3842417e06b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -389,7 +389,8 @@ intel_lvds_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
>  {
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	struct drm_display_mode *fixed_mode =3D intel_connector->panel.fixed_mo=
de;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_fixed_mode(intel_connector, mode);
>  	int max_pixclk =3D to_i915(connector->dev)->max_dotclk_freq;
>  	enum drm_mode_status status;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 6cd6d4fdd5ad..3ad246791da5 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -45,10 +45,25 @@ bool intel_panel_use_ssc(struct drm_i915_private *i91=
5)
>  		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
>  }
>=20=20
> +const struct drm_display_mode *
> +intel_panel_fixed_mode(struct intel_connector *connector,
> +		       const struct drm_display_mode *mode)
> +{
> +	return connector->panel.fixed_mode;
> +}
> +
> +const struct drm_display_mode *
> +intel_panel_downclock_mode(struct intel_connector *connector,
> +			   const struct drm_display_mode *adjusted_mode)
> +{
> +	return connector->panel.downclock_mode;
> +}
> +
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode)
>  {
> -	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_fixed_mode(connector, adjusted_mode);
>=20=20
>  	if (!fixed_mode)
>  		return 0;
> @@ -508,7 +523,8 @@ enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode)
>  {
> -	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_fixed_mode(connector, mode);
>=20=20
>  	if (!fixed_mode)
>  		return MODE_OK;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index d50b3f7e9e58..7ce7e995853f 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -24,8 +24,12 @@ void intel_panel_fini(struct intel_panel *panel);
>  enum drm_connector_status
>  intel_panel_detect(struct drm_connector *connector, bool force);
>  bool intel_panel_use_ssc(struct drm_i915_private *i915);
> -void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
> -			    struct drm_display_mode *adjusted_mode);
> +const struct drm_display_mode *
> +intel_panel_fixed_mode(struct intel_connector *connector,
> +		       const struct drm_display_mode *mode);
> +const struct drm_display_mode *
> +intel_panel_downclock_mode(struct intel_connector *connector,
> +			   const struct drm_display_mode *adjusted_mode);
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 129f6619c3a1..04487b03b640 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -795,7 +795,7 @@ intel_sdvo_create_preferred_input_timing(struct intel=
_sdvo *intel_sdvo,
>=20=20
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		const struct drm_display_mode *fixed_mode =3D
> -			intel_sdvo_connector->base.panel.fixed_mode;
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>=20=20
>  		if (fixed_mode->hdisplay !=3D args.width ||
>  		    fixed_mode->vdisplay !=3D args.height)
> @@ -1331,6 +1331,8 @@ static int intel_sdvo_compute_config(struct intel_e=
ncoder *encoder,
>  							   adjusted_mode);
>  		pipe_config->sdvo_tv_clock =3D true;
>  	} else if (IS_LVDS(intel_sdvo_connector)) {
> +		const struct drm_display_mode *fixed_mode =3D
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>  		int ret;
>=20=20
>  		ret =3D intel_panel_compute_config(&intel_sdvo_connector->base,
> @@ -1338,8 +1340,7 @@ static int intel_sdvo_compute_config(struct intel_e=
ncoder *encoder,
>  		if (ret)
>  			return ret;
>=20=20
> -		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
> -							     intel_sdvo_connector->base.panel.fixed_mode))
> +		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, fixed_mode))
>  			return -EINVAL;
>=20=20
>  		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
> @@ -1461,7 +1462,7 @@ static void intel_sdvo_pre_enable(struct intel_atom=
ic_state *state,
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>  	const struct intel_sdvo_connector_state *sdvo_state =3D
>  		to_intel_sdvo_connector_state(conn_state);
> -	const struct intel_sdvo_connector *intel_sdvo_connector =3D
> +	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(conn_state->connector);
>  	const struct drm_display_mode *mode =3D &crtc_state->hw.mode;
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(intel_encoder);
> @@ -1492,11 +1493,14 @@ static void intel_sdvo_pre_enable(struct intel_at=
omic_state *state,
>  		return;
>=20=20
>  	/* lvds has a special fixed output timing. */
> -	if (IS_LVDS(intel_sdvo_connector))
> -		intel_sdvo_get_dtd_from_mode(&output_dtd,
> -					     intel_sdvo_connector->base.panel.fixed_mode);
> -	else
> +	if (IS_LVDS(intel_sdvo_connector)) {
> +		const struct drm_display_mode *fixed_mode =3D
> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> +
> +		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
> +	} else {
>  		intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
> +	}
>  	if (!intel_sdvo_set_output_timing(intel_sdvo, &output_dtd))
>  		drm_info(&dev_priv->drm,
>  			 "Setting output timings on %s failed\n",

--=20
Jani Nikula, Intel Open Source Graphics Center
