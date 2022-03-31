Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9A34EDA71
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A0310F39F;
	Thu, 31 Mar 2022 13:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31ED710F39C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733044; x=1680269044;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DyirSge+LDZI5SX+u9G0uIgjCENYNuPd8x0blnWtDWI=;
 b=M9bYTiaWFoHhQISI2Ld5gCGbn/VRr4Pkq07NQdsxKznwWgS5n+Gr820f
 GiWPPTTKvTqHwAAU735DJkceA5Nj66ismFE0VC5TEYVFEZXl7ur1UJfHC
 1nOpD6U9XT/0NRmqGlnheZTgrHIcoa4Gtm7kQ959cdAlK2vLI+aTTzoSK
 9ac9UwlQGB3JlYesticFQr2p+XsDj7+ihNOxuFnKIrmea1Ez72HqS19g6
 LX8OqAjtTwrcieDxlI+E4P/kgh2aeuXBzW3xzIhdRDOMcSjoJV01GjWmE
 CEMPPFM9/nf2mcyXz0zXEw0GP5i4Z/sLBSy6/CnoM1o/UC5u7dXzoUyok g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="346278682"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="346278682"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:24:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="547331551"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:24:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-4-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:23:59 +0300
Message-ID: <87czi29rww.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/11] drm/i915: Refactor non-EDID fixed
 mode duplication
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
> All the non-EDID fixed mode functions basically do the exact
> same thing. Let's refactor the common bits into a shared
> function.
>
> There are minor differences on how the mode types are populated,
> whether the display info physical size is updated, and the debug
> print. The differences are purely accidental, so unifying them is
> actually a good thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 66 ++++++++++------------
>  1 file changed, 30 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 415aa381f732..1e56ca9033e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -243,68 +243,62 @@ void intel_panel_add_edid_fixed_mode(struct intel_c=
onnector *connector)
>  	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r)
> +static void intel_panel_add_fixed_mode(struct intel_connector *connector,
> +				       struct drm_display_mode *fixed_mode,
> +				       const char *type)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct drm_display_info *info =3D &connector->base.display_info;
> -	struct drm_display_mode *fixed_mode;
>=20=20
> -	if (!dev_priv->vbt.lfp_lvds_vbt_mode)
> -		return;
> -
> -	fixed_mode =3D drm_mode_duplicate(&dev_priv->drm,
> -					dev_priv->vbt.lfp_lvds_vbt_mode);
>  	if (!fixed_mode)
>  		return;
>=20=20
> -	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> -
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: " D=
RM_MODE_FMT "\n",
> -		    connector->base.base.id, connector->base.name,
> -		    DRM_MODE_ARG(fixed_mode));
> +	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
>=20=20
>  	info->width_mm =3D fixed_mode->width_mm;
>  	info->height_mm =3D fixed_mode->height_mm;
>=20=20
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s fixed mode: " DRM_M=
ODE_FMT "\n",
> +		    connector->base.base.id, connector->base.name, type,
> +		    DRM_MODE_ARG(fixed_mode));
> +
>  	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
> -void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or)
> +void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct drm_display_mode *fixed_mode;
> -
> -	if (!i915->vbt.sdvo_lvds_vbt_mode)
> -		return;
> +	const struct drm_display_mode *mode;
>=20=20
> -	fixed_mode =3D drm_mode_duplicate(&i915->drm,
> -					i915->vbt.sdvo_lvds_vbt_mode);
> -	if (!fixed_mode)
> +	mode =3D i915->vbt.lfp_lvds_vbt_mode;
> +	if (!mode)
>  		return;
>=20=20
> -	/* Guarantee the mode is preferred */
> -	fixed_mode->type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
> -
> -	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> +	intel_panel_add_fixed_mode(connector,
> +				   drm_mode_duplicate(&i915->drm, mode),
> +				   "VBT LFP");
>  }
>=20=20
> -void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> -					struct intel_encoder *encoder)
> +void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct drm_display_mode *fixed_mode;
> +	const struct drm_display_mode *mode;
>=20=20
> -	fixed_mode =3D intel_encoder_current_mode(encoder);
> -	if (!fixed_mode)
> +	mode =3D i915->vbt.sdvo_lvds_vbt_mode;
> +	if (!mode)
>  		return;
>=20=20
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: "=
 DRM_MODE_FMT "\n",
> -		    connector->base.base.id, connector->base.name,
> -		    DRM_MODE_ARG(fixed_mode));
> -
> -	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> +	intel_panel_add_fixed_mode(connector,
> +				   drm_mode_duplicate(&i915->drm, mode),
> +				   "VBT SDVO");
> +}
>=20=20
> -	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> +void intel_panel_add_encoder_fixed_mode(struct intel_connector *connecto=
r,
> +					struct intel_encoder *encoder)
> +{
> +	intel_panel_add_fixed_mode(connector,
> +				   intel_encoder_current_mode(encoder),
> +				   "current (BIOS)");
>  }
>=20=20
>  /* adjusted_mode has been preset to be the panel's fixed mode */

--=20
Jani Nikula, Intel Open Source Graphics Center
