Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13A9810DD9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E5210E729;
	Wed, 13 Dec 2023 10:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD03810E729
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702461958; x=1733997958;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DTGcAId9M5TjuCjogv/YKqdgyOVAzx26A/QpW+H2NDM=;
 b=UJjUQI0ysi49mZoIeZXPnP/SzUrfUY4UJd89FOoCOhrLHUS/sO3tvHz5
 nNFRR7KwzWge6Nqkf1ghnHGp7M4bvOfOflpY7vNXimYh5s7vsqCaDr1+6
 QzTKaWAsrR4pqgJcJ1P2gyu0FwTbSsfqN+jgSeupsCt+Hb++N9jTaWTKA
 1Yz7xwUMft7YqeegHM80FCTT3qSv7lCfdy3b5TYN3eq5HxZTCg7QUiJ8L
 QH+7afd8X5d7iBKEzf/REx/NaQ5BLiXWsy4OdHlMOuzccwNyoOU2gstFL
 DXB6EViRYHCst/YI+cpvIIRxZ1PYuYIkkRzfG5oJKARJn85QwWG944XUJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1785946"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="1785946"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:05:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="15361418"
Received: from oostoia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.15])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:05:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add support for darskscreen
 detection
In-Reply-To: <20231213090641.1153030-2-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
 <20231213090641.1153030-2-nemesa.garg@intel.com>
Date: Wed, 13 Dec 2023 12:05:53 +0200
Message-ID: <87o7euwh6m.fsf@intel.com>
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

On Wed, 13 Dec 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Darkscreen detection checks if all the pixels of the frame are less then
> or equal to the comparision value. The comparision value is set to 256
> i.e black. So upon getting black pixels from the pipe, the dark screen
> detect bit is set and an error message will be printed.

Some inline comments below, but really the big problem is the design of
the whole thing, and there's no point in tweaking these before the
design is right.

BR,
Jani.

>
> v2: Addressed review comments [Jani]
> v3: Addressed review comments [Arun]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 95 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   | 26 +++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  6 files changed, 133 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index dc2469a4ead7..0322105a4c05 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -244,6 +244,7 @@ i915-y +=3D \
>  	display/intel_crtc.o \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
> +	display/intel_darkscreen.o \
>  	display/intel_display.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gp=
u/drm/i915/display/intel_darkscreen.c
> new file mode 100644
> index 000000000000..7c42988af354
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *

Superfluous blank line.

> + */
> +
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +
> +#define COLOR_DEPTH_6BPC 6
> +#define COLOR_DEPTH_8BPC 8
> +#define COLOR_DEPTH_10BPC 10
> +#define COLOR_DEPTH_12BPC 12
> +
> +#define COMPARE_VALUE_6_BPC 4
> +#define COMPARE_VALUE_8_BPC 16
> +#define COMPARE_VALUE_10_BPC 64
> +#define COMPARE_VALUE_12_BPC 256
> +
> +#define COMPARE_VALUE_CALCULATION_FACTOR 12
> +
> +/*
> + * Check the color format and compute the compare value based on bpc.
> + */
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	unsigned int frame_time_in_us;
> +	u32 comparevalue;
> +
> +	if (!crtc->dark_screen.enable)
> +		return;
> +
> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_err(&dev_priv->drm,
> +			"RGB format not supported:%c\n",
> +			pipe_name(crtc->pipe));
> +		return;
> +	}
> +
> +	switch (crtc_state->pipe_bpp / 3) {
> +	case COLOR_DEPTH_6BPC:
> +		comparevalue =3D COMPARE_VALUE_6_BPC;
> +		break;
> +	case COLOR_DEPTH_8BPC:
> +		comparevalue =3D COMPARE_VALUE_8_BPC;
> +		break;
> +	case COLOR_DEPTH_10BPC:
> +		comparevalue =3D COMPARE_VALUE_10_BPC;
> +		break;
> +	case COLOR_DEPTH_12BPC:
> +		comparevalue =3D COMPARE_VALUE_12_BPC;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm,
> +			"Bpc value is incorrect:%d\n",
> +			crtc_state->pipe_bpp / 3);
> +		return;
> +	}
> +
> +	comparevalue =3D comparevalue <<
> +		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state->pipe_bpp / 3);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
> +
> +	frame_time_in_us =3D (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted=
_mode)) * 2;
> +
> +	intel_de_wait_for_set(dev_priv,
> +			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE,
> +			      frame_time_in_us);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
> +			  DARK_SCREEN_DETECT) {
> +		drm_err(&dev_priv->drm,
> +			"Dark Screen detected:%c\n",
> +			pipe_name(crtc->pipe));
> +	}
> +
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 1, DA=
RK_SCREEN_DETECT |
> +		     DARK_SCREEN_DONE);
> +}
> +
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gp=
u/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..366e43499fc4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *

Superfluous blank line.

> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +};
> +
> +#ifdef CONFIG_DEBUG_FS
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);

dark_screen is inconsistent with darkscreen everywhere else.

> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);

You're not actually adding the implementation of that function in this
patch.

> +

Superfluous blank line.

> +#endif

If all the functionality here is behind #ifdef CONFIG_DEBUG_FS, maybe
the file should only be built for CONFIG_DEBUG_FS=3Dy?

> +
> +#endif /* __INTEL_DARKSCREEN_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 3600497ff512..d441e08fef58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -49,6 +49,7 @@
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> @@ -1539,6 +1540,7 @@ struct intel_crtc {
>=20=20
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> +	struct intel_darkscreen dark_screen;
>  #endif
>  };
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c203dcfd6c7b..4e273c0ac801 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2097,6 +2097,14 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>=20=20
> +#define _DARK_SCREEN_PIPE_A		0x60120
> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MA=
SK, (x))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index fe659a97001c..ff533733245c 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -176,6 +176,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_crtc_state_dump.o \
>  	i915-display/intel_cursor.o \
>  	i915-display/intel_cx0_phy.o \
> +	i915-display/intel_darkscreen.o \
>  	i915-display/intel_ddi.o \
>  	i915-display/intel_ddi_buf_trans.o \
>  	i915-display/intel_display.o \

--=20
Jani Nikula, Intel
