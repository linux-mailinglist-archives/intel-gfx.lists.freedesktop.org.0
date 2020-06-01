Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F191EA569
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 15:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12C2589DED;
	Mon,  1 Jun 2020 13:56:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F180889DED
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 13:56:52 +0000 (UTC)
IronPort-SDR: fAN8P+vsb7PUZE6/Lz58MkqyqMaUba36/nF/Ai61RlQLy1BnVY3fVMRqJ9xr5j38qMgK9dPrKS
 vECjVtKkLADQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 06:56:52 -0700
IronPort-SDR: V0mrz8j1eKMV9jKdl5QbtvJ0WXEqG4ru2tB+SzRByYOvDNw/2OTKKpWEpHSrYWiWluO+ErBvPR
 2MG8UWxoq8ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="293199788"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2020 06:56:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0AC175C2C42; Mon,  1 Jun 2020 16:54:24 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601121423.19842-1-chris@chris-wilson.co.uk>
References: <20200601121423.19842-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 16:54:24 +0300
Message-ID: <87v9kasxgv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Trim the ironlake+ irq handler
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Ever noticed that our interrupt handlers are where we spend most of our
> time on a busy system? In part this is unavoidable as each interrupt
> requires to poll and reset several registers, but we can try and do so as
> efficiently as possible.
>
> Function                                     old     new   delta
> ilk_irq_handler                             2317    2156    -161
>
> v2: Restore the irqreturn_t ret
>
> Function                                     old     new   delta
> ilk_irq_handler.cold                          63      72      +9
> ilk_irq_handler                             2221    2080    -141
>
> A slight improvement in the baseline overnight as well!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 59 +++++++++++++++++----------------
>  1 file changed, 30 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 63579ab71cf6..01d4e3cad69d 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2097,67 +2097,68 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
>   */
>  static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  {
> -	struct drm_i915_private *dev_priv = arg;
> +	struct drm_i915_private *i915 = arg;
> +	void __iomem * const regs = i915->uncore.regs;
>  	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
>  	irqreturn_t ret = IRQ_NONE;
>  
> -	if (!intel_irqs_enabled(dev_priv))
> +	if (unlikely(!intel_irqs_enabled(i915)))

Doesn't hurt anymore.

And dont have to worry about ret so only thing different is
void of forcewake dance.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  		return IRQ_NONE;
>  
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
> -	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	/* disable master interrupt before clearing iir  */
> -	de_ier = I915_READ(DEIER);
> -	I915_WRITE(DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
> +	de_ier = raw_reg_read(regs, DEIER);
> +	raw_reg_write(regs, DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
>  
>  	/* Disable south interrupts. We'll only write to SDEIIR once, so further
>  	 * interrupts will will be stored on its back queue, and then we'll be
>  	 * able to process them after we restore SDEIER (as soon as we restore
>  	 * it, we'll get an interrupt if SDEIIR still has something to process
>  	 * due to its back queue). */
> -	if (!HAS_PCH_NOP(dev_priv)) {
> -		sde_ier = I915_READ(SDEIER);
> -		I915_WRITE(SDEIER, 0);
> +	if (!HAS_PCH_NOP(i915)) {
> +		sde_ier = raw_reg_read(regs, SDEIER);
> +		raw_reg_write(regs, SDEIER, 0);
>  	}
>  
>  	/* Find, clear, then process each source of interrupt */
>  
> -	gt_iir = I915_READ(GTIIR);
> +	gt_iir = raw_reg_read(regs, GTIIR);
>  	if (gt_iir) {
> -		I915_WRITE(GTIIR, gt_iir);
> -		ret = IRQ_HANDLED;
> -		if (INTEL_GEN(dev_priv) >= 6)
> -			gen6_gt_irq_handler(&dev_priv->gt, gt_iir);
> +		raw_reg_write(regs, GTIIR, gt_iir);
> +		if (INTEL_GEN(i915) >= 6)
> +			gen6_gt_irq_handler(&i915->gt, gt_iir);
>  		else
> -			gen5_gt_irq_handler(&dev_priv->gt, gt_iir);
> +			gen5_gt_irq_handler(&i915->gt, gt_iir);
> +		ret = IRQ_HANDLED;
>  	}
>  
> -	de_iir = I915_READ(DEIIR);
> +	de_iir = raw_reg_read(regs, DEIIR);
>  	if (de_iir) {
> -		I915_WRITE(DEIIR, de_iir);
> -		ret = IRQ_HANDLED;
> -		if (INTEL_GEN(dev_priv) >= 7)
> -			ivb_display_irq_handler(dev_priv, de_iir);
> +		raw_reg_write(regs, DEIIR, de_iir);
> +		if (INTEL_GEN(i915) >= 7)
> +			ivb_display_irq_handler(i915, de_iir);
>  		else
> -			ilk_display_irq_handler(dev_priv, de_iir);
> +			ilk_display_irq_handler(i915, de_iir);
> +		ret = IRQ_HANDLED;
>  	}
>  
> -	if (INTEL_GEN(dev_priv) >= 6) {
> -		u32 pm_iir = I915_READ(GEN6_PMIIR);
> +	if (INTEL_GEN(i915) >= 6) {
> +		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
>  		if (pm_iir) {
> -			I915_WRITE(GEN6_PMIIR, pm_iir);
> -			ret = IRQ_HANDLED;
> -			gen6_rps_irq_handler(&dev_priv->gt.rps, pm_iir);
> +			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
> +			gen6_rps_irq_handler(&i915->gt.rps, pm_iir);
>  		}
> +		ret = IRQ_HANDLED;
>  	}
>  
> -	I915_WRITE(DEIER, de_ier);
> -	if (!HAS_PCH_NOP(dev_priv))
> -		I915_WRITE(SDEIER, sde_ier);
> +	raw_reg_write(regs, DEIER, de_ier);
> +	if (sde_ier)
> +		raw_reg_write(regs, SDEIER, sde_ier);
>  
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
> -	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	return ret;
>  }
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
