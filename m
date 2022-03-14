Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA5D4D7F44
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735F10E3AB;
	Mon, 14 Mar 2022 09:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785B610E360
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647251830; x=1678787830;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qc9TxtwO0suJ86TiU+G67xxoshzJF/ly23pPExGCFtc=;
 b=CnMcVJZNOK0n8jjiXqWG+tbHGNvs9YTbZXHq6DCaK/MlE6neRI3BcswY
 dHQm9GzibyIAoXd+HU6oYvsJWgAhmH9Qmpt0OZXnfvCg7BAnkHyasGGOy
 AoH39wGhZW2qh6XqMeeEHinbrZ74QbFGqQBb8wtydcryzQA6oWHqkdtXC
 eSxLOoEvqN/ZwotxDbuJfObQhiFa0oAxM8GefxG+lBdyKcYaZj6ovxBBq
 T6RJ3Fua8eduhfQm9L+38j4P3NVW4JseZTlgzeNoErAwq5VuxlywBG0X4
 WbhN+Hw04itqjAUjJPZQwVre5ZLuOtyUiaX5D9bfbBPkVPplx7W/BEK45 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255711545"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="255711545"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:57:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="539899344"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:57:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-8-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:57:06 +0200
Message-ID: <8735jkx3f1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 07/16] drm/i915: Introduce
 intel_panel_get_modes()
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
> Several connectors want to return the fixed_mode from .get_modes(),
> add a helper to do that (and hide the details inside intel_panel.c).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Nice!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

One note below.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 13 ++-----------
>  drivers/gpu/drm/i915/display/intel_dsi.c   | 21 +--------------------
>  drivers/gpu/drm/i915/display/intel_dvo.c   | 14 +-------------
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  9 +--------
>  drivers/gpu/drm/i915/display/intel_panel.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  1 +
>  6 files changed, 24 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 92a2651a71a7..3c97cd5853cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4588,17 +4588,8 @@ static int intel_dp_get_modes(struct drm_connector=
 *connector)
>  	}
>=20=20
>  	/* Also add fixed mode, which may or may not be present in EDID */
> -	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
> -	    intel_connector->panel.fixed_mode) {
> -		struct drm_display_mode *mode;
> -
> -		mode =3D drm_mode_duplicate(connector->dev,
> -					  intel_connector->panel.fixed_mode);
> -		if (mode) {
> -			drm_mode_probed_add(connector, mode);
> -			num_modes++;
> -		}
> -	}
> +	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
> +		num_modes +=3D intel_panel_get_modes(intel_connector);

Maybe we could even remove the intel_dp_is_edp() check in the
future. It's basically redundant.

>=20=20
>  	if (num_modes)
>  		return num_modes;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i=
915/display/intel_dsi.c
> index 37f280b1f179..389a8c24cdc1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -34,26 +34,7 @@ int intel_dsi_tlpx_ns(const struct intel_dsi *intel_ds=
i)
>=20=20
>  int intel_dsi_get_modes(struct drm_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> -	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	struct drm_display_mode *mode;
> -
> -	drm_dbg_kms(&i915->drm, "\n");
> -
> -	if (!intel_connector->panel.fixed_mode) {
> -		drm_dbg_kms(&i915->drm, "no fixed mode\n");
> -		return 0;
> -	}
> -
> -	mode =3D drm_mode_duplicate(connector->dev,
> -				  intel_connector->panel.fixed_mode);
> -	if (!mode) {
> -		drm_dbg_kms(&i915->drm, "drm_mode_duplicate failed\n");
> -		return 0;
> -	}
> -
> -	drm_mode_probed_add(connector, mode);
> -	return 1;
> +	return intel_panel_get_modes(to_intel_connector(connector));
>  }
>=20=20
>  enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connecto=
r,
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 0367e6a1bac7..d4670889d26c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -333,8 +333,6 @@ intel_dvo_detect(struct drm_connector *connector, boo=
l force)
>  static int intel_dvo_get_modes(struct drm_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	const struct drm_display_mode *fixed_mode =3D
> -		to_intel_connector(connector)->panel.fixed_mode;
>  	int num_modes;
>=20=20
>  	/*
> @@ -348,17 +346,7 @@ static int intel_dvo_get_modes(struct drm_connector =
*connector)
>  	if (num_modes)
>  		return num_modes;
>=20=20
> -	if (fixed_mode) {
> -		struct drm_display_mode *mode;
> -
> -		mode =3D drm_mode_duplicate(connector->dev, fixed_mode);
> -		if (mode) {
> -			drm_mode_probed_add(connector, mode);
> -			num_modes++;
> -		}
> -	}
> -
> -	return num_modes;
> +	return intel_panel_get_modes(to_intel_connector(connector));
>  }
>=20=20
>  static const struct drm_connector_funcs intel_dvo_connector_funcs =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 3842417e06b0..5449d69fbae5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -476,19 +476,12 @@ static int intel_lvds_compute_config(struct intel_e=
ncoder *intel_encoder,
>  static int intel_lvds_get_modes(struct drm_connector *connector)
>  {
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_display_mode *mode;
>=20=20
>  	/* use cached edid if we have one */
>  	if (!IS_ERR_OR_NULL(intel_connector->edid))
>  		return drm_add_edid_modes(connector, intel_connector->edid);
>=20=20
> -	mode =3D drm_mode_duplicate(dev, intel_connector->panel.fixed_mode);
> -	if (mode =3D=3D NULL)
> -		return 0;
> -
> -	drm_mode_probed_add(connector, mode);
> -	return 1;
> +	return intel_panel_get_modes(intel_connector);
>  }
>=20=20
>  static const struct drm_connector_helper_funcs intel_lvds_connector_help=
er_funcs =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3ad246791da5..222328d4e7a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -59,6 +59,24 @@ intel_panel_downclock_mode(struct intel_connector *con=
nector,
>  	return connector->panel.downclock_mode;
>  }
>=20=20
> +int intel_panel_get_modes(struct intel_connector *connector)
> +{
> +	int num_modes =3D 0;
> +
> +	if (connector->panel.fixed_mode) {
> +		struct drm_display_mode *mode;
> +
> +		mode =3D drm_mode_duplicate(connector->base.dev,
> +					  connector->panel.fixed_mode);
> +		if (mode) {
> +			drm_mode_probed_add(&connector->base, mode);
> +			num_modes++;
> +		}
> +	}
> +
> +	return num_modes;
> +}
> +
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 7ce7e995853f..051b86450156 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -30,6 +30,7 @@ intel_panel_fixed_mode(struct intel_connector *connecto=
r,
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
> +int intel_panel_get_modes(struct intel_connector *connector);
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
