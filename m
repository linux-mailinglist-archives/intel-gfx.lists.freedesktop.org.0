Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA31A03AE5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 10:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01BD10E3B9;
	Tue,  7 Jan 2025 09:16:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NT0EC8Lq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E227110E39E;
 Tue,  7 Jan 2025 09:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736241376; x=1767777376;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=GvT/10eAwKyap5NV+xkH22/EX6VosAFJ3F21rXca8Xs=;
 b=NT0EC8LqWgem7WEE5chuXYv66hcI8l+vq83YZ1j2YlVGu5qhIhPf8Mma
 9IqkqgUNw276qC8S25b4l/qJNds8EAFw65lo+rJOOT0PNfqWrwaKA4w4j
 YuLu5i39q5mO44bKomb98ld5aDsZoImazDW2n33gmTUGqVwnPfYbvqZhe
 6G/VMOePJmsHRrHz4COcOy3Sh2kyqpRnOf7HhXr/Py6zJ1+mXp+MfdMha
 j8DjRHzq4QbvGmf0yMulvt4Up3L46/eBDestZFYi4YlaKlTf005WZ5x1+
 Qqcc3Wg73FPAd2ZPpsR3ACUGHhiFgGZzKlJbtf0krdXWWiaGzaRTlQbFD A==;
X-CSE-ConnectionGUID: 8n419R6TS5qT5Aco1wqVIA==
X-CSE-MsgGUID: UiGSJmBeSAWGs/DSSzZfGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="40183861"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="40183861"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:16:16 -0800
X-CSE-ConnectionGUID: iTVncLDlTQqnQ78+11cE/A==
X-CSE-MsgGUID: 3vi05Sb7Qd+m0chJg2fltA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="133566511"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:16:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/display: Wrap IRQ-specific uncore functions
In-Reply-To: <20250103174223.58140-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250103174223.58140-1-gustavo.sousa@intel.com>
 <20250103174223.58140-3-gustavo.sousa@intel.com>
Date: Tue, 07 Jan 2025 11:16:08 +0200
Message-ID: <878qrnm1bb.fsf@intel.com>
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

On Fri, 03 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> The current display IRQ code calls some IRQ-specific helpers that use
> intel_uncore_*() MMIO functions instead of the display-specific ones.
> Wrap those helpers in intel_de.h and use them to ensure that the proper
> display-specific hooks (currently only DMC wakelock handling) are
> called.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_de.h       | 43 ++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.c  | 85 +++++++++----------
>  2 files changed, 83 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index b7399e9d11cc..151126ab6dad 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_DE_H__
>  #define __INTEL_DE_H__
>  
> +#include "i915_irq.h"
>  #include "intel_display_conversion.h"
>  #include "intel_display_core.h"
>  #include "intel_dmc_wl.h"
> @@ -246,4 +247,46 @@ intel_de_write_dsb(struct intel_display *display, struct intel_dsb *dsb,
>  		intel_de_write_fw(display, reg, val);
>  }
>  
> +/*
> + * Functions to handle IRQ registers (intel_de_irq_*).
> + */
> +static inline void
> +intel_de_irq_init(struct intel_display *display, struct i915_irq_regs regs,
> +		  u32 imr_val, u32 ier_val)
> +{
> +	intel_dmc_wl_get(display, regs.imr);
> +	intel_dmc_wl_get(display, regs.ier);
> +	intel_dmc_wl_get(display, regs.iir);
> +
> +	gen2_irq_init(__to_uncore(display), regs, imr_val, ier_val);
> +
> +	intel_dmc_wl_put(display, regs.iir);
> +	intel_dmc_wl_put(display, regs.ier);
> +	intel_dmc_wl_put(display, regs.imr);
> +}
> +
> +static inline void
> +intel_de_irq_reset(struct intel_display *display, struct i915_irq_regs regs)
> +{
> +	intel_dmc_wl_get(display, regs.imr);
> +	intel_dmc_wl_get(display, regs.ier);
> +	intel_dmc_wl_get(display, regs.iir);
> +
> +	gen2_irq_reset(__to_uncore(display), regs);
> +
> +	intel_dmc_wl_put(display, regs.iir);
> +	intel_dmc_wl_put(display, regs.ier);
> +	intel_dmc_wl_put(display, regs.imr);
> +}
> +
> +static inline void
> +intel_de_irq_assert_irr_is_zero(struct intel_display *display, i915_reg_t reg)
> +{
> +	intel_dmc_wl_get(display, reg);
> +
> +	gen2_assert_iir_is_zero(__to_uncore(display), reg);
> +
> +	intel_dmc_wl_put(display, reg);
> +}
> +

I don't think intel_de_irq_* belong in this file. They're more about
*irq* than DE register access. I think intel_display_irq.c is the better
location, and I guess they can be static there.

Moreover, I don't like everyone including intel_de.h also including
i915_irq.h by proxy.


BR,
Jani.


>  #endif /* __INTEL_DE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 9662368a651d..ec7af00739ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1498,7 +1498,6 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_display *display = &dev_priv->display;
> -	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	if (IS_CHERRYVIEW(dev_priv))
>  		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
> @@ -1510,7 +1509,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> -	gen2_irq_reset(uncore, VLV_IRQ_REGS);
> +	intel_de_irq_reset(display, VLV_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> @@ -1534,8 +1533,7 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915)
>  
>  void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -
> +	struct intel_display *display = &dev_priv->display;
>  	u32 pipestat_mask;
>  	u32 enable_mask;
>  	enum pipe pipe;
> @@ -1563,13 +1561,12 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	dev_priv->irq_mask = ~enable_mask;
>  
> -	gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
> +	intel_de_irq_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  }
>  
>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_display *display = &dev_priv->display;
> -	struct intel_uncore *uncore = &dev_priv->uncore;
>  	enum pipe pipe;
>  
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -1581,16 +1578,15 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
> -	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> -	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> +	intel_de_irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
> +	intel_de_irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>  }
>  
>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_display *display = &dev_priv->display;
> -	struct intel_uncore *uncore = &dev_priv->uncore;
>  	enum pipe pipe;
>  	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
> @@ -1625,24 +1621,24 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
> -	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> -	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> +	intel_de_irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
> +	intel_de_irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
> +		intel_de_irq_reset(display, PICAINTERRUPT_IRQ_REGS);
>  	else
> -		gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
> +		intel_de_irq_reset(display, GEN11_DE_HPD_IRQ_REGS);
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -		gen2_irq_reset(uncore, SDE_IRQ_REGS);
> +		intel_de_irq_reset(display, SDE_IRQ_REGS);
>  }
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> +	struct intel_display *display = &dev_priv->display;
>  	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
> @@ -1655,9 +1651,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -			      dev_priv->display.irq.de_irq_mask[pipe],
> -			      ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
> +		intel_de_irq_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +				  dev_priv->display.irq.de_irq_mask[pipe],
> +				  ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
>  
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
> @@ -1665,7 +1661,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> +	struct intel_display *display = &dev_priv->display;
>  	enum pipe pipe;
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> @@ -1676,7 +1672,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +		intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
> @@ -1697,7 +1693,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>   */
>  static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> +	struct intel_display *display = &dev_priv->display;
>  	u32 mask;
>  
>  	if (HAS_PCH_NOP(dev_priv))
> @@ -1710,7 +1706,7 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>  	else
>  		mask = SDE_GMBUS_CPT;
>  
> -	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	intel_de_irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> @@ -1743,7 +1739,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>  
>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  {
> -	struct intel_uncore *uncore = &i915->uncore;
> +	struct intel_display *display = &i915->display;
>  	u32 display_mask, extra_mask;
>  
>  	if (DISPLAY_VER(i915) >= 7) {
> @@ -1767,7 +1763,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  	}
>  
>  	if (IS_HASWELL(i915)) {
> -		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> +		intel_de_irq_assert_irr_is_zero(display, EDP_PSR_IIR);
>  		display_mask |= DE_EDP_PSR_INT_HSW;
>  	}
>  
> @@ -1778,8 +1774,8 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  
>  	ibx_irq_postinstall(i915);
>  
> -	gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
> -		      display_mask | extra_mask);
> +	intel_de_irq_init(display, DE_IRQ_REGS, i915->irq_mask,
> +			  display_mask | extra_mask);
>  }
>  
>  static void mtp_irq_postinstall(struct drm_i915_private *i915);
> @@ -1788,7 +1784,6 @@ static void icp_irq_postinstall(struct drm_i915_private *i915);
>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_display *display = &dev_priv->display;
> -	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
>  		GEN8_PIPE_CDCLK_CRC_DONE;
> @@ -1854,11 +1849,11 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
>  
> -			gen2_assert_iir_is_zero(uncore,
> -						TRANS_PSR_IIR(dev_priv, trans));
> +			intel_de_irq_assert_irr_is_zero(display,
> +							TRANS_PSR_IIR(dev_priv, trans));
>  		}
>  	} else {
> -		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> +		intel_de_irq_assert_irr_is_zero(display, EDP_PSR_IIR);
>  	}
>  
>  	for_each_pipe(dev_priv, pipe) {
> @@ -1866,44 +1861,44 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -				      dev_priv->display.irq.de_irq_mask[pipe],
> -				      de_pipe_enables);
> +			intel_de_irq_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +					  dev_priv->display.irq.de_irq_mask[pipe],
> +					  de_pipe_enables);
>  	}
>  
> -	gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
> -	gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
> +	intel_de_irq_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
> +	intel_de_irq_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
>  
>  	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>  		u32 de_hpd_masked = 0;
>  		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
>  
> -		gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
> -			      de_hpd_enables);
> +		intel_de_irq_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
> +				  de_hpd_enables);
>  	}
>  }
>  
>  static void mtp_irq_postinstall(struct drm_i915_private *i915)
>  {
> -	struct intel_uncore *uncore = &i915->uncore;
> +	struct intel_display *display = &i915->display;
>  	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
>  	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
>  	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>  			     XELPDP_TBT_HOTPLUG_MASK;
>  
> -	gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
> -		      de_hpd_enables);
> +	intel_de_irq_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
> +			  de_hpd_enables);
>  
> -	gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
> +	intel_de_irq_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>  }
>  
>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> +	struct intel_display *display = &dev_priv->display;
>  	u32 mask = SDE_GMBUS_ICP;
>  
> -	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	intel_de_irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)

-- 
Jani Nikula, Intel
