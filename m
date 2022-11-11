Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3173E625DF4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5D410E121;
	Fri, 11 Nov 2022 15:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA07C10E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668179459; x=1699715459;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=et3x/2AVT9FVpEuVxMmuspId21JbKpK1nNVVPx2Q1Wc=;
 b=bGtmkKAvHRJdDFAEwdlu7cdzSuBVjg8TN783uO1GTsl+4Skc8hUPzGd5
 lmR3Zt9gl3dyoq8A6M77sOPwIxlOdyysSgCnjSnvhw4+MAug1q+hQhF1A
 5zg1N3VwhCh8jpe3m0S5l1PIlekjOTPsbjWm5whCCdP2np7YFWYTKl+IY
 3/u4duJkVUgWMSnmjCWshu1EU6ii33dSiCp3CGwBQmCE2juqcbVo4k4g6
 9M344PsI6PriTzX6/aB1wNU/ZGRo2jOd4gHac7GWDHLjJ8TPzawFyYN2/
 /IwJeg2GOrMBrjU8OnR4QSNmqHSuTgoQ2j+C1Tm90el91McmHEh0EVegD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="338381678"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="338381678"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:10:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="780204747"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="780204747"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:10:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110082144.19666-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-3-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:10:46 +0200
Message-ID: <8735ap5xxl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/18] drm/i915: Clean up 10bit precision
 palette defines
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

On Thu, 10 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use consistent bit definitions for the 10bit precision palette bits.
> We just define these alongside the ilk/snb register definitions and
> point to those from the ivb+ defines.
>
> Also use the these appropriately in the LUT entry pack/unpack
> functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 12 ++++++------
>  drivers/gpu/drm/i915/i915_reg.h            | 11 +++++------
>  2 files changed, 11 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index ff4a5167df57..6486a0890583 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -470,16 +470,16 @@ static u16 i965_lut_11p6_max_pack(u32 val)
>=20=20
>  static u32 ilk_lut_10(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->red, 10) << 20 |
> -		drm_color_lut_extract(color->green, 10) << 10 |
> -		drm_color_lut_extract(color->blue, 10);
> +	return REG_FIELD_PREP(PREC_PALETTE_10_RED_MASK, drm_color_lut_extract(c=
olor->red, 10)) |
> +		REG_FIELD_PREP(PREC_PALETTE_10_GREEN_MASK, drm_color_lut_extract(color=
->green, 10)) |
> +		REG_FIELD_PREP(PREC_PALETTE_10_BLUE_MASK, drm_color_lut_extract(color-=
>blue, 10));
>  }
>=20=20
>  static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
>  {
> -	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_RED_MASK=
, val), 10);
> -	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_GREEN_=
MASK, val), 10);
> -	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MA=
SK, val), 10);
> +	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_RED_M=
ASK, val), 10);
> +	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_GRE=
EN_MASK, val), 10);
> +	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_BLUE=
_MASK, val), 10);
>  }
>=20=20
>  /* ilk+ "12.4" interpolated format (high 10 bits) */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 91ee00c347e4..3aa3db2b56f5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5387,9 +5387,10 @@
>  /* ilk/snb precision palette */
>  #define _PREC_PALETTE_A           0x4b000
>  #define _PREC_PALETTE_B           0x4c000
> -#define   PREC_PALETTE_RED_MASK   REG_GENMASK(29, 20)
> -#define   PREC_PALETTE_GREEN_MASK REG_GENMASK(19, 10)
> -#define   PREC_PALETTE_BLUE_MASK  REG_GENMASK(9, 0)
> +/* 10bit mode */
> +#define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
> +#define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
> +#define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
>  #define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_P=
ALETTE_B) + (i) * 4)
>=20=20
>  #define  _PREC_PIPEAGCMAX              0x4d000
> @@ -7619,12 +7620,10 @@ enum skl_power_gate {
>  #define _PAL_PREC_DATA_A	0x4A404
>  #define _PAL_PREC_DATA_B	0x4AC04
>  #define _PAL_PREC_DATA_C	0x4B404
> +/* see PREC_PALETTE_* for the bits */
>  #define _PAL_PREC_GC_MAX_A	0x4A410
>  #define _PAL_PREC_GC_MAX_B	0x4AC10
>  #define _PAL_PREC_GC_MAX_C	0x4B410
> -#define   PREC_PAL_DATA_RED_MASK	REG_GENMASK(29, 20)
> -#define   PREC_PAL_DATA_GREEN_MASK	REG_GENMASK(19, 10)
> -#define   PREC_PAL_DATA_BLUE_MASK	REG_GENMASK(9, 0)
>  #define _PAL_PREC_EXT_GC_MAX_A	0x4A420
>  #define _PAL_PREC_EXT_GC_MAX_B	0x4AC20
>  #define _PAL_PREC_EXT_GC_MAX_C	0x4B420

--=20
Jani Nikula, Intel Open Source Graphics Center
