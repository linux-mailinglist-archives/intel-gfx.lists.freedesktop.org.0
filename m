Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D58D4E94BD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0B410E18D;
	Mon, 28 Mar 2022 11:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D4110E18D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648467075; x=1680003075;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Pc24DTfSvPboGKfWDxEZgZrD0xEOt+oLFMVP2H4Ix0w=;
 b=mfPnKZy9dVaAZl9LOumPKfov2xUgUyuxJLSuf+1A46kLruZnXXT6Xxat
 AgiQ5xxjjldIPqCFxb7m3UdOoFTrrxt6xDmzTkYXpA6JKo/CgABXfJV4l
 i40qe7vum22BP+SrHLwXL/M8yrf8AyPjD/Cne/5HZ6v2HlT6xTsmhqwTM
 aZonIMVOjpsPxQSQ86YQgLfFDe3rt1FU0ci5oYmIh24nA0ZFdUJT7kytj
 DubSeQp64qwYP10FJurDbebBiQi53UNkcLRrA1ETmnXREyWUzvpHIUdfX
 zQeGh01p/vqLvCB0QrA768RlYQUXYGhh5dSQALW2PCQM/HOwoiC3jq2NT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="256550980"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="256550980"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:31:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="719069863"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:31:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-7-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:31:04 +0300
Message-ID: <87r16me2kn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Extract
 intel_panel_vbt_sdvo_fixed_mode()
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
> We have a function for duplicating the VBT LFP mode. Add the same
> for the VBT SDVO mode.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 14 ++++----------
>  3 files changed, 26 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index bd606d0b1c24..7f59db8b9ede 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -272,6 +272,26 @@ intel_panel_vbt_lfp_fixed_mode(struct intel_connecto=
r *connector)
>  	return fixed_mode;
>  }
>=20=20
> +struct drm_display_mode *
> +intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct drm_display_mode *fixed_mode;
> +
> +	if (!i915->vbt.sdvo_lvds_vbt_mode)
> +		return NULL;
> +
> +	fixed_mode =3D drm_mode_duplicate(&i915->drm,
> +					i915->vbt.sdvo_lvds_vbt_mode);
> +	if (!fixed_mode)
> +		return NULL;
> +
> +	/* Guarantee the mode is preferred */
> +	fixed_mode->type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
> +
> +	return fixed_mode;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 9704ac81fe3e..7e32c903a1e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -48,5 +48,7 @@ struct drm_display_mode *
>  intel_panel_edid_fixed_mode(struct intel_connector *connector);
>  struct drm_display_mode *
>  intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
> +struct drm_display_mode *
> +intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector);
>=20=20
>  #endif /* __INTEL_PANEL_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index a2061b132107..27b3d3a79989 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2301,16 +2301,10 @@ static int intel_sdvo_get_lvds_modes(struct drm_c=
onnector *connector)
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
>  	 * SDVO->LVDS transcoders can't cope with the EDID mode.
>  	 */
> -	if (dev_priv->vbt.sdvo_lvds_vbt_mode !=3D NULL) {
> -		newmode =3D drm_mode_duplicate(connector->dev,
> -					     dev_priv->vbt.sdvo_lvds_vbt_mode);
> -		if (newmode !=3D NULL) {
> -			/* Guarantee the mode is preferred */
> -			newmode->type =3D (DRM_MODE_TYPE_PREFERRED |
> -					 DRM_MODE_TYPE_DRIVER);
> -			drm_mode_probed_add(connector, newmode);
> -			num_modes++;
> -		}
> +	newmode =3D intel_panel_vbt_sdvo_fixed_mode(to_intel_connector(connecto=
r));
> +	if (newmode) {
> +		drm_mode_probed_add(connector, newmode);
> +		num_modes++;
>  	}
>=20=20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center
