Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E099C5A7C08
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 13:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AA610E31B;
	Wed, 31 Aug 2022 11:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0746910E31B
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661944507; x=1693480507;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8NRFt5Cn722n2JnGuvYtrEftZUCZLnjSVDX/35eD6gY=;
 b=fUb4pKO4QLDMf4dS64GiySSRtmW09R1+KcYfAjSE+9pyL5MjD/mcw1ca
 P1ftz7Ti+1inwlkBBKsKIN8faYI6Gp8844JlLAXeyEcE8onpisNeiSo0g
 6AqwanlnymfiGH0lhpaZsFVc5SJIq2T5JQ4tgMPWvX8sl+GGYVfiU61PW
 yKULxgD82Ux6hb8emylki/s5RXBJIZerQDsCFRjQnY0Z9dj8Skw7cLDok
 WljsrpLgvR3uzJnOa5m1Pd/BMt7HvWoHqDNxqyeaSF/o4wxYisJ4RbNJz
 VCC3nFkZuW7bUNCceWLEyK8nkcLZ+zLNuT2oRWINipsbWBNFYi+bKhWCC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="295428553"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="295428553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 04:15:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="641807739"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 04:15:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220830212436.2021-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220830212436.2021-1-ville.syrjala@linux.intel.com>
Date: Wed, 31 Aug 2022 14:14:56 +0300
Message-ID: <87wnaod5qn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow more varied alternate fixed
 modes for panels
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

On Wed, 31 Aug 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On some systems the panel reports alternate modes with
> different blanking periods. If the EDID reports them and VBT
> doesn't tell us otherwise then I can't really see why they
> should be rejected. So allow their use for the purposes of
> static DRRS.
>
> For seamless DRRS we still require a much more exact match
> of course. But that logic only kicks in when selecting the
> downclock mode (or in the future when determining whether
> we can do a seamless refresh rate change due to a user
> modeset).
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6374
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 25 ++++++----------------
>  1 file changed, 6 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 237a40623dd7..cb44984bb9a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -81,15 +81,14 @@ static bool is_alt_drrs_mode(const struct drm_display=
_mode *mode,
>  		mode->clock !=3D preferred_mode->clock;
>  }
>=20=20
> -static bool is_alt_vrr_mode(const struct drm_display_mode *mode,
> -			    const struct drm_display_mode *preferred_mode)
> +static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> +			      const struct drm_display_mode *preferred_mode)
>  {
>  	return drm_mode_match(mode, preferred_mode,
>  			      DRM_MODE_MATCH_FLAGS |
>  			      DRM_MODE_MATCH_3D_FLAGS) &&
>  		mode->hdisplay =3D=3D preferred_mode->hdisplay &&
> -		mode->vdisplay =3D=3D preferred_mode->vdisplay &&
> -		mode->clock !=3D preferred_mode->clock;
> +		mode->vdisplay =3D=3D preferred_mode->vdisplay;
>  }
>=20=20
>  const struct drm_display_mode *
> @@ -172,19 +171,7 @@ int intel_panel_compute_config(struct intel_connecto=
r *connector,
>  	return 0;
>  }
>=20=20
> -static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> -			      const struct drm_display_mode *preferred_mode,
> -			      bool has_vrr)
> -{
> -	/* is_alt_drrs_mode() is a subset of is_alt_vrr_mode() */
> -	if (has_vrr)
> -		return is_alt_vrr_mode(mode, preferred_mode);
> -	else
> -		return is_alt_drrs_mode(mode, preferred_mode);
> -}
> -
> -static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector =
*connector,
> -						 bool has_vrr)
> +static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector =
*connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *preferred_mode =3D
> @@ -192,7 +179,7 @@ static void intel_panel_add_edid_alt_fixed_modes(stru=
ct intel_connector *connect
>  	struct drm_display_mode *mode, *next;
>=20=20
>  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> -		if (!is_alt_fixed_mode(mode, preferred_mode, has_vrr))
> +		if (!is_alt_fixed_mode(mode, preferred_mode))
>  			continue;
>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -255,7 +242,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_co=
nnector *connector,
>  {
>  	intel_panel_add_edid_preferred_mode(connector);
>  	if (intel_panel_preferred_fixed_mode(connector) && (has_drrs || has_vrr=
))
> -		intel_panel_add_edid_alt_fixed_modes(connector, has_vrr);
> +		intel_panel_add_edid_alt_fixed_modes(connector);
>  	intel_panel_destroy_probed_modes(connector);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
