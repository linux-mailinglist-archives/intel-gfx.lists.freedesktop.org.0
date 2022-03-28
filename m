Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8574E94CF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1922010E071;
	Mon, 28 Mar 2022 11:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B043D10E071
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648467337; x=1680003337;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rFMgrlAhlFFd37p4ci6wR7OfkOw9tOPZNV61xYWxHCQ=;
 b=IucG2G41xrZHTx51xQGB8tIZ/OWL7oKY8dsCITz71MRIGYfgliAt1CBT
 4sHsnX9S4b5eyaSFOkszPRG4hHg/AqimDRXj+/ct1BPs9Q+O7UwYvO9CY
 Jy7cQMaYILmeeW1InOEcyMY+an3vhNyWQ7NfsH1inSLat0Y3tHshu28Ge
 RTrn/hhmYqJ9ZDOFZKVctoWsJvqI35Ny8dM4qp84/mp1olQCIMkb67Lm/
 lBSf+KYvjKWIaBgwmi0DPABZaG5PqcDkJyiwcigghGnWjS4UAXMbHvNfi
 W9xJOQJt6UUuJwdHT4zalUStatmC6A2GkgXk5wyo7k//bu7AWe/Zl9WPq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258690807"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258690807"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:35:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563573548"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:35:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-10-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:35:27 +0300
Message-ID: <87ilrye2dc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Change SDVO fixed mode
 handling
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
> SDVO is the only connector type currently returning the VBT
> fixed mode directly from .get_modes(), everyone else just
> adds it to the fixed_modes list and then returns that from
> .get_modes(). Adjust SDVO to follow the common behaviour.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++++++++---------------
>  1 file changed, 10 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 62e2e8b4358c..c9c3f71818d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2291,27 +2291,12 @@ static int intel_sdvo_get_lvds_modes(struct drm_c=
onnector *connector)
>  {
>  	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(to_intel_connecto=
r(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct drm_display_mode *newmode;
>  	int num_modes =3D 0;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.id, connector->name);
>=20=20
> -	/*
> -	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> -	 * SDVO->LVDS transcoders can't cope with the EDID mode.
> -	 */
> -	newmode =3D intel_panel_vbt_sdvo_fixed_mode(to_intel_connector(connecto=
r));
> -	if (newmode) {
> -		drm_mode_probed_add(connector, newmode);
> -		num_modes++;
> -	}
> -
> -	/*
> -	 * Attempt to get the mode list from DDC.
> -	 * Assume that the preferred modes are
> -	 * arranged in priority order.
> -	 */
> +	num_modes +=3D intel_panel_get_modes(to_intel_connector(connector));
>  	num_modes +=3D intel_ddc_get_modes(connector, &intel_sdvo->ddc);
>=20=20
>  	return num_modes;
> @@ -2915,9 +2900,15 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo=
, int device)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connecto=
r))
>  		goto err;
>=20=20
> -	intel_sdvo_get_lvds_modes(connector);
> -
> -	fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> +	/*
> +	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> +	 * SDVO->LVDS transcoders can't cope with the EDID mode.
> +	 */
> +	fixed_mode =3D intel_panel_vbt_sdvo_fixed_mode(intel_connector);
> +	if (!fixed_mode) {
> +		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> +		fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> +	}
>=20=20
>  	intel_panel_init(intel_connector, fixed_mode, NULL);

--=20
Jani Nikula, Intel Open Source Graphics Center
