Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B9C4ED88
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 16:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9AC10E5FB;
	Tue, 11 Nov 2025 15:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KAhZxO30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C0610E06C;
 Tue, 11 Nov 2025 15:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762876139; x=1794412139;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bFGev+yuBPHyzsZuRurbzN2mf7PFyfL1V1fsrq6FrMw=;
 b=KAhZxO30n+0D1oxcb9aKqD+UFygUV6bqoLkKfIlsxe0LGs/TOV+aYmR7
 HRr3hE8azXN6io0WJQ9ZZq6QPCLofKfC5peA4N1k0QrIwSW+kf+E3iBNH
 IyNTHJKW1DY4D7EC46tsKp7fHaYrtANeG9gG8s2kaFO5TqvxIYvf6WqJA
 /F+PIpKUVIZHNN1Zn55ds1vdHmabZ81ZKXKwhuI1uF7D6/GUxalWGf4Z9
 dy24EXWHyeNrQF2w1mSUmf9PmfX7MuiM+uWLAnwwU9lz58eNIU1tpEa5V
 9Cl0T6+abeNpH8o/rA57lMz61g+37v/Izk3v0NZD3ltvXiE7S0i++tgC9 g==;
X-CSE-ConnectionGUID: 7MZfcChSQy2Ez3ptoaWSfw==
X-CSE-MsgGUID: pK94vyyQTvG960jO6Mrg2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="82335027"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82335027"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 07:48:59 -0800
X-CSE-ConnectionGUID: wNNzPZdaRHuRjzAvGUJ12g==
X-CSE-MsgGUID: s/bySW57SEaEO95zAxroWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="189419965"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 07:48:56 -0800
Date: Tue, 11 Nov 2025 17:48:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] drm/i915/display: convert the display irq
 interfaces to struct intel_display
Message-ID: <aRNa5nZaax2G3CdA@intel.com>
References: <cover.1762846363.git.jani.nikula@intel.com>
 <7305a91456889f8405e86eca2adfcd301c9ae9e0.1762846363.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7305a91456889f8405e86eca2adfcd301c9ae9e0.1762846363.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Nov 11, 2025 at 09:34:03AM +0200, Jani Nikula wrote:
> Convert the irq/error init/reset interfaces from struct intel_uncore to
> struct intel_display, and drop the dependency on intel_uncore.h.
> 
> Since the intel_de_*() calls handle the DMC wakelock internally, we can
> drop the wrappers handling wakelocks completely.
> 
> v2: Drop the wakelock wrappers (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 184 +++++++-----------
>  1 file changed, 68 insertions(+), 116 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index acfaff13c3ba..2a92ca6c2f82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -19,7 +19,6 @@
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> -#include "intel_dmc_wl.h"
>  #include "intel_dp_aux.h"
>  #include "intel_dsb.h"
>  #include "intel_fdi_regs.h"
> @@ -31,111 +30,71 @@
>  #include "intel_pmdemand.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> -#include "intel_uncore.h"
>  
> -static void irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
> +static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
>  {
> -	intel_uncore_write(uncore, regs.imr, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.imr);
> +	intel_de_write(display, regs.imr, 0xffffffff);
> +	intel_de_posting_read(display, regs.imr);
>  
> -	intel_uncore_write(uncore, regs.ier, 0);
> +	intel_de_write(display, regs.ier, 0);
>  
>  	/* IIR can theoretically queue up two events. Be paranoid. */
> -	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.iir);
> -	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.iir);
> +	intel_de_write(display, regs.iir, 0xffffffff);
> +	intel_de_posting_read(display, regs.iir);
> +	intel_de_write(display, regs.iir, 0xffffffff);
> +	intel_de_posting_read(display, regs.iir);
>  }
>  
>  /*
>   * We should clear IMR at preinstall/uninstall, and just check at postinstall.
>   */
> -static void assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
> +static void assert_iir_is_zero(struct intel_display *display, i915_reg_t reg)
>  {
> -	u32 val = intel_uncore_read(uncore, reg);
> +	u32 val = intel_de_read(display, reg);
>  
>  	if (val == 0)
>  		return;
>  
> -	WARN(1,
> +	drm_WARN(display->drm, 1,
>  		 "Interrupt register 0x%x is not zero: 0x%08x\n",
>  		 i915_mmio_reg_offset(reg), val);
> -	intel_uncore_write(uncore, reg, 0xffffffff);
> -	intel_uncore_posting_read(uncore, reg);
> -	intel_uncore_write(uncore, reg, 0xffffffff);
> -	intel_uncore_posting_read(uncore, reg);
> +	intel_de_write(display, reg, 0xffffffff);
> +	intel_de_posting_read(display, reg);
> +	intel_de_write(display, reg, 0xffffffff);
> +	intel_de_posting_read(display, reg);
>  }
>  
> -static void irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
> +static void irq_init(struct intel_display *display, struct i915_irq_regs regs,
>  		     u32 imr_val, u32 ier_val)
>  {
> -	assert_iir_is_zero(uncore, regs.iir);
> +	assert_iir_is_zero(display, regs.iir);
>  
> -	intel_uncore_write(uncore, regs.ier, ier_val);
> -	intel_uncore_write(uncore, regs.imr, imr_val);
> -	intel_uncore_posting_read(uncore, regs.imr);
> +	intel_de_write(display, regs.ier, ier_val);
> +	intel_de_write(display, regs.imr, imr_val);
> +	intel_de_posting_read(display, regs.imr);
>  }
>  
> -static void error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
> +static void error_reset(struct intel_display *display, struct i915_error_regs regs)
>  {
> -	intel_uncore_write(uncore, regs.emr, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.emr);
> +	intel_de_write(display, regs.emr, 0xffffffff);
> +	intel_de_posting_read(display, regs.emr);
>  
> -	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.eir);
> -	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_de_write(display, regs.eir, 0xffffffff);
> +	intel_de_posting_read(display, regs.eir);
> +	intel_de_write(display, regs.eir, 0xffffffff);
> +	intel_de_posting_read(display, regs.eir);
>  }
>  
> -static void error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
> +static void error_init(struct intel_display *display, struct i915_error_regs regs,
>  		       u32 emr_val)
>  {
> -	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.eir);
> -	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_de_write(display, regs.eir, 0xffffffff);
> +	intel_de_posting_read(display, regs.eir);
> +	intel_de_write(display, regs.eir, 0xffffffff);
> +	intel_de_posting_read(display, regs.eir);
>  
> -	intel_uncore_write(uncore, regs.emr, emr_val);
> -	intel_uncore_posting_read(uncore, regs.emr);
> -}
> -
> -static void
> -intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs regs,
> -			    u32 imr_val, u32 ier_val)
> -{
> -	intel_dmc_wl_get(display, regs.imr);
> -	intel_dmc_wl_get(display, regs.ier);
> -	intel_dmc_wl_get(display, regs.iir);
> -
> -	irq_init(to_intel_uncore(display->drm), regs, imr_val, ier_val);
> -
> -	intel_dmc_wl_put(display, regs.iir);
> -	intel_dmc_wl_put(display, regs.ier);
> -	intel_dmc_wl_put(display, regs.imr);
> -}
> -
> -static void
> -intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs regs)
> -{
> -	intel_dmc_wl_get(display, regs.imr);
> -	intel_dmc_wl_get(display, regs.ier);
> -	intel_dmc_wl_get(display, regs.iir);
> -
> -	irq_reset(to_intel_uncore(display->drm), regs);
> -
> -	intel_dmc_wl_put(display, regs.iir);
> -	intel_dmc_wl_put(display, regs.ier);
> -	intel_dmc_wl_put(display, regs.imr);
> -}
> -
> -static void
> -intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display, i915_reg_t reg)
> -{
> -	intel_dmc_wl_get(display, reg);
> -
> -	assert_iir_is_zero(to_intel_uncore(display->drm), reg);
> -
> -	intel_dmc_wl_put(display, reg);
> +	intel_de_write(display, regs.emr, emr_val);
> +	intel_de_posting_read(display, regs.emr);
>  }
>  
>  struct pipe_fault_handler {
> @@ -1984,14 +1943,14 @@ static void _vlv_display_irq_reset(struct intel_display *display)
>  	else
>  		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
>  
> -	error_reset(to_intel_uncore(display->drm), VLV_ERROR_REGS);
> +	error_reset(display, VLV_ERROR_REGS);
>  
>  	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
>  	intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
>  
>  	i9xx_pipestat_irq_reset(display);
>  
> -	intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
> +	irq_reset(display, VLV_IRQ_REGS);
>  	display->irq.vlv_imr_mask = ~0u;
>  }
>  
> @@ -2079,7 +2038,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
>  			       DPINVGTT_STATUS_MASK_VLV |
>  			       DPINVGTT_EN_MASK_VLV);
>  
> -	error_init(to_intel_uncore(display->drm), VLV_ERROR_REGS, ~vlv_error_mask());
> +	error_init(display, VLV_ERROR_REGS, ~vlv_error_mask());
>  
>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
>  
> @@ -2102,7 +2061,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
>  
>  	display->irq.vlv_imr_mask = ~enable_mask;
>  
> -	intel_display_irq_regs_init(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
> +	irq_init(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
>  }
>  
>  void vlv_display_irq_postinstall(struct intel_display *display)
> @@ -2118,7 +2077,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
>  	if (HAS_PCH_NOP(display))
>  		return;
>  
> -	irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
> +	irq_reset(display, SDE_IRQ_REGS);
>  
>  	if (HAS_PCH_CPT(display) || HAS_PCH_LPT(display))
>  		intel_de_write(display, SERR_INT, 0xffffffff);
> @@ -2126,9 +2085,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
>  
>  void ilk_display_irq_reset(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore = to_intel_uncore(display->drm);
> -
> -	irq_reset(uncore, DE_IRQ_REGS);
> +	irq_reset(display, DE_IRQ_REGS);
>  	display->irq.ilk_de_imr_mask = ~0u;
>  
>  	if (DISPLAY_VER(display) == 7)
> @@ -2155,10 +2112,10 @@ void gen8_display_irq_reset(struct intel_display *display)
>  	for_each_pipe(display, pipe)
>  		if (intel_display_power_is_enabled(display,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
> -	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
> -	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
> +	irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
> +	irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>  
>  	if (HAS_PCH_SPLIT(display))
>  		ibx_display_irq_reset(display);
> @@ -2200,18 +2157,18 @@ void gen11_display_irq_reset(struct intel_display *display)
>  	for_each_pipe(display, pipe)
>  		if (intel_display_power_is_enabled(display,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
> -	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
> -	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
> +	irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
> +	irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>  
>  	if (DISPLAY_VER(display) >= 14)
> -		intel_display_irq_regs_reset(display, PICAINTERRUPT_IRQ_REGS);
> +		irq_reset(display, PICAINTERRUPT_IRQ_REGS);
>  	else
> -		intel_display_irq_regs_reset(display, GEN11_DE_HPD_IRQ_REGS);
> +		irq_reset(display, GEN11_DE_HPD_IRQ_REGS);
>  
>  	if (INTEL_PCH_TYPE(display) >= PCH_ICP)
> -		intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
> +		irq_reset(display, SDE_IRQ_REGS);
>  }
>  
>  void gen8_irq_power_well_post_enable(struct intel_display *display,
> @@ -2230,9 +2187,9 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
>  	}
>  
>  	for_each_pipe_masked(display, pipe, pipe_mask)
> -		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -					    display->irq.de_pipe_imr_mask[pipe],
> -					    ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
> +		irq_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +			 display->irq.de_pipe_imr_mask[pipe],
> +			 ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
>  
>  	spin_unlock_irq(&display->irq.lock);
>  }
> @@ -2251,7 +2208,7 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  	}
>  
>  	for_each_pipe_masked(display, pipe, pipe_mask)
> -		intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +		irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
>  	spin_unlock_irq(&display->irq.lock);
>  
> @@ -2284,7 +2241,7 @@ static void ibx_irq_postinstall(struct intel_display *display)
>  	else
>  		mask = SDE_GMBUS_CPT;
>  
> -	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void valleyview_enable_display_irqs(struct intel_display *display)
> @@ -2350,7 +2307,7 @@ void ilk_de_irq_postinstall(struct intel_display *display)
>  	}
>  
>  	if (display->platform.haswell) {
> -		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
> +		assert_iir_is_zero(display, EDP_PSR_IIR);
>  		display_mask |= DE_EDP_PSR_INT_HSW;
>  	}
>  
> @@ -2361,8 +2318,8 @@ void ilk_de_irq_postinstall(struct intel_display *display)
>  
>  	ibx_irq_postinstall(display);
>  
> -	intel_display_irq_regs_init(display, DE_IRQ_REGS, display->irq.ilk_de_imr_mask,
> -				    display_mask | extra_mask);
> +	irq_init(display, DE_IRQ_REGS, display->irq.ilk_de_imr_mask,
> +		 display_mask | extra_mask);
>  }
>  
>  static void mtp_irq_postinstall(struct intel_display *display);
> @@ -2438,11 +2395,10 @@ void gen8_de_irq_postinstall(struct intel_display *display)
>  			if (!intel_display_power_is_enabled(display, domain))
>  				continue;
>  
> -			intel_display_irq_regs_assert_irr_is_zero(display,
> -								  TRANS_PSR_IIR(display, trans));
> +			assert_iir_is_zero(display, TRANS_PSR_IIR(display, trans));
>  		}
>  	} else {
> -		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
> +		assert_iir_is_zero(display, EDP_PSR_IIR);
>  	}
>  
>  	for_each_pipe(display, pipe) {
> @@ -2450,23 +2406,20 @@ void gen8_de_irq_postinstall(struct intel_display *display)
>  
>  		if (intel_display_power_is_enabled(display,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -						    display->irq.de_pipe_imr_mask[pipe],
> -						    de_pipe_enables);
> +			irq_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +				 display->irq.de_pipe_imr_mask[pipe],
> +				 de_pipe_enables);
>  	}
>  
> -	intel_display_irq_regs_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked,
> -				    de_port_enables);
> -	intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked,
> -				    de_misc_masked);
> +	irq_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
> +	irq_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
>  
>  	if (IS_DISPLAY_VER(display, 11, 13)) {
>  		u32 de_hpd_masked = 0;
>  		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
>  
> -		intel_display_irq_regs_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
> -					    de_hpd_enables);
> +		irq_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked, de_hpd_enables);
>  	}
>  }
>  
> @@ -2477,17 +2430,16 @@ static void mtp_irq_postinstall(struct intel_display *display)
>  	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>  			     XELPDP_TBT_HOTPLUG_MASK;
>  
> -	intel_display_irq_regs_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
> -				    de_hpd_enables);
> +	irq_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask, de_hpd_enables);
>  
> -	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
> +	irq_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>  }
>  
>  static void icp_irq_postinstall(struct intel_display *display)
>  {
>  	u32 mask = SDE_GMBUS_ICP;
>  
> -	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void gen11_de_irq_postinstall(struct intel_display *display)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
