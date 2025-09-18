Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E74FB86355
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A59110E17E;
	Thu, 18 Sep 2025 17:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DTi0HfX9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4245410E04E;
 Thu, 18 Sep 2025 17:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758216672; x=1789752672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lCSGaVTNMJUX/X9l7lAPeJVsfHzQg6u8vRNhw0CSqa4=;
 b=DTi0HfX9fkRAfIB9Ze2RutDVSiJVu3gDvx7QXaXNppwuzgpNOE2VbLaU
 +q/uj/zuTwwV5jVedLNqz/BEnOqJcYQoz9CZH0K2wITOEHLR4Rhq/U5BS
 vXtJStMmMmjYvTMt+jmYKWipVNtd13tBR1YVfempm0a4yCxcIDUWDXZOA
 YFYsy4GZeExAXij8MpDpdIUK+HPC7X62lrRKlRZXPKKAt0mi5PeLO+n+c
 9Tn01Eof+i0ZT4tIcIiyNzEfjq8nA6kYlJEW0IoHq9Sb1mPichaktv7uQ
 ag+wUNBtk7qMbVSRkItZedJcy+UkFsbqx7t155g2VQd2A/u/keS38WeRg A==;
X-CSE-ConnectionGUID: +NnZfYm0T1iqzCmDMTOcxg==
X-CSE-MsgGUID: 8z7+4TjgRLCIpUzZiFA8pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64361929"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64361929"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:31:11 -0700
X-CSE-ConnectionGUID: nqG256lcTUSxyDszKYbJSQ==
X-CSE-MsgGUID: T/C+X/oNRTyiYxMh0Z4Vrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="206393938"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:31:10 -0700
Date: Thu, 18 Sep 2025 20:31:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/irq: use a dedicated IMR cache for VLV/CHV
Message-ID: <aMxB2qMVdcGxElZo@intel.com>
References: <cover.1758198300.git.jani.nikula@intel.com>
 <cef6dee8d0b02ff76180c5879f3056e102947a57.1758198300.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cef6dee8d0b02ff76180c5879f3056e102947a57.1758198300.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 03:25:44PM +0300, Jani Nikula wrote:
> There are three groups of platforms using i915->irq_mask independently:
> gen 2-4, VLV/CHV, and gen 5-7.
> 
> The VLV/CHV usage is purely limited to display. Move its irq_mask usage
> to struct intel_display as vlv_imr_mask for VLV/CHV.
> 
> vlv_imr_mask could be put inside a union with de_irq_mask[], but keep
> them separate to avoid accidental aliasing of the values.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
>  drivers/gpu/drm/i915/display/intel_display_irq.c  | 11 ++++-------
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 791021a4e3bb..48a707557c29 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -475,6 +475,11 @@ struct intel_display {
>  
>  		struct work_struct vblank_notify_work;
>  
> +		/*
> +		 * Cached value of VLV/CHV IMR to avoid reads in updating the
> +		 * bitfield.
> +		 */
> +		u32 vlv_imr_mask;
>  		u32 de_irq_mask[I915_MAX_PIPES];
>  		u32 pipestat_irq_mask[I915_MAX_PIPES];
>  	} irq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 123e054affbe..df718670546b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1865,8 +1865,6 @@ void vlv_display_error_irq_handler(struct intel_display *display,
>  
>  static void _vlv_display_irq_reset(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	if (display->platform.cherryview)
>  		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
>  	else
> @@ -1881,7 +1879,7 @@ static void _vlv_display_irq_reset(struct intel_display *display)
>  	i9xx_pipestat_irq_reset(display);
>  
>  	intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
> -	dev_priv->irq_mask = ~0u;
> +	display->irq.vlv_imr_mask = ~0u;
>  }
>  
>  void vlv_display_irq_reset(struct intel_display *display)
> @@ -1939,7 +1937,6 @@ static u32 vlv_error_mask(void)
>  
>  static void _vlv_display_irq_postinstall(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 pipestat_mask;
>  	u32 enable_mask;
>  	enum pipe pipe;
> @@ -1973,11 +1970,11 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
>  		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
>  			I915_LPE_PIPE_C_INTERRUPT;
>  
> -	drm_WARN_ON(display->drm, dev_priv->irq_mask != ~0u);
> +	drm_WARN_ON(display->drm, display->irq.vlv_imr_mask != ~0u);
>  
> -	dev_priv->irq_mask = ~enable_mask;
> +	display->irq.vlv_imr_mask = ~enable_mask;
>  
> -	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
> +	intel_display_irq_regs_init(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
>  }
>  
>  void vlv_display_irq_postinstall(struct intel_display *display)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
