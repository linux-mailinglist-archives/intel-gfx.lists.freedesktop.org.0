Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FF3A3BA68
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 10:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086DB10E7A2;
	Wed, 19 Feb 2025 09:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jdkIDBfB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78EE10E26C;
 Wed, 19 Feb 2025 09:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739958138; x=1771494138;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=vZ5ThLa+M4CJiXonwLYJj62pr2wd7Rplh1Qi71ipHtE=;
 b=jdkIDBfBQDf2SmZ6+Dtu8R477FTTZtGK3pBl4dC0JEe6+mlnrZRftCu4
 4yleNiyDGH5skbSFf3qFgaGYnzqDCWMiCGQMQWockJwleGqFPo2Kge4Gp
 MqDqCl5PE4jRHcGAlpVWsFwgJzDg0w3ci0o/Qa/fv/8xBmMb8rqUf+yVj
 cf/a0IH/FbjxpyxwFp4u1je+jOWFziKqiu54vfW+3oFqHMVbX6i5z9p5z
 I5GpD9ffcUZI+/HDNqO4YHt8BZ26VZnpeoinKmeFvNISR3TsBCRTColZ8
 f/kyA7URO4NPsoKMeMEtrU2UqKnLHnY8DW072rqSqjikA16UZJw8flG9t A==;
X-CSE-ConnectionGUID: sQZoBY23Q1KxWxMQPVaRGA==
X-CSE-MsgGUID: lGadq0EURuK900lU5kzajg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51667482"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="51667482"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 01:42:18 -0800
X-CSE-ConnectionGUID: UaRn6aBiQzu1PUwnMn/8mw==
X-CSE-MsgGUID: +NP8YHU7SlmrV/ng7/C5nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="119602521"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 01:42:16 -0800
Date: Wed, 19 Feb 2025 11:43:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v5 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Message-ID: <Z7WnsmT2ZXuXxequ@ideak-desk.fi.intel.com>
References: <20250218100019.740556-1-mika.kahola@intel.com>
 <20250218100019.740556-3-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218100019.740556-3-mika.kahola@intel.com>
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

On Tue, Feb 18, 2025 at 12:00:19PM +0200, Mika Kahola wrote:
> The dedicated display PHYs reset to a power state that blocks S0ix,
> increasing idle system power. After a system reset (cold boot,
> S3/4/5, warm reset) if a dedicated PHY is not being brought up
> shortly, use these steps to move the PHY to the lowest power state
> to save power.
> 
> 1. Follow the PLL Enable Sequence, using any valid frequency such
>    as DP 1.62 GHz. This brings lanes out of reset and enables the
>    PLL to allow powerdown to be moved to the Disable state.
> 2. Follow PLL Disable Sequence. This moves powerdown to the Disable
>    state and disables the PLL.
> 
> v2: Rename WA function to more descriptive (Jani)
>     For PTL, only port A needs this wa
>     Add helpers to check presence of C10 phy and pll enabling (Imre)
> v3: Rename wa function (Imre)
>     Check return value of C10 pll tables readout (Imre)
>     Use PLL request to check pll enabling (Imre)
> v4: Move intel_cx0_pll_is_enabled() right after
>     intel_cx0_pll_disable() (Imre)
>     Add drm_WARN_ON() if C10 state cannot be calculated from
>     the tables (Imre)
> v5: Add debug message on PLL enabling (Imre)
>     Add check for intel_encoder_is_dig_port() (Imre)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 61 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
>  .../drm/i915/display/intel_display_reset.c    |  2 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  3 +
>  4 files changed, 67 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8d6fd3f1ac13..22595766eac5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3294,6 +3294,16 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> +static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	u8 lane = dig_port->lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LANE0;
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
> +			     intel_cx0_get_pclk_pll_request(lane);
> +}
> +
>  static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -3555,3 +3565,54 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  	else
>  		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
>  }
> +
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
> +void intel_cx0_pll_power_save_wa(struct intel_display *display)
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
> +		if (!intel_encoder_is_dig_port(encoder))
> +			continue;
> +
> +		if (!intel_encoder_is_c10phy(encoder))
> +			continue;
> +
> +		if (intel_cx0_pll_is_enabled(encoder))
> +			continue;
> +
> +		if (intel_c10pll_calc_state_from_table(encoder,
> +						       mtl_c10_edp_tables,
> +						       true, port_clock,
> +						       &pll_state) < 0) {
> +			drm_WARN_ON(display->drm,
> +				    "Unable to calc C10 state from the tables\n");
> +			continue;
> +		}
> +
> +		drm_dbg_kms(display->drm,
> +			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
> +			    encoder->base.base.id, encoder->base.name);
> +
> +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> +		intel_cx0pll_disable(encoder);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 573fa7d3e88f..a8f811ca5e7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +void intel_cx0_pll_power_save_wa(struct intel_display *display);
>  
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 093b386c95e8..a690968885bf 100644
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
> +		intel_cx0_pll_power_save_wa(display);
>  		intel_hpd_init(i915);
>  
>  		ret = __intel_display_driver_resume(display, state, ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index eb3df25a308c..c825a507b905 100644
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
> @@ -4571,6 +4572,8 @@ void intel_dpll_sanitize_state(struct intel_display *display)
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> +	intel_cx0_pll_power_save_wa(display);
> +
>  	for_each_shared_dpll(display, pll, i)
>  		sanitize_dpll_state(display, pll);
>  }
> -- 
> 2.43.0
> 
