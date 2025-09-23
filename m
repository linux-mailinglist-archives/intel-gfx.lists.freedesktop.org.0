Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A64B96549
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C538810E634;
	Tue, 23 Sep 2025 14:40:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mwu4cgVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0BA10E634;
 Tue, 23 Sep 2025 14:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758638434; x=1790174434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sWFzYw3U/tmmiF8hk5cAGZEA0oAQ3dndv+1MiaAgQ74=;
 b=Mwu4cgVK6ulrK/qSjkzloypqNEhsLggUduHQhFY5fhw7U8Pf1JZzbs09
 iLjsAWhntrjLpvjNLy+F9842+Q3syUpb2OIwwGwQcXNAVrHCun8JAjsa4
 4o4Pe9+VnDi1ZPmP+eKOrYANj25pZqPXmRGVnJ0QPVbglAHJM/lbQhipv
 Qforovr3JSC+fakoNKjsI4PGofA7dGwlw1kaZCAJMtAPLOVPfnH6f8Fb1
 BDtdyQz5CcA0TcGt3Ios9mMrwkWHOrvtF29kvnuiCI4bxgvij64MNzFz1
 EbBcgsrbwP9ouC/VX/T1SI1Ui8HFj7G8vhSRXLdAmy78yaqpcXXDE+RZr g==;
X-CSE-ConnectionGUID: 7YCckhWuTOulrrTuLDIeLw==
X-CSE-MsgGUID: I062ZhIJReeLpuvCBKJKjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64746077"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="64746077"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:40:34 -0700
X-CSE-ConnectionGUID: O0sfTWQFSj+i1KAsOsRY9w==
X-CSE-MsgGUID: XfqIrt0rT5+WjDoRLc7IDQ==
X-ExtLoop1: 1
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:40:33 -0700
Date: Tue, 23 Sep 2025 17:40:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] drm/i915/irq: initialize gen2_imr_mask in terms
 of enable_mask
Message-ID: <aNKxXqMyyhMF66RL@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
 <e3b612ce4decea699bde2c52aeaef48bf95f7abc.1758637773.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e3b612ce4decea699bde2c52aeaef48bf95f7abc.1758637773.git.jani.nikula@intel.com>
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

On Tue, Sep 23, 2025 at 05:31:05PM +0300, Jani Nikula wrote:
> Instead of initializing gen2_imr_mask and enable_mask independently, use
> the latter for initializing the former. This also highlights the
> differences in the masks, i.e. what's set to enable_mask after it's been
> used to initialize gen2_imr_mask.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 34 ++++++++++++---------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 56f231591a3e..04de02fc08d9 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -895,26 +895,20 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
>  
> -	dev_priv->gen2_imr_mask =
> -		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> -		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> -		  I915_MASTER_ERROR_INTERRUPT);
> -
>  	enable_mask =
>  		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
>  		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> -		I915_MASTER_ERROR_INTERRUPT |
> -		I915_USER_INTERRUPT;
> +		I915_MASTER_ERROR_INTERRUPT;
>  
> -	if (DISPLAY_VER(display) >= 3) {
> -		dev_priv->gen2_imr_mask &= ~I915_ASLE_INTERRUPT;
> +	if (DISPLAY_VER(display) >= 3)
>  		enable_mask |= I915_ASLE_INTERRUPT;
> -	}
>  
> -	if (HAS_HOTPLUG(display)) {
> -		dev_priv->gen2_imr_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
> +	if (HAS_HOTPLUG(display))
>  		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
> -	}
> +
> +	dev_priv->gen2_imr_mask = ~enable_mask;
> +
> +	enable_mask |= I915_USER_INTERRUPT;

This diff is susprisingly hard to read :/

But it *looks* ok to me.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
>  
> @@ -1016,20 +1010,16 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
>  
> -	dev_priv->gen2_imr_mask =
> -		~(I915_ASLE_INTERRUPT |
> -		  I915_DISPLAY_PORT_INTERRUPT |
> -		  I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> -		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> -		  I915_MASTER_ERROR_INTERRUPT);
> -
>  	enable_mask =
>  		I915_ASLE_INTERRUPT |
>  		I915_DISPLAY_PORT_INTERRUPT |
>  		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
>  		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> -		I915_MASTER_ERROR_INTERRUPT |
> -		I915_USER_INTERRUPT;
> +		I915_MASTER_ERROR_INTERRUPT;
> +
> +	dev_priv->gen2_imr_mask = ~enable_mask;
> +
> +	enable_mask |= I915_USER_INTERRUPT;
>  
>  	if (IS_G4X(dev_priv))
>  		enable_mask |= I915_BSD_USER_INTERRUPT;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
