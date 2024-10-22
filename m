Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B929A9BF0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6D710E613;
	Tue, 22 Oct 2024 08:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irHW7D7/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A3710E607;
 Tue, 22 Oct 2024 08:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729584206; x=1761120206;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bE+gwca507EgMF2YhrsSdh6PifOJ0uIv1HYzjL/+6wQ=;
 b=irHW7D7/XyNhRMA5JYnp3aw05eMiJcAjRnrr9YQgM3qno2mflwn7Lgj+
 DZRCvYYmFvo6UTRyIf/GNHVl2dWqaTEBUtyttye1yj8otvg56qDo0uIef
 32QIYYV2erlKON0pC6OYr+mVj7KOfR59OLHF9QtsE3V48RZHrOZaCwKWs
 JCXXg/En8XuvaUrmGA5LbrcMCTWuDagJJ7S8wQZbRNJpDi/9KnU40Haq/
 1otzQ1nFJOhVxM1vHl8k/O/crx6JAL3th9/C/ktogbzBnFG2qv43+T/oF
 5SxAGNNFkCxCDG2bUfkmwN7xEfVEeSGvHC26MCN6esyk+vkD/hcDx2PFT g==;
X-CSE-ConnectionGUID: XgG5Ngx/RNWxCTqT5euOfw==
X-CSE-MsgGUID: u7BLZbPNSU+foqbbYG2kRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28533542"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28533542"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:03:25 -0700
X-CSE-ConnectionGUID: qQXUpt44SV6UDNW/7ss0Fw==
X-CSE-MsgGUID: jo0rShzDTgapYZa+jVSCrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80195906"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:03:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
In-Reply-To: <20241021222744.294371-8-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
Date: Tue, 22 Oct 2024 11:03:21 +0300
Message-ID: <87y12gwomu.fsf@intel.com>
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

On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> There are extra registers that require the DMC wakelock when specific
> dynamic DC states are in place. Add the table ranges for them and use
> the correct table depending on the allowed DC states.
>
> Bspec: 71583
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>  1 file changed, 108 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index d597cc825f64..8bf2f32be859 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/kernel.h>
>  
> +#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] = {
>  	{},
>  };
>  
> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] = {
> +	{ .start = 0x45500, .end = 0x45500 }, /* DC_STATE_SEL */
> +	{ .start = 0x457a0, .end = 0x457b0 }, /* DC*_RESIDENCY_COUNTER */
> +	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
> +	{ .start = 0x45400, .end = 0x4540c }, /* PWR_WELL_CTL_* */
> +	{ .start = 0x454f0, .end = 0x454f0 }, /* RETENTION_CTRL */
> +
> +	/* DBUF_CTL_* */
> +	{ .start = 0x44300, .end = 0x44300 },
> +	{ .start = 0x44304, .end = 0x44304 },
> +	{ .start = 0x44f00, .end = 0x44f00 },
> +	{ .start = 0x44f04, .end = 0x44f04 },
> +	{ .start = 0x44fe8, .end = 0x44fe8 },
> +	{ .start = 0x45008, .end = 0x45008 },
> +
> +	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
> +	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
> +	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
> +
> +	/* TRANS_CMTG_CTL_* */
> +	{ .start = 0x6fa88, .end = 0x6fa88 },
> +	{ .start = 0x6fb88, .end = 0x6fb88 },
> +
> +	{ .start = 0x46430, .end = 0x46430 }, /* CHICKEN_DCPR_1 */
> +	{ .start = 0x46434, .end = 0x46434 }, /* CHICKEN_DCPR_2 */
> +	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
> +	{ .start = 0x42084, .end = 0x42084 }, /* CHICKEN_MISC_2 */
> +	{ .start = 0x42088, .end = 0x42088 }, /* CHICKEN_MISC_3 */
> +	{ .start = 0x46160, .end = 0x46160 }, /* CMTG_CLK_SEL */
> +	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
> +
> +	{},
> +};
> +
> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] = {
> +	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
> +
> +	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
> +
> +	/* DBUF_CTL_* */
> +	{ .start = 0x44300, .end = 0x44300 },
> +	{ .start = 0x44304, .end = 0x44304 },
> +	{ .start = 0x44f00, .end = 0x44f00 },
> +	{ .start = 0x44f04, .end = 0x44f04 },
> +	{ .start = 0x44fe8, .end = 0x44fe8 },
> +	{ .start = 0x45008, .end = 0x45008 },
> +
> +	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
> +	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
> +	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
> +	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
> +
> +	/* Scanline registers */
> +	{ .start = 0x70000, .end = 0x70000 },
> +	{ .start = 0x70004, .end = 0x70004 },
> +	{ .start = 0x70014, .end = 0x70014 },
> +	{ .start = 0x70018, .end = 0x70018 },
> +	{ .start = 0x71000, .end = 0x71000 },
> +	{ .start = 0x71004, .end = 0x71004 },
> +	{ .start = 0x71014, .end = 0x71014 },
> +	{ .start = 0x71018, .end = 0x71018 },
> +	{ .start = 0x72000, .end = 0x72000 },
> +	{ .start = 0x72004, .end = 0x72004 },
> +	{ .start = 0x72014, .end = 0x72014 },
> +	{ .start = 0x72018, .end = 0x72018 },
> +	{ .start = 0x73000, .end = 0x73000 },
> +	{ .start = 0x73004, .end = 0x73004 },
> +	{ .start = 0x73014, .end = 0x73014 },
> +	{ .start = 0x73018, .end = 0x73018 },
> +	{ .start = 0x7b000, .end = 0x7b000 },
> +	{ .start = 0x7b004, .end = 0x7b004 },
> +	{ .start = 0x7b014, .end = 0x7b014 },
> +	{ .start = 0x7b018, .end = 0x7b018 },
> +	{ .start = 0x7c000, .end = 0x7c000 },
> +	{ .start = 0x7c004, .end = 0x7c004 },
> +	{ .start = 0x7c014, .end = 0x7c014 },
> +	{ .start = 0x7c018, .end = 0x7c018 },
> +
> +	{},
> +};
> +
>  static void __intel_dmc_wl_release(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> @@ -106,9 +188,31 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
>  	return false;
>  }
>  
> -static bool intel_dmc_wl_check_range(u32 address)
> +static bool intel_dmc_wl_check_range(struct intel_display *display, u32 address)
>  {
> -	return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
> +	const struct intel_dmc_wl_range *ranges;
> +
> +	ranges = lnl_wl_range;
> +
> +	if (intel_dmc_wl_addr_in_range(address, ranges))
> +		return true;
> +
> +	switch (display->power.domains.dc_state) {

This file has no business looking at power domain guts. Use or add
interfaces instead of poking at data directly.

> +	case DC_STATE_EN_DC3CO:
> +		ranges = xe3lpd_dc3co_wl_ranges;
> +		break;
> +	case DC_STATE_EN_UPTO_DC5:
> +	case DC_STATE_EN_UPTO_DC6:
> +		ranges = xe3lpd_dc5_dc6_wl_ranges;
> +		break;
> +	default:
> +		ranges = NULL;
> +	}
> +
> +	if (ranges && intel_dmc_wl_addr_in_range(address, ranges))
> +		return true;
> +
> +	return false;
>  }
>  
>  static bool __intel_dmc_wl_supported(struct intel_display *display)
> @@ -195,7 +299,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
> -	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg))
> +	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(display, reg.reg))

Side note, unrelated to this patch, i915_reg_t is supposed to be opaque,
nobody should look at reg.reg directly, there's i915_mmio_reg_offset()
for it.

>  		return;
>  
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -247,7 +351,7 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
>  	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
> -	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg))
> +	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(display, reg.reg))
>  		return;
>  
>  	spin_lock_irqsave(&wl->lock, flags);

-- 
Jani Nikula, Intel
