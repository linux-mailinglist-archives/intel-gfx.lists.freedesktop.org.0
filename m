Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E25561EFC91
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5307B6E939;
	Fri,  5 Jun 2020 15:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52066E93A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:35:51 +0000 (UTC)
IronPort-SDR: bH3/V378er+6AQyfPb2R63AsVS7D9FQTLqGtcdGNSFzCwlY4MLizG+wajadkTEf/n6H6lnXVkx
 Djye2LVgjXjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 08:35:51 -0700
IronPort-SDR: MPZQNvMnHAjkKPIsVMen0j0xYjgnZfpyRv2ewW8Ls3IQjHpHL16hxvqgKcpxPveDo+SW+J/3hh
 zBoZkJPyXJdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="348467858"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 05 Jun 2020 08:35:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6FA9E5C2C59; Fri,  5 Jun 2020 18:33:19 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200605122334.2798-4-chris@chris-wilson.co.uk>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
 <20200605122334.2798-4-chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 18:33:19 +0300
Message-ID: <87o8pxa5og.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/gt: Couple tasklet
 scheduling for all CS interrupts
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

> If any engine asks for the tasklet to be kicked from the CS interrupt,
> do so.

The why part is a bit thin. The plan is to use execlist tasklet
for move stuff from virtual rings to real ones?

-Mika

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c | 17 ++++++++++++-----
>  drivers/gpu/drm/i915/gt/intel_gt_irq.h |  3 +++
>  drivers/gpu/drm/i915/gt/intel_rps.c    |  2 +-
>  drivers/gpu/drm/i915/i915_irq.c        |  8 ++++----
>  4 files changed, 20 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 0cc7dd54f4f9..28edf314a319 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -60,6 +60,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
>  		tasklet_hi_schedule(&engine->execlists.tasklet);
>  }
>  
> +void gen2_engine_cs_irq(struct intel_engine_cs *engine)
> +{
> +	intel_engine_signal_breadcrumbs(engine);
> +	if (intel_engine_needs_breadcrumb_tasklet(engine))
> +		tasklet_hi_schedule(&engine->execlists.tasklet);
> +}
> +
>  static u32
>  gen11_gt_engine_identity(struct intel_gt *gt,
>  			 const unsigned int bank, const unsigned int bit)
> @@ -273,9 +280,9 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
>  void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
>  {
>  	if (gt_iir & GT_RENDER_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
> +		gen2_engine_cs_irq(gt->engine_class[RENDER_CLASS][0]);
>  	if (gt_iir & ILK_BSD_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
> +		gen2_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
>  }
>  
>  static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
> @@ -299,11 +306,11 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
>  void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
>  {
>  	if (gt_iir & GT_RENDER_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
> +		gen2_engine_cs_irq(gt->engine_class[RENDER_CLASS][0]);
>  	if (gt_iir & GT_BSD_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
> +		gen2_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
>  	if (gt_iir & GT_BLT_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine_class[COPY_ENGINE_CLASS][0]);
> +		gen2_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0]);
>  
>  	if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
>  		      GT_BSD_CS_ERROR_INTERRUPT |
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> index 886c5cf408a2..6c69cd563fe1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> @@ -9,6 +9,7 @@
>  
>  #include <linux/types.h>
>  
> +struct intel_engine_cs;
>  struct intel_gt;
>  
>  #define GEN8_GT_IRQS (GEN8_GT_RCS_IRQ | \
> @@ -19,6 +20,8 @@ struct intel_gt;
>  		      GEN8_GT_PM_IRQ | \
>  		      GEN8_GT_GUC_IRQ)
>  
> +void gen2_engine_cs_irq(struct intel_engine_cs *engine);
> +
>  void gen11_gt_irq_reset(struct intel_gt *gt);
>  void gen11_gt_irq_postinstall(struct intel_gt *gt);
>  void gen11_gt_irq_handler(struct intel_gt *gt, const u32 master_ctl);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 2f59fc6df3c2..2e4ddc9ca09d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1741,7 +1741,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
>  		return;
>  
>  	if (pm_iir & PM_VEBOX_USER_INTERRUPT)
> -		intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
> +		gen2_engine_cs_irq(gt->engine[VECS0]);
>  
>  	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
>  		DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 8e823ba25f5f..b64f3b3bca70 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3686,7 +3686,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
>  		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
>  
>  		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> +			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
>  
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
> @@ -3791,7 +3791,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
>  		I915_WRITE(GEN2_IIR, iir);
>  
>  		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> +			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
>  
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> @@ -3933,10 +3933,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
>  		I915_WRITE(GEN2_IIR, iir);
>  
>  		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> +			gen2_engine_cs_irq(dev_priv->gt.engine[RCS0]);
>  
>  		if (iir & I915_BSD_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[VCS0]);
> +			gen2_engine_cs_irq(dev_priv->gt.engine[VCS0]);
>  
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
