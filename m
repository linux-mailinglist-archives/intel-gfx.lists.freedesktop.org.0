Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD2D94A451
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B732510E4B5;
	Wed,  7 Aug 2024 09:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzxlqtXy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAAF310E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723023114; x=1754559114;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DMpFB/Idp4b9Sr6eruqswrSGakX//q1JQ6iHeJETqms=;
 b=FzxlqtXy88TOc3khVdcWDOyWoNpdLn5X7yznK5gt1i3xFtdyGlw7yVI+
 3SfFUIrRA/TIPQBN1UPn0e5ftQZb00ODwlh9K35dzkmBCx1bQn8IFrd8Z
 n9e2BN11KMCg0Rgpn+8vMtIMRp5ElVY7HCnEqxGgBSyi1jK+qj5GgAoOP
 KbTuFQHRiei4UtmY/y4w+Cr+p/yaB2xnSzN3gf0z2rOnzA/ky+rriwMpq
 FwlXKkbwcTFnTtmKcJFtUecAxnhXVmpi6IN/RT2imiiQPcwPDKsfpzDoQ
 qQw8ytlKFOnRk+DO+CxOSC6vKjmTWZmUyExXH3GeSh8EphbR0+wuw9EP5 Q==;
X-CSE-ConnectionGUID: BDg/9kzwQmu5QVn1x/8GZQ==
X-CSE-MsgGUID: mvnDHSkzRnOa2jUejMepJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="12897930"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="12897930"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:31:53 -0700
X-CSE-ConnectionGUID: 3pe7z59HTCSnvyGPsJkT6Q==
X-CSE-MsgGUID: bukn8Z1ZTly1v03/azEiOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="56749475"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:31:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for histogram
In-Reply-To: <20240705095551.1244154-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-2-arun.r.murthy@intel.com>
Date: Wed, 07 Aug 2024 12:31:48 +0300
Message-ID: <8734ng65mj.fsf@intel.com>
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

On Fri, 05 Jul 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Statistics is generated from the image frame that is coming to display
> and an event is sent to user after reading this histogram data.
> This statistics/histogram is then shared with the user upon getting a
> request from user. User can then use this histogram and generate an
> enhancement factor. This enhancement factor can be multiplied/added with
> the incoming pixel data frame.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  .../gpu/drm/i915/display/intel_histogram.c    | 187 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_histogram.h    |  91 +++++++++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  5 files changed, 283 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..03caf3a24966 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -264,6 +264,7 @@ i915-y +=3D \
>  	display/intel_hdcp.o \
>  	display/intel_hdcp_gsc.o \
>  	display/intel_hdcp_gsc_message.o \
> +	display/intel_histogram.o \
>  	display/intel_hotplug.o \
>  	display/intel_hotplug_irq.o \
>  	display/intel_hti.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 8713835e2307..e0a9c6d8c9b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1537,6 +1537,9 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20=20
> +	/* histogram data */

Does the comment add value?

> +	struct intel_histogram *histogram;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu=
/drm/i915/display/intel_histogram.c
> new file mode 100644
> index 000000000000..1a603445fc29
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -0,0 +1,187 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>

Blank line here.

> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"
> +#include "intel_histogram.h"
> +
> +int intel_histogram_can_enable(struct intel_crtc *intel_crtc)
> +{
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	/* TODO: Restrictions for enabling histogram */
> +	histogram->can_enable =3D true;

A function named _can_enable() sounds like a predicate function that
does not have side effects.

> +
> +	return 0;
> +}
> +
> +static void intel_histogram_enable_dithering(struct drm_i915_private *de=
v_priv,
> +					     enum pipe pipe)
> +{
> +	intel_de_rmw(dev_priv, PIPE_MISC(pipe), PIPE_MISC_DITHER_ENABLE,
> +		     PIPE_MISC_DITHER_ENABLE);
> +}
> +
> +static int intel_histogram_enable(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +	u64 res;
> +	u32 gbandthreshold;
> +
> +	if (!histogram->can_enable) {

intel_crtc->histogram may be NULL. Ditto everywhere.

> +		drm_err(&i915->drm,
> +			"Histogram not supported, compute config failed\n");
> +		return -EINVAL;

Seems iffy to log that as an error.

> +	}
> +
> +	if (histogram->enable)
> +		return 0;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/*
> +	 * enable DPST_CTL Histogram mode
> +	 * Clear DPST_CTL Bin Reg function select to TC
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE | DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE_HSV |
> +		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +
> +	/* Re-Visit: check if wait for one vblank is required */
> +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> +
> +	/* TODO: one time programming: Program GuardBand Threshold */
> +	res =3D (intel_crtc->config->hw.adjusted_mode.vtotal *
> +				intel_crtc->config->hw.adjusted_mode.htotal);
> +	gbandthreshold =3D (res *	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
> +				HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
> +
> +	/* Enable histogram interrupt mode */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_THRESHOLD_GB_MASK |
> +		     DPST_GUARD_INTERRUPT_DELAY_MASK | DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> +		     DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELAY) |
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear pending interrupts has to be done on separate write */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	histogram->enable =3D true;

What do you need this for?

Compute config should be used to decide what to do.

Old and new state should be used to check whether it's already enabled.

> +
> +	return 0;
> +}
> +
> +static void intel_histogram_disable(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/* Clear pending interrupts and disable interrupts */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_INT_EN | DPST_GUARD_HIST_EVENT_STATUS, 0);
> +
> +	/* disable DPST_CTL Histogram mode */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_IE_HIST_EN, 0);
> +
> +	histogram->enable =3D false;

Ditto.

> +}
> +
> +int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> +{
> +	if (enable)
> +		return intel_histogram_enable(intel_crtc);
> +
> +	intel_histogram_disable(intel_crtc);
> +	return 0;
> +}
> +
> +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
> +{
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	int pipe =3D intel_crtc->pipe;
> +	int i =3D 0;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm, "histogram not enabled");
> +		return -EINVAL;
> +	}
> +
> +	if (!data) {
> +		drm_err(&i915->drm, "enhancement LUT data is NULL");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * Set DPST_CTL Bin Reg function select to IE
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> +		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
> +
> +	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +		intel_de_rmw(i915, DPST_BIN(pipe),
> +			     DPST_BIN_DATA_MASK, data[i]);
> +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> +	}
> +
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_ENHANCEMENT_MODE_MASK | DPST_CTL_IE_MODI_TABLE_EN,
> +		     DPST_CTL_EN_MULTIPLICATIVE | DPST_CTL_IE_MODI_TABLE_EN);
> +
> +	/* Once IE is applied, change DPST CTL to TC */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL, DPST_CTL_BIN_REG_FUNC_TC);
> +
> +	return 0;
> +}
> +
> +void intel_histogram_deinit(struct intel_crtc *intel_crtc)
> +{
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	kfree(histogram);
> +}
> +
> +int intel_histogram_init(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram;
> +
> +	/* Allocate histogram internal struct */
> +	histogram =3D kzalloc(sizeof(*histogram), GFP_KERNEL);
> +	if (unlikely(!histogram)) {

Please never use likely/unlikely unless you can show it has a meaningful
perf impact.

> +		drm_err(&i915->drm,
> +			"Failed to allocate HISTOGRAM event\n");

Please never log allocation failures.

> +		kfree(histogram);

Allocation of histogram just failed...?

> +		return -ENOMEM;
> +	}
> +
> +	intel_crtc->histogram =3D histogram;
> +	histogram->pipe =3D intel_crtc->pipe;
> +	histogram->can_enable =3D false;
> +
> +	histogram->i915 =3D i915;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu=
/drm/i915/display/intel_histogram.h
> new file mode 100644
> index 000000000000..632116c52882
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -0,0 +1,91 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HISTOGRAM_H__
> +#define __INTEL_HISTOGRAM_H__
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>
> +#include "intel_display.h"

Please use forward declarations instead of includes in headers whenever
possible. You don't need *any* of those includes.

> +#include "i915_reg.h"
> +
> +/* GLOBAL_HIST related registers */
> +#define _DPST_CTL_A					0x490C0
> +#define _DPST_CTL_B					0x491C0
> +#define DPST_CTL(pipe)					_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> +#define DPST_CTL_RESTORE				REG_BIT(28)
> +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
> +#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT=
_MODE_MASK, 2)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> +#define DPST_CTL_BIN_REG_FUNC_TC			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_=
SEL, 0)
> +#define DPST_CTL_BIN_REG_FUNC_IE			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_=
SEL, 1)
> +#define DPST_CTL_BIN_REG_MASK				REG_GENMASK(6, 0)
> +#define DPST_CTL_BIN_REG_CLEAR				REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, =
0)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CT=
L_IE_TABLE_VALUE_FORMAT, 1)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CT=
L_IE_TABLE_VALUE_FORMAT, 0)
> +#define DPST_CTL_HIST_MODE_YUV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> +#define DPST_CTL_HIST_MODE_HSV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> +
> +#define _DPST_GUARD_A					0x490C8
> +#define _DPST_GUARD_B					0x491C8
> +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_=
B)
> +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> +#define DPST_GUARD_INTERRUPT_DELAY_MASK			REG_GENMASK(29, 22)
> +#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTE=
RRUPT_DELAY_MASK, val)
> +#define DPST_GUARD_THRESHOLD_GB_MASK			REG_GENMASK(21, 0)
> +#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHO=
LD_GB_MASK, val)
> +
> +#define _DPST_BIN_A					0x490C4
> +#define _DPST_BIN_B					0x491C4
> +#define DPST_BIN(pipe)					_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> +#define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
> +#define DPST_BIN_BUSY					REG_BIT(31)
> +
> +#define INTEL_HISTOGRAM_PIPEA			0x90000000
> +#define INTEL_HISTOGRAM_PIPEB			0x90000002
> +#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> +						     INTEL_HISTOGRAM_PIPEA, \
> +						     INTEL_HISTOGRAM_PIPEB)
> +
> +#define HISTOGRAM_BIN_COUNT			32
> +#define HISTOGRAM_IET_LENGTH			33
> +
> +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pipe=
's current pixel count.
> +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor=
 for threshold guardband.
> +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04

Register macros belong in their own files. We never shove them in the
regular headers like this.

> +
> +enum intel_global_hist_status {
> +	INTEL_HISTOGRAM_ENABLE,
> +	INTEL_HISTOGRAM_DISABLE,
> +};
> +
> +enum intel_global_histogram {
> +	INTEL_HISTOGRAM,
> +};
> +
> +enum intel_global_hist_lut {
> +	INTEL_HISTOGRAM_PIXEL_FACTOR,
> +};
> +
> +struct intel_histogram {
> +	struct drm_i915_private *i915;
> +	bool enable;
> +	bool can_enable;
> +	enum pipe pipe;
> +	u32 bindata[HISTOGRAM_BIN_COUNT];
> +};

These should probably be internal to intel_histogram.c.

> +
> +int intel_histogram_can_enable(struct intel_crtc *intel_crtc);
> +int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
> +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data=
);
> +int intel_histogram_init(struct intel_crtc *intel_crtc);
> +void intel_histogram_deinit(struct intel_crtc *intel_crtc);
> +
> +#endif /* __INTEL_HISTOGRAM_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 628c245c4822..1881e3e1f4a9 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -260,6 +260,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_hdcp.o \
>  	i915-display/intel_hdcp_gsc_message.o \
>  	i915-display/intel_hdmi.o \
> +	i915-display/intel_histogram.o \
>  	i915-display/intel_hotplug.o \
>  	i915-display/intel_hotplug_irq.o \
>  	i915-display/intel_hti.o \

--=20
Jani Nikula, Intel
