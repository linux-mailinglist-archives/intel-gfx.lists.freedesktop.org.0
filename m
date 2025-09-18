Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E233B86376
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F9510E04E;
	Thu, 18 Sep 2025 17:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dO1oopJ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060FC10E04E;
 Thu, 18 Sep 2025 17:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758216800; x=1789752800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IY7dT0s4iMaSi3HxqqjiHeXgPZzDd0PQV2yqpY+XhK0=;
 b=dO1oopJ0KF66DDGe/kJNLf0qELtG1Dz42W1X2vMcUHpi+fu9DJlQe2X1
 R1iMMVBKtsxwH57QbcnKrv3OjjwzKts2hi7ICx/o0nYq6XO2nxua27Zsr
 Ruf3BVCvJjPNqrMHL1pknbbe8BfxgzzZUwWOnqO/A4mJA//85kzuGDL6U
 yHu/Qh5yV8+AdmK4cnGYf9+krJxgX9Qz6ceB8+HtPAr4bDGa+mZpNsp+6
 ZCIrNogAsLPKPeZZcSpGWrLEqZqLHEwhRA3w8yTgjS/epHhQUNluJpKQQ
 ObcqH5rmk/eNnPtWdSGLWiZaXKGRm5mzVMDVlOB8rgc/7uXh2E2EHe7Hj g==;
X-CSE-ConnectionGUID: dvOkmJWlR9aFmb0VVHlNPQ==
X-CSE-MsgGUID: Xdu4CZweSgyqUfQdohpXqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="71669508"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="71669508"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:33:20 -0700
X-CSE-ConnectionGUID: aUXcrlLBQB6WzjDUiIYXNg==
X-CSE-MsgGUID: IfZ6js4iTbu/Lxc5WVk9vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="180718553"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:33:18 -0700
Date: Thu, 18 Sep 2025 20:33:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/irq: rename de_irq_mask[] to
 de_pipe_imr_mask[]
Message-ID: <aMxCWz284u0uhtnQ@intel.com>
References: <cover.1758198300.git.jani.nikula@intel.com>
 <55bbf17df871331c2c34af748cf9cf812d6a65d7.1758198300.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55bbf17df871331c2c34af748cf9cf812d6a65d7.1758198300.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 03:25:47PM +0300, Jani Nikula wrote:
> Rename the struct intel_display de_irq_mask[] member to
> de_pipe_imr_mask[] to reflect its usage more accurately.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h    |  6 +++++-
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
>  2 files changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 4a52bbe327b7..df4da52cbdb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -485,7 +485,11 @@ struct intel_display {
>  		 * bitfield.
>  		 */
>  		u32 ilk_de_imr_mask;
> -		u32 de_irq_mask[I915_MAX_PIPES];
> +		/*
> +		 * Cached value of BDW+ DE pipe IMR to avoid reads in updating
> +		 * the bitfield.
> +		 */
> +		u32 de_pipe_imr_mask[I915_MAX_PIPES];
>  		u32 pipestat_irq_mask[I915_MAX_PIPES];
>  	} irq;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f4ba9b08e044..93c2e42f98c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -215,13 +215,13 @@ static void bdw_update_pipe_irq(struct intel_display *display,
>  	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
>  		return;
>  
> -	new_val = display->irq.de_irq_mask[pipe];
> +	new_val = display->irq.de_pipe_imr_mask[pipe];
>  	new_val &= ~interrupt_mask;
>  	new_val |= (~enabled_irq_mask & interrupt_mask);
>  
> -	if (new_val != display->irq.de_irq_mask[pipe]) {
> -		display->irq.de_irq_mask[pipe] = new_val;
> -		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_irq_mask[pipe]);
> +	if (new_val != display->irq.de_pipe_imr_mask[pipe]) {
> +		display->irq.de_pipe_imr_mask[pipe] = new_val;
> +		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_pipe_imr_mask[pipe]);
>  		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
>  	}
>  }
> @@ -2085,8 +2085,8 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
>  
>  	for_each_pipe_masked(display, pipe, pipe_mask)
>  		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -					    display->irq.de_irq_mask[pipe],
> -					    ~display->irq.de_irq_mask[pipe] | extra_ier);
> +					    display->irq.de_pipe_imr_mask[pipe],
> +					    ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
>  
>  	spin_unlock_irq(&display->irq.lock);
>  }
> @@ -2300,12 +2300,12 @@ void gen8_de_irq_postinstall(struct intel_display *display)
>  	}
>  
>  	for_each_pipe(display, pipe) {
> -		display->irq.de_irq_mask[pipe] = ~de_pipe_masked;
> +		display->irq.de_pipe_imr_mask[pipe] = ~de_pipe_masked;
>  
>  		if (intel_display_power_is_enabled(display,
>  						   POWER_DOMAIN_PIPE(pipe)))
>  			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
> -						    display->irq.de_irq_mask[pipe],
> +						    display->irq.de_pipe_imr_mask[pipe],
>  						    de_pipe_enables);
>  	}
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
