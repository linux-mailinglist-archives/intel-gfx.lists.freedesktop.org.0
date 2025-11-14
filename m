Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF07BC5D811
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:13:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F80510EA74;
	Fri, 14 Nov 2025 14:13:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBwzb3p+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2C910EA74;
 Fri, 14 Nov 2025 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763129585; x=1794665585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SHTrHXpTM8/V0PmmCx5AEsAviRk55btR4khXfhMy44k=;
 b=eBwzb3p+XyImPwIIOEF5YcibEXPk98h81dIZnnRYt7ApfMxe3kLj4wMo
 d3dyd1C7dzVKAVHD0xkAR3LR5j1r6WOIJvBXGw3rvUZugg6ogRJUnMj1t
 zF6V8ejDhhBvEs3OJqgSYbDlj9s4nrCpt+bp9TP7wak+HqROpzb/Ba7Bb
 kvianmiWuboaSH2R8SuijREh/3A4DGqde1kqZepfDEg4V5Bp9p/vyaRFl
 QztcxQow9nwsXzvu0yMHjrvv7CUn8ImaKRaEk7Lnc7ABC6MY6fm66DYp4
 yMB7lG94i6YOz+WDncwXPOHwIroCGWfi9oKysv+uwOp9SHMR4MkaXIvvJ A==;
X-CSE-ConnectionGUID: wxaYeVPxTr+C8xn7lL8dxA==
X-CSE-MsgGUID: 19q7omnEQlu7SZDTn8Hokw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="69093695"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="69093695"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:13:04 -0800
X-CSE-ConnectionGUID: W7dsLJRET2mohBJVvex+Dg==
X-CSE-MsgGUID: BGxfWRolTXy5pJMwpPb1ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="194773827"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:13:02 -0800
Date: Fri, 14 Nov 2025 16:13:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/10] drm/i915/rps: call RPS functions via the parent
 interface
Message-ID: <aRc47IAHVAeWMvF3@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <51b4e18a2d306e6b903a5ea9a73f3ef6f30a09ff.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <51b4e18a2d306e6b903a5ea9a73f3ef6f30a09ff.1763115899.git.jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 12:26:46PM +0200, Jani Nikula wrote:
> Add struct intel_display_rps_interface to the display parent interface,
> and call the RPS functions through it. The RPS interface is optional.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_rps.c  | 32 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_parent.c   | 23 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_parent.h   |  6 ++++
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 34 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rps.h           |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c            |  2 ++
>  include/drm/intel/display_parent_interface.h  | 10 ++++++
>  7 files changed, 93 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> index b6720f7c09d9..e70c4f0eab80 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> @@ -3,16 +3,18 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> +#include <linux/dma-fence.h>
> +
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_vblank.h>
>  
> -#include "gt/intel_rps.h"
> -#include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_request.h"
>  #include "intel_display_core.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_rps.h"
>  #include "intel_display_types.h"
> +#include "intel_parent.h"
>  
>  struct wait_rps_boost {
>  	struct wait_queue_entry wait;
> @@ -25,15 +27,10 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
>  			unsigned mode, int sync, void *key)
>  {
>  	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
> -	struct i915_request *rq = to_request(wait->fence);
> -
> -	/*
> -	 * If we missed the vblank, but the request is already running it
> -	 * is reasonable to assume that it will complete before the next
> -	 * vblank without our intervention, so leave RPS alone.
> -	 */
> -	if (!i915_request_started(rq))
> -		intel_rps_boost(rq);
> +	struct intel_display *display = to_intel_display(wait->crtc->dev);
> +
> +	intel_parent_rps_boost(display, wait->fence);
> +
>  	dma_fence_put(wait->fence);
>  
>  	drm_crtc_vblank_put(wait->crtc);
> @@ -49,6 +46,9 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>  	struct intel_display *display = to_intel_display(crtc->dev);
>  	struct wait_rps_boost *wait;
>  
> +	if (!intel_parent_rps_available(display))
> +		return;
> +
>  	if (!dma_fence_is_i915(fence))
>  		return;
>  
> @@ -77,12 +77,14 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
>  					struct intel_atomic_state *state,
>  					bool interactive)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> +	if (!intel_parent_rps_available(display))
> +		return;
>  
>  	if (state->rps_interactive == interactive)
>  		return;
>  
> -	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
> +	intel_parent_rps_mark_interactive(display, interactive);
> +
>  	state->rps_interactive = interactive;
>  }
>  
> @@ -102,7 +104,5 @@ void ilk_display_rps_disable(struct intel_display *display)
>  
>  void ilk_display_rps_irq_handler(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	gen5_rps_irq_handler(&to_gt(i915)->rps);
> +	intel_parent_rps_ilk_irq_handler(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 3dd31852e2e1..9370da9d215c 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -32,6 +32,29 @@ void intel_parent_irq_synchronize(struct intel_display *display)
>  	display->parent->irq->synchronize(display->drm);
>  }
>  
> +bool intel_parent_rps_available(struct intel_display *display)
> +{
> +	return display->parent->rps;
> +}
> +
> +void intel_parent_rps_boost(struct intel_display *display, struct dma_fence *fence)
> +{
> +	if (display->parent->rps)
> +		display->parent->rps->boost(fence);
> +}
> +
> +void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive)
> +{
> +	if (display->parent->rps)
> +		display->parent->rps->mark_interactive(display->drm, interactive);
> +}
> +
> +void intel_parent_rps_ilk_irq_handler(struct intel_display *display)
> +{
> +	if (display->parent->rps)
> +		display->parent->rps->ilk_irq_handler(display->drm);
> +}
> +
>  bool intel_parent_vgpu_active(struct intel_display *display)
>  {
>  	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index fc6799db0361..41d6943786fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -6,11 +6,17 @@
>  
>  #include <linux/types.h>
>  
> +struct dma_fence;
>  struct intel_display;
>  
>  bool intel_parent_irq_enabled(struct intel_display *display);
>  void intel_parent_irq_synchronize(struct intel_display *display);
>  
> +bool intel_parent_rps_available(struct intel_display *display);
> +void intel_parent_rps_boost(struct intel_display *display, struct dma_fence *fence);
> +void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
> +void intel_parent_rps_ilk_irq_handler(struct intel_display *display);
> +
>  bool intel_parent_vgpu_active(struct intel_display *display);
>  
>  bool intel_parent_fence_support_legacy(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index b01c837ab646..61d746bda462 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -6,6 +6,7 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/intel/i915_drm.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "display/intel_display_rps.h"
>  #include "display/vlv_clock.h"
> @@ -2914,6 +2915,39 @@ bool i915_gpu_turbo_disable(void)
>  }
>  EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
>  
> +static void boost(struct dma_fence *fence)
> +{
> +	struct i915_request *rq = to_request(fence);
> +
> +	/*
> +	 * If we missed the vblank, but the request is already running it
> +	 * is reasonable to assume that it will complete before the next
> +	 * vblank without our intervention, so leave RPS alone.
> +	 */

Hmm. The comment is now rather detached from the actual vblank
related details. So I'd kinda prefer to keep the comment in the
caller, but then the request started vs. not started stuff gets
confusing. Argh.

Maybe
a) comment in caller and make this .boost_if_not_started()
b) comment here and make this .boost_after_missed_vblank()
?

Dunno.

> +	if (!i915_request_started(rq))
> +		intel_rps_boost(rq);
> +}
> +
> +static void mark_interactive(struct drm_device *drm, bool interactive)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
> +}
> +
> +static void ilk_irq_handler(struct drm_device *drm)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	gen5_rps_irq_handler(&to_gt(i915)->rps);
> +}
> +
> +const struct intel_display_rps_interface i915_display_rps_interface = {
> +	.boost = boost,
> +	.mark_interactive = mark_interactive,
> +	.ilk_irq_handler = ilk_irq_handler,
> +};
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftest_rps.c"
>  #include "selftest_slpc.c"
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index 92fb01f5a452..5dbcebd7d4a5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -128,4 +128,6 @@ static inline void intel_rps_clear_timer(struct intel_rps *rps)
>  	clear_bit(INTEL_RPS_TIMER, &rps->flags);
>  }
>  
> +extern const struct intel_display_rps_interface i915_display_rps_interface;
> +
>  #endif /* INTEL_RPS_H */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 814b430de960..ac189b90f985 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -81,6 +81,7 @@
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_gt_print.h"
>  #include "gt/intel_rc6.h"
> +#include "gt/intel_rps.h"
>  
>  #include "pxp/intel_pxp.h"
>  #include "pxp/intel_pxp_debugfs.h"
> @@ -752,6 +753,7 @@ static bool fence_support_legacy(struct drm_device *drm)
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.irq = &i915_display_irq_interface,
> +	.rps = &i915_display_rps_interface,
>  	.vgpu_active = vgpu_active,
>  	.fence_support_legacy = fence_support_legacy,
>  };
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 11767adb0083..2ea68a31224d 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -6,6 +6,7 @@
>  
>  #include <linux/types.h>
>  
> +struct dma_fence;
>  struct drm_device;
>  struct ref_tracker;
>  
> @@ -30,6 +31,12 @@ struct intel_display_irq_interface {
>  	void (*synchronize)(struct drm_device *drm);
>  };
>  
> +struct intel_display_rps_interface {
> +	void (*boost)(struct dma_fence *fence);
> +	void (*mark_interactive)(struct drm_device *drm, bool interactive);
> +	void (*ilk_irq_handler)(struct drm_device *drm);
> +};
> +
>  /**
>   * struct intel_display_parent_interface - services parent driver provides to display
>   *
> @@ -49,6 +56,9 @@ struct intel_display_parent_interface {
>  	/** @irq: IRQ interface */
>  	const struct intel_display_irq_interface *irq;
>  
> +	/** @rpm: RPS interface. Optional. */
> +	const struct intel_display_rps_interface *rps;
> +
>  	/** @vgpu_active: Is vGPU active? Optional. */
>  	bool (*vgpu_active)(struct drm_device *drm);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
