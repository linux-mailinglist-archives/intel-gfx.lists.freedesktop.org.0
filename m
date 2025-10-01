Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25782BAFDEE
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 11:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 978B110E356;
	Wed,  1 Oct 2025 09:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Abap7vDW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E5110E33C;
 Wed,  1 Oct 2025 09:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759311203; x=1790847203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hvjjVWqEgj5dUgPW86XrckN759h5L/LeoDtNrai2344=;
 b=Abap7vDWi3e6GcU83uKOiweu3lV/lO7IdiMx8UL60n3GU6ztaoI4+XLP
 tHlIyiC6b94mk4zFKk3StY8OFUxmoFn/i+FR65MY7/kq5vKSU0XmWtJMu
 Bg78Ugj3XSyZpfbqnzfEW5W68zLNfdJi2xb9BXPzs3PLNPmtgUEdAVq4i
 r0x/zTMgMScjub8QwWMarc6wT2i9smKPtLap9TzwMCOYm009Zyt3+u+Te
 YgwVL7EL7VTQA/Z66EpKz/ivzFpWzd9/Kej+drAkz1epgECplBV7JaK4l
 jEb5r+toBWxwnk+q2HDDyv47xqMkCAYgT6c4V3eSVszLMI3WtGp30fUtY g==;
X-CSE-ConnectionGUID: zQoVNqmuRJW8kzxlxGqQfw==
X-CSE-MsgGUID: zv3rMgvJQFSyyf6nWvG4mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72196636"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="72196636"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:33:23 -0700
X-CSE-ConnectionGUID: L++RyB7OTdS3N4noMSZyLg==
X-CSE-MsgGUID: tRV7EoB3Sgqf7dYeUft4Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="215873345"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:33:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [RFC PATCH 30/39] drm/i915/display: Add .dump_hw_state
In-Reply-To: <20251001082839.2585559-31-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-31-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 12:33:17 +0300
Message-ID: <013ab1ae0abcc2b91633965acdeea438b34a6a0b@intel.com>
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> Add .dump_hw_state function pointer for MTL+ platforms
> to support dpll framework. While at it, switch to use
> drm_printer structure to print hw state information.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 68 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 ++
>  4 files changed, 45 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f0cba843fed1..ec91186848d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2302,7 +2302,7 @@ static void intel_c10_pll_program(struct intel_display *display,
>  	intel_c10_msgbus_update_config(encoder, INTEL_CX0_LANE0, true);
>  }
>  
> -static void intel_c10pll_dump_hw_state(struct intel_display *display,
> +static void intel_c10pll_dump_hw_state(struct drm_printer *p,
>  				       const struct intel_c10pll_state *hw_state)
>  {
>  	bool fracen;
> @@ -2311,33 +2311,33 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
>  	unsigned int multiplier, tx_clk_div;
>  
>  	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
> -		    hw_state->clock, str_yes_no(fracen));
> +	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
> +		   hw_state->clock, str_yes_no(fracen));
>  
>  	if (fracen) {
>  		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
>  		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
>  		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
> -		drm_dbg_kms(display->drm, "quot: %u, rem: %u, den: %u,\n",
> -			    frac_quot, frac_rem, frac_den);
> +		drm_printf(p, "quot: %u, rem: %u, den: %u,\n",
> +			   frac_quot, frac_rem, frac_den);
>  	}
>  
>  	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
>  		      hw_state->pll[2]) / 2 + 16;
>  	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
> -	drm_dbg_kms(display->drm,
> -		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
> +	drm_printf(p,
> +		   "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
>  
> -	drm_dbg_kms(display->drm, "c10pll_rawhw_state:");
> -	drm_dbg_kms(display->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
> -		    hw_state->cmn);
> +	drm_printf(p, "c10pll_rawhw_state:");
> +	drm_printf(p, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
> +		   hw_state->cmn);
>  
>  	BUILD_BUG_ON(ARRAY_SIZE(hw_state->pll) % 4);
>  	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
> -		drm_dbg_kms(display->drm,
> -			    "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
> -			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> -			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> +		drm_printf(p,
> +			   "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
> +			   i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> +			   i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
>  /*
> @@ -2832,46 +2832,46 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
>  }
>  
> -static void intel_c20pll_dump_hw_state(struct intel_display *display,
> +static void intel_c20pll_dump_hw_state(struct drm_printer *p,
>  				       const struct intel_c20pll_state *hw_state)
>  {
>  	int i;
>  
> -	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
> -	drm_dbg_kms(display->drm,
> -		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
> -		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> -	drm_dbg_kms(display->drm,
> -		    "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
> -		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
> +	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
> +	drm_printf(p,
> +		   "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
> +		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> +	drm_printf(p,
> +		   "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
> +		   hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
>  
>  	if (intel_c20phy_use_mpllb(hw_state)) {
>  		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> -			drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i,
> -				    hw_state->mpllb[i]);
> +			drm_printf(p, "mpllb[%d] = 0x%.4x\n", i,
> +				   hw_state->mpllb[i]);
>  	} else {
>  		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> -			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
> -				    hw_state->mplla[i]);
> +			drm_printf(p, "mplla[%d] = 0x%.4x\n", i,
> +				   hw_state->mplla[i]);
>  
>  		/* For full coverage, also print the additional PLL B entry. */
>  		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));
> -		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> +		drm_printf(p, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
>  	}
>  }
>  
> -void intel_cx0pll_dump_hw_state(struct intel_display *display,
> +void intel_cx0pll_dump_hw_state(struct drm_printer *p,
>  				const struct intel_cx0pll_state *hw_state)
>  {
> -	drm_dbg_kms(display->drm,
> -		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
> -		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> -		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
> +	drm_printf(p,
> +		   "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
> +		   hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> +		   str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
>  
>  	if (hw_state->use_c10)
> -		intel_c10pll_dump_hw_state(display, &hw_state->c10);
> +		intel_c10pll_dump_hw_state(p, &hw_state->c10);
>  	else
> -		intel_c20pll_dump_hw_state(display, &hw_state->c20);
> +		intel_c20pll_dump_hw_state(p, &hw_state->c20);
>  }
>  
>  static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 7b88c3fe9de1..3d0073153463 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_CX0_PHY_H__
>  #define __INTEL_CX0_PHY_H__
>  
> +#include <drm/drm_print.h>

Please dont include headers from headers when a simple forward
declaration will do.

BR,
Jani.

>  #include <linux/types.h>
>  
>  enum icl_port_dpll_id;
> @@ -36,7 +37,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state);
>  
> -void intel_cx0pll_dump_hw_state(struct intel_display *display,
> +void intel_cx0pll_dump_hw_state(struct drm_printer *p,
>  				const struct intel_cx0pll_state *hw_state);
>  bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  				   const struct intel_cx0pll_state *b);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b57efd870774..1b3e6ccd8e37 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4939,15 +4939,14 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
>  			    const struct intel_cx0pll_state *a,
>  			    const struct intel_cx0pll_state *b)
>  {
> -	struct intel_display *display = to_intel_display(crtc);
>  	char *chipname = a->use_c10 ? "C10" : "C20";
>  
>  	pipe_config_mismatch(p, fastset, crtc, name, chipname);
>  
>  	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(display, a);
> +	intel_cx0pll_dump_hw_state(p, a);
>  	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(display, b);
> +	intel_cx0pll_dump_hw_state(p, b);
>  }
>  
>  static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 617139c6e3eb..3e27cc0004d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4426,6 +4426,12 @@ static int mtl_compute_dplls(struct intel_atomic_state *state,
>  		return mtl_compute_c20phy_dplls(state, crtc, encoder);
>  }
>  
> +static void mtl_dump_hw_state(struct drm_printer *p,
> +			      const struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	intel_cx0pll_dump_hw_state(p, &dpll_hw_state->cx0pll);
> +}
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr = {
>  	.dpll_info = mtl_plls,
> @@ -4434,6 +4440,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
>  	.put_dplls = icl_put_dplls,
>  	.update_active_dpll = icl_update_active_dpll,
>  	.update_ref_clks = icl_update_dpll_ref_clks,
> +	.dump_hw_state = mtl_dump_hw_state,
>  };
>  
>  /**

-- 
Jani Nikula, Intel
