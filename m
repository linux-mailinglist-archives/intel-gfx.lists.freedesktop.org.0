Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64579A3FF04
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 19:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB00910EB1E;
	Fri, 21 Feb 2025 18:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9Fee2Pf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E92810EB1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 18:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740163425; x=1771699425;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=M7LzX71sJJOSyZ3O5mDAmXDC8Rw13yxWqGy2+AMeW9I=;
 b=C9Fee2Pf1lm/aaOuC9f1ZXlEZotMxhx2ou1sp/TT4SXmvyphEZ+rYa+V
 nRan3yy00K/XhfaoYMfdYYrG5m9xYCKkbwfE49EIN6Eta8rXg7/SZEZmq
 OyiSc+PcfztYI7hjvJzQE7zUvynhowyg56TamUuSuX9Z30hl9jF4xTC6J
 LkqlvshxqXkxzzlhLSg+U7jvmYkk8kXGapcgbsukvNGoeDMW2xGqs/Ye6
 Svt+IgAsKY4tODtIm5U+rcCHEdUqP7WfKLsGBODLGqTufUrQ2UvDmJUG9
 1Wck8SrbgRC4azJXb80X81dYoszcjmB0+JgimStxi3EHYSxiqVq3wULIF w==;
X-CSE-ConnectionGUID: WXRVMofCTy+EOxFSFW6DPw==
X-CSE-MsgGUID: BatD6cYmSgqJrOHv8+k4jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="41256509"
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="41256509"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 10:43:44 -0800
X-CSE-ConnectionGUID: XBO5hnkJR/67xloES0ejRw==
X-CSE-MsgGUID: +dyosW2+R4KgjM+wFWgXKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="116080948"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 10:43:44 -0800
Date: Fri, 21 Feb 2025 20:44:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z7jJnOwmxum2U_UY@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250212114935.21231-1-mohammed.thasleem@intel.com>
 <Z7jHVMUYJAKaSPYG@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z7jHVMUYJAKaSPYG@ideak-desk.fi.intel.com>
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

On Fri, Feb 21, 2025 at 08:35:00PM +0200, Imre Deak wrote:
> On Wed, Feb 12, 2025 at 05:19:35PM +0530, Mohammed Thasleem wrote:
> > Starting from MTL we don't have a platform agnostic way to validate
> > DC6 state due to dc6 counter has been removed to validate DC state.
> > 
> > The goal is to validate that the display HW can reach the DC6 power
> > state. There is no HW DC6 residency counter (and there wasn't such
> > a counter earlier either), so an alternative way is required. According
> > to the HW team the display driver has programmed everything correctly in
> > order to allow the DC6 power state if the DC5 power state is reached
> > (indicated by the HW DC5 residency counter incrementing) and DC6 is
> > enabled by the driver.
> > 
> > Driver could take a snapshot of the DC5 residency counter right
> > after it enables DC6 (dc5_residency_start) and increment the SW
> > DC6 residency counter right before it disables DC6 or when user space
> > reads the DC6 counter. So the driver would update the counter at these
> > two points in the following way:
> > dc6_residency_counter += dc5_current_count - dc5_start_count
> > 
> > v2: Update the discription. (Imre)
> >     Read dc5 count during dc6 enable and disable then and update
> >     dc6 residency counter. (Imre)
> >     Remove variable from dmc structure. (Jani)
> >     Updated the subject title.
> > 
> > Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
> >  .../i915/display/intel_display_power_well.c   | 20 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dmc.c      | 14 ++++++++++---
> >  3 files changed, 32 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 554870d2494b..0a1e3dc2804f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -490,6 +490,8 @@ struct intel_display {
> >  
> >  		/* perform PHY state sanity checks? */
> >  		bool chv_phy_assert[2];
> > +		unsigned int dc6_residency_counter;
> > +		unsigned int dc5_start_count;
> >  	} power;
> >  
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index f45a4f9ba23c..cfa53ee84323 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_dkl_phy.h"
> >  #include "intel_dkl_phy_regs.h"
> >  #include "intel_dmc.h"
> > +#include "intel_dmc_regs.h"
> >  #include "intel_dmc_wl.h"
> >  #include "intel_dp_aux_regs.h"
> >  #include "intel_dpio_phy.h"
> > @@ -755,7 +756,7 @@ void gen9_sanitize_dc_state(struct intel_display *display)
> >  void gen9_set_dc_state(struct intel_display *display, u32 state)
> >  {
> >  	struct i915_power_domains *power_domains = &display->power.domains;
> > -	u32 val;
> > +	u32 val, dc5_current_count;
> >  	u32 mask;
> >  
> >  	if (!HAS_DISPLAY(display))
> > @@ -775,11 +776,28 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
> >  		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
> >  			power_domains->dc_state, val & mask);
> >  
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		/* If disabling DC6, update dc6_allowed counter */
> > +		if (!(state & DC_STATE_EN_UPTO_DC6) && (val & DC_STATE_EN_UPTO_DC6)) {
> > +			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> > +			display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;
> > +			display->power.dc5_start_count = dc5_current_count;
> 
> Would be clearer if you used
> 
> enable_dc6 = state & DC_STATE_EN_UPTO_DC6
> dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6
> 
> flags and moved the display version check and counter read/update to a
> helper.

Also, the update above should happen after DC6 is disabled and the
update below should happen before DC6 is enabled.

> > +		}
> > +	}
> > +
> >  	val &= ~mask;
> >  	val |= state;
> >  
> >  	gen9_write_dc_state(display, val);
> >  
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		/* If enabling DC6, store DC5 count */
> > +		if ((state & DC_STATE_EN_UPTO_DC6)) {
> > +			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> > +			display->power.dc5_start_count = dc5_current_count;
> > +		}
> > +	}
> 
> This could also be in a helper, calling it if !dc6_was_enabled && enable_dc6.
> 
> > +
> >  	power_domains->dc_state = val & mask;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 221d3abda791..e4d3ce796c99 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1242,6 +1242,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >  	intel_wakeref_t wakeref;
> >  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> > +	u32 dc5_current_count;
> >  
> >  	if (!HAS_DMC(display))
> >  		return -ENODEV;
> > @@ -1290,9 +1291,16 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> >  	}
> >  
> >  	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
> > -	if (i915_mmio_reg_valid(dc6_reg))
> > -		seq_printf(m, "DC5 -> DC6 count: %d\n",
> > -			   intel_de_read(display, dc6_reg));
> > +
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		dc5_current_count = intel_de_read(display, dc5_reg);
> > +		display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;
> 
> 
> The above needs the i915_power_domains::lock, should be done only if DC6
> is enabled, and needs to also update display->power.dc5_start_count.
> This is the same update as you do in gen9_set_dc_state(), so could reuse
> the helper for that here.
> 
> > +		seq_printf(m, "DC6 Residency Counter: %d\n", display->power.dc6_residency_counter);
> > +	} else {
> > +		if (i915_mmio_reg_valid(dc6_reg))
> > +			seq_printf(m, "DC5 -> DC6 count: %d\n",
> > +				   intel_de_read(display, dc6_reg));
> > +	}
> >  
> >  	seq_printf(m, "program base: 0x%08x\n",
> >  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > -- 
> > 2.43.0
> > 
