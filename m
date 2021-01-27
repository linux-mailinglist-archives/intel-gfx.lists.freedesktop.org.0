Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 602E8306809
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 00:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C9089BC0;
	Wed, 27 Jan 2021 23:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E1389BC0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 23:39:36 +0000 (UTC)
IronPort-SDR: zRbUvzv+bP/aH13EboJ7cTZFASLv+dhIwIVUmgQdbtAcXRdEin5u2Dekrsig47ERPbKz9LG1wo
 8s0U1LHx8Z0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="177589114"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="177589114"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 15:39:35 -0800
IronPort-SDR: TdHi4kBeCCpBQvPhxjd4I8vO3cx9KJE+76TO9elv+ql7fMJdITOorVWgqDQh43BjUhv7aZOSwH
 gd5LDDHOLb7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="388508144"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 27 Jan 2021 15:39:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 01:39:31 +0200
Date: Thu, 28 Jan 2021 01:39:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andres Calderon Jaramillo <andrescj@google.com>
Message-ID: <YBH5s7myDDKL1DMZ@intel.com>
References: <X9kY3ONpq6T0Im0K@intel.com>
 <20201215224219.3896256-1-andrescj@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201215224219.3896256-1-andrescj@google.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Prevent double YUV
 range correction on HDR planes
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
Cc: Andres Calderon Jaramillo <andrescj@chromium.org>,
 intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 sushma.venkatesh.reddy@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 15, 2020 at 10:42:19PM +0000, Andres Calderon Jaramillo wrote:
> From: Andres Calderon Jaramillo <andrescj@chromium.org>
> =

> Prevent the ICL HDR plane pipeline from performing YUV color range
> correction twice when the input is in limited range. This is done by
> removing the limited-range code from icl_program_input_csc().
> =

> Before this patch the following could happen: user space gives us a YUV
> buffer in limited range; per the pipeline in [1], the plane would first
> go through a "YUV Range correct" stage that expands the range; the plane
> would then go through the "Input CSC" stage which would also expand the
> range because icl_program_input_csc() would use a matrix and an offset
> that assume limited-range input; this would ultimately cause dark and
> light colors to appear darker and lighter than they should respectively.
> =

> This is an issue because if a buffer switches between being scanned out
> and being composited with the GPU, the user will see a color difference.
> If this switching happens quickly and frequently, the user will perceive
> this as a flickering.
> =

> [1] https://01.org/sites/default/files/documentation/intel-gfx-prm-osrc-i=
cllp-vol12-displayengine_0.pdf#page=3D281
> =

> Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>

Thanks. Slapped a cc:stable on this and pushed.

> ---
> Changelog since v1:
> - Don't skip the YUV range correction stage. Instead, use that stage and
>   modify icl_program_input_csc() to always assume full-range input.
> =

>  drivers/gpu/drm/i915/display/intel_display.c |  2 +
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 65 +++-----------------
>  2 files changed, 12 insertions(+), 55 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 761be8deaa9b..8fb9b4f8c1df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4811,6 +4811,8 @@ u32 glk_plane_color_ctl(const struct intel_crtc_sta=
te *crtc_state,
>  			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	} else if (fb->format->is_yuv) {
>  		plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> +		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> +			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
>  =

>  	return plane_color_ctl;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index b7e208816074..121e1b5120fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -633,13 +633,19 @@ skl_program_scaler(struct intel_plane *plane,
>  =

>  /* Preoffset values for YUV to RGB Conversion */
>  #define PREOFF_YUV_TO_RGB_HI		0x1800
> -#define PREOFF_YUV_TO_RGB_ME		0x1F00
> +#define PREOFF_YUV_TO_RGB_ME		0x0000
>  #define PREOFF_YUV_TO_RGB_LO		0x1800
>  =

>  #define  ROFF(x)          (((x) & 0xffff) << 16)
>  #define  GOFF(x)          (((x) & 0xffff) << 0)
>  #define  BOFF(x)          (((x) & 0xffff) << 16)
>  =

> +/*
> + * Programs the input color space conversion stage for ICL HDR planes.
> + * Note that it is assumed that this stage always happens after YUV
> + * range correction. Thus, the input to this stage is assumed to be
> + * in full-range YCbCr.
> + */
>  static void
>  icl_program_input_csc(struct intel_plane *plane,
>  		      const struct intel_crtc_state *crtc_state,
> @@ -687,52 +693,7 @@ icl_program_input_csc(struct intel_plane *plane,
>  			0x0, 0x7800, 0x7F10,
>  		},
>  	};
> -
> -	/* Matrix for Limited Range to Full Range Conversion */
> -	static const u16 input_csc_matrix_lr[][9] =3D {
> -		/*
> -		 * BT.601 Limted range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.164384, 0.000, 1.596027,
> -		 *  1.164384, -0.39175, -0.812813,
> -		 *  1.164384, 2.017232, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT601] =3D {
> -			0x7CC8, 0x7950, 0x0,
> -			0x8D00, 0x7950, 0x9C88,
> -			0x0, 0x7950, 0x6810,
> -		},
> -		/*
> -		 * BT.709 Limited range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.164384, 0.000, 1.792741,
> -		 *  1.164384, -0.213249, -0.532909,
> -		 *  1.164384, 2.112402, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT709] =3D {
> -			0x7E58, 0x7950, 0x0,
> -			0x8888, 0x7950, 0xADA8,
> -			0x0, 0x7950,  0x6870,
> -		},
> -		/*
> -		 * BT.2020 Limited range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.164, 0.000, 1.678,
> -		 *  1.164, -0.1873, -0.6504,
> -		 *  1.164, 2.1417, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT2020] =3D {
> -			0x7D70, 0x7950, 0x0,
> -			0x8A68, 0x7950, 0xAC00,
> -			0x0, 0x7950, 0x6890,
> -		},
> -	};
> -	const u16 *csc;
> -
> -	if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> -		csc =3D input_csc_matrix[plane_state->hw.color_encoding];
> -	else
> -		csc =3D input_csc_matrix_lr[plane_state->hw.color_encoding];
> +	const u16 *csc =3D input_csc_matrix[plane_state->hw.color_encoding];
>  =

>  	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
>  			  ROFF(csc[0]) | GOFF(csc[1]));
> @@ -749,14 +710,8 @@ icl_program_input_csc(struct intel_plane *plane,
>  =

>  	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
>  			  PREOFF_YUV_TO_RGB_HI);
> -	if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> -		intel_de_write_fw(dev_priv,
> -				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
> -				  0);
> -	else
> -		intel_de_write_fw(dev_priv,
> -				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
> -				  PREOFF_YUV_TO_RGB_ME);
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
> +			  PREOFF_YUV_TO_RGB_ME);
>  	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
>  			  PREOFF_YUV_TO_RGB_LO);
>  	intel_de_write_fw(dev_priv,
> -- =

> 2.29.2.684.gfbc64c5ab5-goog

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
