Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A2A70DA04
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDF310E421;
	Tue, 23 May 2023 10:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EDA310E421
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 10:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684836600; x=1716372600;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dNfp0R3cP+cJ9BVh6SU94D6xC3fsmmJxmvhsYxQWYpc=;
 b=ItrYWwzkNLmkkAQrkFN69+h+9KuSsc5U9mf8MlBMYGE9Dg+oALeL0O5v
 b/k7KdCqZnvxHfM6St45lr3jp4ZfiqySckDYB6yv7eUahgNJeqSXRVIXx
 ABDe8axwCGfV45Gf/0pZ/AAvFmTEkW9f6R3vh9eoqH3GzKzxAN10ITkE2
 Ma3qxym4kZ7FpKH5kYroICv7COzUZeSi/77S+d9FgdUNivASVHvpPzgJc
 6ic6Ej2kZWRQARjh3uU60y2CXAAPEWZ4c5zovu0OC7Hwz66vct4G/dn7x
 HQOYSn0f7/tzP+faxeKbYZFtIvFJwvmZ3iPxjuH2g3xTIrpRTgBsK1l86 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350703031"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="350703031"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="736806337"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="736806337"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:09:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
Date: Tue, 23 May 2023 13:09:33 +0300
Message-ID: <875y8jmk9u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display: Add support for
 global histogram
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

On Thu, 18 May 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> API are added to enable/disable histogram. Upon generation of histogram
> interrupt its notified to the usespace. User can then use this histogram
> and generate a LUT which is then fed back to the enahancement block.
> Histogram is an image statistics based on the input pixel stream.
> LUT is a look up table consisiting of pixel data.

Where's the corresponding userspace?

See Documentation/gpu/drm-uapi.rst under "Open-Source Userspace
Requirements".

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  .../gpu/drm/i915/display/intel_global_hist.c  | 295 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_global_hist.h  | 117 +++++++
>  4 files changed, 416 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_global_hist.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_global_hist.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 5ab909ec24e5..eac1e0d7bd30 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -295,6 +295,7 @@ i915-y +=3D \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
>  	display/intel_dpt.o \
> +	display/intel_global_hist.o \

Comment near the top of the Makefile:

# Please keep these build lists sorted!

Also, I'm not sure "global hist" is a good name.

>  	display/intel_drrs.o \
>  	display/intel_dsb.o \
>  	display/intel_fb.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index ac6951b3e5bd..9848fcf73b87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1462,6 +1462,9 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20=20
> +	/* GLOBAL_HIST data */

What information does this comment provide that the struct name and
member name does not already have?

> +	struct intel_global_hist *global_hist;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  	u32 cpu_fifo_underrun_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.c b/drivers/g=
pu/drm/i915/display/intel_global_hist.c
> new file mode 100644
> index 000000000000..ea5bcd195017
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_global_hist.c
> @@ -0,0 +1,295 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + *

When you have the SPDX header above, you can drop the license text
below.

> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.
> + *
> + */
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>
> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"
> +#include "intel_global_hist.h"
> +
> +static int intel_global_hist_get_data(struct drm_i915_private *i915,
> +		enum pipe pipe)
> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(
> +			drm_crtc_from_index(&i915->drm, pipe));

crtc index !=3D pipe.

> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	u32 dpstbin;
> +	int ret =3D 0, i =3D 0;
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +
> +	for (i =3D 0; i < GLOBAL_HIST_BIN_COUNT; i++) {
> +		dpstbin =3D intel_de_read(i915, DPST_BIN(pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from begining
> +			 */
> +			intel_de_rmw(i915, DPST_CTL(pipe),
> +				     DPST_CTL_BIN_REG_MASK, 0);
> +			i =3D 0;
> +		}
> +		global_hist->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Hist[%d]=3D%x\n",
> +				i, global_hist->bindata[i]);
> +	}
> +
> +	/* Clear histogram interrupt by setting histogram interrupt status bit*/
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +			DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	return ret;
> +}
> +
> +int intel_global_hist_compute_config(struct intel_crtc *intel_crtc)
> +{
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	struct drm_i915_private *i915 =3D global_hist->i915;
> +
> +	if (!global_hist->has_edp) {
> +		drm_err(&i915->drm, "Not a eDP panel\n");
> +		return -EINVAL;
> +	}
> +	if (!global_hist->has_pwm) {
> +		drm_err(&i915->drm, "eDP doesn't have PWM based backlight, cannot enab=
le GLOBAL_HIST\n");
> +		return -EINVAL;
> +	}

For both of the above, the histogram generation does not depend on eDP
nor PWM backlight, AFAICT. The kernel should provide mechanism, not
policy.

> +	/* Restrictions for enabling GLOBAL_HIST */
> +	global_hist->can_enable =3D true;

Functions that are about "compute config" should operate on the
crtc_state, not on the crtc.

> +	return 0;
> +}
> +
> +static void intel_global_hist_handle_int_work(struct work_struct *work)
> +{
> +	struct intel_global_hist *global_hist =3D container_of(work,
> +		struct intel_global_hist, handle_global_hist_int_work.work);
> +	struct drm_i915_private *i915 =3D global_hist->i915;
> +	char *global_hist_event[] =3D {"GLOBAL_HIST=3D1", NULL};
> +
> +	/* Notify user for Histogram rediness */
> +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
> +				global_hist_event))
> +		drm_err(&i915->drm, "sending GLOBAL_HIST event failed\n");
> +	intel_global_hist_get_data(i915, global_hist->pipe);
> +}
> +
> +void intel_global_hist_irq_handler(struct drm_i915_private *i915, enum p=
ipe pipe)
> +{
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));

crtc index !=3D pipe

> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +
> +	if (!global_hist->has_pwm) {
> +		drm_err(&i915->drm,
> +			"eDP doesn't have PWM based backlight, failure in GLOBAL_HIST\n");
> +		return;
> +	}

As said, this is unnecessary.

> +	queue_delayed_work(global_hist->wq,
> +			   &global_hist->handle_global_hist_int_work, 0);
> +}
> +static void intel_global_hist_enable_dithering(struct drm_i915_private *=
dev_priv,
> +		enum pipe pipe)
> +{
> +	intel_de_rmw(dev_priv, PIPEMISC(pipe), PIPEMISC_DITHER_ENABLE,
> +		     PIPEMISC_DITHER_ENABLE);
> +}
> +
> +static int intel_global_hist_enable(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	int pipe =3D intel_crtc->pipe;
> +	uint32_t gbandthreshold;

Please only use u32 etc, not the C99 uint32_t types.

> +
> +	if (!global_hist->has_pwm) {
> +		drm_err(&i915->drm,
> +			"eDP doesn't have PWM based backlight, cannot enable GLOBAL_HIST\n");

Mechanism, not policy. Why can't the userspace request a histogram for
whatever they want?

> +		return -EINVAL;
> +	}
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_global_hist_enable_dithering(i915, pipe);
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
> +	/* check if wait for one vblank is required */

The function call is quite clear on its own, I think.

> +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> +
> +	/* TODO: one time programming: Program GuardBand Threshold */
> +	gbandthreshold =3D ((intel_crtc->config->hw.adjusted_mode.vtotal *
> +				intel_crtc->config->hw.adjusted_mode.htotal) *
> +				GLOBAL_HIST_GUARDBAND_THRESHOLD_DEFAULT) /
> +				GLOBAL_HIST_GUARDBAND_PRECISION_FACTOR;
> +
> +	/* Enable histogram interrupt mode */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_THRESHOLD_GB_MASK |
> +		     DPST_GUARD_INTERRUPT_DELAY_MASK | DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> +		     DPST_GUARD_INTERRUPT_DELAY(GLOBAL_HIST_DEFAULT_GUARDBAND_DELAY) |
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear pending interrupts has to be done on seperate write */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +			DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	global_hist->enable =3D true;
> +
> +	return 0;
> +}
> +
> +static int intel_global_hist_disable(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	int pipe =3D intel_crtc->pipe;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_global_hist_enable_dithering(i915, pipe);
> +
> +	/* Clear pending interrupts and disable interrupts */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_INT_EN | DPST_GUARD_HIST_EVENT_STATUS, 0);
> +
> +	/* disable DPST_CTL Histogram mode */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_IE_HIST_EN, 0);
> +
> +	cancel_delayed_work(&global_hist->handle_global_hist_int_work);
> +	global_hist->enable =3D false;
> +
> +	return 0;
> +}
> +
> +int intel_global_hist_update(struct intel_crtc *intel_crtc, bool enable)
> +{
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +
> +	if (!global_hist->can_enable) {
> +		drm_err(&i915->drm,
> +			"GLOBAL_HIST not supported, compute config failed\n");

Why is this an error?

> +		return 0;
> +	}
> +
> +	if (enable)
> +		return intel_global_hist_enable(intel_crtc);
> +	else
> +		return intel_global_hist_disable(intel_crtc);
> +}
> +
> +int intel_global_hist_set_iet_lut(struct intel_crtc *intel_crtc, u32 *da=
ta)

Stuff like this should usually pass in the length.

> +{
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	int pipe =3D intel_crtc->pipe;
> +	int i =3D 0;
> +
> +	if (!global_hist->enable) {
> +		drm_err(&i915->drm, "GLOBAL_HIST not enabled");
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
> +	for (i =3D 0; i < GLOBAL_HIST_IET_LENGTH; i++) {
> +		intel_de_rmw(i915, DPST_BIN(pipe),
> +			     DPST_BIN_DATA_MASK, data[i]);
> +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);

atomic?

> +	}
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_ENHANCEMENT_MODE_MASK | DPST_CTL_IE_MODI_TABLE_EN,
> +		     DPST_CTL_EN_MULTIPLICATIVE | DPST_CTL_IE_MODI_TABLE_EN);
> +	/* Once IE is applied, change DPST CTL to TC */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL, DPST_CTL_BIN_REG_FUNC_TC);
> +
> +	return 0;
> +}
> +
> +void intel_global_hist_deinit(struct intel_crtc *intel_crtc)
> +{
> +	struct intel_global_hist *global_hist =3D intel_crtc->global_hist;
> +
> +	cancel_delayed_work(&global_hist->handle_global_hist_int_work);
> +	destroy_workqueue(global_hist->wq);
> +	kfree(global_hist);
> +}
> +
> +int intel_global_hist_init(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_global_hist *global_hist;
> +
> +	/* Allocate global_hist internal struct */
> +	global_hist =3D kzalloc(sizeof(*global_hist), GFP_KERNEL);
> +	if (unlikely(!global_hist)) {

Please drop the unlikely.

> +		drm_err(&i915->drm,
> +			"Failed to allocate GLOBAL_HIST event\n");

No error messages on allocation failures, please.

> +		kfree(global_hist);

The allocation just failed, there's no need to free it.

> +		return -ENOMEM;
> +	}
> +
> +	intel_crtc->global_hist =3D global_hist;
> +	global_hist->pipe =3D intel_crtc->pipe;
> +	global_hist->can_enable =3D false;
> +	global_hist->wq =3D alloc_ordered_workqueue("global_hist_wq",
> +						 WQ_MEM_RECLAIM);
> +	if (global_hist->wq =3D=3D NULL) {
> +		drm_err(&i915->drm,
> +			"failed to create work queue\n");

No error messages on allocation failures, please.

> +		kfree(global_hist);
> +		return -ENOMEM;
> +	}
> +
> +	INIT_DEFERRABLE_WORK(&global_hist->handle_global_hist_int_work,
> +		intel_global_hist_handle_int_work);
> +
> +	global_hist->i915 =3D i915;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.h b/drivers/g=
pu/drm/i915/display/intel_global_hist.h
> new file mode 100644
> index 000000000000..c6621bf4ea61
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_global_hist.h
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation

The license text below can be dropped with SPDX.

> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.
> + *
> + */
> +
> +#ifndef __INTEL_GLOBAL_HIST_H__
> +#define __INTEL_GLOBAL_HIST_H__
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>

Please use minimal includes, and use forward declarations where
possible. AFAICT neither of these are required.

> +#include "intel_display.h"
> +#include "../i915_reg.h"

What you really need is intel_display_reg_defs.h, I think, but no matter
what please don't use relative includes with "../" because the i915 top
level directory is already in include path.

> +
> +/* GLOBAL_HIST related registers */

Please put the histogram related registers to a separate file.

> +#define _DPST_CTL_A					0x490C0
> +#define _DPST_CTL_B					0x491C0
> +#define DPST_CTL(pipe)					_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
> +#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT=
_MODE_MASK, 2)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> +#define DPST_CTL_BIN_REG_FUNC_TC			(0 << 0)
> +#define DPST_CTL_BIN_REG_FUNC_IE			(1 << 11)
> +#define DPST_CTL_BIN_REG_MASK				REG_GENMASK(6, 0)
> +#define DPST_CTL_BIN_REG_CLEAR				REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, =
0)
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
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	(1 << 15)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	(0 << 15)
> +#define DPST_CTL_HIST_MODE_YUV				(0 << 24)
> +#define DPST_CTL_HIST_MODE_HSV				(1 << 24)
> +
> +
> +#define INTEL_GLOBAL_HISTOGRAM_PIPEA	0x90000000
> +#define INTEL_GLOBAL_HISTOGRAM_PIPEB	0x90000002
> +#define INTEL_GLOBAL_HISTOGRAM_EVENT(pipe)	_PIPE(pipe, \
> +						INTEL_GLOBAL_HISTOGRAM_PIPEA, \
> +						INTEL_GLOBAL_HISTOGRAM_PIPEB)
> +
> +#define GLOBAL_HIST_BIN_COUNT			32
> +#define GLOBAL_HIST_IET_LENGTH			33
> +
> +#define GLOBAL_HIST_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pi=
pe's current pixel count.
> +#define GLOBAL_HIST_GUARDBAND_PRECISION_FACTOR 10000   // Precision fact=
or for threshold guardband.
> +#define GLOBAL_HIST_DEFAULT_GUARDBAND_DELAY 0x04
> +
> +enum intel_global_hist_status {
> +	INTEL_GLOBAL_HIST_ENABLE,
> +	INTEL_GLOBAL_HIST_DISABLE,
> +};
> +
> +enum intel_global_histogram {
> +	INTEL_GLOBAL_HISTOGRAM,
> +};
> +
> +enum intel_global_hist_lut {
> +	INTEL_GLOBAL_HIST_PIXEL_FACTOR,
> +};
> +
> +struct intel_global_hist {
> +	struct drm_i915_private *i915;
> +	struct workqueue_struct *wq;
> +	struct delayed_work handle_global_hist_int_work;
> +	bool enable;
> +	bool has_pwm;
> +	bool has_edp;
> +	bool can_enable;
> +	enum pipe pipe;
> +	u32 bindata[GLOBAL_HIST_BIN_COUNT];
> +};
> +
> +int intel_global_hist_compute_config(struct intel_crtc *intel_crtc);
> +void intel_global_hist_irq_handler(struct drm_i915_private *i915, enum p=
ipe pipe);
> +int intel_global_hist_update(struct intel_crtc *intel_crtc, bool enable);
> +int intel_global_hist_set_iet_lut(struct intel_crtc *intel_crtc, u32 *da=
ta);
> +int intel_global_hist_init(struct intel_crtc *intel_crtc);
> +void intel_global_hist_deinit(struct intel_crtc *intel_crtc);

Some or many of these should probably operate on crtc state etc. instead
of plain crtc, but let's see.

> +
> +#endif /* __INTEL_GLOBAL_HIST_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
