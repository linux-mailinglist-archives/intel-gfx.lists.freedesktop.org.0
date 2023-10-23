Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07097D2DBA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A04210E19F;
	Mon, 23 Oct 2023 09:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63CF810E19E;
 Mon, 23 Oct 2023 09:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698052272; x=1729588272;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8+jFu5Vp2TV+kkomnbCY3dQ/UbITldVx0pm6qqfOcD4=;
 b=bWngUqxZ5MxLJ0IxymdKBOl3rZQsLRQzdJMnh9NM++t5ddFIMsyv0xxa
 IbRA6iE0oMZH2f8nh2tKJeOgHVdKmK8CoVhfcvdeGhNJH9b4Z+M8WLFEl
 uK+XVRPv17jaf0xBpMOCfOl6KnRPg8IS5pw2qyo2d1I6wcl6YANZsVPpd
 hzpD996KE7DSNHX8F007AXMSpsK8DRZWKMXFTKDNZNTpmypL69JwykEx3
 4Un+hVwIpo30T6KrjunhN/zhZIi/OEH25zho6dTSXpmbDSPZ//Ungwd5K
 9OG2OH5huuKAxNKa9V86HZgi9V54fsfAv1cb0lpriyDxJvgO5Ih2LYSE8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="384000310"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="384000310"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="874642740"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="874642740"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:11:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231023084322.1482161-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231023084322.1482161-1-luciano.coelho@intel.com>
Date: Mon, 23 Oct 2023 12:11:07 +0300
Message-ID: <87fs21d7pw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: handle uncore spinlock when
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

On Mon, 23 Oct 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
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
> Note: this patch was accidentally sent only to intel-xe[1], but should
> have been sent to intel-gfx.  Thus, this is v2.
>
> In v2:
>
>    * Renamed uncore_spin_*() to intel_spin_*()
>    * Corrected the order: save, lock, unlock, restore
>
> [1] https://patchwork.freedesktop.org/patch/563288/
>
>
>  drivers/gpu/drm/i915/display/intel_display.h | 22 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vblank.c  | 19 ++++++++++-------
>  2 files changed, 33 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 0e5dffe8f018..099476906f4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -29,6 +29,7 @@
>  
>  #include "i915_reg_defs.h"
>  #include "intel_display_limits.h"
> +#include "i915_drv.h"

In general, please avoid including headers from headers. In particular,
please don't include i915_drv.h from headers. The header
interdependencies are pretty bad already, and we need to clean it up.

BR,
Jani.



>  
>  enum drm_scaling_filter;
>  struct dpll;
> @@ -41,7 +42,6 @@ struct drm_file;
>  struct drm_format_info;
>  struct drm_framebuffer;
>  struct drm_i915_gem_object;
> -struct drm_i915_private;
>  struct drm_mode_fb_cmd2;
>  struct drm_modeset_acquire_ctx;
>  struct drm_plane;
> @@ -559,4 +559,24 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
>  
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
>  
> +/*
> + * The uncore version of the spin lock functions is used to decide
> + * whether we need to lock the uncore lock or not.  This is only
> + * needed in i915, not in Xe.  Keep the decision-making centralized
> + * here.
> + */
> +static inline void intel_spin_lock(struct drm_i915_private *i915)
> +{
> +#ifdef I915
> +	spin_lock(&i915->uncore.lock);
> +#endif
> +}
> +
> +static inline void intel_spin_unlock(struct drm_i915_private *i915)
> +{
> +#ifdef I915
> +	spin_unlock(&i915->uncore.lock);
> +#endif
> +}
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2cec2abf9746..7c624ea7e902 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -306,7 +306,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	 * register reads, potentially with preemption disabled, so the
>  	 * following code must not block on uncore.lock.
>  	 */
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_spin_lock(dev_priv);
>  
>  	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>  
> @@ -374,7 +375,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  
>  	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>  
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	intel_spin_unlock(dev_priv);
> +	local_irq_restore(irqflags);
>  
>  	/*
>  	 * While in vblank, position will be negative
> @@ -412,9 +414,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	unsigned long irqflags;
>  	int position;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_spin_lock(dev_priv);
> +
>  	position = __intel_get_crtc_scanline(crtc);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_spin_unlock(dev_priv);
> +	local_irq_restore(irqflags);
>  
>  	return position;
>  }
> @@ -537,7 +543,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	 * Need to audit everything to make sure it's safe.
>  	 */
>  	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	spin_lock(&i915->uncore.lock);
> +	intel_spin_lock(i915);
>  
>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>  
> @@ -546,7 +552,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	crtc->mode_flags = mode_flags;
>  
>  	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
> -
> -	spin_unlock(&i915->uncore.lock);
> +	intel_spin_unlock(i915);
>  	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>  }

-- 
Jani Nikula, Intel
