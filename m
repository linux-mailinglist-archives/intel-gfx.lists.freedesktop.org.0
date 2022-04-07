Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E624F868A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DBF910EC14;
	Thu,  7 Apr 2022 17:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D41410EC16
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649353745; x=1680889745;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=q7tklwA2HZNkLeVKOhL8IPL7GCCI+HtGMApa118PLU0=;
 b=KfNh3Ooj2BjuUyr5BIaHg/XHYwq2RO4ovawtQ9wSDT3yi4rVFRYu6KQU
 rG1eZR4Iad/XldLbeq8vySKLDxzpueqxkOUcJvvaU2uUQck65f9rkdfCg
 Dgt4oTC/NlzRmv2IvxQ48E7XDtet1npRrTYeX3uzxx2TfwyUd8hv8NVbE
 TGQx9o6XPN0r6HuQoe6H0Xc+xPJGqSmg1EarNw/+DaM3FUjKiPC5fT0Vp
 UxAfsMqo/Xj97uiWqlXvFDxPI1jDfDzV3e5mULewCH5lav6pQ6218C7Qu
 kiXy8gdJS+hfvQndgbyXbKrNwWB7VavHIpEXUFKT3FY2mMVU0iSk/vRgd g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322086001"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322086001"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:49:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550167812"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:49:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-18-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-18-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:49:00 +0300
Message-ID: <875ynk4wdv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 17/22] drm/i915/bios: Refactor panel_type
 code
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the panel type code a bit more abstract along the
> lines of the source of the panel type. For the moment
> we have three classes: OpRegion, VBT, fallback.
> Well introduce another one shortly.
>
> We can now also print out all the different panel types,
> and indicate which one we ultimately selected. Could help
> with debugging.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 47 ++++++++++++++++-------
>  1 file changed, 34 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 26839263abf0..feef5aa97398 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -606,25 +606,46 @@ static int vbt_panel_type(struct drm_i915_private *=
i915)
>  	return lvds_options->panel_type;
>  }
>=20=20
> +enum panel_type {
> +	PANEL_TYPE_OPREGION,
> +	PANEL_TYPE_VBT,
> +	PANEL_TYPE_FALLBACK,
> +};
> +
>  static int get_panel_type(struct drm_i915_private *i915)
>  {
> -	int ret;
> +	struct {
> +		const char *name;
> +		int panel_type;
> +	} panel_types[] =3D {
> +		[PANEL_TYPE_OPREGION] =3D { .name =3D "OpRegion", .panel_type =3D -1, =
},
> +		[PANEL_TYPE_VBT] =3D { .name =3D "VBT", .panel_type =3D -1, },
> +		[PANEL_TYPE_FALLBACK] =3D { .name =3D "fallback", .panel_type =3D 0, },
> +	};
> +	int i;
>=20=20
> -	ret =3D intel_opregion_get_panel_type(i915);
> -	if (ret >=3D 0) {
> -		drm_WARN_ON(&i915->drm, ret > 0xf);
> -		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
> -		return ret;
> -	}
> +	panel_types[PANEL_TYPE_OPREGION].panel_type =3D intel_opregion_get_pane=
l_type(i915);
> +	panel_types[PANEL_TYPE_VBT].panel_type =3D vbt_panel_type(i915);

I'd probably add a function pointer in the array, to be able to call
these nicely in the loop. Needs a static wrapper function for
intel_opregion_get_panel_type() in the follow-up to eat the edid
parameter, but I think it's worth it.

> +
> +	for (i =3D 0; i < ARRAY_SIZE(panel_types); i++) {
> +		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);

I know that's loud, but it's kind of annoying that the out of bounds
value still goes through here.

>=20=20
> -	ret =3D vbt_panel_type(i915);
> -	if (ret >=3D 0) {
> -		drm_WARN_ON(&i915->drm, ret > 0xf);
> -		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n", ret);
> -		return ret;
> +		if (panel_types[i].panel_type >=3D 0)
> +			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
> +				    panel_types[i].name, panel_types[i].panel_type);
>  	}
>=20=20
> -	return 0; /* fallback */
> +	if (panel_types[PANEL_TYPE_OPREGION].panel_type >=3D 0)
> +		i =3D PANEL_TYPE_OPREGION;
> +	else if (panel_types[PANEL_TYPE_VBT].panel_type >=3D 0)
> +		i =3D PANEL_TYPE_VBT;
> +	else
> +		i =3D PANEL_TYPE_FALLBACK;

At this stage, we could set this in the loop too, but dunno how
complicated that gets with the pnpid match rules.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +
> +	drm_dbg_kms(&i915->drm, "Selected panel type (%s): %d\n",
> +		    panel_types[i].name, panel_types[i].panel_type);
> +
> +	return panel_types[i].panel_type;
>  }
>=20=20
>  /* Parse general panel options */

--=20
Jani Nikula, Intel Open Source Graphics Center
