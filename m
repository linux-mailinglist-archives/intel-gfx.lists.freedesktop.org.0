Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75AA5990A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 16:04:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D4910E31A;
	Mon, 10 Mar 2025 15:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnWBIEqb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FA610E31A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 15:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741619095; x=1773155095;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=FdHlNJeQOcnZ6JT0S6zzFax72srNkajrMoIbAEmr4Uw=;
 b=fnWBIEqbpO7x39RCF8rJPeQRguydc10YrZETrzdqaVbzo6RX/8L0m4mh
 KjnHb78QD8aBjOWMLIIIgXwcr5qHkUdJgMjlEPfAb8ptIqm/2tNujtVN6
 7m/tILE55wtK/G3oGRXHZI5UnQBlkgssGr6FrIZWb0FzGc3WE0uChl7+w
 Mrb3QMuIzjGB598TaQ15qoxCAkuGyuQSxuobYCgdPXXaL0x/0F2KjXxGj
 uAHnDRPu37gCuIna2CelfhK8ISuUf7sam0FZKNAzX4+XK7EsVwyNf9pbJ
 +wfw/+xilWluApzvClJe0FDZvgWHpFdtdALj2fGjoo3qH+UBkanc4b21N g==;
X-CSE-ConnectionGUID: hgRzVxOJQHWFtFpSC/Rd7Q==
X-CSE-MsgGUID: AhYOcoROSm6ARkV1GjFPhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42469834"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42469834"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:04:54 -0700
X-CSE-ConnectionGUID: J6VoMZ3VRISpEmQ8GaNpCQ==
X-CSE-MsgGUID: Im0FsZYqTGaEWz5SR79SFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="120218245"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:04:53 -0700
Date: Mon, 10 Mar 2025 17:04:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z87_kcF33e5a_SzH@ideak-desk.fi.intel.com>
References: <20250303192319.4315-1-mohammed.thasleem@intel.com>
 <20250309081002.4174-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250309081002.4174-1-mohammed.thasleem@intel.com>
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

On Sun, Mar 09, 2025 at 01:40:02PM +0530, Mohammed Thasleem wrote:
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
> v4: Remove superfluous whitespace. (Jani)
>     Read DMC registers in intel_dmc.c (Jani)
>     Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
>     Rename update_dc6_count and move it to intel_dmc.c (Jani)
>     Rename dc6_en_dis to start_tracking. (Imre)
>     Have lock for dc6 state read aswelll. (Imre)
>     Keep the existing way print 'DC5 -> DC6 count' along with
>     new 'DC6 Allowed Count' print. (Imre)
>     Add counters in intel_dmc struct. (Imre)
>     Have interface to return dc6 allowed count. (Imre)
>     Rename dc6_count to dc6_allowed_count. (Rodrigo)
> 
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   |  9 ++++
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 46 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>  3 files changed, 53 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 8ec87ffd87d2..4d97b71cfe11 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -754,6 +754,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	u32 val;
>  	u32 mask;
> +	bool dc6_was_enabled, enable_dc6;

Try to order these lines in decreasing line length.

>  
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -772,11 +773,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>  			power_domains->dc_state, val & mask);
>  
> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> +	if (!dc6_was_enabled && enable_dc6)
> +		intel_dmc_update_dc6_allowed_count(display, false);

Tracking starts when enabling DC6, so start_tacking should be true here,

> +
>  	val &= ~mask;
>  	val |= state;
>  
>  	gen9_write_dc_state(display, val);
>  
> +	if (!enable_dc6 && dc6_was_enabled)
> +		intel_dmc_update_dc6_allowed_count(display, true);

and false here.

> +
>  	power_domains->dc_state = val & mask;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa6944e55d95..f560349ddb6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -28,6 +28,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display_power_well.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
>  #include "intel_step.h"
> @@ -57,6 +58,8 @@ struct intel_dmc {
>  	const char *fw_path;
>  	u32 max_fw_size; /* bytes */
>  	u32 version;
> +	u32 dc5_start_count;
> +	u32 dc6_allowed_count;

Maybe

	struct {
		u32 dc5_start;
		u32 count;
	} dc6_allowed;

so it's clearer that the two counters are related.

>  	struct dmc_fw_info {
>  		u32 mmio_count;
>  		i915_reg_t mmioaddr[20];
> @@ -1232,11 +1235,36 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
>  			   DMC_VERSION_MINOR(snapshot->version));
>  }
>  
> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
> +					bool start_tracking)
> +{
> +	struct intel_dmc *dmc = display_to_dmc(display);
> +	u32 dc5_cur_count;
> +
> +	if (DISPLAY_VER(dmc->display) < 14)
> +		return;
> +
> +	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> +
> +	if (start_tracking)
> +		dmc->dc6_allowed_count += dc5_cur_count - dmc->dc5_start_count;
> +
> +	dmc->dc5_start_count = dc5_cur_count;
> +}
> +
> +static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display)
> +{
> +	struct intel_dmc *dmc = display_to_dmc(display);
> +
> +	return dmc->dc6_allowed_count;
> +}
> +
>  static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_display *display = m->private;
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc *dmc = display_to_dmc(display);
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	intel_wakeref_t wakeref;
>  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>  
> @@ -1287,9 +1315,21 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	}
>  
>  	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
> -	if (i915_mmio_reg_valid(dc6_reg))
> -		seq_printf(m, "DC5 -> DC6 count: %d\n",
> -			   intel_de_read(display, dc6_reg));
> +
> +	if (DISPLAY_VER(display) >= 14) {
> +		mutex_lock(&power_domains->lock);
> +		bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
> +				   intel_de_read(display, DC_STATE_EN);
> +		if (dc6_enabled)
> +			intel_dmc_update_dc6_allowed_count(display, true);
> +
> +		mutex_unlock(&power_domains->lock);
> +		seq_printf(m, "DC6 Allowed Count : %d\n", intel_dmc_get_dc6_allowed_count(display));

Getting the counter should be also protected with the lock.

Maybe move all the above to helper returning error for DISPLAY_VER < 14
and call that like:

	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count))
		print dc6_allowed_count
	else if (i915_mmio_reg_valid(dc6_reg))
		print dc6_reg

> +	} else {
> +		if (i915_mmio_reg_valid(dc6_reg)) {
> +			seq_printf(m, "DC5 -> DC6 count: %d\n",
> +				   intel_de_read(display, dc6_reg)); }
> +	}
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 44cecef98e73..c78426eb4cd5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
>  
>  struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
>  void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
>  
>  void assert_dmc_loaded(struct intel_display *display);
>  
> -- 
> 2.43.0
> 
