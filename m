Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C56A170C5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE78D10E449;
	Mon, 20 Jan 2025 16:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgQXn07x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37FA510E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737391847; x=1768927847;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=w3FBp4RlOrTaVEbActKXMTf6Zw5/LrCt9qtC6jvjJ4g=;
 b=YgQXn07xWnwzqcy0O1FSghAxyJgpazV+M6Yn13OMdUIF16+kMwRGgskd
 lEPsT6vdFfqN4jXL9o9PAxJugZQc4Vl5AOALwfYsn9Pz9ND//or/ztPnV
 CSmFAwsHMN8e31CtkFnNE8oFs2SbsJA4PqlYIDoalNryFPlpFC4mHv9xa
 WW+2ebQTGOvy3IBRL46BSBglj6Dw2MyP2dfiS2jWd+upq1foQ4udJiPkO
 b27AwVE3RA6ZUSuVP00djSbPnqUVR6EY0CRsU8YC6eKylOywXFQp4q4l6
 SggxV2hkR0eAjGFp7KcgPyMLseHRufsUYrFzeUT5jtkhuPTI30vqSc7a8 Q==;
X-CSE-ConnectionGUID: HICvg+cVQyiHGHyug9VKqg==
X-CSE-MsgGUID: TuWt2XTERXO07RaUTO+JZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="55204496"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="55204496"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:50:47 -0800
X-CSE-ConnectionGUID: VKZMd3JPSSaX2OCi4ZRuOQ==
X-CSE-MsgGUID: AY6I8PZKSR6y7DDAkpni+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111661235"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:50:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 5/8] drm/i915: Extract lrr_params_changed()
In-Reply-To: <20250116201637.22486-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-6-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:50:42 +0200
Message-ID: <87tt9tpgyl.fsf@intel.com>
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

On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the "do we actually need a LRR update?" checks into a small
> helper for clarity.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fa398d7d1baa..9b42d980ed7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6081,6 +6081,13 @@ static int intel_modeset_checks(struct intel_atomi=
c_state *state)
>  	return 0;
>  }
>=20=20
> +static bool lrr_params_changed(const struct drm_display_mode *old_adjust=
ed_mode,
> +			       const struct drm_display_mode *new_adjusted_mode)
> +{
> +	return old_adjusted_mode->crtc_vblank_end !=3D new_adjusted_mode->crtc_=
vblank_end ||
> +		old_adjusted_mode->crtc_vtotal !=3D new_adjusted_mode->crtc_vtotal;
> +}
> +
>  static void intel_crtc_check_fastset(const struct intel_crtc_state *old_=
crtc_state,
>  				     struct intel_crtc_state *new_crtc_state)
>  {
> @@ -6101,8 +6108,8 @@ static void intel_crtc_check_fastset(const struct i=
ntel_crtc_state *old_crtc_sta
>  				   &new_crtc_state->dp_m_n))
>  		new_crtc_state->update_m_n =3D false;
>=20=20
> -	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal =3D=3D new_crtc_state=
->hw.adjusted_mode.crtc_vtotal &&
> -	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end =3D=3D new_crtc_s=
tate->hw.adjusted_mode.crtc_vblank_end))
> +	if (!lrr_params_changed(&old_crtc_state->hw.adjusted_mode,
> +				&new_crtc_state->hw.adjusted_mode))
>  		new_crtc_state->update_lrr =3D false;
>=20=20
>  	if (intel_crtc_needs_modeset(new_crtc_state))

--=20
Jani Nikula, Intel
