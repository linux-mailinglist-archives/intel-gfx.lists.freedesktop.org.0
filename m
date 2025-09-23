Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78986B965C7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C15D10E641;
	Tue, 23 Sep 2025 14:45:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxwZOpIU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E1210E63E;
 Tue, 23 Sep 2025 14:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758638721; x=1790174721;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EuVrzqfuKFqOa4KMGMAvqWGlXYCCg732dz80qJ4cVQ0=;
 b=gxwZOpIU91O3/WQAENM78cbueFTkKmVFyvx9uSYrMSCR53qQByqqZogo
 cqbtOnWhCkFG3ZdAAY0BVCCqZ+xfie8mv2dFMhkD63rDJXDwtcEfVMPOW
 TwhtsIGju8zTnfjCA08Jp7qeBP7/HeJD8SCPm+BbsniS/IdnGFQ+phIes
 h91GlU4IgXYaU7jXNEmERxkbX97XSxMZs/OlhU9VXCW3ZUDsqfvwOwpMy
 bdKre8vyRvrhrZTurme1EMpWpppjgXGVU5amUOiwVe3ujlsYcmVnIAkPc
 eklVIFQ/wuhYWEZVtYT0lmiu/dKTFtqffTO0Ym1PCdSLMNeeuyQesEdUj A==;
X-CSE-ConnectionGUID: v/rXALrvTfCZOm6wD1rWtQ==
X-CSE-MsgGUID: sKV2T7HARsStNwiYtgaHpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="72279157"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="72279157"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:45:21 -0700
X-CSE-ConnectionGUID: eSqYgC4gRvSYAiAqkRrABQ==
X-CSE-MsgGUID: D7daSkHqQWKBS7Rfc1OJDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="182048284"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:45:20 -0700
Date: Tue, 23 Sep 2025 17:45:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] drm/i915/irq: split ILK display irq handling
Message-ID: <aNKyfVyQPpMsCpQy@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
 <e8ea7c985c3f3a80870f3333bde2e1bf30d653b0.1758637773.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e8ea7c985c3f3a80870f3333bde2e1bf30d653b0.1758637773.git.jani.nikula@intel.com>
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

On Tue, Sep 23, 2025 at 05:31:08PM +0300, Jani Nikula wrote:
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
> v2:
> - Separate ilk_display_irq_master_enable() (Ville)
> - Use _fw mmio accessors (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 51 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_irq.h  |  5 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 31 +++--------
>  3 files changed, 58 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4d51900123ea..e1a812f6159b 100644
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
> @@ -972,6 +972,53 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>  	}
>  }
>  
> +void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier)
> +{
> +	/* disable master interrupt before clearing iir  */
> +	*de_ier = intel_de_read_fw(display, DEIER);
> +	intel_de_write_fw(display, DEIER, *de_ier & ~DE_MASTER_IRQ_CONTROL);
> +
> +	/*
> +	 * Disable south interrupts. We'll only write to SDEIIR once, so further
> +	 * interrupts will be stored on its back queue, and then we'll be able
> +	 * to process them after we restore SDEIER (as soon as we restore it,
> +	 * we'll get an interrupt if SDEIIR still has something to process due
> +	 * to its back queue).
> +	 */
> +	if (!HAS_PCH_NOP(display)) {
> +		*sde_ier = intel_de_read_fw(display, SDEIER);
> +		intel_de_write_fw(display, SDEIER, 0);
> +	} else {
> +		*sde_ier = 0;
> +	}
> +}
> +
> +void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier)
> +{
> +	intel_de_write_fw(display, DEIER, de_ier);
> +
> +	if (sde_ier)
> +		intel_de_write_fw(display, SDEIER, sde_ier);
> +}
> +
> +bool ilk_display_irq_handler(struct intel_display *display)
> +{
> +	u32 de_iir;
> +	bool handled = false;
> +
> +	de_iir = intel_de_read_fw(display, DEIIR);
> +	if (de_iir) {
> +		intel_de_write_fw(display, DEIIR, de_iir);
> +		if (DISPLAY_VER(display) >= 7)
> +			_ivb_display_irq_handler(display, de_iir);
> +		else
> +			_ilk_display_irq_handler(display, de_iir);
> +		handled = true;
> +	}
> +
> +	return handled;
> +}
> +
>  static u32 gen8_de_port_aux_mask(struct intel_display *display)
>  {
>  	u32 mask;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index e44d88e0d7e7..84acd31948cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -47,8 +47,9 @@ void i965_disable_vblank(struct drm_crtc *crtc);
>  void ilk_disable_vblank(struct drm_crtc *crtc);
>  void bdw_disable_vblank(struct drm_crtc *crtc);
>  
> -void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
> -void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
> +void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
> +void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier);
> +bool ilk_display_irq_handler(struct intel_display *display);
>  void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
>  void gen11_display_irq_handler(struct intel_display *display);
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 90174ce9195c..11a727b74849 100644
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
> @@ -449,15 +438,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  		ret = IRQ_HANDLED;
>  	}
>  
> -	de_iir = raw_reg_read(regs, DEIIR);
> -	if (de_iir) {
> -		raw_reg_write(regs, DEIIR, de_iir);
> -		if (DISPLAY_VER(display) >= 7)
> -			ivb_display_irq_handler(display, de_iir);
> -		else
> -			ilk_display_irq_handler(display, de_iir);
> +	if (ilk_display_irq_handler(display))
>  		ret = IRQ_HANDLED;
> -	}
>  
>  	if (GRAPHICS_VER(i915) >= 6) {
>  		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
> @@ -468,9 +450,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  		}
>  	}
>  
> -	raw_reg_write(regs, DEIER, de_ier);
> -	if (sde_ier)
> -		raw_reg_write(regs, SDEIER, sde_ier);
> +	/* Re-enable master and south interrupts */
> +	ilk_display_irq_master_enable(display, de_ier, sde_ier);
>  
>  	pmu_irq_stats(i915, ret);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
