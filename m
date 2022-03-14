Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265BF4D7EDB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06A410E3C2;
	Mon, 14 Mar 2022 09:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E564710E3C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647250875; x=1678786875;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BqOXfwrjVFpckBXK0tjo4H306LzABjMqAt0XCwAwTD4=;
 b=bbROZ8Bf3PJq/IacmrKswDBFUOTCdcycZivehpthgpmzJhqO9vxn4OCO
 yFKT6gTmai5aLRVhth38JW1D+z9yf/sxumWXHkN3aP+iX14S68H0LdMIv
 RWHNjJViIiBJqfavLLEoKrxArg8Dk7qdjAHpX/HCjnN9oLk7/uBKOMKlU
 rWoPivzMOPfe/cy8kB5mjeTtN02WF+JMCVUqJOdo6gkHiBC9/vxU+bJ8J
 OwY0snaR8Qb0Ge6uB/6so7fCSvqMvPhy6ZtqCqKxSkW5+5igNYzDloIam
 28l17qQTyloAlzSb8uvctHxYj93JO/hKgBb60+6vjq3McpOPODIhIGBsS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="319205709"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="319205709"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:41:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556334123"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:41:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-2-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:41:11 +0200
Message-ID: <87h780x45k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/16] drm/i915/dsi: Pass fixed_mode to
 *_dsi_add_properties()
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
> We want to eventually get rid of the connector->panel.fixed_mode
> pointer so avoid using it during DSI property setup. Since this
> all happens during the encoder init we already have the fixed_mode
> around, just pass that in.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 11 ++++++-----
>  drivers/gpu/drm/i915/display/vlv_dsi.c |  9 +++++----
>  2 files changed, 11 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 13b07c6fd6be..00cae5d26637 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1965,7 +1965,8 @@ static void icl_dphy_param_init(struct intel_dsi *i=
ntel_dsi)
>  	intel_dsi_log_params(intel_dsi);
>  }
>=20=20
> -static void icl_dsi_add_properties(struct intel_connector *connector)
> +static void icl_dsi_add_properties(struct intel_connector *connector,
> +				   const struct drm_display_mode *fixed_mode)
>  {
>  	u32 allowed_scalers;
>=20=20
> @@ -1979,9 +1980,9 @@ static void icl_dsi_add_properties(struct intel_con=
nector *connector)
>  	connector->base.state->scaling_mode =3D DRM_MODE_SCALE_ASPECT;
>=20=20
>  	drm_connector_set_panel_orientation_with_quirk(&connector->base,
> -				intel_dsi_get_panel_orientation(connector),
> -				connector->panel.fixed_mode->hdisplay,
> -				connector->panel.fixed_mode->vdisplay);
> +						       intel_dsi_get_panel_orientation(connector),
> +						       fixed_mode->hdisplay,
> +						       fixed_mode->vdisplay);
>  }
>=20=20
>  void icl_dsi_init(struct drm_i915_private *dev_priv)
> @@ -2084,7 +2085,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>=20=20
>  	icl_dphy_param_init(intel_dsi);
>=20=20
> -	icl_dsi_add_properties(intel_connector);
> +	icl_dsi_add_properties(intel_connector, fixed_mode);
>  	return;
>=20=20
>  err:
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 0d936f658b3f..c87a6e729a3c 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1657,7 +1657,8 @@ static const struct drm_connector_funcs intel_dsi_c=
onnector_funcs =3D {
>  	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
>  };
>=20=20
> -static void vlv_dsi_add_properties(struct intel_connector *connector)
> +static void vlv_dsi_add_properties(struct intel_connector *connector,
> +				   const struct drm_display_mode *fixed_mode)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	u32 allowed_scalers;
> @@ -1673,8 +1674,8 @@ static void vlv_dsi_add_properties(struct intel_con=
nector *connector)
>=20=20
>  	drm_connector_set_panel_orientation_with_quirk(&connector->base,
>  						       intel_dsi_get_panel_orientation(connector),
> -						       connector->panel.fixed_mode->hdisplay,
> -						       connector->panel.fixed_mode->vdisplay);
> +						       fixed_mode->hdisplay,
> +						       fixed_mode->vdisplay);
>  }
>=20=20
>  #define NS_KHZ_RATIO		1000000
> @@ -1989,7 +1990,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
> -	vlv_dsi_add_properties(intel_connector);
> +	vlv_dsi_add_properties(intel_connector, fixed_mode);
>=20=20
>  	return;

--=20
Jani Nikula, Intel Open Source Graphics Center
