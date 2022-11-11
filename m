Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F0625DF3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0922B10E121;
	Fri, 11 Nov 2022 15:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B498510E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668179381; x=1699715381;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ICwSaHLvDUnp/qywM4ulNkDK+TKfB/28m3wqaicWDDc=;
 b=N8OcXn2/Qty6t6EGoVO/LFcGwPWoXTheLFH5bYlnOBPcc3rtdrgoroMR
 l8nYy1G9i4l0NC8qnP7c436lF+Xz5KC8qyiynmN00lK2e4W91mUB27vkj
 nsryG0rz4kmiePhsafCJbMkJa+0EyulnC5n+7mmbSrzLUhZjn5EjKCsv/
 6DfBmZTox76hAF8P2F49grtTaVRmV3ZcAvwaDzk8dJV4dwafK8VSRIvn+
 9/w/ctVmtVxrmxxgd8/chtioMN3hQrkAx5I42htqUHYvugXZi2FCImlY+
 bngJJjtuZrxMifQAo0n6/t/fMR7hbn5oEz7xo9Yw3vcuVYSctFAOmFROg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="299123839"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="299123839"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:09:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="762688189"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="762688189"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:09:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110082144.19666-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-2-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:09:37 +0200
Message-ID: <875yfl5xzi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/18] drm/i915: Clean up legacy palette
 defines
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
> Use consistent bit definitions for the legacy gamma LUT. We just
> define these alongside the pre-ilk register definitions and point
> to those from the ilk+ defines.
>
> Also use the these appropriately in the LUT entry pack/unpack
> functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 24 +++++++++++-----------
>  drivers/gpu/drm/i915/i915_reg.h            | 11 +++++-----
>  2 files changed, 17 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 93509cf7bbcc..ff4a5167df57 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -424,32 +424,32 @@ static u32 intel_color_lut_pack(u32 val, int bit_pr=
ecision)
>=20=20
>  static u32 i9xx_lut_8(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->red, 8) << 16 |
> -		drm_color_lut_extract(color->green, 8) << 8 |
> -		drm_color_lut_extract(color->blue, 8);
> +	return REG_FIELD_PREP(PALETTE_RED_MASK, drm_color_lut_extract(color->re=
d, 8)) |
> +		REG_FIELD_PREP(PALETTE_GREEN_MASK, drm_color_lut_extract(color->green,=
 8)) |
> +		REG_FIELD_PREP(PALETTE_BLUE_MASK, drm_color_lut_extract(color->blue, 8=
));
>  }
>=20=20
>  static void i9xx_lut_8_pack(struct drm_color_lut *entry, u32 val)
>  {
> -	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_RED_MASK,=
 val), 8);
> -	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_GREEN_M=
ASK, val), 8);
> -	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_BLUE_MAS=
K, val), 8);
> +	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(PALETTE_RED_MASK, val=
), 8);
> +	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(PALETTE_GREEN_MASK,=
 val), 8);
> +	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(PALETTE_BLUE_MASK, v=
al), 8);
>  }
>=20=20
>  /* i965+ "10.6" bit interpolated format "even DW" (low 8 bits) */
>  static u32 i965_lut_10p6_ldw(const struct drm_color_lut *color)
>  {
> -	return (color->red & 0xff) << 16 |
> -		(color->green & 0xff) << 8 |
> -		(color->blue & 0xff);
> +	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red & 0xff) |
> +		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green & 0xff) |
> +		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue & 0xff);

The & 0xff masking is redundant with REG_FIELD_PREP(), but I understand
if you want to leave them in for consistency with the next function.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  }
>=20=20
>  /* i965+ "10.6" interpolated format "odd DW" (high 8 bits) */
>  static u32 i965_lut_10p6_udw(const struct drm_color_lut *color)
>  {
> -	return (color->red >> 8) << 16 |
> -		(color->green >> 8) << 8 |
> -		(color->blue >> 8);
> +	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red >> 8) |
> +		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green >> 8) |
> +		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue >> 8);
>  }
>=20=20
>  static void i965_lut_10p6_pack(struct drm_color_lut *entry, u32 ldw, u32=
 udw)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a37ed0c61f20..91ee00c347e4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1782,9 +1782,10 @@
>  #define _PALETTE_A		0xa000
>  #define _PALETTE_B		0xa800
>  #define _CHV_PALETTE_C		0xc000
> -#define PALETTE_RED_MASK        REG_GENMASK(23, 16)
> -#define PALETTE_GREEN_MASK      REG_GENMASK(15, 8)
> -#define PALETTE_BLUE_MASK       REG_GENMASK(7, 0)
> +/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
> +#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
> +#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
> +#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
>  #define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>  				      _PICK((pipe), _PALETTE_A,		\
>  					    _PALETTE_B, _CHV_PALETTE_C) + \
> @@ -5380,9 +5381,7 @@
>  /* legacy palette */
>  #define _LGC_PALETTE_A           0x4a000
>  #define _LGC_PALETTE_B           0x4a800
> -#define LGC_PALETTE_RED_MASK     REG_GENMASK(23, 16)
> -#define LGC_PALETTE_GREEN_MASK   REG_GENMASK(15, 8)
> -#define LGC_PALETTE_BLUE_MASK    REG_GENMASK(7, 0)
> +/* see PALETTE_* for the bits */
>  #define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALE=
TTE_B) + (i) * 4)
>=20=20
>  /* ilk/snb precision palette */

--=20
Jani Nikula, Intel Open Source Graphics Center
