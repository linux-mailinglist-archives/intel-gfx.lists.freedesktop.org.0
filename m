Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB9C9C0002
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 09:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE4B10E32B;
	Thu,  7 Nov 2024 08:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CixIZjWf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F037110E32B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 08:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730968493; x=1762504493;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ofgl2X5G9niqxMoVs/kNnfcZkz8YyW2MiNNF5K2a1dQ=;
 b=CixIZjWfcXHjibQqYZEGJUHwaf/3j1MbjXZXxu1OFVSGv7sS00r9v+bZ
 mUDdaZmf6fj/iUMMAGZJR4kGw4Jwk/AIG7NngDJoOf+iTn1M6GiIF9037
 3N5Y2/4PA7OgxBHInuWw7TVCfuU8+I1tP8uBu+nCB2rqJ+jXyHvCF8L8X
 CgzAAkrykKTt/1aztd6tvs7YcEQO5Q29khC+gkeN+zyOliqZDKy/kFPJx
 0RwdB7arPtNkjxSkxqg1nAuRZPIdr876GOmH6QvAE/KpEoK3YX87o/nsR
 3YQjkBSJ4ljG56PJ6OZE0Zu8DJ7n5ehPSq4t+idr4jVncGEI0T0eZ33C0 g==;
X-CSE-ConnectionGUID: bsBqUok6TyKouTuwO/xwJw==
X-CSE-MsgGUID: ZOP/ZY8ET2CRYUk2Wu9Vow==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41902308"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41902308"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 00:34:53 -0800
X-CSE-ConnectionGUID: 3RsU2S1cTDGtZLutGpzpVg==
X-CSE-MsgGUID: Vfyo4Lx0Sc2a221xV4aJmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="84958206"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 00:34:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dsi: Stop using
 pixel_format_from_register_bits() to parse VBT
In-Reply-To: <20241106220904.29523-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106220904.29523-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 10:34:48 +0200
Message-ID: <87msibfnmf.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Introduce a proper VBT->enum mipi_dsi_pixel_format converter
> instead of abusing pixel_format_from_register_bits() (whose
> job is to parse the pixel format from some pre-ICL DSI
> hardware register).

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I'd also happily take a patch renaming the VBT macros

PIXEL_FORMAT_RGB666 -> PIXEL_FORMAT_RGB666_PACKED
PIXEL_FORMAT_RGB666_LOOSELY_PACKED -> PIXEL_FORMAT_RGB666

because it's such a PITA that it's the opposite of what the register
macros and MIPI_DSI_* macros have.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 20 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  3 +--
>  drivers/gpu/drm/i915/display/vlv_dsi.h       |  7 -------
>  3 files changed, 19 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/d=
rm/i915/display/intel_dsi_vbt.c
> index e8129a720210..b2b78f39cfd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -745,6 +745,23 @@ void intel_dsi_log_params(struct intel_dsi *intel_ds=
i)
>  		    str_enabled_disabled(!(intel_dsi->video_frmt_cfg_bits & DISABLE_VI=
DEO_BTA)));
>  }
>=20=20
> +static enum mipi_dsi_pixel_format vbt_to_dsi_pixel_format(unsigned int f=
ormat)
> +{
> +	switch (format) {
> +	case PIXEL_FORMAT_RGB888:
> +		return MIPI_DSI_FMT_RGB888;
> +	case PIXEL_FORMAT_RGB666_LOOSELY_PACKED:
> +		return MIPI_DSI_FMT_RGB666;
> +	case PIXEL_FORMAT_RGB666:
> +		return MIPI_DSI_FMT_RGB666_PACKED;
> +	case PIXEL_FORMAT_RGB565:
> +		return MIPI_DSI_FMT_RGB565;
> +	default:
> +		MISSING_CASE(format);
> +		return MIPI_DSI_FMT_RGB666;
> +	}
> +}
> +
>  bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
>  {
>  	struct drm_device *dev =3D intel_dsi->base.base.dev;
> @@ -762,8 +779,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16 panel_id)
>  	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop ? 1 : 0;
>  	intel_dsi->lane_count =3D mipi_config->lane_cnt + 1;
>  	intel_dsi->pixel_format =3D
> -			pixel_format_from_register_bits(
> -				mipi_config->videomode_color_format << 7);
> +		vbt_to_dsi_pixel_format(mipi_config->videomode_color_format);
>=20=20
>  	intel_dsi->dual_link =3D mipi_config->dual_link;
>  	intel_dsi->pixel_overlap =3D mipi_config->pixel_overlap;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 9383eedee2d4..587e98d32053 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -67,9 +67,8 @@ static u16 pixels_from_txbyteclkhs(u16 clk_hs, int bpp,=
 int lane_count,
>  						(bpp * burst_mode_ratio));
>  }
>=20=20
> -enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
> +static enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fm=
t)
>  {
> -	/* It just so happens the VBT matches register contents. */
>  	switch (fmt) {
>  	case VID_MODE_FORMAT_RGB888:
>  		return MIPI_DSI_FMT_RGB888;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i91=
5/display/vlv_dsi.h
> index cf9d7b82f288..a02fd7bd2f2a 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.h
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
> @@ -6,24 +6,17 @@
>  #ifndef __VLV_DSI_H__
>  #define __VLV_DSI_H__
>=20=20
> -#include <linux/types.h>
> -
>  enum port;
>  struct drm_i915_private;
>  struct intel_dsi;
>=20=20
>  #ifdef I915
>  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port =
port);
> -enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
>  void vlv_dsi_init(struct drm_i915_private *dev_priv);
>  #else
>  static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_d=
si, enum port port)
>  {
>  }
> -static inline enum mipi_dsi_pixel_format pixel_format_from_register_bits=
(u32 fmt)
> -{
> -	return 0;
> -}
>  static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  {
>  }

--=20
Jani Nikula, Intel
