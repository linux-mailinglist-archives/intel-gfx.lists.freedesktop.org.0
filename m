Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E889625E09
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E61F10E121;
	Fri, 11 Nov 2022 15:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A2910E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668179760; x=1699715760;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=GRtjO50yx97j2E1t+J+mOuTZvO6n5EITwBzmv87CHj8=;
 b=jXYT/nAYf6k7kFxerKllgxJHjiQsrFE1tyTHHO6o0I2C9SD5TWcYm7Hh
 08xEXD3JqzUJ6NlzlEtonIj1ertJPdXstHSUcFUeKEG+xXyfcQJQ8TSRI
 VMOOKJjcQTzk5myW1DRuKXiWYaW0vMkNj+hF6u5IiGURec8j65iy+kNKP
 K5MYH0Edk43qUebVQrcCuujBDvn9UNIHoFuo1XrgJN+9GB3vWd0jKreye
 K/OPazgXcmBLxgdglLKzs4/rXifzWm5SaoImjYqGuYJUyFrBDmBbxbW5U
 qhYowsU7q5OrLpS0hEadcIR38zvQUZQGT1/ro8GBEX6R86h5WLTExIpAb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="311614480"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="311614480"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:16:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="706565538"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="706565538"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:15:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110082144.19666-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-6-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:15:56 +0200
Message-ID: <87tu354j4j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 05/18] drm/i915: Reorder 12.4 lut udw vs.
 ldw functions
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
> Satisfy my ocd and define ilk_lut_12p4_ldw() before ilk_lut_12p4_udw().
> That is the order all the other similar functions use.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 8e92eb61abac..9c259e144772 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -482,14 +482,6 @@ static void ilk_lut_10_pack(struct drm_color_lut *en=
try, u32 val)
>  	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_BLUE=
_MASK, val), 10);
>  }
>=20=20
> -/* ilk+ "12.4" interpolated format (high 10 bits) */
> -static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> -{
> -	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
> -		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
> -		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
> -}
> -
>  /* ilk+ "12.4" interpolated format (low 6 bits) */
>  static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
>  {
> @@ -498,6 +490,14 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_l=
ut *color)
>  		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_LDW_MASK, color->blue & 0x3f);
>  }
>=20=20
> +/* ilk+ "12.4" interpolated format (high 10 bits) */
> +static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> +{
> +	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
> +}
> +
>  static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 =
udw)
>  {
>  	entry->red =3D REG_FIELD_GET(PREC_PALETTE_12P4_RED_UDW_MASK, udw) << 6 |

--=20
Jani Nikula, Intel Open Source Graphics Center
