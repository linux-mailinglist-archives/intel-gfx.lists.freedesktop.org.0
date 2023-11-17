Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E247EEC91
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 08:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625A210E71C;
	Fri, 17 Nov 2023 07:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CA110E71C;
 Fri, 17 Nov 2023 07:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700205604; x=1731741604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nalAqsEdm/bhxi86eeELNA5u1nlAf6aleAY2oUcLIyY=;
 b=V/SvNyQjvq5z6RQ7pGUJGPRWuCvomG7wvwWBGY0SxTL0On25nzMf6LOT
 gJe8+ujdZt6jmDzYU95WFaoEk+ZjNdN6Lx4EZOuZP4zu1B7PQlBhjl0wN
 XpD4X7FU15sn2oQx65R/VFX03wKkdiQwAbwpRbgvTAl09Hpt9XuC6+5E4
 oxCpz+nTRcEutBDlzaEhVEm02pw/ev+SeB2vzqg25vdoXcVul/qtHyDAI
 0rxtn8iCDlcWEfu9z3Wt1KdlT62km1ka9oTtV8kr+9XlyRPPYJYOo428s
 n6OBKT9aE5NX1qh8HeT59MKPU7HNBxGoB7PuENfZzbhl/gMWugxsBCf3+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="388404512"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="388404512"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 23:20:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759090935"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759090935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 16 Nov 2023 23:19:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 09:19:59 +0200
Date: Fri, 17 Nov 2023 09:19:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <ZVcUH7G40NQ4Q-R7@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231116112700.648963-1-luciano.coelho@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 16, 2023 at 01:27:00PM +0200, Luca Coelho wrote:
> Since we're abstracting the display code from the underlying driver
> (i.e. i915 vs xe), we can't use the uncore's spinlock to protect
> critical sections of our code.
> 
> After further inspection, it seems that the spinlock is not needed at
> all and this can be handled by disabling preemption and interrupts
> instead.

uncore.lock has multiple purposes:
1. serialize all register accesses to the same cacheline as on
   certain platforms that can hang the machine
2. protect the forcewake/etc. state

1 is relevant here, 2 is not.

> 
> Change the vblank code so that we don't use uncore's spinlock anymore
> and update the comments accordingly.  While at it, also remove
> comments pointing out where to insert RT-specific calls, since we're
> now explicitly calling preempt_disable/enable() anywyay.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> Note: this replaces my previous patch discussed here:
> https://patchwork.freedesktop.org/patch/563857/
> 
> 
>  drivers/gpu/drm/i915/display/intel_vblank.c | 32 ++++++++++-----------
>  1 file changed, 15 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2cec2abf9746..28e38960806e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -302,13 +302,12 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	}
>  
>  	/*
> -	 * Lock uncore.lock, as we will do multiple timing critical raw
> -	 * register reads, potentially with preemption disabled, so the
> -	 * following code must not block on uncore.lock.
> +	 * We will do multiple timing critical raw register reads, so
> +	 * disable interrupts and preemption to make sure this code
> +	 * doesn't get blocked.
>  	 */
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
> +	local_irq_save(irqflags);
> +	preempt_disable();
>  
>  	/* Get optional system timestamp before query. */
>  	if (stime)
> @@ -372,9 +371,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	if (etime)
>  		*etime = ktime_get();
>  
> -	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	preempt_enable();
> +	local_irq_restore(irqflags);
>  
>  	/*
>  	 * While in vblank, position will be negative
> @@ -408,13 +406,14 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
>  
>  int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	unsigned long irqflags;
>  	int position;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	preempt_disable();
>  	position = __intel_get_crtc_scanline(crtc);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	preempt_enable();
> +	local_irq_restore(irqflags);
>  
>  	return position;
>  }
> @@ -528,16 +527,16 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	 * Belts and suspenders locking to guarantee everyone sees 100%
>  	 * consistent state during fastset seamless refresh rate changes.
>  	 *
> -	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
> -	 * uncore.lock takes care of __intel_get_crtc_scanline() which
> -	 * may get called elsewhere as well.
> +	 * vblank_time_lock takes care of all drm_vblank.c stuff.  For
> +	 * __intel_get_crtc_scanline() we don't need locking or
> +	 * disabling preemption and irqs, since this is already done
> +	 * by the vblank_time_lock spinlock calls.
>  	 *
>  	 * TODO maybe just protect everything (including
>  	 * __intel_get_crtc_scanline()) with vblank_time_lock?
>  	 * Need to audit everything to make sure it's safe.
>  	 */
>  	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	spin_lock(&i915->uncore.lock);
>  
>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>  
> @@ -547,6 +546,5 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  
>  	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
>  
> -	spin_unlock(&i915->uncore.lock);
>  	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>  }
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
