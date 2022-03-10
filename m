Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB0D4D444B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 11:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14F710EA19;
	Thu, 10 Mar 2022 10:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91F88919C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646906952; x=1678442952;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=INuhH6HJxGk2/LSViM2yTzCxOMTBPStr1TaXwYqSGy4=;
 b=JN+WToz3cNmhiIeBSIyBnBgXJsmrXKwkwAOmA+ueo+LCASo90ZEip0Ag
 mGf59VIDdZVAH/NPxM2HPDgLADmVJesjEdzGKUB8dc2Tok9PHyTdrsZhf
 h3pIRn/cubGlg74KtEtdXZNrI7td+dKhxXmC79kbrGkuiW3ZkEhYxSkZR
 I6XqeSiSPxUScyLv0c7bm6Dm+Up8hI0duGwv8WihG8Wr9MK72o0OcF9cB
 XTqLpQcAn6lEBN50bydARza65ToeEyx5O0yxrRsfVVDAyeqvbSu/Ptsjt
 +O6/NTEh/bplfInFsA8Uaec64aDnODr3nSvhbKI5rqgHHTv1wcy3+HbHZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="254042171"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="254042171"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:09:12 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554576574"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:09:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-13-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 12:09:08 +0200
Message-ID: <878rtixgor.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915: Introduce
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Absract away the details on where we store the fixed/downclock modes,
> and also how we select them. Will be useful for static DRRS (aka.
> allowing the user to select the refresh rate for the panel).
>
> Only hooked these up into the DP code for now since that's
> the only one that can do DRRS atm.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Could justify passing the mode parameter to the functions in the commit
message, as they're not needed here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  7 +++++--
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_panel.h |  8 ++++++--
>  4 files changed, 36 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 725c3350c923..af659320c02e 100644
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
> index dcbbd9c48458..5b2eb55c1340 100644
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
> @@ -74,9 +75,11 @@ intel_drrs_compute_config(struct intel_crtc_state *pip=
e_config,
>  			  int output_bpp, bool constant_n)
>  {
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
> @@ -87,7 +90,7 @@ intel_drrs_compute_config(struct intel_crtc_state *pipe=
_config,
>=20=20
>  	pipe_config->has_drrs =3D true;
>=20=20
> -	pixel_clock =3D connector->panel.downclock_mode->clock;
> +	pixel_clock =3D downclock_mode->clock;
>  	if (pipe_config->splitter.enable)
>  		pixel_clock /=3D pipe_config->splitter.link_count;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 6cd6d4fdd5ad..127ad9643360 100644
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
> +			   const struct drm_display_mode *fixed_mode)
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
> index d50b3f7e9e58..6d4df0e54ef2 100644
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
> +			   const struct drm_display_mode *fixed_mode);
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
