Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DC6CF3991
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1A010E330;
	Mon,  5 Jan 2026 12:45:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B0uLEYhM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB34110E2F2;
 Mon,  5 Jan 2026 12:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767617130; x=1799153130;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TaDEjPookapIXN5EahwRcKHBZJECuasrsRjEYJsIIQM=;
 b=B0uLEYhMyRbDVeOIQ7rxMEidoOGM1WFNXETwV9HzVu+XeYUznVS3wyAl
 fkEMn0fqlDQ96A7C7ycWjEONVubqyohb4G6F+I7b7Id9JqlhT877jkY+q
 /WYtcZ1ljb6X2XT0322WxkarsrTzc2ZEe0pZZCSMgKVNN6WJtq5PcONXx
 olhsSyhNhwEa5L6Rx2jTfu2EuoVMrMQ1dLR3mwbb39mFuRQZzKsl4Zqxf
 HLogzpgQbVs92gja89/VAFWdlJvmkDX/o6exsGLVpCCUAuBHFSL2DDkaF
 mDs6Mqf78IdATCqnqtX6IQU95s/hiMylaDkAa842+016r1UKzH78M1+L8 g==;
X-CSE-ConnectionGUID: HrTDnRXbTzOKGotaTqWKfQ==
X-CSE-MsgGUID: HfnKf1QSSeq9yYgnbXvxow==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="86399343"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="86399343"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:45:30 -0800
X-CSE-ConnectionGUID: Hw79RmlQSSGhOyzSYOVRIg==
X-CSE-MsgGUID: rUR+wvOiRhOGn5KKqAk1Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="206523580"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:45:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: Re: [PATCH 2/9] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
In-Reply-To: <20251209113332.2770263-3-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-3-dibin.moolakadan.subrahmanian@intel.com>
Date: Mon, 05 Jan 2026 14:45:23 +0200
Message-ID: <17e5263efc4597cee2d7ad57d8c4be853c0ba1b2@intel.com>
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

On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> DC3CO no longer uses a standalone enable bit but part of existing
> UPTO_DC* enable bits.

"no longer" for register contents absolutely requires references to the
platforms.

>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 9f323c39d798..0961b194554c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
>  	static const u32 states[] = {
>  		DC_STATE_EN_UPTO_DC6,
>  		DC_STATE_EN_UPTO_DC5,
> -		DC_STATE_EN_DC3CO,
> +		DC_STATE_EN_UPTO_DC3CO,
>  		DC_STATE_DISABLE,
>  	};
>  	int i;
> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
>  
>  	switch (requested_dc) {
>  	case 4:
> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6;
>  		break;
>  	case 3:
> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC5;
>  		break;
>  	case 2:
>  		mask |= DC_STATE_EN_UPTO_DC6;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 2dce622eb5d8..6f62a4420f6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -727,7 +727,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
>  	mask = DC_STATE_EN_UPTO_DC5;
>  
>  	if (DISPLAY_VER(display) >= 12)
> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
>  	else if (DISPLAY_VER(display) == 11)
>  		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> @@ -977,7 +977,7 @@ static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
>  static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
>  					   struct i915_power_well *power_well)
>  {
> -	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
> +	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC3CO) == 0 &&
>  		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..7e620e22718b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2819,13 +2819,13 @@ enum skl_power_gate {
>  /* GEN9 DC */
>  #define DC_STATE_EN			_MMIO(0x45504)
>  #define  DC_STATE_DISABLE		0
> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>  #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)

This could use a conversion to REG_FIELD_MASK and REG_FIELD_PREP.

>  #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>  
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 73a3101514f3..9f403b7820ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
>  	 * the DMC and requires a DC exit for proper access.
>  	 */
>  	switch (dc_state) {
> -	case DC_STATE_EN_DC3CO:
> +	case DC_STATE_EN_UPTO_DC3CO:
>  		ranges = xe3lpd_dc3co_dmc_ranges;
>  		break;
>  	case DC_STATE_EN_UPTO_DC5:

-- 
Jani Nikula, Intel
