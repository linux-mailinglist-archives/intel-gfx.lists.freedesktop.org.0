Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC027B8635E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4997610E268;
	Thu, 18 Sep 2025 17:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKvtOIhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5827C10E268;
 Thu, 18 Sep 2025 17:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758216701; x=1789752701;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8a08ue9n0+17GP6X+tn3E2B+B88PTekycwD0wtBkOVU=;
 b=NKvtOIhj9kcuWFEql7Gylpvc+BUxUK8fDnSxDoBFeYSUkv4744rZsfYu
 c4Lyp3m7o0DAeYwrU9IjhD9hxFxCia6eJkfmUOvBclWPuvQoufevTjxA7
 SjmLYrBR5LIBhQWJ1nU00oMBuASKjRngrggUkpKZWicByQNiSZ7vRHVkj
 Ozhw4jUOfwjxATXNb4KEGscCcWKcvOfw5BvxRjeYfyBJTgiGO7LfiS6i6
 iDNsb7mo7W0a7cPK3KZF4jXUcRYGf9k4ABWFQdqHCdVZcGwDfS4LoiOTo
 0q8cjx0BYglf33RoJVqxoaqD2k1MkGwcE6wsDx3EsOw2VSripJPnc0WFm g==;
X-CSE-ConnectionGUID: Fn8KlUvKT2+4m1XkxA+SAA==
X-CSE-MsgGUID: 16pxyHGiQY2ZFEPbaA+WoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64361975"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64361975"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:31:40 -0700
X-CSE-ConnectionGUID: I3doyEAOSY6fhaneFyEoPg==
X-CSE-MsgGUID: WfoBRc8HSxyJ/SGjJiOHcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="206393997"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:31:39 -0700
Date: Thu, 18 Sep 2025 20:31:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/irq: use a dedicated IMR cache for gen 5-7
Message-ID: <aMxB98gTjADgWfpN@intel.com>
References: <cover.1758198300.git.jani.nikula@intel.com>
 <adf60e74b890d52dd20ab4673111ae2063d33b49.1758198300.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <adf60e74b890d52dd20ab4673111ae2063d33b49.1758198300.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 03:25:45PM +0300, Jani Nikula wrote:
> There are three groups of platforms using i915->irq_mask independently:
> gen 2-4, VLV/CHV, and gen 5-7.
> 
> The gen 5-7 usage is primarily limited to display. Move its irq_mask
> usage to struct intel_display as ilk_de_imr_mask for gen 5-7.
> 
> ilk_de_imr_mask could be put inside a union with with vlv_imr_mask and
> de_irq_mask[], but keep them separate to avoid accidental aliasing of
> the values.
> 
> With this, we can also drop the irq_mask member from struct xe_device.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
>  drivers/gpu/drm/i915/display/intel_display_irq.c  | 14 ++++++--------
>  drivers/gpu/drm/i915/i915_irq.c                   |  2 +-
>  drivers/gpu/drm/xe/xe_device_types.h              |  3 ---
>  4 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 48a707557c29..4a52bbe327b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -480,6 +480,11 @@ struct intel_display {
>  		 * bitfield.
>  		 */
>  		u32 vlv_imr_mask;
> +		/*
> +		 * Cached value of gen 5-7 DE IMR to avoid reads in updating the
> +		 * bitfield.
> +		 */
> +		u32 ilk_de_imr_mask;
>  		u32 de_irq_mask[I915_MAX_PIPES];
>  		u32 pipestat_irq_mask[I915_MAX_PIPES];
>  	} irq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index df718670546b..f4ba9b08e044 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -140,14 +140,14 @@ void ilk_update_display_irq(struct intel_display *display,
>  	lockdep_assert_held(&display->irq.lock);
>  	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>  
> -	new_val = dev_priv->irq_mask;
> +	new_val = display->irq.ilk_de_imr_mask;
>  	new_val &= ~interrupt_mask;
>  	new_val |= (~enabled_irq_mask & interrupt_mask);
>  
> -	if (new_val != dev_priv->irq_mask &&
> +	if (new_val != display->irq.ilk_de_imr_mask &&
>  	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
> -		dev_priv->irq_mask = new_val;
> -		intel_de_write(display, DEIMR, dev_priv->irq_mask);
> +		display->irq.ilk_de_imr_mask = new_val;
> +		intel_de_write(display, DEIMR, display->irq.ilk_de_imr_mask);
>  		intel_de_posting_read(display, DEIMR);
>  	}
>  }
> @@ -2180,8 +2180,6 @@ void valleyview_disable_display_irqs(struct intel_display *display)
>  
>  void ilk_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	u32 display_mask, extra_mask;
>  
>  	if (DISPLAY_VER(display) >= 7) {
> @@ -2213,11 +2211,11 @@ void ilk_de_irq_postinstall(struct intel_display *display)
>  	if (display->platform.ironlake && display->platform.mobile)
>  		extra_mask |= DE_PCU_EVENT;
>  
> -	i915->irq_mask = ~display_mask;
> +	display->irq.ilk_de_imr_mask = ~display_mask;
>  
>  	ibx_irq_postinstall(display);
>  
> -	intel_display_irq_regs_init(display, DE_IRQ_REGS, i915->irq_mask,
> +	intel_display_irq_regs_init(display, DE_IRQ_REGS, display->irq.ilk_de_imr_mask,
>  				    display_mask | extra_mask);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 8d5da222a187..e5fdfd51b549 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -659,7 +659,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	gen2_irq_reset(uncore, DE_IRQ_REGS);
> -	dev_priv->irq_mask = ~0u;
> +	display->irq.ilk_de_imr_mask = ~0u;
>  
>  	if (GRAPHICS_VER(dev_priv) == 7)
>  		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index a05b453245cc..6cf2466348b4 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -624,9 +624,6 @@ struct xe_device {
>  	/* To shut up runtime pm macros.. */
>  	struct xe_runtime_pm {} runtime_pm;
>  
> -	/* only to allow build, not used functionally */
> -	u32 irq_mask;
> -
>  	struct intel_uncore {
>  		spinlock_t lock;
>  	} uncore;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
