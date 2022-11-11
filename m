Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2CA625E0A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0726410E849;
	Fri, 11 Nov 2022 15:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3955E10E83E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668179765; x=1699715765;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pRM2jRQ81HU7dM9xJYUhOwot8WBB1xJtr1FV/Kc0MpQ=;
 b=heMZ++4lDAC3ZuEiObla0WydMWL71GVu2e40vkTSdjTx6qU/wBQ1zLa2
 n5GvtfqsouG39zv4ZZ0e//PormNRxQLsNck0HKNRxKlYtR8MWYk19dAVU
 8mhe+NiX/Wsv//ZCLh8oIx7O8Z5EL9weKu9TP48DuMk6vKOzik2hia/Sc
 27YmgkOpUALzqWfAFpHcY36fMbQG7nK8y1j7Ubecpt1QSTyGmRBEoPCri
 bl43b2Cx1g7jr46TYiee1d2RB/Wtvk/cgiQLFl8fp+M7M6f9E3YiIgHhQ
 p/jfOFdzRiSmxjtj4o/Xs0lWM2g4ODx1pzU6U+oLMSHg42PrT0oWF3a6w w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="373743407"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="373743407"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:15:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="632054140"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632054140"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:15:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110082144.19666-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-5-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:15:35 +0200
Message-ID: <87wn814j54.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 04/18] drm/i915: Clean up chv CGM
 (de)gamma defines
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
> Add the missing ldw vs. udw information to the CGM (de)gamma
> bit definitions to make it a bit easier to see which should
> be used where.
>
> Also use the these appropriately in the LUT entry pack/unpack
> functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 18 +++++++++---------
>  drivers/gpu/drm/i915/i915_reg.h            | 16 ++++++++++------
>  2 files changed, 19 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 758869971e45..8e92eb61abac 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1077,13 +1077,13 @@ static void icl_load_luts(const struct intel_crtc=
_state *crtc_state)
>=20=20
>  static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->green, 14) << 16 |
> -		drm_color_lut_extract(color->blue, 14);
> +	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, drm_color_lut_ex=
tract(color->green, 14)) |
> +		REG_FIELD_PREP(CGM_PIPE_DEGAMMA_BLUE_LDW_MASK, drm_color_lut_extract(c=
olor->blue, 14));
>  }
>=20=20
>  static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->red, 14);
> +	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_RED_UDW_MASK, drm_color_lut_extr=
act(color->red, 14));
>  }
>=20=20
>  static void chv_load_cgm_degamma(struct intel_crtc *crtc,
> @@ -1104,20 +1104,20 @@ static void chv_load_cgm_degamma(struct intel_crt=
c *crtc,
>=20=20
>  static u32 chv_cgm_gamma_ldw(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->green, 10) << 16 |
> -		drm_color_lut_extract(color->blue, 10);
> +	return REG_FIELD_PREP(CGM_PIPE_GAMMA_GREEN_LDW_MASK, drm_color_lut_extr=
act(color->green, 10)) |
> +		REG_FIELD_PREP(CGM_PIPE_GAMMA_BLUE_LDW_MASK, drm_color_lut_extract(col=
or->blue, 10));
>  }
>=20=20
>  static u32 chv_cgm_gamma_udw(const struct drm_color_lut *color)
>  {
> -	return drm_color_lut_extract(color->red, 10);
> +	return REG_FIELD_PREP(CGM_PIPE_GAMMA_RED_UDW_MASK, drm_color_lut_extrac=
t(color->red, 10));
>  }
>=20=20
>  static void chv_cgm_gamma_pack(struct drm_color_lut *entry, u32 ldw, u32=
 udw)
>  {
> -	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_GREE=
N_MASK, ldw), 10);
> -	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_BLUE_=
MASK, ldw), 10);
> -	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_RED_MA=
SK, udw), 10);
> +	entry->green =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_GREE=
N_LDW_MASK, ldw), 10);
> +	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_BLUE_=
LDW_MASK, ldw), 10);
> +	entry->red =3D intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_RED_UD=
W_MASK, udw), 10);
>  }
>=20=20
>  static void chv_load_cgm_gamma(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index ecb34f133980..f4c08509e629 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7725,13 +7725,17 @@ enum skl_power_gate {
>  #define _CGM_PIPE_A_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6790C)
>  #define _CGM_PIPE_A_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x67910)
>  #define _CGM_PIPE_A_DEGAMMA	(VLV_DISPLAY_BASE + 0x66000)
> -#define   CGM_PIPE_DEGAMMA_RED_MASK	REG_GENMASK(13, 0)
> -#define   CGM_PIPE_DEGAMMA_GREEN_MASK	REG_GENMASK(29, 16)
> -#define   CGM_PIPE_DEGAMMA_BLUE_MASK	REG_GENMASK(13, 0)
> +/* cgm degamma ldw */
> +#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK	REG_GENMASK(29, 16)
> +#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK	REG_GENMASK(13, 0)
> +/* cgm degamma udw */
> +#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK		REG_GENMASK(13, 0)
>  #define _CGM_PIPE_A_GAMMA	(VLV_DISPLAY_BASE + 0x67000)
> -#define   CGM_PIPE_GAMMA_RED_MASK	REG_GENMASK(9, 0)
> -#define   CGM_PIPE_GAMMA_GREEN_MASK	REG_GENMASK(25, 16)
> -#define   CGM_PIPE_GAMMA_BLUE_MASK	REG_GENMASK(9, 0)
> +/* cgm gamma ldw */
> +#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK		REG_GENMASK(25, 16)
> +#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK		REG_GENMASK(9, 0)
> +/* cgm gamma udw */
> +#define   CGM_PIPE_GAMMA_RED_UDW_MASK		REG_GENMASK(9, 0)
>  #define _CGM_PIPE_A_MODE	(VLV_DISPLAY_BASE + 0x67A00)
>  #define   CGM_PIPE_MODE_GAMMA	(1 << 2)
>  #define   CGM_PIPE_MODE_CSC	(1 << 1)

--=20
Jani Nikula, Intel Open Source Graphics Center
