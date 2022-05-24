Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67DE532FE3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 19:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716D010F903;
	Tue, 24 May 2022 17:52:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED0710F8DF;
 Tue, 24 May 2022 17:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653414757; x=1684950757;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y9cO51y9lO9GUjj1RmIbaoQ/NWyxzYqgb9auMnNvsO4=;
 b=O2Be5KVhKWzfMvKnvoob4Jsiu2R+4SDK06l7F/pgAl22m5t19tcQefRD
 Zt4d7Zi9QN8dI0uACDbH8PEwVvwdM5ID24D8Z7EciWCb31tAvYIREFxT3
 OwJa2pgRT53kQdOoU+yfSUZmwTfc2KrAmU6hQAisI9jBMyZqOMq9EOYvd
 zYlp1aICciya4GoSO7mPV2fntKifTdo7MOA0OryZCMfDDBGZEA5c5XEYT
 DUlNYw02V15KdGXomrmzq6t7xH6UZb95RI5756DLR7oHBy9wDbYD6PIL5
 30t6Ii5BW6OxpC20SO24/7vWbdTUSxZx8zCCQRqqV+N+cFn9YGJaWvAkd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="261219835"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="261219835"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 10:51:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="572782189"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 10:51:05 -0700
Date: Tue, 24 May 2022 10:51:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yo0bBxHBH8cZcnN4@mdroper-desk1.amr.corp.intel.com>
References: <20220524094339.1692212-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220524094339.1692212-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Catch and log more unexpected
 values in DG1_MSTR_TILE_INTR
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 24, 2022 at 10:43:39AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Catch and log any garbage in the register, including no tiles marked, or
> multiple tiles marked.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
> We caught garbage in DG1_MSTR_TILE_INTR with DG2 (actual value 0xF9D2C008)
> during glmark and more badness. So I thought lets log all possible failure
> modes from here and also use per device logging.
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 33 ++++++++++++++++++++++-----------
>  drivers/gpu/drm/i915/i915_reg.h |  1 +
>  2 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 73cebc6aa650..79853d3fc1ed 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2778,24 +2778,30 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  	u32 gu_misc_iir;
>  
>  	if (!intel_irqs_enabled(i915))
> -		return IRQ_NONE;
> +		goto none;
>  
>  	master_tile_ctl = dg1_master_intr_disable(regs);
> -	if (!master_tile_ctl) {
> -		dg1_master_intr_enable(regs);
> -		return IRQ_NONE;
> +	if (!master_tile_ctl)
> +		goto enable_none;
> +
> +	if (master_tile_ctl & ~(DG1_MSTR_IRQ | DG1_MSTR_TILE_MASK)) {
> +		drm_warn(&i915->drm, "Garbage in master_tile_ctl: 0x%08x!\n",
> +			 master_tile_ctl);

I know we have a bunch of them already, but shouldn't we be avoiding
printk-based stuff like this inside interrupt handlers?  Should we be
migrating all these error messages over to trace_printk or something
similar that's safer to use?


Matt

> +		goto enable_none;
>  	}
>  
>  	/* FIXME: we only support tile 0 for now. */
> -	if (master_tile_ctl & DG1_MSTR_TILE(0)) {
> -		master_ctl = raw_reg_read(regs, GEN11_GFX_MSTR_IRQ);
> -		raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, master_ctl);
> -	} else {
> -		DRM_ERROR("Tile not supported: 0x%08x\n", master_tile_ctl);
> -		dg1_master_intr_enable(regs);
> -		return IRQ_NONE;
> +	if (REG_FIELD_GET(DG1_MSTR_TILE_MASK, master_tile_ctl) !=
> +	    DG1_MSTR_TILE(0)) {
> +		drm_warn(&i915->drm, "Unexpected irq from tile %u!\n",
> +			 ilog2(REG_FIELD_GET(DG1_MSTR_TILE_MASK,
> +					     master_tile_ctl)));
> +		goto enable_none;
>  	}
>  
> +	master_ctl = raw_reg_read(regs, GEN11_GFX_MSTR_IRQ);
> +	raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, master_ctl);
> +
>  	gen11_gt_irq_handler(gt, master_ctl);
>  
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
> @@ -2810,6 +2816,11 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>  
>  	return IRQ_HANDLED;
> +
> +enable_none:
> +	dg1_master_intr_enable(regs);
> +none:
> +	return IRQ_NONE;
>  }
>  
>  /* Called from drm generic code, passed 'crtc' which
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d8579ab9384c..eefa301c6430 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5774,6 +5774,7 @@
>  
>  #define DG1_MSTR_TILE_INTR		_MMIO(0x190008)
>  #define   DG1_MSTR_IRQ			REG_BIT(31)
> +#define   DG1_MSTR_TILE_MASK		REG_GENMASK(3, 0)
>  #define   DG1_MSTR_TILE(t)		REG_BIT(t)
>  
>  #define GEN11_DISPLAY_INT_CTL		_MMIO(0x44200)
> -- 
> 2.32.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
