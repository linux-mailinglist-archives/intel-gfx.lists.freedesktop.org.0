Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE9A4DB9E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 12:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022A210E571;
	Tue,  4 Mar 2025 11:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3aD0XcS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDEE10E571
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 11:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741086008; x=1772622008;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2tTwne1sxdOFFtAywXyIMxtBmzQWuGD3g3bcnfpO+T0=;
 b=a3aD0XcSDWT144Qt0ijYJJWznZ8I7RI43wgkyZinG6c+ZoCgTLqsJH1S
 EhrbrUvs4my8jXN9+vrihSEQ8mzzhmhIM/mrAzdWIbwcBhOfX16YqBLFa
 Ns6+ItNoQi1aHvtJQbJl/A8Wqm2z2jDa1K53/PH72/GtTfwDAa7oA6rbI
 Rhui3t5Yp/MJ9Tw5pAV3enRpMyUzfjWtKN+S11r1od30nWotEKYrrv0It
 agfbALa+XHsJlyp9k4ooZfFnNm088e3pnthC0Ho9UVk+iC/tPI19RCgfe
 cd+wTGSi1lCiBTyz74nYCsXkVCtyMdUAukOQfmr7QKaH72JJCl+chUk61 A==;
X-CSE-ConnectionGUID: pzvfNT9WR2mjFZOKMNZquQ==
X-CSE-MsgGUID: m4QZfgg+SeSZUnDhouIQ4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="42247005"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="42247005"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:00:07 -0800
X-CSE-ConnectionGUID: s+Tk75xISz6yilQD4oXTHQ==
X-CSE-MsgGUID: 5HM/Drr0Si2E1xfAVeXy3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="149132053"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:00:07 -0800
Date: Tue, 4 Mar 2025 13:00:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z8bdMhVqZcUMI2XF@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250303192319.4315-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303192319.4315-1-mohammed.thasleem@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 04, 2025 at 12:53:19AM +0530, Mohammed Thasleem wrote:
> Starting from MTL we don't have a platform agnostic way to validate
> DC6 state due to dc6 counter has been removed to validate DC state.
> 
> The goal is to validate that the display HW can reach the DC6 power
> state. There is no HW DC6 residency counter (and there wasn't such
> a counter earlier either), so an alternative way is required. According
> to the HW team the display driver has programmed everything correctly in
> order to allow the DC6 power state if the DC5 power state is reached
> (indicated by the HW DC5 residency counter incrementing) and DC6 is
> enabled by the driver.
> 
> Driver could take a snapshot of the DC5 residency counter right
> after it enables DC6 (dc5_residency_start) and increment the SW
> DC6 residency counter right before it disables DC6 or when user space
> reads the DC6 counter. So the driver would update the counter at these
> two points in the following way:
> dc6_residency_counter += dc5_current_count - dc5_start_count
> 
> v2: Update the discription. (Imre)
>     Read dc5 count during dc6 enable and disable then and update
>     dc6 residency counter. (Imre)
>     Remove variable from dmc structure. (Jani)
>     Updated the subject title.
> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>     Use flags to check dc6 enable/disable states. (Imre)
>     Move the display version check and counter read/update to
>     a helper. (Imre)
>     Resize the variable length. (Rodrigo)
>     Use old dc6 debugfs entry for every platform. (Rodrigo)
> 
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
>  .../i915/display/intel_display_power_well.c   | 26 +++++++++++++++++++
>  .../i915/display/intel_display_power_well.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 21 ++++++++++++---
>  4 files changed, 47 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..1608268bd9e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -490,6 +490,8 @@ struct intel_display {
>  
>  		/* perform PHY state sanity checks? */
>  		bool chv_phy_assert[2];
> +		unsigned int dc6_count;

I think it's better to use dc6_allowed_count as Rodrigo suggested, not
regarding it as a counter for actual DC6 transitions.

> +		unsigned int dc5_start_count;
>  	} power;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5b60db597329..8478e687abb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -17,6 +17,7 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> +#include "intel_dmc_regs.h"
>  #include "intel_dmc_wl.h"
>  #include "intel_dp_aux_regs.h"
>  #include "intel_dpio_phy.h"
> @@ -728,6 +729,22 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>  	power_domains->dc_state = val;
>  }
>  
> +void update_dc6_count(struct intel_display *display, bool dc6_en_dis)

Maybe rename dc6_en_dis to start_tracking?

As Jani suggested the function should be in intel_dmc.c

> +{
> +	u32 dc5_cur_count;
> +
> +	if (DISPLAY_VER(display) < 14)
> +		return;
> +
> +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> +
> +	if (dc6_en_dis) {
> +		display->power.dc6_count += dc5_cur_count - display->power.dc5_start_count;
> +		display->power.dc5_start_count = dc5_cur_count;
> +	} else
> +		display->power.dc5_start_count = dc5_cur_count;

No need to duplicate the above in both branches.

> +}
> +
>  /**
>   * gen9_set_dc_state - set target display C power state
>   * @display: display instance
> @@ -756,6 +773,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	u32 val;
>  	u32 mask;
> +	bool dc6_was_enabled, enable_dc6;
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -774,11 +792,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>  			power_domains->dc_state, val & mask);
>  
> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> +	if (!dc6_was_enabled && enable_dc6)
> +		update_dc6_count(display, false);
> +
>  	val &= ~mask;
>  	val |= state;
>  
>  	gen9_write_dc_state(display, val);
>  
> +	if (!enable_dc6)

This also needs to check dc6_was_enabled, as it could be DC5 not DC6
being disabled for instance.

> +		update_dc6_count(display, true);
> +
>  	power_domains->dc_state = val & mask;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index ec8e508d0593..54fff1f888b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -161,6 +161,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state);
>  void gen9_disable_dc_states(struct intel_display *display);
>  void bxt_enable_dc9(struct intel_display *display);
>  void bxt_disable_dc9(struct intel_display *display);
> +void update_dc6_count(struct intel_display *display, bool dc6_en_dis);
>  
>  extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
>  extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa6944e55d95..4cbc54a97655 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -28,10 +28,12 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display_power_well.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
>  #include "intel_step.h"
>  
> +
>  /**
>   * DOC: DMC Firmware Support
>   *
> @@ -1237,8 +1239,10 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	struct intel_display *display = m->private;
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc *dmc = display_to_dmc(display);
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	intel_wakeref_t wakeref;
>  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> +	u32 dc6_was_enabled;
>  
>  	if (!HAS_DMC(display))
>  		return -ENODEV;
> @@ -1287,9 +1291,20 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	}
>  
>  	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
> -	if (i915_mmio_reg_valid(dc6_reg))
> -		seq_printf(m, "DC5 -> DC6 count: %d\n",
> -			   intel_de_read(display, dc6_reg));
> +
> +	if (DISPLAY_VER(display) >= 14) {
> +		dc6_was_enabled = DC_STATE_EN_UPTO_DC6 &
> +				  intel_de_read(display, DC_STATE_EN);

The above needs to be guarded with power_domains->lock as well,
otherwise its state could change right after you read it.

> +		if (dc6_was_enabled) {
> +			mutex_lock(&power_domains->lock);
> +			update_dc6_count(display, true);
> +			mutex_unlock(&power_domains->lock);
> +		}
> +	} else
> +		display->power.dc6_count = i915_mmio_reg_valid(dc6_reg) ?
> +					   intel_de_read(display, dc6_reg) : 0;

I think it's better to keep the existing way how 'DC5 -> DC6 count' is
printed and add a new field for the DC6 allowed count added in this
patch (keeping the two values separate).

I think it would make sense to also print the DC6 enabled state.

> +
> +	seq_printf(m, "DC5 -> DC6 count: %d\n", display->power.dc6_count);
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> -- 
> 2.43.0
> 
