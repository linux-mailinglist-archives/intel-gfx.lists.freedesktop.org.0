Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA09A1B68F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 14:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2786610E979;
	Fri, 24 Jan 2025 13:02:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NH+cgHuD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB4F10E978;
 Fri, 24 Jan 2025 13:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737723742; x=1769259742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=liGCslIUp9keTk5rPqts4C8iTzrM4rZUdvFwiPOquuM=;
 b=NH+cgHuDagcMp9TWkdAjqsOdjPEIzuy7JtaDS5guSyYHD0UVMTQljhng
 gib49Z1WAVDyeqObd4Wie7ckaKe8bEYt48BDLaPjpvnFN5vPrlblLGFLo
 I/eTB6SUPCKci7MKWf4CiIYgT1JhTRzOnSCYBcYqNE4lFP78ehNdh34bF
 eEXugcB9X3cduKLZP18DPp4CZxXaVmJueWEoFBat4tDiVD3vosjyy84xY
 MrQ2yaDwdW6rxvGjYDmqcSQ6VoRn9kENgxtZzKM3DiYJ1Coa9hdEYLgjR
 /S7oHJrTt4Ov+y3bfIEnFk0SQ2gX0nDJsa67kPtJmC51j0ZBy2AIVf4iS A==;
X-CSE-ConnectionGUID: 0WjOmoCUSluklT4mGmluxg==
X-CSE-MsgGUID: 4f1t45QwRzaNELydxoHsWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38508693"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38508693"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 05:02:21 -0800
X-CSE-ConnectionGUID: WkJypggKQrOFcBw1bvY1Lw==
X-CSE-MsgGUID: 2GJ5KXFPTG2A6o2/zQa9LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107887172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 05:02:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 15:02:18 +0200
Date: Fri, 24 Jan 2025 15:02:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v7] drm/i915/cmtg: Disable the CMTG
Message-ID: <Z5OPWg2wZyXcPP_A@intel.com>
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250122200355.89389-1-gustavo.sousa@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jan 22, 2025 at 05:03:41PM -0300, Gustavo Sousa wrote:
> The CMTG is a timing generator that runs in parallel with transcoders
> timing generators and can be used as a reference for synchronization.
> 
> We have observed that we are inheriting from GOP a display configuration
> with the CMTG enabled. Because our driver doesn't currently implement
> any CMTG sequences, the CMTG ends up still enabled after our driver
> takes over.
> 
> We need to make sure that the CMTG is not enabled if we are not going to
> use it. For that, let's add a partial implementation in our driver that
> only cares about disabling the CMTG if it was found enabled during
> initial hardware readout. In the future, we can also implement sequences
> for using the CMTG if that becomes a needed feature.
> 
> For now, we only deal with cases when it is possible to disable the CMTG
> without requiring a modeset. For earlier display versions, we simply
> skip if we find the CMTG enabled and we can't disable it without a
> proper modeset. In the future, we need to properly handle that case.
> 
> v2:
>  - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>  - Update logic to force disabling of CMTG only for initial commit.
> v3:
>  - Add missing changes for v2 that were staged but not committed.
> v4:
>  - Avoid if/else duplication in intel_cmtg_dump_state() by using "n/a"
>    for CMTG B enabled/disabled string for platforms without it. (Jani)
>  - Prefer intel_cmtg_readout_hw_state() over intel_cmtg_readout_state().
>    (Jani)
>  - Use display struct instead of i915 as first parameter for
>    TRANS_DDI_FUNC_CTL2(). (Jani)
>  - Fewer continuation lines in variable declaration/initialization for
>    better readability. (Jani)
>  - Coding style improvements. (Jani)
>  - Use drm_dbg_kms() instead of drm_info() for logging the disabling
>    of the CMTG.
>  - Make struct intel_cmtg_state entirely private to intel_cmtg.c.
> v5:
>  - Do the disable sequence as part of the sanitization step after
>    hardware readout instead of initial modeset commit. (Jani)
>  - Adapt to commit 15133582465f ("drm/i915/display: convert global state
>    to struct intel_display") by using a display struct instead of i915
>    as argument for intel_atomic_global_obj_init().
> v6:
>  - Do not track CMTG state as a global state. (Ville)
>  - Simplify the driver logic by only disabling the CMTG only on cases
>    when a modeset is not required. (Ville)
> v7:
>  - Remove the call to drm_WARN_ON() when checking
>    intel_cmtg_disable_requires_modeset() and use a FIXME in the comment
>    instead.
>  - Remove the !HAS_CMTG() guard from intel_cmtg_get_config(), which is
>    static and its caller is already protected by that same condition.
>  - Also take the opportunity to put some Bspec references in the commit
>    trailers section.
> 
> Bspec: 68915, 49262
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 176 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  13 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 +++
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_modeset_setup.c    |   3 +
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  8 files changed, 217 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 3dda9f0eda82..7e7414453765 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -231,6 +231,7 @@ i915-y += \
>  	display/intel_bo.o \
>  	display/intel_bw.o \
>  	display/intel_cdclk.o \
> +	display/intel_cmtg.o \
>  	display/intel_color.o \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> new file mode 100644
> index 000000000000..a2f26b297733
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -0,0 +1,176 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#include <linux/string_choices.h>
> +#include <linux/types.h>
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_print.h>
> +
> +#include "i915_reg.h"
> +#include "intel_crtc.h"
> +#include "intel_cmtg.h"
> +#include "intel_cmtg_regs.h"
> +#include "intel_de.h"
> +#include "intel_display_device.h"
> +
> +/**
> + * DOC: Common Primary Timing Generator (CMTG)
> + *
> + * The CMTG is a timing generator that runs in parallel to transcoders timing
> + * generators (TG) to provide a synchronization mechanism where CMTG acts as
> + * primary and transcoders TGs act as secondary to the CMTG. The CMTG outputs
> + * its TG start and frame sync signals to the transcoders that are configured
> + * as secondary, which use those signals to synchronize their own timing with
> + * the CMTG's.
> + *
> + * The CMTG can be used only with eDP or MIPI command mode and supports the
> + * following use cases:
> + *
> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on a
> + *   dual eDP configuration (with or without PSR/PSR2 enabled).
> + *
> + * - Single eDP as secondary: It is also possible to use a single eDP
> + *   configuration with the transcoder TG as secondary to the CMTG. That would
> + *   allow a flow that would not require a modeset on the existing eDP when a
> + *   new eDP is added for a dual eDP configuration with CMTG.
> + *
> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps running to
> + *   maintain frame timings. When exiting DC6v, the transcoder TG then is
> + *   synced back the CMTG.
> + *
> + * Currently, the driver does not use the CMTG, but we need to make sure that
> + * we disable it in case we inherit a display configuration with it enabled.
> + */
> +
> +/*
> + * We describe here only the minimum data required to allow us to properly
> + * disable the CMTG if necessary.
> + */
> +struct intel_cmtg_config {
> +	bool cmtg_a_enable;
> +	/*
> +	 * Xe2_LPD adds a second CMTG that can be used for dual eDP async mode.
> +	 */
> +	bool cmtg_b_enable;
> +	bool trans_a_secondary;
> +	bool trans_b_secondary;
> +};
> +
> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) >= 20;
> +}
> +
> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) >= 14;
> +}
> +
> +static void intel_cmtg_dump_config(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
> +{
> +	drm_dbg_kms(display->drm,
> +		    "CMTG readout: CMTG A: %s, CMTG B: %s, Transcoder A secondary: %s, Transcoder B secondary: %s\n",
> +		    str_enabled_disabled(cmtg_config->cmtg_a_enable),
> +		    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabled(cmtg_config->cmtg_b_enable) : "n/a",
> +		    str_yes_no(cmtg_config->trans_a_secondary),
> +		    str_yes_no(cmtg_config->trans_b_secondary));
> +}
> +
> +static void intel_cmtg_get_config(struct intel_display *display,
> +				  struct intel_cmtg_config *cmtg_config)
> +{
> +	u32 val;
> +
> +	val = intel_de_read(display, TRANS_CMTG_CTL_A);
> +	cmtg_config->cmtg_a_enable = val & CMTG_ENABLE;
> +
> +	if (intel_cmtg_has_cmtg_b(display)) {
> +		val = intel_de_read(display, TRANS_CMTG_CTL_B);
> +		cmtg_config->cmtg_b_enable = val & CMTG_ENABLE;
> +	}
> +
> +	if (intel_crtc_for_pipe(display, PIPE_A)) {

HAS_TRANSCODER() seems more appropriate.

> +		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_A));
> +		cmtg_config->trans_a_secondary = val & CMTG_SECONDARY_MODE;
> +	}
> +
> +	if (intel_crtc_for_pipe(display, PIPE_B)) {
> +		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_B));
> +		cmtg_config->trans_b_secondary = val & CMTG_SECONDARY_MODE;
> +	}
> +}
> +
> +static bool intel_cmtg_disable_requires_modeset(struct intel_display *display,
> +						struct intel_cmtg_config *cmtg_config)
> +{
> +	if (DISPLAY_VER(display) >= 20)
> +		return false;
> +
> +	return cmtg_config->trans_a_secondary || cmtg_config->trans_b_secondary;
> +}
> +
> +static void intel_cmtg_disable(struct intel_display *display,
> +			       struct intel_cmtg_config *cmtg_config)
> +{
> +	u32 clk_sel_clr = 0;
> +	u32 clk_sel_set = 0;
> +
> +	if (cmtg_config->trans_a_secondary)
> +		intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_A),
> +			     CMTG_SECONDARY_MODE, 0);
> +
> +	if (cmtg_config->trans_b_secondary)
> +		intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_B),
> +			     CMTG_SECONDARY_MODE, 0);
> +
> +	if (cmtg_config->cmtg_a_enable) {
> +		drm_dbg_kms(display->drm, "Disabling CMTG A\n");
> +		intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
> +		clk_sel_clr |= CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set |= CMTG_CLK_SEL_A_DISABLED;
> +	}
> +
> +	if (cmtg_config->cmtg_b_enable) {
> +		drm_dbg_kms(display->drm, "Disabling CMTG B\n");
> +		intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0);
> +		clk_sel_clr |= CMTG_CLK_SEL_B_MASK;
> +		clk_sel_set |= CMTG_CLK_SEL_B_DISABLED;
> +	}
> +
> +	if (intel_cmtg_has_clock_sel(display) && clk_sel_clr)
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);

We don't need some kind of sync to make sure the transcoders
are no longer using the CMTG before turning off the clock?

> +}
> +
> +/*
> + * Read out CMTG configuration and, on platforms that allow disabling it without
> + * a modeset, do it.
> + *
> + * This function must be called before any port PLL is disabled in the general
> + * sanitization process, because we need whatever port PLL that is providing the
> + * clock for CMTG to be on before accessing CMTG registers.
> + */
> +void intel_cmtg_sanitize(struct intel_display *display)
> +{
> +	struct intel_cmtg_config cmtg_config = {};
> +
> +	if (!HAS_CMTG(display))
> +		return;
> +
> +	intel_cmtg_get_config(display, &cmtg_config);
> +	intel_cmtg_dump_config(display, &cmtg_config);
> +
> +	/*
> +	 * FIXME: The driver is not prepared to handle cases where a modeset is
> +	 * required for disabling the CMTG: we need a proper way of tracking
> +	 * CMTG state and do the right syncronization with respect to triggering
> +	 * the modeset as part of the disable sequence.
> +	 */
> +	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
> +		return;
> +
> +	intel_cmtg_disable(display, &cmtg_config);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> new file mode 100644
> index 000000000000..ba62199adaa2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CMTG_H__
> +#define __INTEL_CMTG_H__
> +
> +struct intel_display;
> +
> +void intel_cmtg_sanitize(struct intel_display *display);
> +
> +#endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> new file mode 100644
> index 000000000000..668e41d65e86
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CMTG_REGS_H__
> +#define __INTEL_CMTG_REGS_H__
> +
> +#include "i915_reg_defs.h"
> +
> +#define CMTG_CLK_SEL			_MMIO(0x46160)
> +#define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
> +#define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
> +
> +#define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> +#define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> +#define  CMTG_ENABLE			REG_BIT(31)
> +
> +#endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index a7b5ce69cf17..fc33791f02b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -146,6 +146,7 @@ struct intel_display_platforms {
>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>  #define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 9a2bea19f17b..10cdfdad82e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -15,6 +15,7 @@
>  #include "i9xx_wm.h"
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crtc.h"
>  #include "intel_crtc_state_dump.h"
> @@ -978,6 +979,8 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  
>  	intel_pch_sanitize(i915);
>  
> +	intel_cmtg_sanitize(display);
> +
>  	/*
>  	 * intel_sanitize_plane_mapping() may need to do vblank
>  	 * waits, so we need vblank interrupts restored beforehand.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 765e6c0528fb..b34bccfb1ccc 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>  #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
>  #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
> +#define  CMTG_SECONDARY_MODE			REG_BIT(3)
>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
>  
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 68861db5f27c..d80e0766db35 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -200,6 +200,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_bios.o \
>  	i915-display/intel_bw.o \
>  	i915-display/intel_cdclk.o \
> +	i915-display/intel_cmtg.o \
>  	i915-display/intel_color.o \
>  	i915-display/intel_combo_phy.o \
>  	i915-display/intel_connector.o \
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
