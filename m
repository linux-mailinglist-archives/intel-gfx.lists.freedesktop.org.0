Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFE19765F2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0BC10E066;
	Thu, 12 Sep 2024 09:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FujVjv3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E99610E066
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134356; x=1757670356;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Vw15i/VRc8v9jsJtCvVN2iYVHH+FXf+/KEs4JBdYvY0=;
 b=FujVjv3DT2URtQt/fiHA0nEvl0a+GRXVxNG/8augZlFTy9+IlZNObzzI
 HZNx/nnYrBFzNVqlNuGRpPCe4pX3UpOcwD7pchyJCXAKf8iMx8iSJ5PYX
 XceaWex4TYEkGX1mCcbN2J1l44SV8fmBi33jop63FBX6dcBitm2O1ub3D
 tt2G5dbAEG27Le6Cjr40aUOxHiGVN/lr5VGvYPc53/IqS5Jv0BSG2t3T+
 iOABACdKWrSmqifjHtfkKadil9XPifCpSVJ2gPsyy9Bi0RDDcEHVuHoRs
 i6IL0fBuAJsaY/wpMNP7ytSyyA+uYhaX5uqBeYsx2Onm3Ek/YR09EsT1Q w==;
X-CSE-ConnectionGUID: JjX8tT6iTfCwRYITK3y12w==
X-CSE-MsgGUID: /0AZwrPEQeOZ51qiU3Dv/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24460975"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24460975"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:45:54 -0700
X-CSE-ConnectionGUID: CmC5mZzUQR2b7LpobaMMgw==
X-CSE-MsgGUID: knQs08W4T9SHkWs1XDKmrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98476263"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:45:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2 1/5] drm/i915/display: Add support for histogram
In-Reply-To: <20240821102349.3961986-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
Date: Thu, 12 Sep 2024 12:45:49 +0300
Message-ID: <87v7z1gq7m.fsf@intel.com>
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

On Wed, 21 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Statistics is generated from the image frame that is coming to display
> and an event is sent to user after reading this histogram data.
> This statistics/histogram is then shared with the user upon getting a
> request from user. User can then use this histogram and generate an
> enhancement factor. This enhancement factor can be multiplied/added with
> the incoming pixel data frame.
>
> v2: forward declaration in header file along with error handling (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  .../gpu/drm/i915/display/intel_histogram.c    | 205 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  5 files changed, 287 insertions(+)
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
> index bd290536a1b7..79d34d6d537d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1537,6 +1537,8 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20=20
> +	struct intel_histogram *histogram;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu=
/drm/i915/display/intel_histogram.c
> new file mode 100644
> index 000000000000..45e968e00af6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -0,0 +1,205 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>
> +
> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "intel_display.h"
> +#include "intel_histogram.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"
> +
> +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pipe=
's current pixel count.
> +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor=
 for threshold guardband.
> +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> +
> +struct intel_histogram {
> +	struct drm_i915_private *i915;
> +	bool enable;
> +	bool can_enable;
> +	enum pipe pipe;
> +	u32 bindata[HISTOGRAM_BIN_COUNT];
> +};
> +
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)
> +{
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	/* TODO: Restrictions for enabling histogram */
> +	histogram->can_enable =3D true;
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
> +	if (!histogram)
> +		return -EINVAL;
> +
> +	if (!histogram->can_enable) {
> +		return -EINVAL;
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
> +	if (!histogram)
> +		return;
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
> +	if (!histogram)
> +		return -EINVAL;
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
> +	if (!histogram) {
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
> index 000000000000..b25091732274
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -0,0 +1,78 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HISTOGRAM_H__
> +#define __INTEL_HISTOGRAM_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc;
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

Please put registers in a separate _regs.h file.

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
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
> +int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
> +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data=
);
> +int intel_histogram_init(struct intel_crtc *intel_crtc);
> +void intel_histogram_deinit(struct intel_crtc *intel_crtc);
> +
> +#endif /* __INTEL_HISTOGRAM_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index b9670ae09a9e..424ea43016dd 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -238,6 +238,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_hdcp.o \
>  	i915-display/intel_hdcp_gsc_message.o \
>  	i915-display/intel_hdmi.o \
> +	i915-display/intel_histogram.o \
>  	i915-display/intel_hotplug.o \
>  	i915-display/intel_hotplug_irq.o \
>  	i915-display/intel_hti.o \

--=20
Jani Nikula, Intel
