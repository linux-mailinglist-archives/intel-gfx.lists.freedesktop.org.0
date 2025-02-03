Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7B2A259A4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72ACC10E3CD;
	Mon,  3 Feb 2025 12:42:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pon0fbIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728AA10E3CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 12:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738586564; x=1770122564;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=s1sw3qzY0W0YNUKhMe2yFI50l54mXVBvMNZE5eYkPKw=;
 b=Pon0fbIGAgF+CAtsKPN24etZoRYuli3EN5CdT8anXgpuKOAjlwwvLxi7
 7aixCoY8TBBRDkxcMezfdU0OR0PK7D8zwfKAmZbznNJy5vzUtLsb7kfbl
 p3qLEc289V4zf9FoDt+mx3QDtRb4QiBAO+t5gdiK7s8igA37djazfo4US
 FR/yzV+YCpOeTBs5KkWpdjP8EuLC1ii3E9aWMfBTQrXfVh8sJY0m48ZRM
 JVrgstyw+q4hVYoF310u8d8s+9/g81oRwO8v450uuhRbu4Eyp+lXisXT/
 BDZW728HP7A7Oiz69L/+z+nYNXs4pd7JFSMbDM4OJ3nLtvwnGylgKiTqR w==;
X-CSE-ConnectionGUID: Evs3vcFiTReOOxWltZLx3w==
X-CSE-MsgGUID: jJRf0RJEQ8Wu8rsAqY35MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="42825461"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="42825461"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:42:43 -0800
X-CSE-ConnectionGUID: kWC96XgXSSe3i/frdTxeow==
X-CSE-MsgGUID: aWhS7PChT1mlI8szHy5yzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141142101"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:42:42 -0800
Date: Mon, 3 Feb 2025 14:43:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203085613.236340-1-mohammed.thasleem@intel.com>
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

On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> due to dc6 counter has been removed to validate DC state.
> Adding dc6_entry_counter at display dirver to validate dc6 state.
> 
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
>  3 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..cc244617011f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -376,6 +376,7 @@ struct intel_display {
>  	struct {
>  		struct intel_dmc *dmc;
>  		intel_wakeref_t wakeref;
> +		u32 dc6_entry_counter;
>  	} dmc;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f45a4f9ba23c..0eb178aa618d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
>  	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
>  
>  	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> +
> +	display->dmc.dc6_entry_counter++;

AFAIU the goal is to validate that the display HW can reach the DC6
power state. There is no HW DC6 residency counter (and there wasn't such
a counter earlier either), so an alternative way is required. According
to the HW team the display driver has programmed everything correctly in
order to allow the DC6 power state if the DC5 power state is reached
(indicated by the HW DC5 residency counter incrementing) and DC6 is
enabled by the driver.

Based on the above, we'd need a DC6 residency counter maintained by the
driver which is incremented if the DC5 residency counter increments
while DC6 is enabled. The dc6_entry_counter in this patch is not enough
for this, since it doesn't take into account the DC5 residency. While
user space could check both dc6_entry_counter and the DC5 residency,
that check would be racy wrt. the driver enabling/disabling the DC6
state asynchronously.

I suppose the driver could take a snapshot of the DC5 residency counter
right after it enables DC6 (dc5_residency_start) and increment the SW
DC6 residency counter right before it disables DC6 or when user space
reads the DC6 counter. So the driver would update the counter at these
two points in the following way:
dc6_residency += dc5_residency_current - dc5_residency_start

The commit log would need a justification, something along the above
lines.

>  }
>  
>  void bxt_enable_dc9(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 221d3abda791..f51bd8e6011d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	if (i915_mmio_reg_valid(dc6_reg))
>  		seq_printf(m, "DC5 -> DC6 count: %d\n",
>  			   intel_de_read(display, dc6_reg));
> +	seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> -- 
> 2.43.0
> 
