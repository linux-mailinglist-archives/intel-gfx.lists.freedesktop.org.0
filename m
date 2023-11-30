Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD7A7FEEDC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 13:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFABF10E23E;
	Thu, 30 Nov 2023 12:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D06010E32D;
 Thu, 30 Nov 2023 12:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701346926; x=1732882926;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=T8QfdPuyZp/dv/rjfJCvufMy63MGBp6vYzjYVooJ5eY=;
 b=ch0Z9tfTQQYSXSbWqaUEg4rZ4ZVRrm/6yEpWEyv1uz1WIBMs+E7lhzQ2
 b5mTA9x+0B1qgjGUAuYDXABV4i3pGvlAXJo1+PzRZwRycjVPb0qg23UcX
 KkrKdkKlDrxv+GU9tZ8QVDMy/ROaIGXFvWzTWxPqlAP9rRa8ASWbMmoBB
 xZTJy4GUPYyZ5WNC3+j9w8Y8fnQpNFzFRbO/m87unKSox8w+fQo7qDSzC
 7WkAenRSlVZBaeemRx/BE7jzVENaoLCY4JOEAKO1oobpk3uzhS1eMkdtq
 H9Xj8LYhgd+D9cPRAnqd4NTkDV68u+wgA5k78IHAse4NZGkjLUollZFC3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424464638"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="424464638"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 04:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="839784550"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="839784550"
Received: from ecappell-mobl.ger.corp.intel.com (HELO [10.213.201.167])
 ([10.213.201.167])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 04:21:51 -0800
Message-ID: <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
Date: Thu, 30 Nov 2023 12:21:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231130113505.1321348-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: handle uncore spinlock when
 not available
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
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/11/2023 11:35, Luca Coelho wrote:
> The uncore code may not always be available (e.g. when we build the
> display code with Xe), so we can't always rely on having the uncore's
> spinlock.
> 
> To handle this, split the spin_lock/unlock_irqsave/restore() into
> spin_lock/unlock() followed by a call to local_irq_save/restore() and
> create wrapper functions for locking and unlocking the uncore's
> spinlock.  In these functions, we have a condition check and only
> actually try to lock/unlock the spinlock when I915 is defined, and
> thus uncore is available.
> 
> This keeps the ifdefs contained in these new functions and all such
> logic inside the display code.
> 
> Cc: Tvrtko Ursulin <tvrto.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> 
> In v2:
> 
>     * Renamed uncore_spin_*() to intel_spin_*()
>     * Corrected the order: save, lock, unlock, restore
> 
> In v3:
> 
>     * Undid the change to pass drm_i915_private instead of the lock
>       itself, since we would have to include i915_drv.h and that pulls
>       in a truckload of other includes.
> 
> In v4:
> 
>     * After a brief attempt to replace this with a different patch,
>       we're back to this one;
>     * Pass drm_i195_private again, and move the functions to
>       intel_vblank.c, so we don't need to include i915_drv.h in a
>       header file and it's already included in intel_vblank.c;
> 
> In v5:
> 
>     * Remove stray include in intel_display.h;
>     * Remove unnecessary inline modifiers in the new functions.
> 
> In v6:
> 
>     * Just removed the umlauts from Ville's name, because patchwork
>       didn't catch my patch and I suspect it was some UTF-8 confusion.
> 
>   drivers/gpu/drm/i915/display/intel_vblank.c | 49 ++++++++++++++++-----
>   1 file changed, 39 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2cec2abf9746..221fcd6bf77b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -265,6 +265,30 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
>   	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
>   }
>   
> +/*
> + * The uncore version of the spin lock functions is used to decide
> + * whether we need to lock the uncore lock or not.  This is only
> + * needed in i915, not in Xe.
> + *
> + * This lock in i915 is needed because some old platforms (at least
> + * IVB and possibly HSW as well), which are not supported in Xe, need
> + * all register accesses to the same cacheline to be serialized,
> + * otherwise they may hang.
> + */
> +static void intel_vblank_section_enter(struct drm_i915_private *i915)
> +{
> +#ifdef I915
> +	spin_lock(&i915->uncore.lock);
> +#endif
> +}
> +
> +static void intel_vblank_section_exit(struct drm_i915_private *i915)
> +{
> +#ifdef I915
> +	spin_unlock(&i915->uncore.lock);
> +#endif
> +}
> +
>   static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>   				     bool in_vblank_irq,
>   				     int *vpos, int *hpos,
> @@ -302,11 +326,12 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>   	}
>   
>   	/*
> -	 * Lock uncore.lock, as we will do multiple timing critical raw
> -	 * register reads, potentially with preemption disabled, so the
> -	 * following code must not block on uncore.lock.
> +	 * Enter vblank critical section, as we will do multiple
> +	 * timing critical raw register reads, potentially with
> +	 * preemption disabled, so the following code must not block.
>   	 */
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_vblank_section_enter(dev_priv);

Shouldn't local_irq_save go into intel_vblank_section_enter()? It seems 
all callers from both i915 and xe end up doing that anyway and naming 
"vblank_start" was presumed there would be more to the section than 
cacheline mmio bug. I mean that there is some benefit from keeping the 
readout timings tight.

Regards,

Tvrtko

>   
>   	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>   
> @@ -374,7 +399,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>   
>   	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>   
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	intel_vblank_section_exit(dev_priv);
> +	local_irq_restore(irqflags);
>   
>   	/*
>   	 * While in vblank, position will be negative
> @@ -412,9 +438,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>   	unsigned long irqflags;
>   	int position;
>   
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_vblank_section_enter(dev_priv);
> +
>   	position = __intel_get_crtc_scanline(crtc);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_vblank_section_exit(dev_priv);
> +	local_irq_restore(irqflags);
>   
>   	return position;
>   }
> @@ -537,7 +567,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   	 * Need to audit everything to make sure it's safe.
>   	 */
>   	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	spin_lock(&i915->uncore.lock);
> +	intel_vblank_section_enter(i915);
>   
>   	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>   
> @@ -546,7 +576,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   	crtc->mode_flags = mode_flags;
>   
>   	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
> -
> -	spin_unlock(&i915->uncore.lock);
> +	intel_vblank_section_exit(i915);
>   	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>   }
