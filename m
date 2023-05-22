Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 954B270C236
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2CF10E35B;
	Mon, 22 May 2023 15:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D362210E35A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768886; x=1716304886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FLbYXmMCuTDDtNQG/9pY/ZpwzEPTD11GXOsdrK7g7Do=;
 b=kW3i8BPkXHqFLDmtENeuxVZwp0LJDZnPpd/jok3i112Xh65wgdAIaS7S
 lbvow/CthsRu7+OO0iQQKoOIcWsy8v+jJzHLqZWgZEt7xuDs24vLjLHEa
 EjpOMQaUCPpo+NK4WuMG6QsmQwrAzAaXVLFLg6zeNuuz7dEOuf0iS5I+G
 8drVK66xHoqtGLqwyuBCfMDvXI+P/n8EzmGueWLRnRM+02MfmYJDC3xZU
 61ntyy76yydWm3y5rpaJ+nnBhTyyRMPfNP/gK5uwVX2vkyfykSw72jKI6
 Xr+80v33wHNZxA6kr/9LIfR57HbfZSDTHYHNLOorWxW2R37IQxQUZi4I5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="416410313"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416410313"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="736461724"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="736461724"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:21:23 -0700
Date: Mon, 22 May 2023 18:21:20 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZGuIcDVTYRK+1CRA@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-8-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230511231750.313467-8-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 7/8] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:17:49AM +0300, Vinod Govindapillai wrote:
> From: Mika Kahola <mika.kahola@intel.com>
> 
> Display14 introduces a new way to instruct the PUnit with
> power and bandwidth requirements of DE. Add the functionality
> to program the registers and handle waits using interrupts.
> The current wait time for timeouts is programmed for 10 msecs to
> factor in the worst case scenarios. Changes made to use REG_BIT
> for a register that we touched(GEN8_DE_MISC_IER _MMIO).
> 
> Wa_14016740474 is added which applies to Xe_LPD+ display
> 
> v2: checkpatch warning fixes, simplify program pmdemand part
> 
> v3: update to dbufs and pipes values to pmdemand register(stan)
>     Removed the macro usage in update_pmdemand_values()
> 
> v4: move the pmdemand_pre_plane_update before cdclk update
>     pmdemand_needs_update included cdclk params comparisons
>     pmdemand_state NULL check (Gustavo)
>     pmdemand.o in sorted order in the makefile (Jani)
>     update pmdemand misc irq handler loop (Gustavo)
>     active phys bitmask and programming correction (Gustavo)
> 
> Bspec: 66451, 64636, 64602, 64603

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +
>  .../gpu/drm/i915/display/intel_display_core.h |   6 +
>  .../drm/i915/display/intel_display_driver.c   |   7 +
>  .../drm/i915/display/intel_display_power.c    |   8 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 465 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
>  drivers/gpu/drm/i915/i915_irq.c               |  23 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  36 +-
>  9 files changed, 580 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index d97d45ae1a0d..a7c2cf21cbfc 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -270,6 +270,7 @@ i915-y += \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
>  	display/intel_plane_initial.o \
> +	display/intel_pmdemand.o \
>  	display/intel_psr.o \
>  	display/intel_quirks.o \
>  	display/intel_sprite.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1d5d42a40803..dd390a0586ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -99,6 +99,7 @@
>  #include "intel_pcode.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_plane_initial.h"
> +#include "intel_pmdemand.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_sdvo.h"
> @@ -6315,6 +6316,10 @@ int intel_atomic_check(struct drm_device *dev,
>  			return ret;
>  	}
>  
> +	ret = intel_pmdemand_atomic_check(state);
> +	if (ret)
> +		goto fail;
> +
>  	ret = intel_atomic_check_crtcs(state);
>  	if (ret)
>  		goto fail;
> @@ -6960,6 +6965,14 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		crtc->config = new_crtc_state;
>  
> +	/*
> +	 * In D14 Pmdemand combines many paramters such as voltage index, plls,
> +	 * cdclk frequency, QGV point selection parameter etc. Voltage index,
> +	 * cdclk/ddiclk frequencies are supposed to be configured before the
> +	 * cdclk config is set.
> +	 */
> +	intel_pmdemand_pre_plane_update(state);
> +
>  	if (state->modeset) {
>  		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
>  
> @@ -7079,6 +7092,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		intel_verify_planes(state);
>  
>  	intel_sagv_post_plane_update(state);
> +	intel_pmdemand_post_plane_update(state);
>  
>  	drm_atomic_helper_commit_hw_done(&state->base);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 9f66d734edf6..9471a052aa57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -345,6 +345,12 @@ struct intel_display {
>  		struct intel_global_obj obj;
>  	} dbuf;
>  
> +	struct {
> +		wait_queue_head_t waitqueue;
> +		struct mutex lock;
> +		struct intel_global_obj obj;
> +	} pmdemand;
> +
>  	struct {
>  		/*
>  		 * dkl.phy_lock protects against concurrent access of the
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 60ce10fc7205..dc8de861339d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -47,6 +47,7 @@
>  #include "intel_opregion.h"
>  #include "intel_overlay.h"
>  #include "intel_plane_initial.h"
> +#include "intel_pmdemand.h"
>  #include "intel_pps.h"
>  #include "intel_quirks.h"
>  #include "intel_vga.h"
> @@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	if (ret < 0)
>  		goto cleanup_vga;
>  
> +	intel_pmdemand_init_early(i915);
> +
>  	intel_power_domains_init_hw(i915, false);
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	if (ret)
>  		goto cleanup_vga_client_pw_domain_dmc;
>  
> +	ret = intel_pmdemand_init(i915);
> +	if (ret)
> +		goto cleanup_vga_client_pw_domain_dmc;
> +
>  	init_llist_head(&i915->display.atomic_helper.free_list);
>  	INIT_WORK(&i915->display.atomic_helper.free_work,
>  		  intel_atomic_helper_free_state_worker);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 5150069f3f82..f5c5a486efbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -20,6 +20,7 @@
>  #include "intel_mchbar_regs.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pcode.h"
> +#include "intel_pmdemand.h"
>  #include "intel_pps_regs.h"
>  #include "intel_snps_phy.h"
>  #include "skl_watermark.h"
> @@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
>  	dev_priv->display.dbuf.enabled_slices =
>  		intel_enabled_dbuf_slices_mask(dev_priv);
>  
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
> +					    dev_priv->display.dbuf.enabled_slices);
> +
>  	/*
>  	 * Just power up at least 1 slice, we will
>  	 * figure out later which slices we have and what we need.
> @@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
>  static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
>  	gen9_dbuf_slices_update(dev_priv, 0);
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		intel_program_dbuf_pmdemand(dev_priv, 0);
>  }
>  
>  static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> new file mode 100644
> index 000000000000..ea117189910f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -0,0 +1,465 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include <linux/bitops.h>
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "intel_bw.h"
> +#include "intel_cdclk.h"
> +#include "intel_cx0_phy.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_trace.h"
> +#include "intel_pmdemand.h"
> +#include "skl_watermark.h"
> +
> +struct intel_pmdemand_state {
> +	struct intel_global_state base;
> +
> +	u16 qclk_gv_bw;
> +	u8 voltage_index;
> +	u8 qclk_gv_index;
> +	u8 active_pipes;
> +	u8 dbufs;
> +	u16 active_phys_plls_mask;
> +	u16 cdclk_freq_mhz;
> +	u16 ddiclk_freq_mhz;
> +	u8 scalers;
> +};
> +
> +#define to_intel_pmdemand_state(x) container_of((x) + BUILD_BUG_ON_ZERO(offsetof(struct intel_pmdemand_state, base)), \
> +						struct intel_pmdemand_state, base)
> +
> +static struct intel_global_state *
> +intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
> +{
> +	struct intel_pmdemand_state *pmdmnd_state;
> +
> +	pmdmnd_state = kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL);
> +	if (!pmdmnd_state)
> +		return NULL;
> +
> +	return &pmdmnd_state->base;
> +}
> +
> +static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
> +					 struct intel_global_state *state)
> +{
> +	kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_pmdemand_funcs = {
> +	.atomic_duplicate_state = intel_pmdemand_duplicate_state,
> +	.atomic_destroy_state = intel_pmdemand_destroy_state,
> +};
> +
> +static struct intel_pmdemand_state *
> +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_global_state *pmdemand_state;
> +
> +	pmdemand_state =
> +		intel_atomic_get_global_obj_state(state,
> +						  &i915->display.pmdemand.obj);
> +	if (IS_ERR(pmdemand_state))
> +		return ERR_CAST(pmdemand_state);
> +
> +	return to_intel_pmdemand_state(pmdemand_state);
> +}
> +
> +static struct intel_pmdemand_state *
> +intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_global_state *pmdemand_state;
> +
> +	pmdemand_state = intel_atomic_get_old_global_obj_state(state, &i915->display.pmdemand.obj);
> +
> +	return to_intel_pmdemand_state(pmdemand_state);
> +}
> +
> +static struct intel_pmdemand_state *
> +intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_global_state *pmdemand_state;
> +
> +	pmdemand_state = intel_atomic_get_new_global_obj_state(state, &i915->display.pmdemand.obj);
> +
> +	return to_intel_pmdemand_state(pmdemand_state);
> +}
> +
> +int intel_pmdemand_init(struct drm_i915_private *i915)
> +{
> +	struct intel_pmdemand_state *pmdemand_state;
> +
> +	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
> +	if (!pmdemand_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
> +				     &pmdemand_state->base,
> +				     &intel_pmdemand_funcs);
> +
> +	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> +		/* Wa_14016740474 */
> +		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
> +
> +	return 0;
> +}
> +
> +void intel_pmdemand_init_early(struct drm_i915_private *i915)
> +{
> +	mutex_init(&i915->display.pmdemand.lock);
> +	init_waitqueue_head(&i915->display.pmdemand.waitqueue);
> +}
> +
> +static bool pmdemand_needs_update(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *crtc;
> +	int i;
> +	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		const struct intel_bw_state *new_bw_state, *old_bw_state;
> +		const struct intel_cdclk_state *new_cdclk_state;
> +		const struct intel_cdclk_state *old_cdclk_state;
> +		const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> +
> +		new_bw_state = intel_atomic_get_new_bw_state(state);
> +		old_bw_state = intel_atomic_get_old_bw_state(state);
> +		if (new_bw_state && new_bw_state->qgv_point_peakbw !=
> +		    old_bw_state->qgv_point_peakbw)
> +			return true;
> +
> +		new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
> +		old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
> +		if (new_dbuf_state && new_dbuf_state->active_pipes !=
> +		    old_dbuf_state->active_pipes)
> +			return true;
> +
> +		new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
> +		old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
> +		if (new_cdclk_state &&
> +		    (new_cdclk_state->logical.cdclk !=
> +		     old_cdclk_state->logical.cdclk ||
> +		     new_cdclk_state->logical.voltage_level !=
> +		     old_cdclk_state->logical.voltage_level))
> +			return true;
> +
> +		/*
> +		 * This break needs to be removed, if we need to calculate some
> +		 * data per crtc.
> +		 */
> +		break;
> +	}
> +
> +	return false;
> +}
> +
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	int port_clock = 0;
> +	struct intel_crtc *crtc;
> +	struct intel_encoder *encoder;
> +	const struct intel_bw_state *new_bw_state;
> +	const struct intel_cdclk_state *new_cdclk_state;
> +	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> +	const struct intel_dbuf_state *new_dbuf_state;
> +	struct intel_pmdemand_state *new_pmdemand_state;
> +	enum phy phy;
> +	int i, ret;
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return 0;
> +
> +	if (!pmdemand_needs_update(state))
> +		return 0;
> +
> +	new_pmdemand_state = intel_atomic_get_pmdemand_state(state);
> +	if (IS_ERR(new_pmdemand_state))
> +		return PTR_ERR(new_pmdemand_state);
> +
> +	ret = intel_atomic_lock_global_state(&new_pmdemand_state->base);
> +	if (ret)
> +		return ret;
> +
> +	/* Punit figures out the voltage index based on bandwidth*/
> +	new_bw_state = intel_atomic_get_bw_state(state);
> +	if (IS_ERR(new_bw_state))
> +		return PTR_ERR(new_bw_state);
> +
> +	/* firmware will calculate the qclck_gc_index, requirement is set to 0 */
> +	new_pmdemand_state->qclk_gv_index = 0;
> +	new_pmdemand_state->qclk_gv_bw =
> +		min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
> +
> +	new_dbuf_state = intel_atomic_get_dbuf_state(state);
> +	if (IS_ERR(new_dbuf_state))
> +		return PTR_ERR(new_dbuf_state);
> +
> +	i = hweight8(new_dbuf_state->active_pipes);
> +	new_pmdemand_state->active_pipes = min(i, 3);
> +
> +	new_cdclk_state = intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(new_cdclk_state))
> +		return PTR_ERR(new_cdclk_state);
> +
> +	new_pmdemand_state->voltage_index =
> +		new_cdclk_state->logical.voltage_level;
> +	/* KHz to MHz */
> +	new_pmdemand_state->cdclk_freq_mhz =
> +		DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
> +
> +	new_pmdemand_state->active_phys_plls_mask = 0;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
> +		encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
> +		if (!encoder)
> +			continue;
> +
> +		phy = intel_port_to_phy(i915, encoder->port);
> +
> +		if (intel_is_c10phy(i915, phy))
> +			new_pmdemand_state->active_phys_plls_mask |= BIT(phy);
> +
> +		port_clock = max(port_clock, new_crtc_state->port_clock);
> +	}
> +
> +	/* To MHz */
> +	new_pmdemand_state->ddiclk_freq_mhz = DIV_ROUND_UP(port_clock, 1000);
> +
> +	/*
> +	 * Setting scalers to max as it can not be calculated during flips and
> +	 * fastsets without taking global states locks.
> +	 */
> +	new_pmdemand_state->scalers = 7;
> +
> +	ret = intel_atomic_serialize_global_state(&new_pmdemand_state->base);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private *i915)
> +{
> +	return !((intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
> +		  XELPDP_PMDEMAND_REQ_ENABLE) ||
> +		(intel_de_read(i915, GEN12_DCPR_STATUS_1) &
> +		 XELPDP_PMDEMAND_INFLIGHT_STATUS));
> +}
> +
> +static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
> +{
> +	return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
> +		 XELPDP_PMDEMAND_REQ_ENABLE);
> +}
> +
> +static int intel_pmdemand_wait(struct drm_i915_private *i915)
> +{
> +	DEFINE_WAIT(wait);
> +	int ret;
> +	const unsigned int timeout_ms = 10;
> +
> +	ret = wait_event_timeout(i915->display.pmdemand.waitqueue,
> +				 intel_pmdemand_req_complete(i915),
> +				 msecs_to_jiffies_timeout(timeout_ms));
> +	if (ret == 0)
> +		drm_err(&i915->drm,
> +			"timed out waiting for Punit PM Demand Response\n");
> +
> +	return ret;
> +}
> +
> +/* Required to be programmed during Display Init Sequences. */
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
> +				 u8 dbuf_slices)
> +{
> +	u32 dbufs = min_t(u32, hweight8(dbuf_slices), 3);
> +
> +	mutex_lock(&i915->display.pmdemand.lock);
> +	if (drm_WARN_ON(&i915->drm,
> +			!intel_pmdemand_check_prev_transaction(i915)))
> +		goto unlock;
> +
> +	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
> +		     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(dbufs));
> +	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
> +		     XELPDP_PMDEMAND_REQ_ENABLE);
> +
> +	intel_pmdemand_wait(i915);
> +
> +unlock:
> +	mutex_unlock(&i915->display.pmdemand.lock);
> +}
> +
> +static void update_pmdemand_values(const struct intel_pmdemand_state *new,
> +				   const struct intel_pmdemand_state *old,
> +				   u32 *reg1, u32 *reg2)
> +{
> +	u32 plls, tmp;
> +
> +	/*
> +	 * The pmdemand parameter updates happens in two steps. Pre plane and
> +	 * post plane updates. During the pre plane, as DE might still be
> +	 * handling with some old operations, to avoid unwanted performance
> +	 * issues, program the pmdemand parameters with higher of old and new
> +	 * values. And then after once settled, use the new parameter values
> +	 * as part of the post plane update.
> +	 */
> +
> +	/* Set 1*/
> +	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
> +	tmp = old ? max(old->qclk_gv_bw, new->qclk_gv_bw) : new->qclk_gv_bw;
> +	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
> +
> +	*reg1 &= ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
> +	tmp = old ? max(old->voltage_index, new->voltage_index) :
> +		    new->voltage_index;
> +	*reg1 |= XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
> +
> +	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
> +	tmp = old ? max(old->qclk_gv_index, new->qclk_gv_index) :
> +		    new->qclk_gv_index;
> +	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
> +
> +	*reg1 &= ~XELPDP_PMDEMAND_PIPES_MASK;
> +	tmp = old ? max(old->active_pipes, new->active_pipes) :
> +		    new->active_pipes;
> +	*reg1 |= XELPDP_PMDEMAND_PIPES(tmp);
> +
> +	*reg1 &= ~XELPDP_PMDEMAND_PHYS_MASK;
> +	plls = hweight32(new->active_phys_plls_mask);
> +	if (old)
> +		plls = max(plls, hweight32(old->active_phys_plls_mask));
> +	plls = min_t(u32, plls, 7);
> +	*reg1 |= XELPDP_PMDEMAND_PHYS(plls);
> +
> +	/* Set 2*/
> +	*reg2 &= ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
> +	tmp = old ? max(old->cdclk_freq_mhz, new->cdclk_freq_mhz) :
> +		    new->cdclk_freq_mhz;
> +	*reg2 |= XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
> +
> +	*reg2 &= ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
> +	tmp = old ? max(old->ddiclk_freq_mhz, new->ddiclk_freq_mhz) :
> +		    new->ddiclk_freq_mhz;
> +	*reg2 |= XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
> +
> +	*reg2 &= ~XELPDP_PMDEMAND_SCALERS_MASK;
> +	tmp = old ? max(old->scalers, new->scalers) : new->scalers;
> +	*reg2 |= XELPDP_PMDEMAND_SCALERS(tmp);
> +
> +	/*
> +	 * Active_PLLs starts with 1 because of CDCLK PLL.
> +	 * TODO: Missing to account genlock filter when it gets used.
> +	 */
> +	plls = min_t(u32, ++plls, 7);
> +	*reg2 &= ~XELPDP_PMDEMAND_PLLS_MASK;
> +	*reg2 |= XELPDP_PMDEMAND_PLLS(plls + 1);
> +}
> +
> +static void intel_program_pmdemand(struct drm_i915_private *i915,
> +				   const struct intel_pmdemand_state *new,
> +				   const struct intel_pmdemand_state *old)
> +{
> +	bool changed = false;
> +	u32 reg1, mod_reg1;
> +	u32 reg2, mod_reg2;
> +
> +	mutex_lock(&i915->display.pmdemand.lock);
> +	if (drm_WARN_ON(&i915->drm,
> +			!intel_pmdemand_check_prev_transaction(i915)))
> +		goto unlock;
> +
> +	reg1 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
> +	mod_reg1 = reg1;
> +
> +	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
> +	mod_reg2 = reg2;
> +
> +	update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
> +
> +	if (reg1 != mod_reg1) {
> +		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
> +			       mod_reg1);
> +		changed = true;
> +	}
> +
> +	if (reg2 != mod_reg2) {
> +		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> +			       mod_reg2);
> +		changed = true;
> +	}
> +
> +	/* Initiate pm demand request only if register values are changed */
> +	if (!changed)
> +		goto unlock;
> +
> +	drm_dbg_kms(&i915->drm,
> +			"initate pmdemand request values: (0x%x 0x%x)\n",
> +			mod_reg1, mod_reg2);
> +
> +	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
> +			XELPDP_PMDEMAND_REQ_ENABLE);
> +
> +	intel_pmdemand_wait(i915);
> +
> +unlock:
> +	mutex_unlock(&i915->display.pmdemand.lock);
> +}
> +
> +static bool
> +intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
> +			     const struct intel_pmdemand_state *old)
> +{
> +	return memcmp(&new->qclk_gv_bw, &old->qclk_gv_bw,
> +		      sizeof(*new) - offsetof(typeof(*new), qclk_gv_bw)) != 0;
> +}
> +
> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_pmdemand_state *new_pmdmnd_state =
> +		intel_atomic_get_new_pmdemand_state(state);
> +	const struct intel_pmdemand_state *old_pmdmnd_state =
> +		intel_atomic_get_old_pmdemand_state(state);
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return;
> +
> +	if (!new_pmdmnd_state ||
> +	    !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
> +		return;
> +
> +	intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
> +}
> +
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_pmdemand_state *new_pmdmnd_state =
> +		intel_atomic_get_new_pmdemand_state(state);
> +	const struct intel_pmdemand_state *old_pmdmnd_state =
> +		intel_atomic_get_old_pmdemand_state(state);
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return;
> +
> +	if (!new_pmdmnd_state ||
> +	    !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
> +		return;
> +
> +	intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
> new file mode 100644
> index 000000000000..2883b5d97a44
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_PMDEMAND_H__
> +#define __INTEL_PMDEMAND_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_crtc_state;
> +struct intel_plane_state;
> +
> +void intel_pmdemand_init_early(struct drm_i915_private *i915);
> +int intel_pmdemand_init(struct drm_i915_private *i915);
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
> +				 u8 dbuf_slices);
> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
> +
> +#endif /* __INTEL_PMDEMAND_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index e5f12aa141f6..b00c11e5b242 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -41,6 +41,7 @@
>  #include "display/intel_fifo_underrun.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_lpe_audio.h"
> +#include "display/intel_pmdemand.h"
>  #include "display/intel_psr.h"
>  #include "display/intel_psr_regs.h"
>  
> @@ -1989,12 +1990,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
>  }
>  
> +static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
> +{
> +	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
> +}
> +
>  static void
>  gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
>  	bool found = false;
>  
> -	if (iir & GEN8_DE_MISC_GSE) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		if (iir & (XELPDP_PMDEMAND_RSP |
> +			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> +			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
> +				drm_dbg(&dev_priv->drm,
> +					"Error waiting for Punit PM Demand Response\n");
> +
> +			intel_pmdemand_irq_handler(dev_priv);
> +			found = true;
> +		}
> +	} else if (iir & GEN8_DE_MISC_GSE) {
>  		intel_opregion_asle_intr(dev_priv);
>  		found = true;
>  	}
> @@ -3745,7 +3761,10 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		de_port_masked |= BXT_DE_PORT_GMBUS;
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
> +				  XELPDP_PMDEMAND_RSP;
> +	else if (DISPLAY_VER(dev_priv) >= 11) {
>  		enum port port;
>  
>  		if (intel_bios_is_dsi_present(dev_priv, &port))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f82b2b245b0a..fb4f09a2a6ad 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4439,8 +4439,10 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> -#define  GEN8_DE_MISC_GSE		(1 << 27)
> -#define  GEN8_DE_EDP_PSR		(1 << 19)
> +#define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
> +#define  GEN8_DE_MISC_GSE		REG_BIT(27)
> +#define  GEN8_DE_EDP_PSR		REG_BIT(19)
> +#define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
>  
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -4525,6 +4527,33 @@
>  #define  XELPDP_DP_ALT_HPD_LONG_DETECT		REG_BIT(1)
>  #define  XELPDP_DP_ALT_HPD_SHORT_DETECT		REG_BIT(0)
>  
> +#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)		_MMIO(0x45230 + 4 * (dword))
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
> +#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)
> +#define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
> +#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)
> +#define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
> +#define  XELPDP_PMDEMAND_PHYS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)
> +
> +#define  XELPDP_PMDEMAND_REQ_ENABLE			REG_BIT(31)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK		REG_GENMASK(30, 20)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK		REG_GENMASK(18, 8)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_SCALERS_MASK			REG_GENMASK(6, 4)
> +#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)
> +#define  XELPDP_PMDEMAND_PLLS_MASK			REG_GENMASK(2, 0)
> +#define  XELPDP_PMDEMAND_PLLS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)
> +
> +#define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
> +#define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> +
>  #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
>  /* Required on all Ironlake and Sandybridge according to the B-Spec. */
>  #define   ILK_ELPIN_409_SELECT	REG_BIT(25)
> @@ -4684,6 +4713,9 @@
>  #define   DCPR_SEND_RESP_IMM			REG_BIT(25)
>  #define   DCPR_CLEAR_MEMSTAT_DIS		REG_BIT(24)
>  
> +#define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
> +#define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
> +
>  #define SKL_DFSM			_MMIO(0x51000)
>  #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
>  #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
> -- 
> 2.34.1
> 
