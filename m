Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE5514B436
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 13:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E02C6E05A;
	Tue, 28 Jan 2020 12:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0A26E05A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 12:32:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 04:32:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="429314065"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2020 04:32:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 955845C1E0F; Tue, 28 Jan 2020 14:32:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200127231540.3302516-3-chris@chris-wilson.co.uk>
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
 <20200127231540.3302516-3-chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 14:32:07 +0200
Message-ID: <87a767n4mw.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Tidy repetition in
 declaring gen8+ interrupts
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

> We use the same interrupt mask for each engine, so define it once in a
> local and reuse.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c | 22 ++++++----------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 71873a4cafc0..7278b10e1a03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -344,25 +344,15 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
>  
>  void gen8_gt_irq_postinstall(struct intel_gt *gt)
>  {
> -	struct intel_uncore *uncore = gt->uncore;
> -
>  	/* These are interrupts we'll toggle with the ring mask register */
> -	u32 gt_interrupts[] = {
> -		(GT_RENDER_USER_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
> -		 GT_RENDER_USER_INTERRUPT << GEN8_BCS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_BCS_IRQ_SHIFT),
> -
> -		(GT_RENDER_USER_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
> -		 GT_RENDER_USER_INTERRUPT << GEN8_VCS1_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS1_IRQ_SHIFT),
> -
> +	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
> +	const u32 gt_interrupts[] = {
> +		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
> +		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
>  		0,
> -
> -		(GT_RENDER_USER_INTERRUPT << GEN8_VECS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VECS_IRQ_SHIFT)
> +		irqs << GEN8_VECS_IRQ_SHIFT,
>  	};
> +	struct intel_uncore *uncore = gt->uncore;
>  
>  	gt->pm_ier = 0x0;
>  	gt->pm_imr = ~gt->pm_ier;
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
