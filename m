Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB3EA10A98
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 16:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B4A810E37C;
	Tue, 14 Jan 2025 15:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCQuf6UB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E947410E37C;
 Tue, 14 Jan 2025 15:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736868197; x=1768404197;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xn50W38qik2/lLlUB8G9MN6V/5292TLIMCXfVWipPsk=;
 b=SCQuf6UB2k5JD7b505qn+5VH7rbsNZsvwYL59UvBpd1deRFDbdZbVNJw
 Sx8h0OzzSdO6/FeHSRdG1P8mEoE+hqThRKfwxUZQRMGntjlFtb1sVqzCE
 h5UFt+gJm5M1lUVov+In03xcdg3Wug+7/w4DAadaAy9BKeqBiEJQrpnZm
 GaqpNv7oYM291NwLV8MuvMKoJpRQ1XHKQpYt/ajZIReh3fFtW2glcXK0M
 nVt/+gjrv2D8i49eEhZjn1BNUDbcHEzml8e1WtEnABwtE6cy7gZxonVWK
 dOUKQJBshta3oIyVb4zbF1iemqFCdoYi1vfQjV7Vuq5yBAu5/ZqK+DrIf g==;
X-CSE-ConnectionGUID: FiIPL1FUThOBJ9E4T4IAtg==
X-CSE-MsgGUID: 0QresjIBSBaUSgmbjCw9kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="39977943"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="39977943"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 07:23:16 -0800
X-CSE-ConnectionGUID: XZCWT/2PT0KarqD1r4B/yg==
X-CSE-MsgGUID: mR8mZa7ET/2oAnsww5oIDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105693118"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 07:21:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
In-Reply-To: <20250113204815.114019-1-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
Date: Tue, 14 Jan 2025 17:21:50 +0200
Message-ID: <87msfth14h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> The CMTG is a timing generator that runs in parallel with transcoders
> timing generators and can be used as a reference for synchronization.
>
> On PTL (display Xe3_LPD), we have observed that we are inheriting from
> GOP a display configuration with the CMTG enabled. Because our driver
> doesn't currently implement any CMTG sequences, the CMTG ends up still
> enabled after our driver takes over.
>
> We need to make sure that the CMTG is not enabled if we are not going to
> use it. For that, let's add a partial implementation in our driver that
> only cares about disabling the CMTG if it was found enabled during
> initial hardware readout. In the future, we can also implement sequences
> for enabling CMTG if that becomes a needed feature.

Doesn't this patch disable the CRTC, not the CMTG?

Can we switch off CMTG without a modeset? If not, I think we'd need to
force a modeset for takeover.

BR,
Jani.




>
> For completeness, we do not only cover Xe3_LPD but also all previous
> display IPs that provide the CMTG.
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
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 250 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  18 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_driver.c   |   5 +
>  .../drm/i915/display/intel_modeset_setup.c    |  20 +-
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  10 files changed, 317 insertions(+), 5 deletions(-)
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
> index 000000000000..6ce8b979009a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2024 Intel Corporation
> + */
> +
> +#include <linux/string.h>
> +#include <linux/string_choices.h>
> +#include <linux/types.h>
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "intel_crtc.h"
> +#include "intel_cmtg.h"
> +#include "intel_cmtg_regs.h"
> +#include "intel_de.h"
> +#include "intel_display_device.h"
> +#include "intel_display_types.h"
> +#include "intel_global_state.h"
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
> + * We describe here only the minimum state required to allow us to properly
> + * disable the CMTG if necessary.
> + */
> +struct intel_cmtg_state {
> +	struct intel_global_state base;
> +
> +	bool cmtg_a_enable;
> +	/*
> +	 * Xe3_LPD adds a second CMTG that can be used for dual eDP async mode.
> +	 */
> +	bool cmtg_b_enable;
> +	bool trans_a_secondary;
> +	bool trans_b_secondary;
> +};
> +
> +static struct intel_cmtg_state *to_intel_cmtg_state(struct intel_global_state *obj_state)
> +{
> +	return container_of(obj_state, struct intel_cmtg_state, base);
> +}
> +
> +static struct intel_global_state *
> +intel_cmtg_duplicate_state(struct intel_global_obj *obj)
> +{
> +	struct intel_cmtg_state *cmtg_state = to_intel_cmtg_state(obj->state);
> +
> +	cmtg_state = kmemdup(cmtg_state, sizeof(*cmtg_state), GFP_KERNEL);
> +	if (!cmtg_state)
> +		return NULL;
> +
> +	return &cmtg_state->base;
> +}
> +
> +static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
> +				     struct intel_global_state *state)
> +{
> +	kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_cmtg_state_funcs = {
> +	.atomic_duplicate_state = intel_cmtg_duplicate_state,
> +	.atomic_destroy_state = intel_cmtg_destroy_state,
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
> +static bool intel_cmtg_requires_modeset(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) < 20;
> +}
> +
> +static void intel_cmtg_dump_state(struct intel_display *display,
> +				  struct intel_cmtg_state *cmtg_state)
> +{
> +	drm_dbg_kms(display->drm,
> +		    "CMTG state readout: CMTG A: %s, CMTG B: %s, Transcoder A secondary: %s, Transcoder B secondary: %s\n",
> +		    str_enabled_disabled(cmtg_state->cmtg_a_enable),
> +		    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabled(cmtg_state->cmtg_b_enable) : "n/a",
> +		    str_yes_no(cmtg_state->trans_a_secondary),
> +		    str_yes_no(cmtg_state->trans_b_secondary));
> +}
> +
> +int intel_cmtg_init(struct intel_display *display)
> +{
> +	struct intel_cmtg_state *cmtg_state;
> +
> +	cmtg_state = kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
> +	if (!cmtg_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(display, &display->cmtg.obj,
> +				     &cmtg_state->base,
> +				     &intel_cmtg_state_funcs);
> +
> +	return 0;
> +}
> +
> +void intel_cmtg_readout_hw_state(struct intel_display *display)
> +{
> +	struct intel_cmtg_state *cmtg_state = to_intel_cmtg_state(display->cmtg.obj.state);
> +	u32 val;
> +
> +	if (!HAS_CMTG(display))
> +		return;
> +
> +	val = intel_de_read(display, TRANS_CMTG_CTL_A);
> +	cmtg_state->cmtg_a_enable = val & CMTG_ENABLE;
> +
> +	if (intel_cmtg_has_cmtg_b(display)) {
> +		val = intel_de_read(display, TRANS_CMTG_CTL_B);
> +		cmtg_state->cmtg_b_enable = val & CMTG_ENABLE;
> +	}
> +
> +	if (intel_crtc_for_pipe(display, PIPE_A)) {
> +		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_A));
> +		cmtg_state->trans_a_secondary = val & CMTG_SECONDARY_MODE;
> +	}
> +
> +	if (intel_crtc_for_pipe(display, PIPE_B)) {
> +		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_B));
> +		cmtg_state->trans_b_secondary = val & CMTG_SECONDARY_MODE;
> +	}
> +
> +	intel_cmtg_dump_state(display, cmtg_state);
> +}
> +
> +static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_state,
> +				     struct intel_cmtg_state *new_cmtg_state)
> +{
> +	if (!new_cmtg_state)
> +		return false;
> +
> +	return old_cmtg_state->cmtg_a_enable != new_cmtg_state->cmtg_a_enable ||
> +		old_cmtg_state->cmtg_b_enable != new_cmtg_state->cmtg_b_enable ||
> +		old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary ||
> +		old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary;
> +}
> +
> +static void intel_cmtg_state_set_disabled(struct intel_cmtg_state *cmtg_state)
> +{
> +	cmtg_state->cmtg_a_enable = false;
> +	cmtg_state->cmtg_b_enable = false;
> +	cmtg_state->trans_a_secondary = false;
> +	cmtg_state->trans_b_secondary = false;
> +}
> +
> +static void intel_cmtg_disable(struct intel_display *display,
> +			       struct intel_cmtg_state *old_cmtg_state,
> +			       struct intel_cmtg_state *new_cmtg_state)
> +{
> +	if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
> +		return;
> +
> +	drm_dbg_kms(display->drm, "Disabling CMTG\n");
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_A), CMTG_SECONDARY_MODE, 0);
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_B), CMTG_SECONDARY_MODE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
> +
> +	if (intel_cmtg_has_cmtg_b(display))
> +		intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0);
> +
> +	if (intel_cmtg_has_clock_sel(display)) {
> +		u32 clk_sel_clr = CMTG_CLK_SEL_A_MASK;
> +		u32 clk_sel_set = CMTG_CLK_SEL_A_DISABLED;
> +
> +		if (intel_cmtg_has_cmtg_b(display)) {
> +			clk_sel_clr |= CMTG_CLK_SEL_B_MASK;
> +			clk_sel_set |= CMTG_CLK_SEL_B_DISABLED;
> +		}
> +
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> +	}
> +}
> +
> +static u32 intel_cmtg_modeset_crtc_mask(struct intel_display *display,
> +					struct intel_cmtg_state *old_cmtg_state,
> +					struct intel_cmtg_state *new_cmtg_state)
> +{
> +	u32 crtc_mask;
> +
> +	if (intel_cmtg_requires_modeset(display))
> +		return 0;
> +
> +	crtc_mask = 0;
> +
> +	if (old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary)
> +		crtc_mask |= drm_crtc_mask(&intel_crtc_for_pipe(display, PIPE_A)->base);
> +
> +	if (old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary)
> +		crtc_mask |= drm_crtc_mask(&intel_crtc_for_pipe(display, PIPE_B)->base);
> +
> +	return crtc_mask;
> +}
> +
> +/*
> + * Disable CMTG if enabled and return a mask of pipes that need to be disabled
> + * (for platforms where disabling the CMTG requires a modeset).
> + */
> +u32 intel_cmtg_sanitize_state(struct intel_display *display)
> +{
> +	struct intel_cmtg_state *cmtg_state = to_intel_cmtg_state(display->cmtg.obj.state);
> +	struct intel_cmtg_state old_cmtg_state;
> +
> +	if (!HAS_CMTG(display))
> +		return 0;
> +
> +	old_cmtg_state = *cmtg_state;
> +	intel_cmtg_state_set_disabled(cmtg_state);
> +	intel_cmtg_disable(display, &old_cmtg_state, cmtg_state);
> +
> +	return intel_cmtg_modeset_crtc_mask(display, &old_cmtg_state, cmtg_state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> new file mode 100644
> index 000000000000..3c51e144aa3f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CMTG_H__
> +#define __INTEL_CMTG_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_display;
> +struct intel_global_state;
> +
> +int intel_cmtg_init(struct intel_display *display);
> +void intel_cmtg_readout_hw_state(struct intel_display *display);
> +u32 intel_cmtg_sanitize_state(struct intel_display *display);
> +
> +#endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> new file mode 100644
> index 000000000000..082f96cad284
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2024 Intel Corporation
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
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..d0b039114e2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -354,6 +354,10 @@ struct intel_display {
>  		unsigned int skl_preferred_vco_freq;
>  	} cdclk;
>  
> +	struct {
> +		struct intel_global_obj obj;
> +	} cmtg;
> +
>  	struct {
>  		struct drm_property_blob *glk_linear_degamma_lut;
>  	} color;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9a333d9e6601..a126247eb6b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -145,6 +145,7 @@ struct intel_display_platforms {
>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>  #define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 1aa0b298c278..758cf8b4fb32 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -25,6 +25,7 @@
>  #include "intel_bios.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crtc.h"
>  #include "intel_display_debugfs.h"
> @@ -267,6 +268,10 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>  	if (ret)
>  		goto cleanup_vga_client_pw_domain_dmc;
>  
> +	ret = intel_cmtg_init(display);
> +	if (ret)
> +		goto cleanup_vga_client_pw_domain_dmc;
> +
>  	intel_init_quirks(display);
>  
>  	intel_fbc_init(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 9a2bea19f17b..091459244ab5 100644
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
> @@ -475,10 +476,12 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
>  }
>  
>  static bool intel_sanitize_crtc(struct intel_crtc *crtc,
> -				struct drm_modeset_acquire_ctx *ctx)
> +				struct drm_modeset_acquire_ctx *ctx,
> +				u32 force_off_crtc_mask)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
> +	u32 crtc_mask = drm_crtc_mask(&crtc->base);
>  	bool needs_link_reset;
>  
>  	if (crtc_state->hw.active) {
> @@ -509,7 +512,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
>  	 * Adjust the state of the output pipe according to whether we have
>  	 * active connectors/encoders.
>  	 */
> -	if (!needs_link_reset && intel_crtc_has_encoders(crtc))
> +	if (!(crtc_mask & force_off_crtc_mask) &&
> +	    !needs_link_reset && intel_crtc_has_encoders(crtc))
>  		return false;
>  
>  	intel_crtc_disable_noatomic(crtc, ctx);
> @@ -527,7 +531,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
>  }
>  
>  static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
> -				     struct drm_modeset_acquire_ctx *ctx)
> +				     struct drm_modeset_acquire_ctx *ctx,
> +				     u32 force_off_crtc_mask)
>  {
>  	struct intel_crtc *crtc;
>  	u32 crtcs_forced_off = 0;
> @@ -547,7 +552,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
>  			if (crtcs_forced_off & crtc_mask)
>  				continue;
>  
> -			if (intel_sanitize_crtc(crtc, ctx))
> +			if (intel_sanitize_crtc(crtc, ctx, force_off_crtc_mask))
>  				crtcs_forced_off |= crtc_mask;
>  		}
>  		if (crtcs_forced_off == old_mask)
> @@ -909,6 +914,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>  	}
>  
>  	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
> +
> +	intel_cmtg_readout_hw_state(display);
>  }
>  
>  static void
> @@ -967,6 +974,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
>  	intel_wakeref_t wakeref;
> +	u32 force_off_crtc_mask;
>  
>  	wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
>  
> @@ -1009,7 +1017,9 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  	 */
>  	intel_modeset_update_connector_atomic_state(i915);
>  
> -	intel_sanitize_all_crtcs(i915, ctx);
> +	force_off_crtc_mask = intel_cmtg_sanitize_state(display);
> +
> +	intel_sanitize_all_crtcs(i915, ctx, force_off_crtc_mask);
>  
>  	intel_dpll_sanitize_state(i915);
>  
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
> index 5c97ad6ed738..cd0e25fce14b 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_bios.o \
>  	i915-display/intel_bw.o \
>  	i915-display/intel_cdclk.o \
> +	i915-display/intel_cmtg.o \
>  	i915-display/intel_color.o \
>  	i915-display/intel_combo_phy.o \
>  	i915-display/intel_connector.o \

-- 
Jani Nikula, Intel
