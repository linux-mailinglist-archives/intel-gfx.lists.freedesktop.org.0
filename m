Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3347D6824
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861C910E0EB;
	Wed, 25 Oct 2023 10:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C209A10E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229105; x=1729765105;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OdF8U6gFOtqS5/flqfbuhTnmhi9++s+Z2QQvP+UG06I=;
 b=ZFDVD2xs/Qiq4DH34teVK/+0kBRGHA5fd1qa1cx+F+95NNpj+08ddN+2
 X3kyA0cLc19U5c1RjbdCglG2ahYLozSaSCpePBaNklkpjXJGwzrYpiuK9
 TQJKa8IM+2wqlVTgkzWWqWhPYDCaR1yhmTOeFg76VQcPa+E/SE0GPwAJ5
 B7vu2B64irKf7F4WLy/MMsNFhVsHQcLEvS20RrAfVwhKGUlI+ydKFznID
 kf3eeuqy7Dn+De3kTnB8dbsrRSzWgAEKpuBrVWwtJ0pG2mINNLol7IT4Q
 m3M8/QIyvaC3Qf8hum7OfYKK1IO/CZ/7Nhx17l5HiViMtGcgfGR+V5dG3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="42992"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="42992"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882408596"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882408596"
Received: from lababeix-mobl1.ger.corp.intel.com (HELO [10.249.41.109])
 ([10.249.41.109])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:18:21 -0700
Message-ID: <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
Date: Wed, 25 Oct 2023 11:18:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231023103328.1495942-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
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


On 23/10/2023 11:33, Luca Coelho wrote:
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
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
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
>   drivers/gpu/drm/i915/display/intel_display.h | 20 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vblank.c  | 19 ++++++++++++-------
>   2 files changed, 32 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 0e5dffe8f018..2a33fcc8ce68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -559,4 +559,24 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
>   
>   bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
>   
> +/*
> + * The uncore version of the spin lock functions is used to decide
> + * whether we need to lock the uncore lock or not.  This is only
> + * needed in i915, not in Xe.  Keep the decision-making centralized
> + * here.
> + */
> +static inline void intel_spin_lock(spinlock_t *lock)
> +{
> +#ifdef I915
> +	spin_lock(lock);
> +#endif
> +}
> +
> +static inline void intel_spin_unlock(spinlock_t *lock)
> +{
> +#ifdef I915
> +	spin_unlock(lock);
> +#endif
> +}
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2cec2abf9746..9b482d648762 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -306,7 +306,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>   	 * register reads, potentially with preemption disabled, so the
>   	 * following code must not block on uncore.lock.
>   	 */
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);

Does Xe needs interrupts off?

> +	intel_spin_lock(&dev_priv->uncore.lock);

My 2p/c is that intel_spin_lock as a name does not work when it is 
specifically about the single and specific (uncore) lock. One cannot 
call intel_spin_lock(some->other->lock) etc.

Perhaps call it i915_uncore_lock_irqsave(i915, flags) so it is clear it 
is only for i915.

Regards,

Tvrtko

>   	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>   
> @@ -374,7 +375,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>   
>   	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>   
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	intel_spin_unlock(&dev_priv->uncore.lock);
> +	local_irq_restore(irqflags);
>   
>   	/*
>   	 * While in vblank, position will be negative
> @@ -412,9 +414,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>   	unsigned long irqflags;
>   	int position;
>   
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_spin_lock(&dev_priv->uncore.lock);
> +
>   	position = __intel_get_crtc_scanline(crtc);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_spin_unlock(&dev_priv->uncore.lock);
> +	local_irq_restore(irqflags);
>   
>   	return position;
>   }
> @@ -537,7 +543,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   	 * Need to audit everything to make sure it's safe.
>   	 */
>   	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	spin_lock(&i915->uncore.lock);
> +	intel_spin_lock(&i915->uncore.lock);
>   
>   	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>   
> @@ -546,7 +552,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   	crtc->mode_flags = mode_flags;
>   
>   	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
> -
> -	spin_unlock(&i915->uncore.lock);
> +	intel_spin_unlock(&i915->uncore.lock);
>   	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>   }
