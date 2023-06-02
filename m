Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A48371FE80
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7EA10E028;
	Fri,  2 Jun 2023 10:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704C910E028
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685700252; x=1717236252;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ttJqJvbkee6QcwmZOww87f4Tk03KBJwmQy9qhQdhbt0=;
 b=PAnXEIEH6ewM9K44b4ieBfmCAExkdNovaF+ciytSuKl8PUrtbE0B43a3
 q+sIonTNFiViXf3g1Qun2UBXJ5AG0/92jqnlt4FsoizCa/ooVcYnvQejV
 jiyI9G25Lcr1SuFPuE7Koow+MfxD7hB66wSgv3MOgPZ8B/cH+oBgKDO/W
 phFZdWDgBWPNCnlXRbIyBObQwVcI/GbABuJTgWSnNi2X3puIH65REt7wV
 i4FnVWyVrzqLW7GYD6L2IX86CJDfjgA1QY9dlwlUrlDjOuSFfnJ4vMr5U
 x3VW9AEYqOWMuQ1lHO7DEttbUkB6SmfuOHUqBnhPJ+fvu2xAZaPN7yJOG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="345412673"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="345412673"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:04:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="882022227"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="882022227"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:04:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230601212535.675751-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230601212535.675751-1-matthew.d.roper@intel.com>
Date: Fri, 02 Jun 2023 13:04:06 +0300
Message-ID: <87bkhyfaeh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Extract display init from
 intel_device_info_runtime_init
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 01 Jun 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> Moving display-specific runtime info initialization into display/ makes
> the display code more self-contained and also makes it easier to call
> from the Xe driver.

I like the direction here. A few minor issues, comments inline.

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 124 +++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  drivers/gpu/drm/i915/intel_device_info.c      | 130 +-----------------
>  3 files changed, 128 insertions(+), 127 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 464df1764a86..8d379da877dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -7,6 +7,8 @@
>  #include <drm/drm_color_mgmt.h>
>  #include <linux/pci.h>
>  
> +#include "display/intel_de.h"
> +#include "display/intel_display.h"

The display/ prefix should be dropped.

>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_display_device.h"
> @@ -778,3 +780,125 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>  
>  	return &no_display;
>  }
> +
> +void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
> +{
> +	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
> +	enum pipe pipe;
> +
> +	/* Wa_14011765242: adl-s A0,A1 */
> +	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_scalers[pipe] = 0;
> +	else if (DISPLAY_VER(i915) >= 11) {
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_scalers[pipe] = 2;
> +	} else if (DISPLAY_VER(i915) >= 9) {
> +		display_runtime->num_scalers[PIPE_A] = 2;
> +		display_runtime->num_scalers[PIPE_B] = 2;
> +		display_runtime->num_scalers[PIPE_C] = 1;
> +	}
> +
> +	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_sprites[pipe] = 4;
> +	else if (DISPLAY_VER(i915) >= 11)
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_sprites[pipe] = 6;
> +	else if (DISPLAY_VER(i915) == 10)
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_sprites[pipe] = 3;
> +	else if (IS_BROXTON(i915)) {
> +		/*
> +		 * Skylake and Broxton currently don't expose the topmost plane as its
> +		 * use is exclusive with the legacy cursor and we only want to expose
> +		 * one of those, not both. Until we can safely expose the topmost plane
> +		 * as a DRM_PLANE_TYPE_CURSOR with all the features exposed/supported,
> +		 * we don't expose the topmost plane at all to prevent ABI breakage
> +		 * down the line.
> +		 */
> +
> +		display_runtime->num_sprites[PIPE_A] = 2;
> +		display_runtime->num_sprites[PIPE_B] = 2;
> +		display_runtime->num_sprites[PIPE_C] = 1;
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_sprites[pipe] = 2;
> +	} else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915)) {
> +		for_each_pipe(i915, pipe)
> +			display_runtime->num_sprites[pipe] = 1;
> +	}
> +
> +	if ((IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) &&
> +	    !(intel_de_read(i915, GU_CNTL_PROTECTED) & DEPRESENT)) {
> +		drm_info(&i915->drm, "Display not present, disabling\n");
> +		goto display_fused_off;
> +	}
> +
> +	if (IS_GRAPHICS_VER(i915, 7, 8) && HAS_PCH_SPLIT(i915)) {
> +		u32 fuse_strap = intel_de_read(i915, FUSE_STRAP);
> +		u32 sfuse_strap = intel_de_read(i915, SFUSE_STRAP);
> +
> +		/*
> +		 * SFUSE_STRAP is supposed to have a bit signalling the display
> +		 * is fused off. Unfortunately it seems that, at least in
> +		 * certain cases, fused off display means that PCH display
> +		 * reads don't land anywhere. In that case, we read 0s.
> +		 *
> +		 * On CPT/PPT, we can detect this case as SFUSE_STRAP_FUSE_LOCK
> +		 * should be set when taking over after the firmware.
> +		 */
> +		if (fuse_strap & ILK_INTERNAL_DISPLAY_DISABLE ||
> +		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> +		    (HAS_PCH_CPT(i915) &&
> +		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> +			drm_info(&i915->drm,
> +				 "Display fused off, disabling\n");
> +			goto display_fused_off;
> +		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
> +			drm_info(&i915->drm, "PipeC fused off\n");
> +			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> +		}
> +	} else if (DISPLAY_VER(i915) >= 9) {
> +		u32 dfsm = intel_de_read(i915, SKL_DFSM);
> +
> +		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
> +			display_runtime->pipe_mask &= ~BIT(PIPE_A);
> +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
> +			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
> +		}
> +		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> +			display_runtime->pipe_mask &= ~BIT(PIPE_B);
> +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> +		}
> +		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> +			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> +		}
> +
> +		if (DISPLAY_VER(i915) >= 12 &&
> +		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
> +			display_runtime->pipe_mask &= ~BIT(PIPE_D);
> +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
> +		}

I'm not sure if it's likely at all, but what if ->pipe_mask == 0 after
the disables above? Then this no longer clears display runtime info like
it used to.

Although later on that still leads to setting info->display =
&no_display. But I guess I'd like to not make functional changes like
that here if possible.

> +
> +		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> +			display_runtime->has_hdcp = 0;
> +
> +		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> +			display_runtime->fbc_mask = 0;
> +
> +		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
> +			display_runtime->has_dmc = 0;
> +
> +		if (IS_DISPLAY_VER(i915, 10, 12) &&
> +		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
> +			display_runtime->has_dsc = 0;
> +	}
> +
> +	return;
> +
> +display_fused_off:
> +	memset(display_runtime, 0, sizeof(*display_runtime));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 2aa82cbdf1c5..4f931258d81d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -124,5 +124,6 @@ struct intel_display_device_info {
>  const struct intel_display_device_info *
>  intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>  			   u16 *ver, u16 *rel, u16 *step);
> +void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 2f79d232b04a..ed6183aaaa5c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -27,9 +27,7 @@
>  #include <drm/drm_print.h>
>  #include <drm/i915_pciids.h>
>  
> -#include "display/intel_cdclk.h"
> -#include "display/intel_de.h"
> -#include "display/intel_display.h"
> +#include "display/intel_display_device.h"
>  #include "gt/intel_gt_regs.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -411,126 +409,12 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_device_info *info = mkwrite_device_info(dev_priv);
>  	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
> -	struct intel_display_runtime_info *display_runtime =
> -		DISPLAY_RUNTIME_INFO(dev_priv);
> -	enum pipe pipe;
>  
> -	/* Wa_14011765242: adl-s A0,A1 */
> -	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_scalers[pipe] = 0;
> -	else if (DISPLAY_VER(dev_priv) >= 11) {
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_scalers[pipe] = 2;
> -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> -		display_runtime->num_scalers[PIPE_A] = 2;
> -		display_runtime->num_scalers[PIPE_B] = 2;
> -		display_runtime->num_scalers[PIPE_C] = 1;
> -	}
> +	if (HAS_DISPLAY(dev_priv))
> +		intel_display_device_info_runtime_init(dev_priv);

I'm wondering if it would make sense to have that function return a
value that would get used instead of the later !HAS_DISPLAY() branch
later. Now it feels like there's a bit of a disconnect between the
two. Or at least move that block right here:

	if (HAS_DISPLAY(dev_priv)) {
		intel_display_device_info_runtime_init(dev_priv);

		if (!HAS_DISPLAY(dev_priv)) {
			...
		}
	}

This way there's more clarity I think. Can be a follow-up patch too.

I think the contents of that branch i.e.

		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
						   DRIVER_ATOMIC);
		info->display = &no_display;

should stay here (like you've left them) to have all of that at about
the same layer.

BR,
Jani.


>  
>  	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
>  
> -	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_sprites[pipe] = 4;
> -	else if (DISPLAY_VER(dev_priv) >= 11)
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_sprites[pipe] = 6;
> -	else if (DISPLAY_VER(dev_priv) == 10)
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_sprites[pipe] = 3;
> -	else if (IS_BROXTON(dev_priv)) {
> -		/*
> -		 * Skylake and Broxton currently don't expose the topmost plane as its
> -		 * use is exclusive with the legacy cursor and we only want to expose
> -		 * one of those, not both. Until we can safely expose the topmost plane
> -		 * as a DRM_PLANE_TYPE_CURSOR with all the features exposed/supported,
> -		 * we don't expose the topmost plane at all to prevent ABI breakage
> -		 * down the line.
> -		 */
> -
> -		display_runtime->num_sprites[PIPE_A] = 2;
> -		display_runtime->num_sprites[PIPE_B] = 2;
> -		display_runtime->num_sprites[PIPE_C] = 1;
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_sprites[pipe] = 2;
> -	} else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
> -		for_each_pipe(dev_priv, pipe)
> -			display_runtime->num_sprites[pipe] = 1;
> -	}
> -
> -	if (HAS_DISPLAY(dev_priv) &&
> -	    (IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> -	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> -		drm_info(&dev_priv->drm, "Display not present, disabling\n");
> -
> -		display_runtime->pipe_mask = 0;
> -	}
> -
> -	if (HAS_DISPLAY(dev_priv) && IS_GRAPHICS_VER(dev_priv, 7, 8) &&
> -	    HAS_PCH_SPLIT(dev_priv)) {
> -		u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
> -		u32 sfuse_strap = intel_de_read(dev_priv, SFUSE_STRAP);
> -
> -		/*
> -		 * SFUSE_STRAP is supposed to have a bit signalling the display
> -		 * is fused off. Unfortunately it seems that, at least in
> -		 * certain cases, fused off display means that PCH display
> -		 * reads don't land anywhere. In that case, we read 0s.
> -		 *
> -		 * On CPT/PPT, we can detect this case as SFUSE_STRAP_FUSE_LOCK
> -		 * should be set when taking over after the firmware.
> -		 */
> -		if (fuse_strap & ILK_INTERNAL_DISPLAY_DISABLE ||
> -		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> -		    (HAS_PCH_CPT(dev_priv) &&
> -		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> -			drm_info(&dev_priv->drm,
> -				 "Display fused off, disabling\n");
> -			display_runtime->pipe_mask = 0;
> -		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
> -			drm_info(&dev_priv->drm, "PipeC fused off\n");
> -			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> -		}
> -	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
> -		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
> -
> -		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
> -			display_runtime->pipe_mask &= ~BIT(PIPE_A);
> -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
> -			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
> -		}
> -		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> -			display_runtime->pipe_mask &= ~BIT(PIPE_B);
> -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> -		}
> -		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> -			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> -		}
> -
> -		if (DISPLAY_VER(dev_priv) >= 12 &&
> -		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
> -			display_runtime->pipe_mask &= ~BIT(PIPE_D);
> -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
> -		}
> -
> -		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> -			display_runtime->has_hdcp = 0;
> -
> -		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> -			display_runtime->fbc_mask = 0;
> -
> -		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
> -			display_runtime->has_dmc = 0;
> -
> -		if (IS_DISPLAY_VER(dev_priv, 10, 12) &&
> -		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
> -			display_runtime->has_dsc = 0;
> -	}
> -
>  	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
>  		drm_info(&dev_priv->drm,
>  			 "Disabling ppGTT for VT-d support\n");
> @@ -544,14 +428,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>  						   DRIVER_ATOMIC);
>  		info->display = &no_display;
> -
> -		display_runtime->cpu_transcoder_mask = 0;
> -		memset(display_runtime->num_sprites, 0, sizeof(display_runtime->num_sprites));
> -		memset(display_runtime->num_scalers, 0, sizeof(display_runtime->num_scalers));
> -		display_runtime->fbc_mask = 0;
> -		display_runtime->has_hdcp = false;
> -		display_runtime->has_dmc = false;
> -		display_runtime->has_dsc = false;
>  	}
>  
>  	/* Disable nuclear pageflip by default on pre-g4x */

-- 
Jani Nikula, Intel Open Source Graphics Center
