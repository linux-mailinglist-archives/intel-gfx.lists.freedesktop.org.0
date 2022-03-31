Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCAD4EDAC0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 305B410E9D0;
	Thu, 31 Mar 2022 13:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA6810E9D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648734233; x=1680270233;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=M56CQWHhuJrw+wpTFOhnuDiBOSGvHxqTIEHHqTYOU4M=;
 b=dz0kxeUjxDIIKh/vmeianzgkj9PDC7tCjkaZfejlxEizm81QOZWdOsn9
 U+lWTt1DZ6yGFiWtGmxh7Ay84Z4uQC3ftG4gLHx2h0MoLaixf0pUTFh3V
 +JI0gaJ9a5PeL+5G0brqDGULMZ2rP+ARht4CdZLmBBe1jp6dAlYP9gCYy
 TuMfp7eESfQM4roG/V5ixIjZRbBj21KFwx1sulSxrn+Clp+uz4U7SGHN3
 DTsqVbBNrA2K+2zgDxCqlUZ6D39AGfZej5JHjtiadKqcQ6jNacHqysbFc
 rYe5l84alKhj6EWV4oNP85XYLSrXWC+3yFnOcIxyUIki+N1TeZDUKRJWj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="260022839"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="260022839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:43:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566494176"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:43:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-9-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:43:46 +0300
Message-ID: <87y20q8cfh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 08/11] drm/i915: Allow higher refresh
 rate alternate fixed modes
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
> We shouldn't restrict ourselves to just downclock modes with
> lower refresh rate than the preferred mode. Laptops these
> days can offer higher refresh rate modes as well.
>
> Remove the arbitrary limit and allow all modes that, apart
> from the clock, match the preferred mode.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index d359c8050fdc..f3e52e7413fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -149,29 +149,29 @@ int intel_panel_compute_config(struct intel_connect=
or *connector,
>  	return 0;
>  }
>=20=20
> -static bool is_downclock_mode(const struct drm_display_mode *downclock_m=
ode,
> -			      const struct drm_display_mode *fixed_mode)
> +static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> +			      const struct drm_display_mode *preferred_mode)
>  {
> -	return drm_mode_match(downclock_mode, fixed_mode,
> +	return drm_mode_match(mode, preferred_mode,
>  			      DRM_MODE_MATCH_TIMINGS |
>  			      DRM_MODE_MATCH_FLAGS |
>  			      DRM_MODE_MATCH_3D_FLAGS) &&
> -		downclock_mode->clock < fixed_mode->clock;
> +		mode->clock !=3D preferred_mode->clock;
>  }
>=20=20
>  static void intel_panel_add_edid_downclock_modes(struct intel_connector =
*connector)

Nitpick, I guess this is now ill-named.

>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	const struct drm_display_mode *fixed_mode =3D
> +	const struct drm_display_mode *preferred_mode =3D
>  		intel_panel_preferred_fixed_mode(connector);
>  	struct drm_display_mode *mode, *next;
>=20=20
>  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> -		if (!is_downclock_mode(mode, fixed_mode))
> +		if (!is_alt_fixed_mode(mode, preferred_mode))
>  			continue;
>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
> +			    "[CONNECTOR:%d:%s] using alternate EDID fixed mode: " DRM_MODE_FM=
T "\n",
>  			    connector->base.base.id, connector->base.name,
>  			    DRM_MODE_ARG(mode));
>=20=20
> @@ -179,7 +179,7 @@ static void intel_panel_add_edid_downclock_modes(stru=
ct intel_connector *connect
>  	}
>  }
>=20=20
> -static void intel_panel_add_edid_fixed_mode(struct intel_connector *conn=
ector)
> +static void intel_panel_add_edid_preferred_mode(struct intel_connector *=
connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct drm_display_mode *scan, *fixed_mode =3D NULL;
> @@ -223,7 +223,7 @@ static void intel_panel_destroy_probed_modes(struct i=
ntel_connector *connector)
>=20=20
>  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs)
>  {
> -	intel_panel_add_edid_fixed_mode(connector);
> +	intel_panel_add_edid_preferred_mode(connector);
>  	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
>  		intel_panel_add_edid_downclock_modes(connector);

Nitpick, support for multiple fixed modes still depends on drrs
support. I mean this patch is clearly forward progress, but I'm not sure
if this fully closes the referenced issue. In practical terms it might,
considering the machines with high refresh rate panels are probably
fairly new.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  	intel_panel_destroy_probed_modes(connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
