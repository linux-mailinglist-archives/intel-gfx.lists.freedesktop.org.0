Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D0F4E947A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0AB710E13F;
	Mon, 28 Mar 2022 11:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2BC10E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648466925; x=1680002925;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hUgDX+FCCD6FduH+JBRXeD2VbTeyXwmcvYi7GjiX2/A=;
 b=TIpPtTBgRjE2pmAtUqjw8Obefbui0iTLrgr5CayWXCUsfBE+4abf/OyR
 96Qz1OgMX8kuBR4+eer/AACI/qYb7QQpW0cubmK1wG+VQCURq6gFDBTiC
 m2SZBkXuLU+l1FgQNx3JKzOOgqD5h4XCOsD5/pH/wYGG6DTz0J63Z9HRD
 IAQN8a8GK/YTkTe+p924oi/8Up3lhAutVkyUdPRl5ibY+V8VFNXrZfkf2
 D6MYwvSdtWL8yaQhRrs8EmSMQ69AiGu8Tf+YSBUnEf36gN9YLVOd9m5nj
 Unxm1EcbSO/pFrvBzownXgiNujGaL+EkXZJTcEa+IMHmBSBwBqMJhgtOH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258689784"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258689784"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:28:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563568802"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:28:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-5-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:28:34 +0300
Message-ID: <87wngee2ot.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Use
 intel_panel_preferred_fixed_mode() more
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

On Wed, 23 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use intel_panel_preferred_fixed_mode() for all the orientation
> quirk setup and compute_is_dual_link_lvds()). All of these
> happen after intel_panel_init() so the panel fixed_mode list
> is already in place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_lvds.c | 11 ++++++-----
>  drivers/gpu/drm/i915/display/vlv_dsi.c    |  7 ++++---
>  4 files changed, 18 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index c7a6c2cce297..b4fda29b04b5 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1965,9 +1965,10 @@ static void icl_dphy_param_init(struct intel_dsi *=
intel_dsi)
>  	intel_dsi_log_params(intel_dsi);
>  }
>=20=20
> -static void icl_dsi_add_properties(struct intel_connector *connector,
> -				   const struct drm_display_mode *fixed_mode)
> +static void icl_dsi_add_properties(struct intel_connector *connector)
>  {
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_preferred_fixed_mode(connector);
>  	u32 allowed_scalers;
>=20=20
>  	allowed_scalers =3D BIT(DRM_MODE_SCALE_ASPECT) |
> @@ -2085,7 +2086,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>=20=20
>  	icl_dphy_param_init(intel_dsi);
>=20=20
> -	icl_dsi_add_properties(intel_connector, fixed_mode);
> +	icl_dsi_add_properties(intel_connector);
>  	return;
>=20=20
>  err:
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4bf13dbafbee..d62123b9d0d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4962,11 +4962,12 @@ intel_dp_add_properties(struct intel_dp *intel_dp=
, struct drm_connector *connect
>  }
>=20=20
>  static void
> -intel_edp_add_properties(struct intel_dp *intel_dp,
> -			 const struct drm_display_mode *fixed_mode)
> +intel_edp_add_properties(struct intel_dp *intel_dp)
>  {
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_preferred_fixed_mode(connector);
>=20=20
>  	if (!fixed_mode)
>  		return;
> @@ -5081,7 +5082,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>  	intel_backlight_setup(intel_connector, pipe);
>=20=20
> -	intel_edp_add_properties(intel_dp, fixed_mode);
> +	intel_edp_add_properties(intel_dp);
>=20=20
>  	return true;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index b57e76b4ef04..d068e0607153 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -778,12 +778,13 @@ bool intel_is_dual_link_lvds(struct drm_i915_privat=
e *dev_priv)
>  	return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
>  }
>=20=20
> -static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_en=
coder,
> -				      const struct drm_display_mode *fixed_mode)
> +static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_en=
coder)
>  {
> -	struct drm_device *dev =3D lvds_encoder->base.base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(lvds_encoder->base.base.d=
ev);
> +	struct intel_connector *connector =3D lvds_encoder->attached_connector;
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_preferred_fixed_mode(connector);
>  	unsigned int val;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>=20=20
>  	/* use the module option value if specified */
>  	if (dev_priv->params.lvds_channel_mode > 0)
> @@ -999,7 +1000,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pr=
iv)
>  	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
> -	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder, =
fixed_mode);
> +	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder);
>  	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
>  		    lvds_encoder->is_dual_link ? "dual" : "single");
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 32f5b115c2c2..da0af425ed94 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1657,10 +1657,11 @@ static const struct drm_connector_funcs intel_dsi=
_connector_funcs =3D {
>  	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
>  };
>=20=20
> -static void vlv_dsi_add_properties(struct intel_connector *connector,
> -				   const struct drm_display_mode *fixed_mode)
> +static void vlv_dsi_add_properties(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	const struct drm_display_mode *fixed_mode =3D
> +		intel_panel_preferred_fixed_mode(connector);
>  	u32 allowed_scalers;
>=20=20
>  	allowed_scalers =3D BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FUL=
LSCREEN);
> @@ -1990,7 +1991,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_panel_init(intel_connector, fixed_mode, NULL);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
> -	vlv_dsi_add_properties(intel_connector, fixed_mode);
> +	vlv_dsi_add_properties(intel_connector);
>=20=20
>  	return;

--=20
Jani Nikula, Intel Open Source Graphics Center
