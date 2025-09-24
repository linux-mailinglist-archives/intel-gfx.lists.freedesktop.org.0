Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA25B99076
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 11:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C5610E6C0;
	Wed, 24 Sep 2025 09:06:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDChUGgx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD9710E6C0;
 Wed, 24 Sep 2025 09:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758704762; x=1790240762;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=sVj/GlsyfjwnoNT0wcP3FDFOJ1MPWwEW0Rg0e+HZkG8=;
 b=KDChUGgxn/wJ0Km5qoR7STfCcy5Bgx9W6ssjyQw5e2jfe1tTVa2RiJ/4
 mdoMDUAm3387tOriv2omV6KASKGozp+yDhbllcHyV/w8N9hMKCc5/ts5G
 5e3dSuvsBYpBZx3UCKXKlKfp0oCQ1aJLE8hyuuNtiqKaeP7mYXmlHHPY/
 BZgI4XL7oR+StkfUXqSi1BZ/6vSNBI8YUXlYPrPSc5AguE7m8dvdSCoUc
 g9Bw4iL0odrPmj6YRo9Nh0opE7NLfFNb7EOwVoH/AK7CbL/f4NxGLtBJe
 gkSQPxbz9NEr2QlH49NUH7LVKnoRlMXxVxWFlm8R20TygDyOoFhnYH3mh w==;
X-CSE-ConnectionGUID: PYk2YY8LR4K3hR/taTUYzQ==
X-CSE-MsgGUID: BwJLzJDvTtC4gURqBao94A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60911196"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60911196"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:06:01 -0700
X-CSE-ConnectionGUID: vGQrGzMNSGG/HjLdqQwk2Q==
X-CSE-MsgGUID: fhM8V29gR5ml2O88N2grwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="207919886"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:05:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
In-Reply-To: <20250924061602.2837-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
 <20250924061602.2837-1-ville.syrjala@linux.intel.com>
Date: Wed, 24 Sep 2025 12:05:56 +0300
Message-ID: <30933726eb345cbf6ea9b1dcbfc0ad890d31e0d7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 24 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the code to determine the DG2 pipe power well count
> into a small helper. I'll have other uses for this later.
>
> TODO: need to move this power well stuff out from the cdclk code...
>
> v2: Don't lose the early return from intel_cdclk_pcode_pre_notify()
>     (kernel test robot)
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 33 +++++++++++++---------
>  1 file changed, 19 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 05d9f488895e..f190cfb85a34 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2591,6 +2591,12 @@ static void intel_set_cdclk(struct intel_display *=
display,
>  	}
>  }
>=20=20
> +static bool dg2_power_well_count(struct intel_display *display,
> +				 const struct intel_cdclk_state *cdclk_state)
> +{
> +	return display->platform.dg2 ? hweight8(cdclk_state->active_pipes) : 0;
> +}
> +
>  static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *stat=
e)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
> @@ -2603,16 +2609,16 @@ static void intel_cdclk_pcode_pre_notify(struct i=
ntel_atomic_state *state)
>=20=20
>  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
>  				 &new_cdclk_state->actual) &&
> -				 new_cdclk_state->active_pipes =3D=3D
> -				 old_cdclk_state->active_pipes)
> +	    dg2_power_well_count(display, old_cdclk_state) =3D=3D
> +	    dg2_power_well_count(display, old_cdclk_state))

Both have old_cdclk_state, making this always true.

Side note, perhaps the whole function should be renamed
dg2_cdclk_pcode_pre_notify(), because the additional dg2 check in
dg2_power_well_count() felt weird until I realized this is all dg2 only.

BR,
Jani.


>  		return;
>=20=20
>  	/* According to "Sequence Before Frequency Change", voltage level set t=
o 0x3 */
>  	voltage_level =3D DISPLAY_TO_PCODE_VOLTAGE_MAX;
>=20=20
>  	change_cdclk =3D new_cdclk_state->actual.cdclk !=3D old_cdclk_state->ac=
tual.cdclk;
> -	update_pipe_count =3D hweight8(new_cdclk_state->active_pipes) >
> -			    hweight8(old_cdclk_state->active_pipes);
> +	update_pipe_count =3D dg2_power_well_count(display, new_cdclk_state) >
> +		dg2_power_well_count(display, old_cdclk_state);
>=20=20
>  	/*
>  	 * According to "Sequence Before Frequency Change",
> @@ -2630,7 +2636,7 @@ static void intel_cdclk_pcode_pre_notify(struct int=
el_atomic_state *state)
>  	 * no action if it is decreasing, before the change
>  	 */
>  	if (update_pipe_count)
> -		num_active_pipes =3D hweight8(new_cdclk_state->active_pipes);
> +		num_active_pipes =3D dg2_power_well_count(display, new_cdclk_state);
>=20=20
>  	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
>  			   change_cdclk, update_pipe_count);
> @@ -2650,8 +2656,8 @@ static void intel_cdclk_pcode_post_notify(struct in=
tel_atomic_state *state)
>  	voltage_level =3D new_cdclk_state->actual.voltage_level;
>=20=20
>  	update_cdclk =3D new_cdclk_state->actual.cdclk !=3D old_cdclk_state->ac=
tual.cdclk;
> -	update_pipe_count =3D hweight8(new_cdclk_state->active_pipes) <
> -			    hweight8(old_cdclk_state->active_pipes);
> +	update_pipe_count =3D dg2_power_well_count(display, new_cdclk_state) <
> +		dg2_power_well_count(display, old_cdclk_state);
>=20=20
>  	/*
>  	 * According to "Sequence After Frequency Change",
> @@ -2667,7 +2673,7 @@ static void intel_cdclk_pcode_post_notify(struct in=
tel_atomic_state *state)
>  	 * no action if it is increasing, after the change
>  	 */
>  	if (update_pipe_count)
> -		num_active_pipes =3D hweight8(new_cdclk_state->active_pipes);
> +		num_active_pipes =3D dg2_power_well_count(display, new_cdclk_state);
>=20=20
>  	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
>  			   update_cdclk, update_pipe_count);
> @@ -3248,15 +3254,14 @@ static bool intel_cdclk_need_serialize(struct int=
el_display *display,
>  				       const struct intel_cdclk_state *old_cdclk_state,
>  				       const struct intel_cdclk_state *new_cdclk_state)
>  {
> -	bool power_well_cnt_changed =3D hweight8(old_cdclk_state->active_pipes)=
 !=3D
> -				      hweight8(new_cdclk_state->active_pipes);
> -	bool cdclk_changed =3D intel_cdclk_changed(&old_cdclk_state->actual,
> -						 &new_cdclk_state->actual);
>  	/*
> -	 * We need to poke hw for gen >=3D 12, because we notify PCode if
> +	 * We need to poke hw for DG2, because we notify PCode if
>  	 * pipe power well count changes.
>  	 */
> -	return cdclk_changed || (display->platform.dg2 && power_well_cnt_change=
d);
> +	return intel_cdclk_changed(&old_cdclk_state->actual,
> +				   &new_cdclk_state->actual) ||
> +		dg2_power_well_count(display, old_cdclk_state) !=3D
> +		dg2_power_well_count(display, new_cdclk_state);
>  }
>=20=20
>  int intel_modeset_calc_cdclk(struct intel_atomic_state *state)

--=20
Jani Nikula, Intel
