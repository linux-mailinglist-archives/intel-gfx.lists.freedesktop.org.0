Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC088B0643
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 11:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B4C1139A6;
	Wed, 24 Apr 2024 09:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4we+9e3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E08113579
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713951725; x=1745487725;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AYB0TrQMpKOV7l4ixl7PR5q+tbwuPH8gsQrJZOs2tr0=;
 b=C4we+9e3J1lA1iOOIlnCtLK3vV3NvX52cmqhByNtlIK0A6hacrQhyzD9
 0rOgk2SJS7wh+jrfvkCWOBP2mOxI6f8IIaDHEmJhy4DNULgVZXy1/s5Py
 +kfEhjSaz3cY5UdCt9JduDgStaYO9Iq0a6xLx1wWIstxH7Fw6C8ptkvzm
 ZDlV3lvra3CqgHunisw3S6ui0zwWQCqhcK7ByfnyZlMSq0I3KilfR6f3m
 yTvHQgLxNGiL6Bk6hb592VsNhGEkTmWBUikhpoXrIOnRdCieQiEnxvfxa
 6dX274mC+VIxu5/imHbc8IAy7w3SD45i7fom360/I2PHS0S2MsaftsW7m A==;
X-CSE-ConnectionGUID: syf8qetDRlybw/dzTdX7xA==
X-CSE-MsgGUID: /PIX9M7iRGCXAwa9VKLR/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="34973855"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="34973855"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:42:05 -0700
X-CSE-ConnectionGUID: hdyJCIaYTZqCByOLkTvIxg==
X-CSE-MsgGUID: iIm7OOLsQZWsNz8AtVoIvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29137272"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:42:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>, Nemesa
 Garg <nemesa.garg@intel.com>
Subject: Re: [RFC 2/3] drm/i915/darkscreen: Enable darkscreen detection
In-Reply-To: <20240424073829.824312-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
 <20240424073829.824312-4-suraj.kandpal@intel.com>
Date: Wed, 24 Apr 2024 12:41:59 +0300
Message-ID: <87cyqfqeqg.fsf@intel.com>
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

On Wed, 24 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add functions to enable darkscreen detection and corresponding
> additions to Makefile to build them.
> The enable and detect functions will be used in case we encounter
> a FIFO underrun which will help to check if a darkscreen occurred.

Why? The commit message needs to answer the question why. This is the
main thing I've requested ever since the patches were first posted.

Well, it also needs to answer the question what, and you need to explain
what "dark screen detection" is, and what we're doing with it.

Like, why do I have to read the code to realize the *only* thing we're
doing with this information is to debug log a single line? Is that
useful information? Are there further plans?

The patches for dark screen detection have been circulating for quite
some time now, and I have yet to see a compelling argument what we
benefit from enabling this. What's the story?

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

The authorship and signed-off-bys and co-developed-by need to be sorted
out. The last time I saw these they were authored by Nemesa.

Some detailed comments inline.

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 139 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   |  25 ++++
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  5 files changed, 169 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 7cad944b825c..00e36169a74d 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -255,6 +255,7 @@ i915-y +=3D \
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
> index 000000000000..3ac3e8e6c1e3
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */

2024.

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

What's all of the above based on?

> +
> +static void intel_darkscreen_detect(struct intel_crtc *crtc);

Please just reorder the file to not need this.

> +
> +static u32 intel_darkscreen_get_comp_val(struct drm_i915_private *i915, =
int bpc)
> +{
> +	u32 compare_value =3D 0;

No need to set to 0.

> +
> +	switch (bpc) {
> +	case COLOR_DEPTH_6BPC:
> +		compare_value =3D COMPARE_VALUE_6_BPC;
> +		break;
> +	case COLOR_DEPTH_8BPC:
> +		compare_value =3D COMPARE_VALUE_8_BPC;
> +		break;
> +	case COLOR_DEPTH_10BPC:
> +		compare_value =3D COMPARE_VALUE_10_BPC;
> +		break;
> +	case COLOR_DEPTH_12BPC:
> +		compare_value =3D COMPARE_VALUE_12_BPC;
> +		break;
> +	default:
> +		drm_dbg(&i915->drm, "Bpc value is incorrect:%d\n", bpc);

drm_dbg_kms

> +		return -EINVAL;

Returning -EINVAL from a u32 function with no error checks anywhere
is... interesting.

> +	}
> +
> +	compare_value =3D compare_value << (COMPARE_VALUE_CALCULATION_FACTOR - =
bpc);
> +	return DARK_SCREEN_COMPARE_VAL(compare_value);

It would probably be better for this function to return an int with just
the value, and for the caller to use DARK_SCREEN_COMPARE_VAL() to shove
it to the register.

> +}
> +
> +static void intel_darkscreen_work_fn(struct work_struct *work)
> +{
> +	struct intel_darkscreen *dark_screen =3D
> +		container_of(work, typeof(*dark_screen), darkscreen_detect_work);
> +
> +	if (!dark_screen->enable)
> +		intel_darkscreen_enable(dark_screen->crtc);
> +
> +	intel_darkscreen_detect(dark_screen->crtc);
> +}
> +
> +void intel_darkscreen_schedule_work(struct intel_crtc *crtc)

Why do the callers of this function need to know the "schedule work"
implementation detail?

> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_darkscreen *dark_screen =3D &crtc->dark_screen;
> +
> +	dark_screen->crtc =3D crtc;

You should not have to do this every time.

> +	queue_work(i915->unordered_wq, &dark_screen->darkscreen_detect_work);
> +}
> +
> +void intel_darkscreen_setup(struct intel_crtc *crtc)

You don't call this anywhere. The whole thing can't work.

> +{
> +	struct intel_darkscreen *dark_screen;
> +
> +	dark_screen =3D &crtc->dark_screen;
> +	dark_screen =3D kzalloc(sizeof(*dark_screen), GFP_KERNEL);

These two lines are just completely wrong. Make up your mind what the
member should be.

If this function were called, the above would leak. There's no cleanup.

> +	if (!dark_screen)
> +		return;
> +	dark_screen->enable =3D false;

Unnecessary. But you should set dark_screen->crtc here.

> +
> +	INIT_WORK(&dark_screen->darkscreen_detect_work, intel_darkscreen_work_f=
n);

Now, *if* this function were actually called, this would initialize the
work in an allocated struct that's thrown away and never used.

Also, please get the naming uniform. Is it darkscreen or dark_screen?
Make it one or the other, and stick with it throughout.

> +}
> +
> +/*
> + * Check the color format and compute the compare value based on bpc.
> + */
> +int intel_darkscreen_enable(struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D crtc->config;
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	int bpc =3D crtc_state->pipe_bpp / 3;
> +	u32 val;
> +
> +	if (!crtc->dark_screen.enable)
> +		return 0;
> +
> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "YUV format not supported:%c for darkscreen detection\n",
> +			    pipe_name(crtc->pipe));
> +		return -EPROTO;

Just -EINVAL. But then you're not checking the return values anywhere...

> +	}
> +
> +	val =3D intel_darkscreen_get_comp_val(dev_priv, bpc);
> +	val |=3D DARK_SCREEN_ENABLE;
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), val);
> +	crtc->dark_screen.enable =3D true;
> +
> +	return 0;
> +}
> +
> +static void intel_darkscreen_detect(struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D crtc->config;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	unsigned int frame_time_in_us;
> +	u32 val =3D 0;
> +
> +	val |=3D DARK_SCREEN_DETECT | DARK_SCREEN_DONE;
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, va=
l);
> +
> +	frame_time_in_us =3D (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted=
_mode)) * 2;

Seems inaccurate.

> +	intel_de_wait_for_set(dev_priv, DARK_SCREEN(crtc->config->cpu_transcode=
r),
> +			      DARK_SCREEN_DONE, frame_time_in_us);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
> +	    DARK_SCREEN_DETECT) {
> +		drm_dbg_kms(&dev_priv->drm, "Dark screen detected:%c\n", pipe_name(crt=
c->pipe));
> +	}
> +}
> +
> +void intel_darkscreen_disable(struct intel_crtc *crtc)

This is not called anywhere.

> +{
> +	struct intel_crtc_state *crtc_state =3D crtc->config;
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gp=
u/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..3b4b3d3df672
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <linux/types.h>
> +#include <linux/workqueue.h>
> +
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +	struct work_struct darkscreen_detect_work;

Just "work" is enough and customary for the name. The context is
obvious.

> +	struct intel_crtc *crtc;
> +};

This could be internal, and used as an opaque pointer, if the
allocations were handled properly.

> +
> +void intel_darkscreen_setup(struct intel_crtc *crtc);
> +int intel_darkscreen_enable(struct intel_crtc *crtc);
> +void intel_darkscreen_disable(struct intel_crtc *crtc);
> +void intel_darkscreen_schedule_work(struct intel_crtc *crtc);
> +
> +#endif /* __INTEL_DARKSCREEN_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 62f7a30c37dc..177cf5ff8d77 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -50,6 +50,7 @@
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> @@ -1511,6 +1512,8 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20=20
> +	struct intel_darkscreen dark_screen;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 8321ec4f9b46..c83217e20cb9 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -228,6 +228,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_crtc_state_dump.o \
>  	i915-display/intel_cursor.o \
>  	i915-display/intel_cx0_phy.o \
> +	i915-display/intel_darkscreen.o \
>  	i915-display/intel_ddi.o \
>  	i915-display/intel_ddi_buf_trans.o \
>  	i915-display/intel_display.o \

--=20
Jani Nikula, Intel
