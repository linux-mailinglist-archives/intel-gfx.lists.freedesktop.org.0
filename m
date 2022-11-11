Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C639625DFB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2212C10E121;
	Fri, 11 Nov 2022 15:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4279110E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668179608; x=1699715608;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=X3BHRgEfbCpFAu6Soj1br2fUIAiXq2VXrTLx3QrQnB4=;
 b=NWipLQajUm+ZePWi9YyxVyfHctbbtUdSYwaa4Jg3z9a2NB6Wn5iStnV3
 MRfT/RjydxB9GAw+qpz4IyvAVKJ0o5fwe3ggHRhycS+caw3gViVHF6Lyi
 ArBYyqnnBhuQNw5eAfH8w7LuIIBEPn6ymZHYOEkcqXDMql8ixyp/0/mW2
 2mzpZJXbMoPgViCIWhj989kgbWFmrRRerSr+qNCdalUaO7MVtrD2mZZy8
 PQ5CDg4lCLuy2B3YZs2a1441iHxDs+DdNGdbfxBudjEp9QYPrKZuIjlIo
 n2yIJYr5e3KeV1X7LJu02J+5xN47S0aZDqcLCl8TWgbownV1VDzh33snk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="312758576"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="312758576"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:13:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="812465743"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="812465743"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:13:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110082144.19666-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-4-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:13:23 +0200
Message-ID: <87zgcx4j8s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/18] drm/i915: Clean up 12.4bit
 precision palette defines
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
> Use consistent bit definitions for the 12.4bit precision palette bits.
> We just define these alongside the ilk/snb register definitions and
> point to those from the icl+ superfine segment defines (and we also
> already pointed to them from the ivb+ precision palette defines).
>
> Also use the these appropriately in the LUT entry pack/unpack
> functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h            | 15 +++++++++------
>  2 files changed, 21 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 6486a0890583..758869971e45 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -485,25 +485,27 @@ static void ilk_lut_10_pack(struct drm_color_lut *e=
ntry, u32 val)
>  /* ilk+ "12.4" interpolated format (high 10 bits) */
>  static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
>  {
> -	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
> -		(color->blue >> 6);
> +	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
>  }
>=20=20
>  /* ilk+ "12.4" interpolated format (low 6 bits) */
>  static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
>  {
> -	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
> -		(color->blue & 0x3f) << 4;
> +	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_LDW_MASK, color->red & 0x3f=
) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_LDW_MASK, color->green & 0x3f) |
> +		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_LDW_MASK, color->blue & 0x3f);

Same thing with masking as in an earlier patch.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  }
>=20=20
>  static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 =
udw)
>  {
> -	entry->red =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6=
 |
> -		REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
> -	entry->green =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) =
<< 6 |
> -		REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
> -	entry->blue =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) <<=
 6 |
> -		REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
> +	entry->red =3D REG_FIELD_GET(PREC_PALETTE_12P4_RED_UDW_MASK, udw) << 6 |
> +		REG_FIELD_GET(PREC_PALETTE_12P4_RED_LDW_MASK, ldw);
> +	entry->green =3D REG_FIELD_GET(PREC_PALETTE_12P4_GREEN_UDW_MASK, udw) <=
< 6 |
> +		REG_FIELD_GET(PREC_PALETTE_12P4_GREEN_LDW_MASK, ldw);
> +	entry->blue =3D REG_FIELD_GET(PREC_PALETTE_12P4_BLUE_UDW_MASK, udw) << =
6 |
> +		REG_FIELD_GET(PREC_PALETTE_12P4_BLUE_LDW_MASK, ldw);
>  }
>=20=20
>  static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_s=
tate)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 3aa3db2b56f5..ecb34f133980 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5391,6 +5391,14 @@
>  #define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
>  #define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
>  #define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
> +/* 12.4 interpolated mode ldw */
> +#define   PREC_PALETTE_12P4_RED_LDW_MASK	REG_GENMASK(29, 24)
> +#define   PREC_PALETTE_12P4_GREEN_LDW_MASK	REG_GENMASK(19, 14)
> +#define   PREC_PALETTE_12P4_BLUE_LDW_MASK	REG_GENMASK(9, 4)
> +/* 12.4 interpolated mode udw */
> +#define   PREC_PALETTE_12P4_RED_UDW_MASK	REG_GENMASK(29, 20)
> +#define   PREC_PALETTE_12P4_GREEN_UDW_MASK	REG_GENMASK(19, 10)
> +#define   PREC_PALETTE_12P4_BLUE_UDW_MASK	REG_GENMASK(9, 0)
>  #define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_P=
ALETTE_B) + (i) * 4)
>=20=20
>  #define  _PREC_PIPEAGCMAX              0x4d000
> @@ -7656,12 +7664,7 @@ enum skl_power_gate {
>=20=20
>  #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
>  #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
> -#define  PAL_PREC_MULTI_SEG_RED_LDW_MASK   REG_GENMASK(29, 24)
> -#define  PAL_PREC_MULTI_SEG_RED_UDW_MASK   REG_GENMASK(29, 20)
> -#define  PAL_PREC_MULTI_SEG_GREEN_LDW_MASK REG_GENMASK(19, 14)
> -#define  PAL_PREC_MULTI_SEG_GREEN_UDW_MASK REG_GENMASK(19, 10)
> -#define  PAL_PREC_MULTI_SEG_BLUE_LDW_MASK  REG_GENMASK(9, 4)
> -#define  PAL_PREC_MULTI_SEG_BLUE_UDW_MASK  REG_GENMASK(9, 0)
> +/* see PREC_PALETTE_12P4_* for the bits */
>=20=20
>  #define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
>  					_PAL_PREC_MULTI_SEG_INDEX_A, \

--=20
Jani Nikula, Intel Open Source Graphics Center
