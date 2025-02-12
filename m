Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF00A32896
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41AA10E8CA;
	Wed, 12 Feb 2025 14:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHEy8FU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E7510E8C8;
 Wed, 12 Feb 2025 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739371056; x=1770907056;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2BeOlzUj1/v4z7v8DPVGNeJk/q11K2ijBZ4Lf8S+4fQ=;
 b=PHEy8FU3PxKOXAzRLg8Q8x51BlChf3fI+vwXvyC+Qte6kzH424V5wty9
 w9RKSUPufCzJVzp7/kutYHTTPseUsGbDxXZtG+FKtNIIO5Y3WbRz3YEF0
 8mQJntGmEBOueMatqct0RSGc9o/HVZP61O3E1gQ1MJ7yQZnrF7MLskVCC
 XTvgUeT/ggkSqsgjeczZtfMspZj9tw7e0vaOaQTxon23X/5e+l4+0JZD7
 JI5RTZJWqrqMp9YxeQ9qjLSRIiQb83Kr5TjrxjOvuiWvu6Orh/iZ8YcOY
 LAgaGMtkX8EhYG3AQbnwwbtdnwELGJf/MfM9QEjsXtkMc8w6r8HKw8Lsx Q==;
X-CSE-ConnectionGUID: KpDrFlPfQF2hdjS0VJwOhQ==
X-CSE-MsgGUID: vORzcT5lRn+lP3wxYM8x9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="65385448"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="65385448"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:37:36 -0800
X-CSE-ConnectionGUID: qTSohPQPSsq4+Ca83yMevA==
X-CSE-MsgGUID: mafaTV3STB+IciJCpb838g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150024252"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:37:35 -0800
Date: Wed, 12 Feb 2025 16:38:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Message-ID: <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
 <20250204105358.284687-3-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204105358.284687-3-mika.kahola@intel.com>
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

On Tue, Feb 04, 2025 at 12:53:58PM +0200, Mika Kahola wrote:
> The dedicated display PHYs reset to a power state that blocks S0ix,
> increasing idle system power. After a system reset (cold boot,
> S3/4/5, warm reset) if a dedicated PHY is not being brought up
> shortly, use these steps to move the PHY to the lowest power state
> to save power.
> 
> 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
>    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
>    to the Disable state.
> 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
> 
> v2: Rename WA function to more descriptive (Jani)
>     For PTL, only port A needs this wa
>     Add helpers to check presence of C10 phy and pll enabling (Imre)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 45 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
>  .../drm/i915/display/intel_display_reset.c    |  2 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +
>  4 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index bffe3d4bbe8b..bd33ebb8c71e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3559,3 +3559,48 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  	else
>  		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
>  }
> +
> +static bool intel_cx0_pll_is_enabled(struct intel_display *display, enum port port)
> +{
> +	u32 val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, port));
> +
> +	if (REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val) == XELPDP_DDI_CLOCK_SELECT_NONE)
> +		return false;

Shouldn't this check if the PLL request for either lane is set in
XELPDP_PORT_CLOCK_CTL? AFAICS that's what actually enables the PLL,
while the above is just some configuration.

> +
> +	return true;
> +}
> +/*
> + * WA 14022081154
> + * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
> + * system power. After a system reset (cold boot, S3/4/5, warm reset) if a dedicated
> + * PHY is not being brought up shortly, use these steps to move the PHY to the lowest
> + * power state to save power. For PTL the workaround is needed only for port A. Port B
> + * is not connected.
> + *
> + * 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
> + *    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
> + *    to the Disable state.
> + * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
> + */
> +void ptl_power_save_wa(struct intel_display *display)

I'd call it intel_cx0_pll_power_save_wa() following the naming rule for
exported functions.

> +{
> +	struct intel_encoder *encoder;
> +
> +	if (DISPLAY_VER(display) != 30)
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		struct intel_cx0pll_state pll_state = {};
> +		int port_clock = 162000;
> +
> +		if (!intel_encoder_is_c10phy(encoder))
> +			continue;
> +
> +		if (intel_cx0_pll_is_enabled(display, encoder->port))
> +			continue;
> +
> +		intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);
> +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> +		intel_cx0pll_disable(encoder);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 573fa7d3e88f..06346e4c5079 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +void ptl_power_save_wa(struct intel_display *display);
>  
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 093b386c95e8..b75827ff9c7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -7,6 +7,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_reset.h"
>  #include "intel_display_types.h"
> @@ -116,6 +117,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
>  		intel_pps_unlock_regs_wa(display);
>  		intel_display_driver_init_hw(display);
>  		intel_clock_gating_init(i915);
> +		ptl_power_save_wa(display);
>  		intel_hpd_init(i915);
>  
>  		ret = __intel_display_driver_resume(display, state, ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b8fa04d3cd5c..24893d2f79e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -27,6 +27,7 @@
>  #include "bxt_dpio_phy_regs.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dkl_phy.h"
> @@ -4552,6 +4553,7 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
>  		return;
>  
>  	adlp_cmtg_clock_gating_wa(i915, pll);
> +	ptl_power_save_wa(&i915->display);

The WA is applied if the PLL is not on, so at least logically it should
be applied before the !pll->on check above.

>  
>  	if (pll->active_mask)
>  		return;
> -- 
> 2.43.0
> 
