Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9ACA84990
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 18:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291CF10EA05;
	Thu, 10 Apr 2025 16:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KV4rVxre";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A5410EA05;
 Thu, 10 Apr 2025 16:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744302410; x=1775838410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Tz9gE17b4nO+5qo+fgmkQtUo7+YSeaVNBHXWutG2yYU=;
 b=KV4rVxreSB952FyxEsTzy/yHyAedBZmjRF+f0gU8JKy2T9Zhej3Hdvug
 Q39EfJcv4/gLqwAbmGydsbhB9EzupiIRZmEV9yXrZJBTa/kCBZvrLXwL8
 Z1dR85Ws1RL55QezrEo7QkHoyWbHfsFe3z55SgajwopeDO3K9oq1Cgc5O
 VR4VWM7nX3aLIFdtEzjSKEsFxf5b38jJjPGX1rT5beUFUI/x9YoRmxY3b
 x2B8tIN03e6d1PAwTRFkJRkGLQLg5pvt9HL9E/Ayj+4rSQ0d0n3qJko5v
 dan6jUZ4vwwikbTce6gqiFU7B5f78EpdAXJGrY5aTkqwS27/iyu9/XK7J w==;
X-CSE-ConnectionGUID: QrwNyDoIS8K5bE1+wC6+GQ==
X-CSE-MsgGUID: 1PngJRhRTNuBVCXxyZzzCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="57219293"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="57219293"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 09:26:50 -0700
X-CSE-ConnectionGUID: JkzYXnE8TuO1PVfJFGVn4g==
X-CSE-MsgGUID: fpbIHpRtQwiE7Ax6RjqWqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134127312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Apr 2025 09:26:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Apr 2025 19:26:47 +0300
Date: Thu, 10 Apr 2025 19:26:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/5] drm/i915: use display snapshot mechanism for
 display irq regs
Message-ID: <Z_fxR-5BzubYXZU6@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <af4ceaac9fd48358db027c866c2d59b463507280.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <af4ceaac9fd48358db027c866c2d59b463507280.1744208554.git.jani.nikula@intel.com>
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

On Wed, Apr 09, 2025 at 05:23:46PM +0300, Jani Nikula wrote:
> Move more display specific parts of GPU error logging behind the display
> snapshot interface.
> 
> With the display register capture reduced to just one register, DERRMR,
> there's quite a bit of boilerplate here. However, it's still a nice
> abstraction and removes a DISPLAY_VER() usage from core i915. With this
> approach, it's also easy to add to xe as needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h  |  5 ++++
>  .../drm/i915/display/intel_display_snapshot.c |  5 ++++
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 18 ------------
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  1 -
>  5 files changed, 38 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index d2a35e3630b1..f5dc050a6344 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -2329,3 +2329,31 @@ void intel_display_irq_init(struct intel_display *display)
>  
>  	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
>  }
> +
> +struct intel_display_irq_snapshot {
> +	u32 derrmr;
> +};
> +
> +struct intel_display_irq_snapshot *
> +intel_display_irq_snapshot_capture(struct intel_display *display)
> +{
> +	struct intel_display_irq_snapshot *snapshot;
> +
> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> +	if (!snapshot)
> +		return NULL;
> +
> +	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)

Technically we should exclude vlv/chv here (or just exclude all gmch).
IIRC vlv/chv have some kind of other register with a potentially similar
function, but we don't use that anywhere.

> +		snapshot->derrmr = intel_de_read(display, DERRMR);
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
> index 50cd0c433e6d..62e4a293ed9b 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -726,12 +726,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
>  	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
>  }
>  
> -static void err_print_gt_display(struct drm_i915_error_state_buf *m,
> -				 struct intel_gt_coredump *gt)
> -{
> -	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
> -}
> -
>  static void err_print_gt_global_nonguc(struct drm_i915_error_state_buf *m,
>  				       struct intel_gt_coredump *gt)
>  {
> @@ -877,7 +871,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  		if (error->gt->uc && error->gt->uc->guc.is_guc_capture)
>  			print_guc_capture = true;
>  
> -		err_print_gt_display(m, error->gt);
>  		err_print_gt_global_nonguc(m, error->gt);
>  		err_print_gt_fences(m, error->gt);
>  
> @@ -1766,16 +1759,6 @@ gt_record_uc(struct intel_gt_coredump *gt,
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
> -}
> -
>  /* Capture all other registers that GuC doesn't capture. */
>  static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
>  {
> @@ -2034,7 +2017,6 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
>  	gc->_gt = gt;
>  	gc->awake = intel_gt_pm_is_awake(gt);
>  
> -	gt_record_display_regs(gc);
>  	gt_record_global_nonguc_regs(gc);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index ac55603a81d7..004e7ad52a4a 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -164,7 +164,6 @@ struct intel_gt_coredump {
>  	u32 clock_period_ns;
>  
>  	/* Display related */

That comment should be nuked as well.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -	u32 derrmr;
>  	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
>  
>  	u32 nfence;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
