Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 352EBA7036B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 15:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD20810E580;
	Tue, 25 Mar 2025 14:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZPlpkrR2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4D310E57F;
 Tue, 25 Mar 2025 14:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742912321; x=1774448321;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YxCw4TpOAYGNuEqQPCU4x5ZqXCOku1Qr9B0GsKTyjQ0=;
 b=ZPlpkrR2h93n3jF7pKwA6xMXiz/oWXlLG+D7BT3nyFfLxL1Us0krRAlk
 P6p1g63bVuqpa19qqNzdRXDVomhO3YLUxQCatRPxioPiZPuCvAF7D4AIC
 1VdmrjRKwDazK8NkAWyFlNb1GwomLXElEoyM2VfXXqgYnkElEvGShrD6o
 7HiH3Cfv9yHilXzfCldmzU++rPTgU8aH9xMw+qEdexqhQfaEOlEUBiqYK
 ZUZKSjf9ONCm7c+ddXfWi8PR64+NCgN0cTsRw/mZmzUELptLLgBko0zuv
 z7lx0USSwTUeEMEHKhPXiwoflS5pmXROpfHY2c6HiL8vVW+CSj72L9HJ5 g==;
X-CSE-ConnectionGUID: 7NDR7c4/SyKvex1NmuRDOQ==
X-CSE-MsgGUID: l73PotrESoubxXH4ypBMzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="46898444"
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="46898444"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 07:18:40 -0700
X-CSE-ConnectionGUID: KKibKXCpQv+2BD63oR9JBw==
X-CSE-MsgGUID: +eJhr3O6QjaP5UxKIlSlKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="129578494"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 25 Mar 2025 07:18:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Mar 2025 16:18:37 +0200
Date: Tue, 25 Mar 2025 16:18:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: use display snapshot mechanism for display irq
 regs
Message-ID: <Z-K7PcIQy_4xF6aN@intel.com>
References: <20250325125954.1805212-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250325125954.1805212-1-jani.nikula@intel.com>
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

On Tue, Mar 25, 2025 at 02:59:54PM +0200, Jani Nikula wrote:
> Move more display specific parts of GPU error logging behind the display
> snapshot interface.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 43 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++
>  .../drm/i915/display/intel_display_snapshot.c |  5 +++
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 30 -------------
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  2 -
>  5 files changed, 53 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index d2a35e3630b1..832aa03f211b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -2329,3 +2329,46 @@ void intel_display_irq_init(struct intel_display *display)
>  
>  	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
>  }
> +
> +struct intel_display_irq_snapshot {
> +	u32 ier;
> +	u32 derrmr;
> +};
> +
> +struct intel_display_irq_snapshot *
> +intel_display_irq_snapshot_capture(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_uncore *uncore = to_intel_uncore(display->drm);
> +	struct intel_display_irq_snapshot *snapshot;
> +
> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> +	if (!snapshot)
> +		return NULL;
> +
> +	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)
> +		snapshot->derrmr = intel_uncore_read(uncore, DERRMR);
> +
> +	if (DISPLAY_VER(display) >= 8)
> +		snapshot->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
> +	else if (display->platform.valleyview)
> +		snapshot->ier = intel_uncore_read(uncore, VLV_IER);
> +	else if (HAS_PCH_SPLIT(i915))
> +		snapshot->ier = intel_uncore_read(uncore, DEIER);
> +	else if (DISPLAY_VER(display) == 2)
> +		snapshot->ier = intel_uncore_read16(uncore, GEN2_IER);

Looks like I failed to eliminate all the 16 bit accesses...

> +	else
> +		snapshot->ier = intel_uncore_read(uncore, GEN2_IER);

DERRMR is pretty much the only register here that actually matters
for the GT stuff. The rest look like mostly nonsense to me.
I suppose GEN2_IER might make sense for pre-ilk since that's where
the engine interrupts live on those platforms (but maybe that should
be captured into gtier[0]?)

I would just nuke the rest.

> +
> +	return snapshot;
> +}
> +
> +void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot,
> +				      struct drm_printer *p)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	drm_printf(p, "IER: 0x%08x\n", snapshot->ier);
> +	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index f72727768351..4f0e27a37854 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -12,7 +12,9 @@
>  
>  enum pipe;
>  struct drm_crtc;
> +struct drm_printer;
>  struct intel_display;
> +struct intel_display_irq_snapshot;
>  
>  void valleyview_enable_display_irqs(struct intel_display *display);
>  void valleyview_disable_display_irqs(struct intel_display *display);
> @@ -82,4 +84,7 @@ void intel_display_irq_init(struct intel_display *display);
>  
>  void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
>  
> +struct intel_display_irq_snapshot *intel_display_irq_snapshot_capture(struct intel_display *display);
> +void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot, struct drm_printer *p);
> +
>  #endif /* __INTEL_DISPLAY_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> index 25ba043cbb65..66087302fdbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> @@ -7,6 +7,7 @@
>  
>  #include "intel_display_core.h"
>  #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_params.h"
>  #include "intel_display_snapshot.h"
>  #include "intel_dmc.h"
> @@ -20,6 +21,7 @@ struct intel_display_snapshot {
>  	struct intel_display_params params;
>  	struct intel_overlay_snapshot *overlay;
>  	struct intel_dmc_snapshot *dmc;
> +	struct intel_display_irq_snapshot *irq;
>  };
>  
>  struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
> @@ -38,6 +40,7 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
>  
>  	intel_display_params_copy(&snapshot->params);
>  
> +	snapshot->irq = intel_display_irq_snapshot_capture(display);
>  	snapshot->overlay = intel_overlay_snapshot_capture(display);
>  	snapshot->dmc = intel_dmc_snapshot_capture(display);
>  
> @@ -57,6 +60,7 @@ void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
>  	intel_display_device_info_print(&snapshot->info, &snapshot->runtime_info, p);
>  	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
>  
> +	intel_display_irq_snapshot_print(snapshot->irq, p);
>  	intel_overlay_snapshot_print(snapshot->overlay, p);
>  	intel_dmc_snapshot_print(snapshot->dmc, p);
>  }
> @@ -68,6 +72,7 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
>  
>  	intel_display_params_free(&snapshot->params);
>  
> +	kfree(snapshot->irq);
>  	kfree(snapshot->overlay);
>  	kfree(snapshot->dmc);
>  	kfree(snapshot);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 819ab933bb10..4d90331c41ef 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -726,13 +726,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
>  	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
>  }
>  
> -static void err_print_gt_display(struct drm_i915_error_state_buf *m,
> -				 struct intel_gt_coredump *gt)
> -{
> -	err_printf(m, "IER: 0x%08x\n", gt->ier);
> -	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
> -}
> -
>  static void err_print_gt_global_nonguc(struct drm_i915_error_state_buf *m,
>  				       struct intel_gt_coredump *gt)
>  {
> @@ -878,7 +871,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  		if (error->gt->uc && error->gt->uc->guc.is_guc_capture)
>  			print_guc_capture = true;
>  
> -		err_print_gt_display(m, error->gt);
>  		err_print_gt_global_nonguc(m, error->gt);
>  		err_print_gt_fences(m, error->gt);
>  
> @@ -1767,27 +1759,6 @@ gt_record_uc(struct intel_gt_coredump *gt,
>  	return error_uc;
>  }
>  
> -/* Capture display registers. */
> -static void gt_record_display_regs(struct intel_gt_coredump *gt)
> -{
> -	struct intel_uncore *uncore = gt->_gt->uncore;
> -	struct drm_i915_private *i915 = uncore->i915;
> -
> -	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
> -		gt->derrmr = intel_uncore_read(uncore, DERRMR);
> -
> -	if (GRAPHICS_VER(i915) >= 8)
> -		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
> -	else if (IS_VALLEYVIEW(i915))
> -		gt->ier = intel_uncore_read(uncore, VLV_IER);
> -	else if (HAS_PCH_SPLIT(i915))
> -		gt->ier = intel_uncore_read(uncore, DEIER);
> -	else if (GRAPHICS_VER(i915) == 2)
> -		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
> -	else
> -		gt->ier = intel_uncore_read(uncore, GEN2_IER);
> -}
> -
>  /* Capture all other registers that GuC doesn't capture. */
>  static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
>  {
> @@ -2043,7 +2014,6 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
>  	gc->_gt = gt;
>  	gc->awake = intel_gt_pm_is_awake(gt);
>  
> -	gt_record_display_regs(gc);
>  	gt_record_global_nonguc_regs(gc);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 749e1c55613e..004e7ad52a4a 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -146,7 +146,6 @@ struct intel_gt_coredump {
>  	/* Generic register state */
>  	u32 eir;
>  	u32 pgtbl_er;
> -	u32 ier;
>  	u32 gtier[6], ngtier;
>  	u32 forcewake;
>  	u32 error; /* gen6+ */
> @@ -165,7 +164,6 @@ struct intel_gt_coredump {
>  	u32 clock_period_ns;
>  
>  	/* Display related */
> -	u32 derrmr;
>  	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
>  
>  	u32 nfence;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
