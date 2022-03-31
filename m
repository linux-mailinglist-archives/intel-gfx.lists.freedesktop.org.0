Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05214EDA7C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029BD10F3DE;
	Thu, 31 Mar 2022 13:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA5710F3DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733214; x=1680269214;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6+OWOJxPX8KDJ0BGksyRYniskRmbLWxMY8K/DqTQGtY=;
 b=NsYlEIgR3dP/SJS1rclMPB7XyQgfr/S/7YdBfi9ZnMP5PXB6Y9X+x6zb
 ms7G2ueLYGGma9e6HytVnkJqXsnUFeEYmZ2qFz0jMytNAfrcvhpt6wAnr
 UqQjoIXeOGx/BGeSIOAYP/N7scxbkgZkEMn77TnPxUBVtcyFEt8IK1GbN
 Gs+VAkTl6hlXqqpo2qGbWfEJRFCiYwen6ZqwEQwNGhJ/5xVjivwhpJbHP
 3Qv7IgbFNN1kcdcdWkqRMGJQZPnIyIwf8IO3QQMYJ2ZngeONEAaOPVJx2
 JmjwuqgDEEirDZlMtDvJ+MCYzokujVeSlThSnAALdtusPIf2C5L1EAtHx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247336613"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="247336613"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:26:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566482612"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:26:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-6-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:26:48 +0300
Message-ID: <877d8a9rs7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 05/11] drm/i915: Combine the EDID
 fixed_mode+downclock_mode lookup into one
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
> The intel_panel_add_edid_fixed_mode() vs.
> intel_panel_add_edid_downclock_mode() split is not really
> helpful. Let's just roll those into a single function so
> that the connector init code doesn't have to care too much
> about this. All we need to know is whether DRRS should be
> allowed or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++----
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++++++--
>  drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
>  drivers/gpu/drm/i915/display/intel_sdvo.c  |  2 +-
>  5 files changed, 14 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e539bc315d7b..abfdaa0c7382 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5072,10 +5072,8 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	intel_panel_add_edid_fixed_mode(intel_connector);
> -	if (intel_panel_preferred_fixed_mode(intel_connector) &&
> -	    intel_edp_has_drrs(intel_dp))
> -		intel_panel_add_edid_downclock_mode(intel_connector);
> +	intel_panel_add_edid_fixed_modes(intel_connector,
> +					 intel_edp_has_drrs(intel_dp));
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 193daffadc90..73129d21f5e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -968,7 +968,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	intel_connector->edid =3D edid;
>=20=20
>  	/* Try EDID first */
> -	intel_panel_add_edid_fixed_mode(intel_connector);
> +	intel_panel_add_edid_fixed_modes(intel_connector, false);
>=20=20
>  	/* Failed to get EDID, what about VBT? */
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 5ecc6fc80588..3b1da9aa023f 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -159,7 +159,7 @@ static bool is_downclock_mode(const struct drm_displa=
y_mode *downclock_mode,
>  		downclock_mode->clock < fixed_mode->clock;
>  }
>=20=20
> -void intel_panel_add_edid_downclock_mode(struct intel_connector *connect=
or)
> +static void intel_panel_add_edid_downclock_mode(struct intel_connector *=
connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode =3D
> @@ -202,7 +202,7 @@ void intel_panel_add_edid_downclock_mode(struct intel=
_connector *connector)
>  	list_add_tail(&downclock_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
> +static void intel_panel_add_edid_fixed_mode(struct intel_connector *conn=
ector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *scan;
> @@ -244,6 +244,13 @@ void intel_panel_add_edid_fixed_mode(struct intel_co=
nnector *connector)
>  	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> +void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs)
> +{
> +	intel_panel_add_edid_fixed_mode(connector);
> +	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
> +		intel_panel_add_edid_downclock_mode(connector);
> +}
> +
>  static void intel_panel_add_fixed_mode(struct intel_connector *connector,
>  				       struct drm_display_mode *fixed_mode,
>  				       const char *type)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 5eaa2a1c2337..2e32bb728beb 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -40,8 +40,7 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_s=
tate,
>  			const struct drm_connector_state *conn_state);
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);
> -void intel_panel_add_edid_fixed_mode(struct intel_connector *connector);
> -void intel_panel_add_edid_downclock_mode(struct intel_connector *connect=
or);
> +void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs);
>  void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r);
>  void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or);
>  void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 866e05c1a49d..ab88d8b783e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2907,7 +2907,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> -		intel_panel_add_edid_fixed_mode(intel_connector);
> +		intel_panel_add_edid_fixed_modes(intel_connector, false);
>  	}
>=20=20
>  	intel_panel_init(intel_connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
