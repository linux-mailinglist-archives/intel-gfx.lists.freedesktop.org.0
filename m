Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9A414B41A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 13:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5616EE14;
	Tue, 28 Jan 2020 12:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FE36EE14
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 12:21:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 04:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="261414065"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2020 04:21:32 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1ADB45C1E0F; Tue, 28 Jan 2020 14:20:46 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200127231540.3302516-2-chris@chris-wilson.co.uk>
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
 <20200127231540.3302516-2-chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 14:20:46 +0200
Message-ID: <87d0b3n55t.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Reorganise gen8+ interrupt
 handler
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We always use a deferred bottom-half (either tasklet or irq_work) for
> processing the response to an interrupt which means we can recombine the
> GT irq ack+handler into one. This simplicity is important in later
> patches as we will need to handle and then ack multiple interrupt levels
> before acking the GT and master interrupts.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c | 70 +++++++++++---------------
>  drivers/gpu/drm/i915/gt/intel_gt_irq.h |  3 +-
>  drivers/gpu/drm/i915/i915_irq.c        | 10 +---
>  3 files changed, 33 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index f796bdf1ed30..71873a4cafc0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -286,59 +286,49 @@ void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
>  		gen7_parity_error_irq_handler(gt, gt_iir);
>  }
>  
> -void gen8_gt_irq_ack(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4])
> +void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
>  {
>  	void __iomem * const regs = gt->uncore->regs;
> +	u32 iir;
>  
>  	if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
> -		gt_iir[0] = raw_reg_read(regs, GEN8_GT_IIR(0));
> -		if (likely(gt_iir[0]))
> -			raw_reg_write(regs, GEN8_GT_IIR(0), gt_iir[0]);
> -	}
> -
> -	if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
> -		gt_iir[1] = raw_reg_read(regs, GEN8_GT_IIR(1));
> -		if (likely(gt_iir[1]))
> -			raw_reg_write(regs, GEN8_GT_IIR(1), gt_iir[1]);
> -	}
> -
> -	if (master_ctl & (GEN8_GT_PM_IRQ | GEN8_GT_GUC_IRQ)) {
> -		gt_iir[2] = raw_reg_read(regs, GEN8_GT_IIR(2));
> -		if (likely(gt_iir[2]))
> -			raw_reg_write(regs, GEN8_GT_IIR(2), gt_iir[2]);
> -	}
> -
> -	if (master_ctl & GEN8_GT_VECS_IRQ) {
> -		gt_iir[3] = raw_reg_read(regs, GEN8_GT_IIR(3));
> -		if (likely(gt_iir[3]))
> -			raw_reg_write(regs, GEN8_GT_IIR(3), gt_iir[3]);
> -	}
> -}
> -
> -void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4])
> -{
> -	if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
> -		cs_irq_handler(gt->engine_class[RENDER_CLASS][0],
> -			       gt_iir[0] >> GEN8_RCS_IRQ_SHIFT);
> -		cs_irq_handler(gt->engine_class[COPY_ENGINE_CLASS][0],
> -			       gt_iir[0] >> GEN8_BCS_IRQ_SHIFT);
> +		iir = raw_reg_read(regs, GEN8_GT_IIR(0));
> +		if (likely(iir)) {
> +			cs_irq_handler(gt->engine_class[RENDER_CLASS][0],
> +				       iir >> GEN8_RCS_IRQ_SHIFT);
> +			cs_irq_handler(gt->engine_class[COPY_ENGINE_CLASS][0],
> +				       iir >> GEN8_BCS_IRQ_SHIFT);
> +			raw_reg_write(regs, GEN8_GT_IIR(0), iir);
> +		}
>  	}
>  
>  	if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
> -		cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][0],
> -			       gt_iir[1] >> GEN8_VCS0_IRQ_SHIFT);
> -		cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][1],
> -			       gt_iir[1] >> GEN8_VCS1_IRQ_SHIFT);
> +		iir = raw_reg_read(regs, GEN8_GT_IIR(1));
> +		if (likely(iir)) {
> +			cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][0],
> +				       iir >> GEN8_VCS0_IRQ_SHIFT);
> +			cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][1],
> +				       iir >> GEN8_VCS1_IRQ_SHIFT);
> +			raw_reg_write(regs, GEN8_GT_IIR(1), iir);
> +		}
>  	}
>  
>  	if (master_ctl & GEN8_GT_VECS_IRQ) {
> -		cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
> -			       gt_iir[3] >> GEN8_VECS_IRQ_SHIFT);
> +		iir = raw_reg_read(regs, GEN8_GT_IIR(3));
> +		if (likely(iir)) {
> +			cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
> +				       iir >> GEN8_VECS_IRQ_SHIFT);
> +			raw_reg_write(regs, GEN8_GT_IIR(3), iir);
> +		}
>  	}
>  
>  	if (master_ctl & (GEN8_GT_PM_IRQ | GEN8_GT_GUC_IRQ)) {
> -		gen6_rps_irq_handler(&gt->rps, gt_iir[2]);
> -		guc_irq_handler(&gt->uc.guc, gt_iir[2] >> 16);
> +		iir = raw_reg_read(regs, GEN8_GT_IIR(2));
> +		if (likely(iir)) {
> +			gen6_rps_irq_handler(&gt->rps, iir);
> +			guc_irq_handler(&gt->uc.guc, iir >> 16);
> +			raw_reg_write(regs, GEN8_GT_IIR(2), iir);
> +		}
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> index 8f37593712c9..886c5cf408a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> @@ -36,9 +36,8 @@ void gen5_gt_enable_irq(struct intel_gt *gt, u32 mask);
>  
>  void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir);
>  
> -void gen8_gt_irq_ack(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4]);
> +void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl);
>  void gen8_gt_irq_reset(struct intel_gt *gt);
> -void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4]);
>  void gen8_gt_irq_postinstall(struct intel_gt *gt);
>  
>  #endif /* INTEL_GT_IRQ_H */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 87a6662abc1b..e40dd226fde8 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1614,7 +1614,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		u32 master_ctl, iir;
>  		u32 pipe_stats[I915_MAX_PIPES] = {};
>  		u32 hotplug_status = 0;
> -		u32 gt_iir[4];
>  		u32 ier = 0;
>  
>  		master_ctl = I915_READ(GEN8_MASTER_IRQ) & ~GEN8_MASTER_IRQ_CONTROL;
> @@ -1642,7 +1641,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		ier = I915_READ(VLV_IER);
>  		I915_WRITE(VLV_IER, 0);
>  
> -		gen8_gt_irq_ack(&dev_priv->gt, master_ctl, gt_iir);
> +		gen8_gt_irq_handler(&dev_priv->gt, master_ctl);
>  
>  		if (iir & I915_DISPLAY_PORT_INTERRUPT)
>  			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
> @@ -1666,8 +1665,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		I915_WRITE(VLV_IER, ier);
>  		I915_WRITE(GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
>  
> -		gen8_gt_irq_handler(&dev_priv->gt, master_ctl, gt_iir);
> -
>  		if (hotplug_status)
>  			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
>  
> @@ -2396,7 +2393,6 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
>  	struct drm_i915_private *dev_priv = arg;
>  	void __iomem * const regs = dev_priv->uncore.regs;
>  	u32 master_ctl;
> -	u32 gt_iir[4];
>  
>  	if (!intel_irqs_enabled(dev_priv))
>  		return IRQ_NONE;
> @@ -2408,7 +2404,7 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
>  	}
>  
>  	/* Find, clear, then process each source of interrupt */

/* Find, process and then clear each source of interrupt */

or with removal of the comment,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -	gen8_gt_irq_ack(&dev_priv->gt, master_ctl, gt_iir);
> +	gen8_gt_irq_handler(&dev_priv->gt, master_ctl);
>  
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>  	if (master_ctl & ~GEN8_GT_IRQS) {
> @@ -2419,8 +2415,6 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
>  
>  	gen8_master_intr_enable(regs);
>  
> -	gen8_gt_irq_handler(&dev_priv->gt, master_ctl, gt_iir);
> -
>  	return IRQ_HANDLED;
>  }
>  
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
