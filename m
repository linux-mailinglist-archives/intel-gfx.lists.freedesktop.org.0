Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA384E9407
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075DD10E077;
	Mon, 28 Mar 2022 11:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB7E10E077
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648466666; x=1680002666;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fKwgSerMSHoVkxHXCS+wXXb727IND8+rju8fo+GSjTQ=;
 b=ivW7ucr8hhSjOcFT42d0Zp7WyGqlUKpb2cwPiq+YldvCe0MTxi12M3lk
 o9/xd1ya6ItGnoLZazbDFnUDAvylbFiq++rNV8Cft4idjRZLYLMVR2CY9
 GpBpKSBojgkTTTN6VfKMJshWte3nyZbTbS+V6FcFAVOYswSwyjp74uMBS
 31ynuRChum12DHn5FAPHIsO6y8G7GA80ExTlr2dCIOZ8RTUZJjrSxYmYG
 ioEpOlxmkKHVDhwHvPRnexoHFzW//mY7jJwblfNlsbvHB0z51hHukE7f6
 TUMO/1Pk5xnf1VoDia13mncqZpxSqixK7eq0dRtnbijvYR7GqxOU2shEV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="345411047"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="345411047"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:24:25 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563565913"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:24:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-2-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:24:15 +0300
Message-ID: <875ynyfhgg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Pass intel_connector to
 intel_panel_{init, fini}()
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
> All the other intel_panel functions take struct intel_connector,
> so might as well make init()/fini() take one as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_connector.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c     | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_panel.h     |  5 ++---
>  drivers/gpu/drm/i915/display/intel_sdvo.c      |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c         |  2 +-
>  9 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 00cae5d26637..c7a6c2cce297 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2057,7 +2057,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  		goto err;
>  	}
>=20=20
> -	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
> +	intel_panel_init(intel_connector, fixed_mode, NULL);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	if (dev_priv->vbt.dsi.config->dual_link)
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index a5f5dd55b0cb..1dcc268927a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -102,7 +102,7 @@ void intel_connector_destroy(struct drm_connector *co=
nnector)
>  	if (!IS_ERR_OR_NULL(intel_connector->edid))
>  		kfree(intel_connector->edid);
>=20=20
> -	intel_panel_fini(&intel_connector->panel);
> +	intel_panel_fini(intel_connector);
>=20=20
>  	drm_connector_cleanup(connector);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 9e19165fd175..3bf44f7909e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5060,7 +5060,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  			    pipe_name(pipe));
>  	}
>=20=20
> -	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
> +	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
>  	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>  		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>  	intel_backlight_setup(intel_connector, pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index d4670889d26c..d4dc16a9c0dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -549,7 +549,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
>  			 * headers, likely), so for now, just get the current
>  			 * mode being output through DVO.
>  			 */
> -			intel_panel_init(&intel_connector->panel,
> +			intel_panel_init(intel_connector,
>  					 intel_dvo_get_current_mode(intel_encoder),
>  					 NULL);
>  			intel_dvo->panel_wants_dither =3D true;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 5449d69fbae5..cd685dbf324b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -996,7 +996,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  out:
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
> -	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
> +	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder, =
fixed_mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index f428d0457c17..8c9e26539cc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -599,10 +599,12 @@ intel_panel_mode_valid(struct intel_connector *conn=
ector,
>  	return MODE_OK;
>  }
>=20=20
> -int intel_panel_init(struct intel_panel *panel,
> +int intel_panel_init(struct intel_connector *connector,
>  		     struct drm_display_mode *fixed_mode,
>  		     struct drm_display_mode *downclock_mode)
>  {
> +	struct intel_panel *panel =3D &connector->panel;
> +
>  	intel_backlight_init_funcs(panel);
>=20=20
>  	if (fixed_mode)
> @@ -613,16 +615,15 @@ int intel_panel_init(struct intel_panel *panel,
>  	return 0;
>  }
>=20=20
> -void intel_panel_fini(struct intel_panel *panel)
> +void intel_panel_fini(struct intel_connector *connector)
>  {
> -	struct intel_connector *intel_connector =3D
> -		container_of(panel, struct intel_connector, panel);
> +	struct intel_panel *panel =3D &connector->panel;
>  	struct drm_display_mode *fixed_mode, *next;
>=20=20
>  	intel_backlight_destroy(panel);
>=20=20
>  	list_for_each_entry_safe(fixed_mode, next, &panel->fixed_modes, head) {
>  		list_del(&fixed_mode->head);
> -		drm_mode_destroy(intel_connector->base.dev, fixed_mode);
> +		drm_mode_destroy(connector->base.dev, fixed_mode);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index e86100903f9e..579200270825 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -16,12 +16,11 @@ struct drm_display_mode;
>  struct drm_i915_private;
>  struct intel_connector;
>  struct intel_crtc_state;
> -struct intel_panel;
>=20=20
> -int intel_panel_init(struct intel_panel *panel,
> +int intel_panel_init(struct intel_connector *connector,
>  		     struct drm_display_mode *fixed_mode,
>  		     struct drm_display_mode *downclock_mode);
> -void intel_panel_fini(struct intel_panel *panel);
> +void intel_panel_fini(struct intel_connector *connector);
>  enum drm_connector_status
>  intel_panel_detect(struct drm_connector *connector, bool force);
>  bool intel_panel_use_ssc(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 328a8f20c63b..a2061b132107 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2928,7 +2928,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  			struct drm_display_mode *fixed_mode =3D
>  				drm_mode_duplicate(connector->dev, mode);
>=20=20
> -			intel_panel_init(&intel_connector->panel,
> +			intel_panel_init(intel_connector,
>  					 fixed_mode, NULL);
>  			break;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index c87a6e729a3c..32f5b115c2c2 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1987,7 +1987,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  		goto err_cleanup_connector;
>  	}
>=20=20
> -	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
> +	intel_panel_init(intel_connector, fixed_mode, NULL);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
>  	vlv_dsi_add_properties(intel_connector, fixed_mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
