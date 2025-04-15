Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1606A89F5B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 15:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA1010E78F;
	Tue, 15 Apr 2025 13:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2OUn0j+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453C510E78F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 13:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744723523; x=1776259523;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6h2gfAVM0h+t//XIT3cgE976ZM84CQBSo1RpQKKM2Hk=;
 b=l2OUn0j+T0hCCKKwYCdKLeeJ4WWXTTnVpcn7smFHjSbm8kdvsJYcTluV
 eQ1buEdv4aN1OTLDyd+aRN7EXG8icwm80U9W6E2VHdBp+6rlHG3aeqIkD
 fb/3IXLLNnH5Kl2xeSFK0amTijcGEB4/vDC1RZ/7S+vQU4Ja4492i698N
 4Qhbga0dxLmGiqcFGfshTmNRNP+632BughkSZoMg4Bb2iCo0sYFUfitCG
 C9OoXWA9szqH+M3qdOxBdPDs04Xi6G9nyGsCLOvjjxwRsntqQHGNRDDjs
 fCgnM9OfAWZAY9qgFiHiBTFzz6T9WSTtlSEFK0wTbwFwfkESG7lWgyJ+2 g==;
X-CSE-ConnectionGUID: 7TaZEbe/SUm53zMAV+vIWg==
X-CSE-MsgGUID: JYyG5UDAQfCgs0/LDALvkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57595048"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="57595048"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 06:25:23 -0700
X-CSE-ConnectionGUID: +Wr7kV3/T6Sld2i7sZ7tNQ==
X-CSE-MsgGUID: F6Rd9u9tQeKjDvYhlhy7XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="135303741"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 15 Apr 2025 06:25:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Apr 2025 16:25:20 +0300
Date: Tue, 15 Apr 2025 16:25:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/irq: convert ibx_irq_reset() into
 ibx_display_irq_reset()
Message-ID: <Z_5eQIUKBRn3PDy7@intel.com>
References: <20250409184702.3790548-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250409184702.3790548-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 09, 2025 at 09:47:02PM +0300, Jani Nikula wrote:
> Observe that ibx_irq_reset() is really ibx_display_irq_reset(). Make it
> so. Move to display, and call it directly from gen8_display_irq_reset()
> instead of gen8_irq_reset().
> 
> Remove a nearby ancient stale comment while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               | 22 ++-----------------
>  3 files changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index d2a35e3630b1..0acb3b46d909 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1960,8 +1960,22 @@ void vlv_display_irq_postinstall(struct intel_display *display)
>  	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  }
>  
> +void ibx_display_irq_reset(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (HAS_PCH_NOP(i915))
> +		return;
> +
> +	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
> +
> +	if (HAS_PCH_CPT(i915) || HAS_PCH_LPT(i915))
> +		intel_de_write(display, SERR_INT, 0xffffffff);
> +}
> +
>  void gen8_display_irq_reset(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	enum pipe pipe;
>  
>  	if (!HAS_DISPLAY(display))
> @@ -1977,6 +1991,9 @@ void gen8_display_irq_reset(struct intel_display *display)
>  
>  	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>  	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
> +
> +	if (HAS_PCH_SPLIT(i915))
> +		ibx_display_irq_reset(display);
>  }
>  
>  void gen11_display_irq_reset(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index f72727768351..c0efda1c949c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -54,6 +54,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
>  
>  void i9xx_display_irq_reset(struct intel_display *display);
> +void ibx_display_irq_reset(struct intel_display *display);
>  void vlv_display_irq_reset(struct intel_display *display);
>  void gen8_display_irq_reset(struct intel_display *display);
>  void gen11_display_irq_reset(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index c1f938a1da44..d06694d6531e 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -658,23 +658,9 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  	return IRQ_HANDLED;
>  }
>  
> -static void ibx_irq_reset(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -
> -	if (HAS_PCH_NOP(dev_priv))
> -		return;
> -
> -	gen2_irq_reset(uncore, SDE_IRQ_REGS);
> -
> -	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
> -}
> -
> -/* drm_dma.h hooks
> -*/
>  static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	gen2_irq_reset(uncore, DE_IRQ_REGS);
> @@ -690,7 +676,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	gen5_gt_irq_reset(to_gt(dev_priv));
>  
> -	ibx_irq_reset(dev_priv);
> +	ibx_display_irq_reset(display);

I guess we should extract ilk_display_irq_reset() at some point...

This one is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
> @@ -717,10 +703,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  	gen8_gt_irq_reset(to_gt(dev_priv));
>  	gen8_display_irq_reset(display);
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> -
> -	if (HAS_PCH_SPLIT(dev_priv))
> -		ibx_irq_reset(dev_priv);
> -
>  }
>  
>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
