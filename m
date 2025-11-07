Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3987BC41056
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 18:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B18A10E111;
	Fri,  7 Nov 2025 17:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jjZZlTfN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4822910E111;
 Fri,  7 Nov 2025 17:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762536193; x=1794072193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XLz48KNuUIhDoIaevxwT9eT+uHtN8+WApD2HWcxOE4c=;
 b=jjZZlTfNnksHDx120KurEUFEXv7llY3FLbMNHrCW2o5mfu6VxoGyhctZ
 Xxu8mbB/Dwwi4GixRZGSYBwocFAknLDkZD2C417CadIAud82ZoHqUxDkX
 N8/HGgx5RifKK0WbBnXd8dwVBN7qf6/BT5I5X/f9JmF7H+529zeL67ohf
 dMjZ/gmC9db4wNGjdXyZ0xf6IE/QgOlIQ85qlWOJKestgURUT1BbR1+I+
 1uM4/plpiLR/UvataZfTUpjSZ9TlfvAhz+hAhhjpf/mvLEAhPNjji3Lx2
 tnVcv7IqFKZl0doJTwJWb53zkCODetG/gGAuIBg1kqsV9HVvBZ0h13gSC Q==;
X-CSE-ConnectionGUID: USWp/72QRDaZQNwDUmkTwQ==
X-CSE-MsgGUID: ciVM0kTXSUKipE3vEpCyKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="90158694"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="90158694"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 09:23:13 -0800
X-CSE-ConnectionGUID: eOxyXRFUTEGanC/NPTP/IA==
X-CSE-MsgGUID: 1238UHOsRAWVfOzDzvp+9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188251866"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 09:23:12 -0800
Date: Fri, 7 Nov 2025 19:23:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 tursulin@ursulin.net
Subject: Re: [PATCH 4/5] drm/i915/rps: make fence priority setting part of
 the rps interface
Message-ID: <aQ4q_CDWPdDcL_uA@intel.com>
References: <cover.1762440096.git.jani.nikula@intel.com>
 <57ac8c205046b495624b2dd17c987189f67839ea.1762440096.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57ac8c205046b495624b2dd17c987189f67839ea.1762440096.git.jani.nikula@intel.com>
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

On Thu, Nov 06, 2025 at 04:43:12PM +0200, Jani Nikula wrote:
> This is perhaps not ideal, but simplifies the interfaces, and allows us
> to get rid of the compat header in xe.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_rps.c    |  2 ++
>  drivers/gpu/drm/i915/display/intel_plane.c          |  6 +-----
>  drivers/gpu/drm/i915/gt/intel_rps.c                 |  9 +++++++++
>  .../xe/compat-i915-headers/gem/i915_gem_object.h    | 13 -------------
>  include/drm/intel/display_parent_interface.h        |  1 +
>  5 files changed, 13 insertions(+), 18 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> index 44cb9dba0c19..a2d57671c419 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> @@ -48,6 +48,8 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>  	if (!display->parent->rps)
>  		return;
>  
> +	display->parent->rps->priority_display(fence);

This is quite confusing now. This thing is about the scheduler
and nothing to do with RPS boosting.

If we were to mix these into one interface somehow then I don't think
it should be called rps_something.

As a side note, there's also some kind of performance problem with this
thing when using GUC submission. I first noticed the problem on DG2
where GPU utilization was very low on simple workloads, and skipping
this priority shuffling increases the performance considerably. Though
even with this removed, GUC submissions is still very slow compared to
execlists (when compared on TGL which still supports both submission
paths). I haven't really had time to look into it in any great detail,
but we might need to get rid of this thing for the GUC submission path.
Though I suppose the interface changes don't really matter for that
because the submission path checks would be on the i915 side anyway.

> +
>  	if (DISPLAY_VER(display) < 6)
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 505c776c0585..28ee9502b596 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -45,7 +45,6 @@
>  #include <drm/drm_panic.h>
>  #include <drm/drm_print.h>
>  
> -#include "gem/i915_gem_object.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_cdclk.h"
>  #include "intel_cursor.h"
> @@ -1176,12 +1175,9 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	if (ret < 0)
>  		goto unpin_fb;
>  
> -	if (new_plane_state->uapi.fence) {
> -		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
> -
> +	if (new_plane_state->uapi.fence)
>  		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>  						     new_plane_state->uapi.fence);
> -	}
>  
>  	/*
>  	 * We declare pageflips to be interactive and so merit a small bias
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 05b21de6c24b..1af39198e0c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -2915,6 +2915,14 @@ bool i915_gpu_turbo_disable(void)
>  }
>  EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
>  
> +static void priority_display(struct dma_fence *fence)
> +{
> +	if (!dma_fence_is_i915(fence))
> +		return;
> +
> +	i915_gem_fence_wait_priority_display(fence);
> +}
> +
>  static void boost(struct dma_fence *fence)
>  {
>  	struct i915_request *rq;
> @@ -2948,6 +2956,7 @@ static void ilk_irq_handler(struct drm_device *drm)
>  }
>  
>  const struct intel_display_rps_interface i915_display_rps_interface = {
> +	.priority_display = priority_display,
>  	.boost = boost,
>  	.mark_interactive = mark_interactive,
>  	.ilk_irq_handler = ilk_irq_handler,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
> deleted file mode 100644
> index 0548b2e0316f..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/* Copyright © 2025 Intel Corporation */
> -
> -#ifndef __I915_GEM_OBJECT_H__
> -#define __I915_GEM_OBJECT_H__
> -
> -struct dma_fence;
> -
> -static inline void i915_gem_fence_wait_priority_display(struct dma_fence *fence)
> -{
> -}
> -
> -#endif
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 8920404545be..7614b35660c9 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -27,6 +27,7 @@ struct intel_display_rpm_interface {
>  };
>  
>  struct intel_display_rps_interface {
> +	void (*priority_display)(struct dma_fence *fence);
>  	void (*boost)(struct dma_fence *fence);
>  	void (*mark_interactive)(struct drm_device *drm, bool interactive);
>  	void (*ilk_irq_handler)(struct drm_device *drm);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
