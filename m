Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFEA105A6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 12:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3141210E1AA;
	Tue, 14 Jan 2025 11:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ak+GRsPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E03D10E1AA;
 Tue, 14 Jan 2025 11:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736854823; x=1768390823;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PbZMgRbNQCF/I4NTFX+KGe1LJE5rRMFWqSHTYCFKjIU=;
 b=Ak+GRsPXpcrrALetSKqldN1HMkpolfc6uUNtpiM/nSwoZKYpkMRhl9oE
 PsiabXY3z7QnrjZdbYasoKnc6Fe0k4PRibOxVGu0F8X9Z5ExgY+6P9b7V
 6b+aVCg6o+5IMxVkIDMb+aHUrpB/mIXOaw20G/ks3Jl+MVKDVt9zEjRLX
 8ylWFZeT4/ULxN++sbyWmb/8Bowjc1Fkjm4n0xAlqlfsPSPrJkaJxzJk7
 J7xU7b0mNonWWNkF0srl9TydiZL7HkbMHHddv7xEnHVcCfsLH/AuX9wQg
 Gea8kBHSEZy5iQRx2kTuOepJVprC1x5j8AlAX5Ge8zT2eluJbhZaUIDwb w==;
X-CSE-ConnectionGUID: e/yWEifKTy6xZB0VXvdpOg==
X-CSE-MsgGUID: jKX5pJSgRGmhBK40p1OCEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47811500"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="47811500"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 03:40:23 -0800
X-CSE-ConnectionGUID: mRM3gmhjSH26gMJ1cnFV0w==
X-CSE-MsgGUID: osmfNHSWTzKunhbWB5qnmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="104723837"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 03:40:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 2/3] drm/i915/display: Wrap IRQ-specific uncore
 functions
In-Reply-To: <173685220000.2823.11165630050587382291@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <20250113204306.112266-3-gustavo.sousa@intel.com>
 <87v7uhhg8n.fsf@intel.com>
 <173685220000.2823.11165630050587382291@intel.com>
Date: Tue, 14 Jan 2025 13:40:18 +0200
Message-ID: <87plkphbdp.fsf@intel.com>
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

On Tue, 14 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-01-14 06:55:20-03:00)
>>On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> The current display IRQ code calls some IRQ-specific helpers that use
>>> intel_uncore_*() MMIO functions instead of the display-specific ones.
>>> Wrap those helpers to ensure that the proper display-specific hooks
>>> (currently only DMC wakelock handling) are called.
>>>
>>> v2:
>>>  - Move functions to intel_display_irq.c instead of having them in
>>>    intel_de.h. (Jani)
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  .../gpu/drm/i915/display/intel_display_irq.c  | 128 ++++++++++++------
>>>  1 file changed, 83 insertions(+), 45 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> index 9662368a651d..d9734fcd0d45 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> @@ -15,6 +15,7 @@
>>>  #include "intel_display_irq.h"
>>>  #include "intel_display_trace.h"
>>>  #include "intel_display_types.h"
>>> +#include "intel_dmc_wl.h"
>>>  #include "intel_dp_aux.h"
>>>  #include "intel_dsb.h"
>>>  #include "intel_fdi_regs.h"
>>> @@ -25,6 +26,46 @@
>>>  #include "intel_pmdemand.h"
>>>  #include "intel_psr.h"
>>>  #include "intel_psr_regs.h"
>>> +#include "intel_uncore.h"
>>> +
>>> +static void
>>> +intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs regs,
>>> +                            u32 imr_val, u32 ier_val)
>>> +{
>>> +        intel_dmc_wl_get(display, regs.imr);
>>> +        intel_dmc_wl_get(display, regs.ier);
>>> +        intel_dmc_wl_get(display, regs.iir);
>>> +
>>> +        gen2_irq_init(to_intel_uncore(display->drm), regs, imr_val, ier_val);
>>> +
>>> +        intel_dmc_wl_put(display, regs.iir);
>>> +        intel_dmc_wl_put(display, regs.ier);
>>> +        intel_dmc_wl_put(display, regs.imr);
>>> +}
>>> +
>>> +static void
>>> +intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs regs)
>>> +{
>>> +        intel_dmc_wl_get(display, regs.imr);
>>> +        intel_dmc_wl_get(display, regs.ier);
>>> +        intel_dmc_wl_get(display, regs.iir);
>>> +
>>> +        gen2_irq_reset(to_intel_uncore(display->drm), regs);
>>> +
>>> +        intel_dmc_wl_put(display, regs.iir);
>>> +        intel_dmc_wl_put(display, regs.ier);
>>> +        intel_dmc_wl_put(display, regs.imr);
>>> +}
>>> +
>>> +static void
>>> +intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display, i915_reg_t reg)
>>> +{
>>> +        intel_dmc_wl_get(display, reg);
>>> +
>>> +        gen2_assert_iir_is_zero(to_intel_uncore(display->drm), reg);
>>> +
>>> +        intel_dmc_wl_put(display, reg);
>>> +}
>>
>>I think the _regs_ in the function names are all superfluous.
>
> I originally went without it, but then we have a clash with
> intel_display_irq_init(). Since these functions are dealing specifically
> with IRQ regs, I decided to resolve the conflict with "_regs".
>
> I'm open to alternatives...

Right. They're static, so not a big deal. Never mind.

BR,
Jani.


>
> --
> Gustavo Sousa
>
>>
>>Other than that, seems fine.
>>
>>BR,
>>Jani.
>>
>>
>>>  
>>>  static void
>>>  intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>>> @@ -1498,7 +1539,6 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>>>  static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>>  {
>>>          struct intel_display *display = &dev_priv->display;
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>>  
>>>          if (IS_CHERRYVIEW(dev_priv))
>>>                  intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
>>> @@ -1510,7 +1550,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>>  
>>>          i9xx_pipestat_irq_reset(dev_priv);
>>>  
>>> -        gen2_irq_reset(uncore, VLV_IRQ_REGS);
>>> +        intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
>>>          dev_priv->irq_mask = ~0u;
>>>  }
>>>  
>>> @@ -1534,8 +1574,7 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915)
>>>  
>>>  void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  {
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>> -
>>> +        struct intel_display *display = &dev_priv->display;
>>>          u32 pipestat_mask;
>>>          u32 enable_mask;
>>>          enum pipe pipe;
>>> @@ -1563,13 +1602,12 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  
>>>          dev_priv->irq_mask = ~enable_mask;
>>>  
>>> -        gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>>> +        intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>>>  }
>>>  
>>>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>>>  {
>>>          struct intel_display *display = &dev_priv->display;
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>>          enum pipe pipe;
>>>  
>>>          if (!HAS_DISPLAY(dev_priv))
>>> @@ -1581,16 +1619,15 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>>>          for_each_pipe(dev_priv, pipe)
>>>                  if (intel_display_power_is_enabled(dev_priv,
>>>                                                     POWER_DOMAIN_PIPE(pipe)))
>>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>> +                        intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>>  
>>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>>> +        intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>>> +        intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>>>  }
>>>  
>>>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>>>  {
>>>          struct intel_display *display = &dev_priv->display;
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>>          enum pipe pipe;
>>>          u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>>>                  BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>>> @@ -1625,24 +1662,24 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>>>          for_each_pipe(dev_priv, pipe)
>>>                  if (intel_display_power_is_enabled(dev_priv,
>>>                                                     POWER_DOMAIN_PIPE(pipe)))
>>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>> +                        intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>>  
>>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>>> +        intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>>> +        intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>>>  
>>>          if (DISPLAY_VER(dev_priv) >= 14)
>>> -                gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
>>> +                intel_display_irq_regs_reset(display, PICAINTERRUPT_IRQ_REGS);
>>>          else
>>> -                gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
>>> +                intel_display_irq_regs_reset(display, GEN11_DE_HPD_IRQ_REGS);
>>>  
>>>          if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>>> -                gen2_irq_reset(uncore, SDE_IRQ_REGS);
>>> +                intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
>>>  }
>>>  
>>>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>>                                       u8 pipe_mask)
>>>  {
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>> +        struct intel_display *display = &dev_priv->display;
>>>          u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>>                  gen8_de_pipe_flip_done_mask(dev_priv);
>>>          enum pipe pipe;
>>> @@ -1655,9 +1692,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>>          }
>>>  
>>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>>> -                gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>>> -                              dev_priv->display.irq.de_irq_mask[pipe],
>>> -                              ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
>>> +                intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
>>> +                                            dev_priv->display.irq.de_irq_mask[pipe],
>>> +                                            ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
>>>  
>>>          spin_unlock_irq(&dev_priv->irq_lock);
>>>  }
>>> @@ -1665,7 +1702,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>>                                       u8 pipe_mask)
>>>  {
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>> +        struct intel_display *display = &dev_priv->display;
>>>          enum pipe pipe;
>>>  
>>>          spin_lock_irq(&dev_priv->irq_lock);
>>> @@ -1676,7 +1713,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>>          }
>>>  
>>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>>> -                gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>> +                intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
>>>  
>>>          spin_unlock_irq(&dev_priv->irq_lock);
>>>  
>>> @@ -1697,7 +1734,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>>   */
>>>  static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  {
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>> +        struct intel_display *display = &dev_priv->display;
>>>          u32 mask;
>>>  
>>>          if (HAS_PCH_NOP(dev_priv))
>>> @@ -1710,7 +1747,7 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>>>          else
>>>                  mask = SDE_GMBUS_CPT;
>>>  
>>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>>  }
>>>  
>>>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>>> @@ -1743,7 +1780,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>>>  
>>>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>>  {
>>> -        struct intel_uncore *uncore = &i915->uncore;
>>> +        struct intel_display *display = &i915->display;
>>>          u32 display_mask, extra_mask;
>>>  
>>>          if (DISPLAY_VER(i915) >= 7) {
>>> @@ -1767,7 +1804,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>>          }
>>>  
>>>          if (IS_HASWELL(i915)) {
>>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>>> +                intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
>>>                  display_mask |= DE_EDP_PSR_INT_HSW;
>>>          }
>>>  
>>> @@ -1778,8 +1815,8 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>>  
>>>          ibx_irq_postinstall(i915);
>>>  
>>> -        gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
>>> -                      display_mask | extra_mask);
>>> +        intel_display_irq_regs_init(display, DE_IRQ_REGS, i915->irq_mask,
>>> +                                    display_mask | extra_mask);
>>>  }
>>>  
>>>  static void mtp_irq_postinstall(struct drm_i915_private *i915);
>>> @@ -1788,7 +1825,6 @@ static void icp_irq_postinstall(struct drm_i915_private *i915);
>>>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  {
>>>          struct intel_display *display = &dev_priv->display;
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>>  
>>>          u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
>>>                  GEN8_PIPE_CDCLK_CRC_DONE;
>>> @@ -1854,11 +1890,11 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>>                          if (!intel_display_power_is_enabled(dev_priv, domain))
>>>                                  continue;
>>>  
>>> -                        gen2_assert_iir_is_zero(uncore,
>>> -                                                TRANS_PSR_IIR(dev_priv, trans));
>>> +                        intel_display_irq_regs_assert_irr_is_zero(display,
>>> +                                                                  TRANS_PSR_IIR(dev_priv, trans));
>>>                  }
>>>          } else {
>>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>>> +                intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
>>>          }
>>>  
>>>          for_each_pipe(dev_priv, pipe) {
>>> @@ -1866,44 +1902,46 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  
>>>                  if (intel_display_power_is_enabled(dev_priv,
>>>                                                     POWER_DOMAIN_PIPE(pipe)))
>>> -                        gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>>> -                                      dev_priv->display.irq.de_irq_mask[pipe],
>>> -                                      de_pipe_enables);
>>> +                        intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
>>> +                                                    dev_priv->display.irq.de_irq_mask[pipe],
>>> +                                                    de_pipe_enables);
>>>          }
>>>  
>>> -        gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
>>> -        gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
>>> +        intel_display_irq_regs_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked,
>>> +                                    de_port_enables);
>>> +        intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked,
>>> +                                    de_misc_masked);
>>>  
>>>          if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>>>                  u32 de_hpd_masked = 0;
>>>                  u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
>>>                                       GEN11_DE_TBT_HOTPLUG_MASK;
>>>  
>>> -                gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
>>> -                              de_hpd_enables);
>>> +                intel_display_irq_regs_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
>>> +                                            de_hpd_enables);
>>>          }
>>>  }
>>>  
>>>  static void mtp_irq_postinstall(struct drm_i915_private *i915)
>>>  {
>>> -        struct intel_uncore *uncore = &i915->uncore;
>>> +        struct intel_display *display = &i915->display;
>>>          u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
>>>          u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
>>>          u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>>>                               XELPDP_TBT_HOTPLUG_MASK;
>>>  
>>> -        gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>>> -                      de_hpd_enables);
>>> +        intel_display_irq_regs_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>>> +                                    de_hpd_enables);
>>>  
>>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>>>  }
>>>  
>>>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>>>  {
>>> -        struct intel_uncore *uncore = &dev_priv->uncore;
>>> +        struct intel_display *display = &dev_priv->display;
>>>          u32 mask = SDE_GMBUS_ICP;
>>>  
>>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>>  }
>>>  
>>>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
