Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E5495F02D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F0710E182;
	Mon, 26 Aug 2024 11:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ENnaQkKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A6110E182;
 Mon, 26 Aug 2024 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724673190; x=1756209190;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ALsGSEn/axXateRGcLADQFUqdA+9zY3j5HmgvlMHsPo=;
 b=ENnaQkKcVPiwaP6s/8CYoBUnjfwGvOpjqwnh2NACHl/MT4uNOszdJGzm
 +LDi83cKV0K4IQrAwlwvtSuHAbuKeCUTyi3UyV6F4KxLljvstjG71Yg4H
 MwaXqao09ONc0FUEzka4xtdzJP1pjFD1Z8nmFKi6cF2qc3Iiopowp1LOB
 cCXxLZkDzxjtP2soOfkASciyPKyDHY9SxiOcPBg2gmf/OlwvPJ1M8QbXq
 YA7nadBeP37hdEWsWuqp6DY7pPWu3NUxCaW/7PIWBsHR41y8QEuzo1YWM
 vL6qXthngE3YBQ69LEK6XLcQvR8QiAz9RTb2lmUI8vzBE7/yzqr6BUS8D Q==;
X-CSE-ConnectionGUID: jXNICtyNTCSHlzCMSdc/OQ==
X-CSE-MsgGUID: +nKIb1DPQCK2Ivj9Amt+2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="26881030"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="26881030"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:53:09 -0700
X-CSE-ConnectionGUID: W7/FVaIWTxe8FCurGMh28Q==
X-CSE-MsgGUID: 4eJdyo8NQ3+2nxZWDxBC3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62461118"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:53:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 02/12] drm/i915/ddi: Move all mso related helpers to a
 new file
In-Reply-To: <20240826111527.1113622-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-3-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 14:52:53 +0300
Message-ID: <8734mr33hm.fsf@intel.com>
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Move the MSO related helper functions from intel_ddi.c to a new file
> intel_dss.c to improve code modularity and maintainability.
> The corresponding headers are also moved to intel_dss.h.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c | 86 ++---------------------
>  drivers/gpu/drm/i915/display/intel_dss.c | 87 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dss.h | 21 ++++++
>  drivers/gpu/drm/xe/Makefile              |  1 +
>  5 files changed, 115 insertions(+), 81 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..e55ce8ba123c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -328,6 +328,7 @@ i915-y +=3D \
>  	display/intel_dsi.o \
>  	display/intel_dsi_dcs_backlight.o \
>  	display/intel_dsi_vbt.o \
> +	display/intel_dss.o \
>  	display/intel_dvo.o \
>  	display/intel_encoder.o \
>  	display/intel_gmbus.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4566a60c981c..28ef6814c56c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -57,7 +57,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dsi.h"
> -#include "intel_dss_regs.h"
> +#include "intel_dss.h"
>  #include "intel_encoder.h"
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
> @@ -2349,82 +2349,6 @@ static void intel_ddi_power_up_lanes(struct intel_=
encoder *encoder,
>  	}
>  }
>=20=20
> -/*
> - * Splitter enable for eDP MSO is limited to certain pipes, on certain
> - * platforms.
> - */
> -static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
> -{
> -	if (DISPLAY_VER(i915) > 20)
> -		return ~0;
> -	else if (IS_ALDERLAKE_P(i915))
> -		return BIT(PIPE_A) | BIT(PIPE_B);
> -	else
> -		return BIT(PIPE_A);
> -}
> -
> -static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
> -				     struct intel_crtc_state *pipe_config)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	u32 dss1;
> -
> -	if (!HAS_MSO(i915))
> -		return;
> -
> -	dss1 =3D intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> -
> -	pipe_config->splitter.enable =3D dss1 & SPLITTER_ENABLE;
> -	if (!pipe_config->splitter.enable)
> -		return;
> -
> -	if (drm_WARN_ON(&i915->drm, !(intel_ddi_splitter_pipe_mask(i915) & BIT(=
pipe)))) {
> -		pipe_config->splitter.enable =3D false;
> -		return;
> -	}
> -
> -	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
> -	default:
> -		drm_WARN(&i915->drm, true,
> -			 "Invalid splitter configuration, dss1=3D0x%08x\n", dss1);
> -		fallthrough;
> -	case SPLITTER_CONFIGURATION_2_SEGMENT:
> -		pipe_config->splitter.link_count =3D 2;
> -		break;
> -	case SPLITTER_CONFIGURATION_4_SEGMENT:
> -		pipe_config->splitter.link_count =3D 4;
> -		break;
> -	}
> -
> -	pipe_config->splitter.pixel_overlap =3D REG_FIELD_GET(OVERLAP_PIXELS_MA=
SK, dss1);
> -}
> -
> -static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_=
state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	u32 dss1 =3D 0;
> -
> -	if (!HAS_MSO(i915))
> -		return;
> -
> -	if (crtc_state->splitter.enable) {
> -		dss1 |=3D SPLITTER_ENABLE;
> -		dss1 |=3D OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
> -		if (crtc_state->splitter.link_count =3D=3D 2)
> -			dss1 |=3D SPLITTER_CONFIGURATION_2_SEGMENT;
> -		else
> -			dss1 |=3D SPLITTER_CONFIGURATION_4_SEGMENT;
> -	}
> -
> -	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
> -		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
> -		     OVERLAP_PIXELS_MASK, dss1);
> -}
> -
>  static u8 mtl_get_port_width(u8 lane_count)
>  {
>  	switch (lane_count) {
> @@ -2559,7 +2483,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	/*
>  	 * 6.e Program CoG/MSO configuration bits in DSS_CTL1 if selected.
>  	 */
> -	intel_ddi_mso_configure(crtc_state);
> +	intel_dss_configure_mso(crtc_state);
>=20=20
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> @@ -2714,7 +2638,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	/*
>  	 * 7.g Program CoG/MSO configuration bits in DSS_CTL1 if selected.
>  	 */
> -	intel_ddi_mso_configure(crtc_state);
> +	intel_dss_configure_mso(crtc_state);
>=20=20
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> @@ -3959,7 +3883,7 @@ static void intel_ddi_get_config(struct intel_encod=
er *encoder,
>=20=20
>  	intel_ddi_read_func_ctl(encoder, pipe_config);
>=20=20
> -	intel_ddi_mso_get_config(encoder, pipe_config);
> +	intel_dss_get_mso_config(encoder, pipe_config);
>=20=20
>  	pipe_config->has_audio =3D
>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> @@ -5191,7 +5115,7 @@ void intel_ddi_init(struct intel_display *display,
>  		dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
>=20=20
>  		if (dig_port->dp.mso_link_count)
> -			encoder->pipe_mask =3D intel_ddi_splitter_pipe_mask(dev_priv);
> +			encoder->pipe_mask =3D intel_dss_splitter_pipe_mask(dev_priv);
>  	}
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i=
915/display/intel_dss.c
> new file mode 100644
> index 000000000000..41ea42d234f9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include "i915_drv.h"
> +#include "i915_reg_defs.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_dss.h"
> +#include "intel_dss_regs.h"
> +
> +/*
> + * Splitter enable for eDP MSO is limited to certain pipes, on certain
> + * platforms.
> + */
> +u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) > 20)
> +		return ~0;
> +	else if (IS_ALDERLAKE_P(i915))
> +		return BIT(PIPE_A) | BIT(PIPE_B);
> +	else
> +		return BIT(PIPE_A);
> +}
> +
> +void intel_dss_get_mso_config(struct intel_encoder *encoder,
> +			      struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	u32 dss1;
> +
> +	if (!HAS_MSO(i915))
> +		return;
> +
> +	dss1 =3D intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> +
> +	pipe_config->splitter.enable =3D dss1 & SPLITTER_ENABLE;
> +	if (!pipe_config->splitter.enable)
> +		return;
> +
> +	if (drm_WARN_ON(&i915->drm, !(intel_dss_splitter_pipe_mask(i915) & BIT(=
pipe)))) {
> +		pipe_config->splitter.enable =3D false;
> +		return;
> +	}
> +
> +	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
> +	default:
> +		drm_WARN(&i915->drm, true,
> +			 "Invalid splitter configuration, dss1=3D0x%08x\n", dss1);
> +		fallthrough;
> +	case SPLITTER_CONFIGURATION_2_SEGMENT:
> +		pipe_config->splitter.link_count =3D 2;
> +		break;
> +	case SPLITTER_CONFIGURATION_4_SEGMENT:
> +		pipe_config->splitter.link_count =3D 4;
> +		break;
> +	}
> +
> +	pipe_config->splitter.pixel_overlap =3D REG_FIELD_GET(OVERLAP_PIXELS_MA=
SK, dss1);
> +}
> +
> +void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	u32 dss1 =3D 0;
> +
> +	if (!HAS_MSO(i915))
> +		return;
> +
> +	if (crtc_state->splitter.enable) {
> +		dss1 |=3D SPLITTER_ENABLE;
> +		dss1 |=3D OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
> +		if (crtc_state->splitter.link_count =3D=3D 2)
> +			dss1 |=3D SPLITTER_CONFIGURATION_2_SEGMENT;
> +		else
> +			dss1 |=3D SPLITTER_CONFIGURATION_4_SEGMENT;
> +	}
> +
> +	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
> +		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
> +		     OVERLAP_PIXELS_MASK, dss1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i=
915/display/intel_dss.h
> new file mode 100644
> index 000000000000..632a00f0ebc1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DSS_H__
> +#define __INTEL_DSS_H__
> +
> +#include "linux/types.h"
> +
> +struct drm_i915_private;
> +struct intel_crtc_state;
> +struct intel_encoder;
> +
> +u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915);
> +void intel_dss_get_mso_config(struct intel_encoder *encoder,
> +			      struct intel_crtc_state *pipe_config);
> +void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state);

Nitpick, I'd probably name all of these intel_dss_mso_*.

intel_dss_mso_pipe_mask
intel_dss_mso_get_config
intel_dss_mso_configure

Especially "_get_config" suffix is a naming pattern for functions called
on the encoder->get_config path, and you don't want to add words in
between.

BR,
Jani.


> +
> +#endif /* __INTEL_DSS_H__ */
> +
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index b9670ae09a9e..619272783669 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -227,6 +227,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_dsi.o \
>  	i915-display/intel_dsi_dcs_backlight.o \
>  	i915-display/intel_dsi_vbt.o \
> +	i915-display/intel_dss.o \
>  	i915-display/intel_encoder.o \
>  	i915-display/intel_fb.o \
>  	i915-display/intel_fbc.o \

--=20
Jani Nikula, Intel
