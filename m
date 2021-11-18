Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37EE4558C9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 11:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75C46E91F;
	Thu, 18 Nov 2021 10:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDC26E922
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 10:12:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="234102989"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="234102989"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 02:12:33 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="455263812"
Received: from mduignan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.9.13])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 02:12:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211118085424.685686-4-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211118085424.685686-1-mika.kahola@intel.com>
 <20211118085424.685686-4-mika.kahola@intel.com>
Date: Thu, 18 Nov 2021 12:12:27 +0200
Message-ID: <874k89lqlw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD clock
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

On Thu, 18 Nov 2021, Mika Kahola <mika.kahola@intel.com> wrote:
> In case of CD clock squashing the divider is always 1. We don't
> need to calculate the divider in use so let's skip that for DG2.
>
> v2: Drop unnecessary local variable (Ville)
> v3: Avoid if-else structure (Ville)
> [v4: vsyrjala: Fix cd2x divider calculation (Uma),
>                Introduce has_cdclk_squasher()]
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 630a53d4f882..e8c58779c2a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1212,6 +1212,11 @@ static void skl_cdclk_uninit_hw(struct drm_i915_pr=
ivate *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
> +static bool has_cdclk_squasher(struct drm_i915_private *i915)
> +{
> +	return IS_DG2(i915);
> +}

The obvious problem is that you use this function already in patch 2.

I'm also not sure we want to start sprinkling the has_ or HAS_ query
stuff all over the place in .c. files. Or if we do, we should do it in a
more planned manner, not by starting to sneak these in.

BR,
Jani.

> +
>  static const struct intel_cdclk_vals bxt_cdclk_table[] =3D {
>  	{ .refclk =3D 19200, .cdclk =3D 144000, .divider =3D 8, .ratio =3D 60 },
>  	{ .refclk =3D 19200, .cdclk =3D 288000, .divider =3D 4, .ratio =3D 60 },
> @@ -1750,7 +1755,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  {
>  	u32 cdctl, expected;
> -	int cdclk, vco;
> +	int cdclk, clock, vco;
>=20=20
>  	intel_update_cdclk(dev_priv);
>  	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
> @@ -1786,8 +1791,12 @@ static void bxt_sanitize_cdclk(struct drm_i915_pri=
vate *dev_priv)
>  	expected =3D skl_cdclk_decimal(cdclk);
>=20=20
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv,
> -					   dev_priv->cdclk.hw.cdclk,
> +	if (has_cdclk_squasher(dev_priv))
> +		clock =3D dev_priv->cdclk.hw.vco / 2;
> +	else
> +		clock =3D dev_priv->cdclk.hw.cdclk;
> +
> +	expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv, clock,
>  					   dev_priv->cdclk.hw.vco);
>=20=20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center
