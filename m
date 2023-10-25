Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7507D69DE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 13:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C2210E0F8;
	Wed, 25 Oct 2023 11:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916CE10E0F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698232711; x=1729768711;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pmqOSToYWctG65Ox1rVSghf4FMKThkoP3kLhFbPnukM=;
 b=H5+Wr/qvAC60Vgc0SVx3yxnrrG3Oh0eV97xYBiWf7WZRa/0BNLgEeyb9
 kNVd62kfqrc1A8epCA5lPytB7iUr3O6XphI5xIu/nwYMMHi1VpeAQpa0u
 C/tIy2JFF8Sf/YZoN7uwerOpy+ixFzWsgQqFThutdiclP82rRmWdqfQxr
 4aN2EYSG44h7jPnHd+vaM7Xuuj01QLc02AVPmkT8nCrRauj2kkhnUqbDy
 GP/bgVu7SxXKZuNFXinTP+zZ/5RUoMDfwYZdBdII+wcULI2SLvKVAkOdK
 VR7hlPMmQyvrXZj4kzQu4fw1EOPAfVZ+QntwIxlAzgbIWUSlA1MkxnPPM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="5900730"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="5900730"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="875461929"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="875461929"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:18:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231025102734.2783492-2-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231025102734.2783492-1-nemesa.garg@intel.com>
 <20231025102734.2783492-2-nemesa.garg@intel.com>
Date: Wed, 25 Oct 2023 14:18:26 +0300
Message-ID: <874jif9chp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add Darkscreen registers and
 timer handler.
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

On Wed, 25 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Add new registers for Darkscreen
> The logic checks for any black screen at pipe level and upon such detecti=
on prints error.
> Darkscreen compares the pixels with the compare value(0x00 - black) for t=
he detection purpose.
> This feature can be enable/disable through debugfs.

The most important question a commit message should answer is *why*.

Why do we need this, what is it for?

Please find a number of nitpicks below.

First, the commit subject does not describe the patch. Registers and
timer handling? Huh?

The commit message should be wrapped. This is all explained in
Documentation/process/submitting-patches.rst; please read it.

>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 69 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   | 40 +++++++++++
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  9 +++
>  5 files changed, 122 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 88b2bb005014..538d5a42f9e3 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,7 @@ i915-y +=3D \
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
> index 000000000000..ef68dbc7a296
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2018 Intel Corporation

It's 2023 now.

> + *
> + * Author: Nemesa Garg <nemesa.garg@intel.com>

Please don't add Author: lines in source code.

The git history says who has done what, and is always up-to-date. Adding
authors in source presents a problem: when do you amend it? Some people
update them with a typo fix, some people almost never, even when they
rewrite the entire file. Then it's just stale information.

I, for example, have modified almost every file in the entire i915
driver. Should I add my name to all of them? What would be the point?

Finally, I think author lines give a false sense of ownership in a
fundamentally shared project.

Yes, we have existing author lines, but that's just because of another
problem with author lines: they're actually incredibly hard to remove.

> + */

Blank line here.

> +#include "i915_reg.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"

Please sort includes.

> +
> +/*
> + * Dark screen detection check if all pixels
> + * in a frame are less than or equal to compare
> + * value.Check the color format and compute the
> + * compare value based on bpc.

Rewrap, space after '.'.

> + */
> +void dark_screen_enable(struct intel_crtc_state *crtc_state)

Non-static functions should have prefix that matches the file name.

E.g. intel_foo.[ch] -> intel_foo_bar().

> +{
> +	u32 comparevalue;

Usually the longer declarations go first.

> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +	if (!crtc->dark_screen.enable)
> +		return;
> +
> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> +		return;

Blank line here.

> +	drm_err(&dev_priv->drm,
> +		"RGB format is not present%c\n",

Is this a useful log line:

RGB format is not presentB

Is it worth an *error* in the dmesg?

> +		pipe_name(crtc->pipe));

The whole thing fits on two  lines.

> +
> +	switch (crtc_state->pipe_bpp / 3) {
> +	case DD_COLOR_DEPTH_6BPC:
> +		comparevalue =3D DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_6_BPC;
> +		break;
> +	case DD_COLOR_DEPTH_8BPC:
> +		comparevalue =3D DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_8_BPC;
> +		break;
> +	case DD_COLOR_DEPTH_10BPC:
> +		comparevalue =3D DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_10_BPC;
> +		break;
> +	case DD_COLOR_DEPTH_12BPC:
> +		comparevalue =3D DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_12_BPC;
> +		break;
> +	default:

You'll get a warning about uninitialized comparevalue on this code path.

> +		break;
> +	}
> +
> +	comparevalue =3D comparevalue <<
> +		(DARKSCREEN_PROGRAMMED_COMPARE_VALUE_CALCULATION_FACTOR - crtc->dark_s=
creen.bpc);

That macro name is silly long.

> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
> +
> +	intel_de_wait_for_set(dev_priv,
> +			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE, 1);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
> +			  DARK_SCREEN_DETECT) {
> +		drm_err(&dev_priv->drm,
> +			"Dark Screen detected %c\n",
> +			pipe_name(crtc->pipe));

Error for detected? What is this?

> +	}
> +
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, DA=
RK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gp=
u/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..69da1ea56829
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,40 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2018 Intel Corporation
> + *
> + * Author: Nemesa Garg <nemesa.garg@intel.com>

Same things about copyright year and author lines.

> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <drm/drm_device.h>

You don't need that. Use minimal includes in headers.

> +
> +#define DD_COLOR_DEPTH_6BPC 6
> +#define DD_COLOR_DEPTH_8BPC 8
> +#define DD_COLOR_DEPTH_10BPC 10
> +#define DD_COLOR_DEPTH_12BPC 12
> +
> +// HW Darkscreen Detection Macros

Please use /* */ comments.

> +#define DARKSCREEN_PROGRAMMED_COMPARE_VALUE_CALCULATION_FACTOR 12
> +
> +// Compare Value =3D 16*(2 ^ (bpc-8))

Ditto.

> +#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_6_BPC 4
> +#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_8_BPC 16
> +#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_10_BPC 64
> +#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_12_BPC 256

All of the above could be in intel_darkscreen.c.

> +
> +struct intel_crtc_state;
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +	u64 timer_value;
> +	u8 bpc;
> +	struct hrtimer timer;
> +};
> +
> +void dark_screen_enable(struct intel_crtc_state *crtc_state);
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
> +
> +#endif /* __INTEL_DARKSCREEN_H_ */

The comment does not match the #ifdef.

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 65ea37fe8cff..289ecda2e032 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -54,6 +54,7 @@
>  #include "intel_display_power.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_wm_types.h"
> +#include "intel_darkscreen.h"

Please keep includes sorted.

>=20=20
>  struct drm_printer;
>  struct __intel_global_objs_state;
> @@ -1515,6 +1516,8 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20=20
> +	struct intel_darkscreen dark_screen;
> +

If it's debugfs only (is it?) you could add this below the #ifdef.

>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 135e8d8dbdf0..01d9de14f79c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2097,6 +2097,15 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>=20=20
> +/* Dark SCREEN */

It's pretty obvious from the macro names. The comment adds no value.

> +#define _DARK_SCREEN_PIPE_A             0x60120
> +#define DARK_SCREEN(trans)              _MMIO_TRANS2(trans, _DARK_SCREEN=
_PIPE_A)
> +#define   DARK_SCREEN_ENABLE            REG_BIT(31)
> +#define   DARK_SCREEN_DETECT            REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK        REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MA=
SK, (x))

Please use tabs for indenting the values.

> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)

--=20
Jani Nikula, Intel
