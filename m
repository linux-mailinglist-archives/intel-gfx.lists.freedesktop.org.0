Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B121349CC73
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BE510E5AA;
	Wed, 26 Jan 2022 14:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5AB10E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643207779; x=1674743779;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yLcqarYnBVSkMOZi7jbyuealiIlH1/ybNRKj+nRg6FM=;
 b=KuPM2nEnrFzFWhSa2U1OTZ5car6WyyQVWnvYVb2xqpBRwptfFKkx85le
 iqcPGSxEaDhq0h6EmPeF3H9SFlIWRvm0nOen2yGifvoDsmvPKr+3mI1+i
 4GaJdOAs+n4R/FRXxl+MOGYooZpAdOLiVZit/JNEi6CJhMEoHqI8ji+WS
 DeyLgZZU0pPKQGRvSyLw6bpXk6hwtNK8DqBNB0YeM+D2w9jo1ATW5G+jY
 Bgkmg0OFvCjRj3FDHY2esLLBkRfNudzUIAU5Q4qGlb8JdFt3Li9Tlvutr
 EXdYh33kGJcJfuJ+kg1SmG6JeLItQLO7kFdptYGVUetIU0REHxI0BhkzK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246506299"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246506299"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:36:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="477496926"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:36:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112193813.8224-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-3-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:36:14 +0200
Message-ID: <87fspazhr5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Clean up PIPEMISC register
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

On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for PIPEMISC* bits, and while at it
> fill in the missing dithering bits since we already had some
> of them defined.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++-----
>  drivers/gpu/drm/i915/i915_reg.h              | 35 +++++++++++---------
>  2 files changed, 28 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6073f94632ab..e293241450b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3724,18 +3724,18 @@ static void bdw_set_pipemisc(const struct intel_c=
rtc_state *crtc_state)
>=20=20
>  	switch (crtc_state->pipe_bpp) {
>  	case 18:
> -		val |=3D PIPEMISC_6_BPC;
> +		val |=3D PIPEMISC_BPC_6;
>  		break;
>  	case 24:
> -		val |=3D PIPEMISC_8_BPC;
> +		val |=3D PIPEMISC_BPC_8;
>  		break;
>  	case 30:
> -		val |=3D PIPEMISC_10_BPC;
> +		val |=3D PIPEMISC_BPC_10;
>  		break;
>  	case 36:
>  		/* Port output 12BPC defined for ADLP+ */
>  		if (DISPLAY_VER(dev_priv) > 12)
> -			val |=3D PIPEMISC_12_BPC_ADLP;
> +			val |=3D PIPEMISC_BPC_12_ADLP;
>  		break;
>  	default:
>  		MISSING_CASE(crtc_state->pipe_bpp);
> @@ -3771,7 +3771,7 @@ static void bdw_set_pipemisc(const struct intel_crt=
c_state *crtc_state)
>  		}
>=20=20
>  		intel_de_rmw(dev_priv, PIPE_MISC2(crtc->pipe),
> -			     PIPE_MISC2_UNDERRUN_BUBBLE_COUNTER_MASK,
> +			     PIPE_MISC2_BUBBLE_COUNTER_MASK,
>  			     scaler_in_use ? PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN :
>  			     PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS);
>  	}
> @@ -3787,11 +3787,11 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
>  	tmp =3D intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
>=20=20
>  	switch (tmp & PIPEMISC_BPC_MASK) {
> -	case PIPEMISC_6_BPC:
> +	case PIPEMISC_BPC_6:
>  		return 18;
> -	case PIPEMISC_8_BPC:
> +	case PIPEMISC_BPC_8:
>  		return 24;
> -	case PIPEMISC_10_BPC:
> +	case PIPEMISC_BPC_10:
>  		return 30;
>  	/*
>  	 * PORT OUTPUT 12 BPC defined for ADLP+.
> @@ -3803,7 +3803,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
>  	 * on older platforms, need to find a workaround for 12 BPC
>  	 * MIPI DSI HW readout.
>  	 */
> -	case PIPEMISC_12_BPC_ADLP:
> +	case PIPEMISC_BPC_12_ADLP:
>  		if (DISPLAY_VER(dev_priv) > 12)
>  			return 36;
>  		fallthrough;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f5d54ed2efc1..e300a202ce2d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6308,32 +6308,35 @@ enum {
>=20=20
>  #define _PIPE_MISC_A			0x70030
>  #define _PIPE_MISC_B			0x71030
> -#define   PIPEMISC_YUV420_ENABLE	(1 << 27) /* glk+ */
> -#define   PIPEMISC_YUV420_MODE_FULL_BLEND (1 << 26) /* glk+ */
> -#define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
> -#define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
> -#define   PIPEMISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
> +#define   PIPEMISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
> +#define   PIPEMISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
> +#define   PIPEMISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
> +#define   PIPEMISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
> +#define   PIPEMISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
>  /*
>   * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
>   * valid values of: 6, 8, 10 BPC.
>   * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
>   * 6, 8, 10, 12 BPC.
>   */
> -#define   PIPEMISC_BPC_MASK		(7 << 5)
> -#define   PIPEMISC_8_BPC		(0 << 5)
> -#define   PIPEMISC_10_BPC		(1 << 5)
> -#define   PIPEMISC_6_BPC		(2 << 5)
> -#define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
> -#define   PIPEMISC_DITHER_ENABLE	(1 << 4)
> -#define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
> -#define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
> +#define   PIPEMISC_BPC_MASK			REG_GENMASK(7, 5)
> +#define   PIPEMISC_BPC_8			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 0)
> +#define   PIPEMISC_BPC_10			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 1)
> +#define   PIPEMISC_BPC_6			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 2)
> +#define   PIPEMISC_BPC_12_ADLP			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 4) /*=
 adlp+ */
> +#define   PIPEMISC_DITHER_ENABLE		REG_BIT(4)
> +#define   PIPEMISC_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
> +#define   PIPEMISC_DITHER_TYPE_SP		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_M=
ASK, 0)
> +#define   PIPEMISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_=
MASK, 1)
> +#define   PIPEMISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_=
MASK, 2)
> +#define   PIPEMISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE=
_MASK, 3)
>  #define PIPEMISC(pipe)			_MMIO_PIPE2(pipe, _PIPE_MISC_A)
>=20=20
>  #define _PIPE_MISC2_A					0x7002C
>  #define _PIPE_MISC2_B					0x7102C
> -#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN		(0x50 << 24)
> -#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS		(0x14 << 24)
> -#define   PIPE_MISC2_UNDERRUN_BUBBLE_COUNTER_MASK	(0xff << 24)
> +#define   PIPE_MISC2_BUBBLE_COUNTER_MASK	REG_GENMASK(31, 24)
> +#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN	REG_FIELD_PREP(PIPE_MISC2_=
BUBBLE_COUNTER_MASK, 80)
> +#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS	REG_FIELD_PREP(PIPE_MISC2=
_BUBBLE_COUNTER_MASK, 20)
>  #define PIPE_MISC2(pipe)					_MMIO_PIPE2(pipe, _PIPE_MISC2_A)
>=20=20
>  /* Skylake+ pipe bottom (background) color */

--=20
Jani Nikula, Intel Open Source Graphics Center
