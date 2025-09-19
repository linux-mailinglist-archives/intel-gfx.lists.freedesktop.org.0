Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8602B896FA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 14:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002E510E99B;
	Fri, 19 Sep 2025 12:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gKzLQ5Vi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C283810E99A;
 Fri, 19 Sep 2025 12:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758284664; x=1789820664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bi7Xq9myns8Aw4WJ84H69QlkVK38/MiQsOXXTmMPp5Y=;
 b=gKzLQ5ViGwf4Lz5PsjPrZXeSUXNwUXi0DLzwOsogZdZC8XYiln1dJbCe
 IH+b3s4JrcXVQmZErSxA5kbeMfggbklpLdjh2uquSo8OVtCl1YmN1drZr
 b8KujcWNYCpT+wGw95dxxgCedCeOYkieoEPoO+r617oCYkRSKFwsNuONA
 aYbUHFr7UJIe2Ta358ELxOOqhA/RDpJ0CzFIHng1EMLcc+rKrbIyOvGXU
 RnxCIdI3FzpfhGQCcKkLIyBGZAMHBrf013KcQdrua6Q9iN8X733SXsIXr
 zyqC9E2YfrTNjFLuBKOndC9LkjE9BpNHmqWK/lWH8GuHLRAu5xNG9bj/q Q==;
X-CSE-ConnectionGUID: E1ebJ/iYQpild35dYwniCA==
X-CSE-MsgGUID: xBsmz2ZXSlSHyLoPcoXqgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="63261941"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="63261941"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 05:24:01 -0700
X-CSE-ConnectionGUID: Mv5w4FeAQ++5oJTJ0Tr7kg==
X-CSE-MsgGUID: TpGAp44PRJyO3h1N3jk1tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175078977"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 05:23:59 -0700
Date: Fri, 19 Sep 2025 15:23:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/irq: split ILK display irq handling
Message-ID: <aM1LXLkz8j1serrU@intel.com>
References: <cover.1758275448.git.jani.nikula@intel.com>
 <f549e6d2a50bcaf0a4ca559f867828357f3927aa.1758275448.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f549e6d2a50bcaf0a4ca559f867828357f3927aa.1758275448.git.jani.nikula@intel.com>
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

On Fri, Sep 19, 2025 at 12:51:49PM +0300, Jani Nikula wrote:
> Split out display irq handling on ilk. Since the master IRQ enable is in
> DEIIR, we'll need to do this in two parts. First, add
> ilk_display_irq_master_disable() to disable master and south interrupts,
> and second, add (repurposed) ilk_display_irq_handler() to finish display
> irq handling.
> 
> It's not the prettiest thing you ever saw, but improves separation of
> display irq handling. And removes HAS_PCH_NOP() and DISPLAY_VER() checks
> from core irq code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 48 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_irq.h  |  4 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 30 ++----------
>  3 files changed, 52 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4d51900123ea..c2320c1718f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -872,7 +872,7 @@ static void ilk_gtt_fault_irq_handler(struct intel_display *display)
>  	}
>  }
>  
> -void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
> +static void _ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
>  	enum pipe pipe;
>  	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
> @@ -923,7 +923,7 @@ void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
>  		ilk_display_rps_irq_handler(display);
>  }
>  
> -void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
> +static void _ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
>  	enum pipe pipe;
>  	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
> @@ -972,6 +972,50 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>  	}
>  }
>  
> +void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier)
> +{
> +	/* disable master interrupt before clearing iir  */
> +	*de_ier = intel_de_read(display, DEIER);
> +	intel_de_write(display, DEIER, *de_ier & ~DE_MASTER_IRQ_CONTROL);

The original used completely unlocked register accessors. Assuming that
has been working all along without hangs I don't really want to
re-introduce the lock again. I recently looked at some profiles and
the irq handlers showed up fairly prominently so making these a lot
more expensive isn't really desirable. So I'd go with the _fw() variant
for this stuff.

I've already written a patch that I was planning to send at some point
that switches all the bdw+ display irq handlers to _fw() to reduce the
overhead a bit. Would be nice if we could do the same for all the
earlier platforms too, or at least not make it much more expensive
than it already is.

> +
> +	/*
> +	 * Disable south interrupts. We'll only write to SDEIIR once, so further
> +	 * interrupts will be stored on its back queue, and then we'll be able
> +	 * to process them after we restore SDEIER (as soon as we restore it,
> +	 * we'll get an interrupt if SDEIIR still has something to process due
> +	 * to its back queue).
> +	 */
> +	if (!HAS_PCH_NOP(display)) {
> +		*sde_ier = intel_de_read(display, SDEIER);
> +		intel_de_write(display, SDEIER, 0);
> +	} else {
> +		*sde_ier = 0;
> +	}
> +}
> +
> +bool ilk_display_irq_handler(struct intel_display *display, u32 de_ier, u32 sde_ier)
> +{
> +	u32 de_iir;
> +	bool handled = false;
> +
> +	de_iir = intel_de_read(display, DEIIR);
> +	if (de_iir) {
> +		intel_de_write(display, DEIIR, de_iir);
> +		if (DISPLAY_VER(display) >= 7)
> +			_ivb_display_irq_handler(display, de_iir);
> +		else
> +			_ilk_display_irq_handler(display, de_iir);
> +		handled = true;
> +	}
> +
> +	intel_de_write(display, DEIER, de_ier);
> +
> +	if (sde_ier)
> +		intel_de_write(display, SDEIER, sde_ier);
> +
> +	return handled;
> +}
> +
>  static u32 gen8_de_port_aux_mask(struct intel_display *display)
>  {
>  	u32 mask;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index e44d88e0d7e7..778195bd6052 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -47,8 +47,8 @@ void i965_disable_vblank(struct drm_crtc *crtc);
>  void ilk_disable_vblank(struct drm_crtc *crtc);
>  void bdw_disable_vblank(struct drm_crtc *crtc);
>  
> -void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
> -void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
> +void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
> +bool ilk_display_irq_handler(struct intel_display *display, u32 de_ier, u32 sde_ier);
>  void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
>  void gen11_display_irq_handler(struct intel_display *display);
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 312f7e42931a..65aa35866a5a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -414,7 +414,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  	struct drm_i915_private *i915 = arg;
>  	struct intel_display *display = i915->display;
>  	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
> -	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
> +	u32 gt_iir, de_ier = 0, sde_ier = 0;
>  	irqreturn_t ret = IRQ_NONE;
>  
>  	if (unlikely(!intel_irqs_enabled(i915)))
> @@ -423,19 +423,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
> -	/* disable master interrupt before clearing iir  */
> -	de_ier = raw_reg_read(regs, DEIER);
> -	raw_reg_write(regs, DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
> -
> -	/* Disable south interrupts. We'll only write to SDEIIR once, so further
> -	 * interrupts will will be stored on its back queue, and then we'll be
> -	 * able to process them after we restore SDEIER (as soon as we restore
> -	 * it, we'll get an interrupt if SDEIIR still has something to process
> -	 * due to its back queue). */
> -	if (!HAS_PCH_NOP(display)) {
> -		sde_ier = raw_reg_read(regs, SDEIER);
> -		raw_reg_write(regs, SDEIER, 0);
> -	}
> +	/* Disable master and south interrupts */
> +	ilk_display_irq_master_disable(display, &de_ier, &sde_ier);
>  
>  	/* Find, clear, then process each source of interrupt */
>  
> @@ -458,19 +447,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  		}
>  	}
>  
> -	de_iir = raw_reg_read(regs, DEIIR);
> -	if (de_iir) {
> -		raw_reg_write(regs, DEIIR, de_iir);
> -		if (DISPLAY_VER(display) >= 7)
> -			ivb_display_irq_handler(display, de_iir);
> -		else
> -			ilk_display_irq_handler(display, de_iir);
> +	if (ilk_display_irq_handler(display, de_ier, sde_ier))
>  		ret = IRQ_HANDLED;
> -	}
> -
> -	raw_reg_write(regs, DEIER, de_ier);
> -	if (sde_ier)
> -		raw_reg_write(regs, SDEIER, sde_ier);
>  
>  	pmu_irq_stats(i915, ret);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
