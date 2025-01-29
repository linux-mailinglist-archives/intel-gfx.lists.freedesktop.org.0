Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41268A21F71
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8648010E0F4;
	Wed, 29 Jan 2025 14:44:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A0z3Zk8g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F4810E0F4;
 Wed, 29 Jan 2025 14:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738161891; x=1769697891;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Btq6WeODg/aknd4+mfOkKwBseEtwTHRc5+ylhqXOtj0=;
 b=A0z3Zk8g1kXrNg+LRjcdtzwguI1Zvann2pHHQihMNAnou/NseKVwxuzp
 8NfcD69TLMTKiYIQJbjolXMxA8gi7nldp+Uxj9Rz6UfD67VxRwk2S6b+F
 zGs/QfTlWPJMa3vVNuzCUjEIj7rToPJGxBP0JHsM5b3s2ydbXLZFd/IO4
 MwybI+/5aAoACG/uME1oQbPP67VnPBfiMx/NuWBCGarP91Gf2Ki8bgT+w
 1bxc2Dqya4/qHuo+fjJQKE7TeK1bVHi10rBE8DHgDotAX+0LUopKmMdhA
 SvV4lMpozxZ9j1Kiq5rPcUlulHzFmQSpRsOiSHj6w8YIjlH7D+Nv3aFj3 A==;
X-CSE-ConnectionGUID: UeL6I5rFSDu1wiaPX5o+kA==
X-CSE-MsgGUID: mTXwyvt+R4il2nmG5T9CAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="56103499"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="56103499"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:44:49 -0800
X-CSE-ConnectionGUID: b2SFWGjDRCeKh5h6hbv/HA==
X-CSE-MsgGUID: ZcIwTUgsSEG2Fefqt6pdtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132317689"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:44:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Allow display PHYs to reset power
 state
In-Reply-To: <20250129130105.198817-3-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129130105.198817-1-mika.kahola@intel.com>
 <20250129130105.198817-3-mika.kahola@intel.com>
Date: Wed, 29 Jan 2025 16:44:44 +0200
Message-ID: <87r04l8ysj.fsf@intel.com>
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

On Wed, 29 Jan 2025, Mika Kahola <mika.kahola@intel.com> wrote:
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
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 35 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
>  .../drm/i915/display/intel_display_reset.c    |  2 ++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 ++
>  4 files changed, 40 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index bffe3d4bbe8b..0bd74e899221 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3559,3 +3559,38 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  	else
>  		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
>  }
> +
> +/*
> + * WA 14022081154
> + * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
> + * system power. After a system reset (cold boot, S3/4/5, warm reset) if a dedicated
> + * PHY is not being brought up shortly, use these steps to move the PHY to the lowest
> + * power state to save power.
> + *
> + * 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
> + *    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
> + *    to the Disable state.
> + * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
> + */
> +void wa_14022081154(struct intel_display *display)

Please do not name functions like this. There's zero indication what
this is about. You're adding a long comment what's going on, surely you
can name the function accordingly?

> +{
> +	struct intel_encoder *encoder;
> +	u32 val;
> +
> +	if (DISPLAY_VER(display) < 30)
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		if (encoder->port == PORT_A || encoder->port == PORT_B) {
> +			val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
> +
> +			if (REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val) == XELPDP_DDI_CLOCK_SELECT_NONE) {
> +				struct intel_cx0pll_state pll_state = {};
> +				int port_clock = 162000;
> +				intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);
> +				__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> +				intel_cx0pll_disable(encoder);
> +			}
> +		}
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 573fa7d3e88f..abebe7fd2cf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +void wa_14022081154(struct intel_display *display);
>  
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 093b386c95e8..93b2697a0876 100644
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
> +		wa_14022081154(display);

Contrast with intel_pps_unlock_regs_wa() call above.

>  		intel_hpd_init(i915);
>  
>  		ret = __intel_display_driver_resume(display, state, ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b8fa04d3cd5c..76394411dd7a 100644
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
> +	wa_14022081154(&i915->display);

Contrast with adlp_cmtg_clock_gating_wa() above.

Imagine all of these were wa_32148191827(), wa_650914334(),
wa_134174341(), etc. It's fine for compilers, not for humans.

>  
>  	if (pll->active_mask)
>  		return;

-- 
Jani Nikula, Intel
