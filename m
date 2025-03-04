Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DCAA4D689
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DC810E54A;
	Tue,  4 Mar 2025 08:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fmsjoKrf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B7610E54A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 08:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077203; x=1772613203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=r8E6iDo0oj9wRV4YPVfkAbcjH7ge8E3sjbToQsymOt8=;
 b=fmsjoKrf3LjYgs9USz5UxfYLUnqNrCKQGNOlHETyCFrKP0Qy+xv8V0AS
 i6z7OsvKaH/tYgj88qpO/xXfoBasFi6RUTyomfTwOdcx2MPT0x69BM7qs
 0D/aqVnxwty4VpFJJCYrGOfWVCjPKNwo4sP+kmNbRSvD4+U5VAdbSeCwQ
 oVuPskb4X/DNedGGOx6bcXqwhaHSknkWfBfCRnvznHs55Dbp1tk1laByJ
 WKtuhSUZB2MVoj81oLUe2bGVYyt6ONRzVPqMv7AdDZO7njL2vlTy7TC5e
 8BTkZQnwNE8pkZGrzT+CT2WkZWfs3nl+0Rvk5dAKQrb+IOb8v9CiPGNHw A==;
X-CSE-ConnectionGUID: oeP+U3B0T3+L26FCkwFXhA==
X-CSE-MsgGUID: 1sR7WLp0SA21ToGq1n74qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="42107957"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="42107957"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:33:23 -0800
X-CSE-ConnectionGUID: ITf8Pq3DR+6HiadMKtEA7A==
X-CSE-MsgGUID: jqFDFG61SZ62aDVl9VXLvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123516256"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:33:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: Create debugfs entry for dc6 counter
In-Reply-To: <20250303192319.4315-1-mohammed.thasleem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250303192319.4315-1-mohammed.thasleem@intel.com>
Date: Tue, 04 Mar 2025 10:33:18 +0200
Message-ID: <87tt89yz3l.fsf@intel.com>
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

On Tue, 04 Mar 2025, Mohammed Thasleem <mohammed.thasleem@intel.com> wrote:
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

Also, superfluous whitespace.

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
> +		if (dc6_was_enabled) {
> +			mutex_lock(&power_domains->lock);
> +			update_dc6_count(display, true);
> +			mutex_unlock(&power_domains->lock);
> +		}
> +	} else
> +		display->power.dc6_count = i915_mmio_reg_valid(dc6_reg) ?
> +					   intel_de_read(display, dc6_reg) : 0;
> +
> +	seq_printf(m, "DC5 -> DC6 count: %d\n", display->power.dc6_count);
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

-- 
Jani Nikula, Intel
