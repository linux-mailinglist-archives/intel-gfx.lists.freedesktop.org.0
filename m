Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33493C5D876
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F10510EA83;
	Fri, 14 Nov 2025 14:19:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqOAXPlv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D37410EA83;
 Fri, 14 Nov 2025 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763129978; x=1794665978;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j7/MRm6841BLANaOhS6jFCwsCvuiLMLXYB41nDa46qU=;
 b=QqOAXPlviPJKlzGnzU69Fq1T+nQgtfDTiUPt8nf1nczaFsdqSiiNoWB2
 gol6NBo9lEGntT3aX82igO8nUZ3RwjEs+ZlIwpmLaIYDZ/EyTUXwdsNck
 TCzw1Czi5/jiOM+mtmtuSBj5MX1ns0CPDQpUI1lgr/oa/i7Lr8iLZK3Ys
 SLiF6v3em8XSPq+A0pRijFY3edcrbxz/b58BV2D2eU3vEbZdCsVvbB39R
 N4hEyYWTzmuNiCPLpOJVq0taaXhMih4ZTifM4ZHnyRypVyiEkeeKYBAnQ
 W+Gtb1zmRM8MxnFKEPctRgzdp4joZbheBdt5HB/4B6jK9Jw2AVKtaRNGg Q==;
X-CSE-ConnectionGUID: dURbqIzJRyG14i8jOsROow==
X-CSE-MsgGUID: BOL8araGQ8Cv3PsHni4RaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65322813"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="65322813"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:19:38 -0800
X-CSE-ConnectionGUID: C0rfmxYjQ2moLA7RULc/lQ==
X-CSE-MsgGUID: qJXc0dfxREypWUpdXFe2vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="190568645"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:19:36 -0800
Date: Fri, 14 Nov 2025 16:19:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/10] drm/i915: add .fence_priority_display to parent
 interface
Message-ID: <aRc6dsi1vJ0MzUsX@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <5deb93a8677005ce868cf1185c2d253e1311a9af.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5deb93a8677005ce868cf1185c2d253e1311a9af.1763115899.git.jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 12:26:48PM +0200, Jani Nikula wrote:
> Add .fence_priority_display() to display parent interface, removing a
> display dependency on gem/i915_gem_object.h.
> 
> This allows us to remove the xe compat gem/i915_gem_object.h.
> 
> v2: Don't mix this with the rps interface (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_parent.c         |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_parent.h         |  2 ++
>  drivers/gpu/drm/i915/display/intel_plane.c          |  5 ++---
>  drivers/gpu/drm/i915/i915_driver.c                  |  7 +++++++
>  .../xe/compat-i915-headers/gem/i915_gem_object.h    | 13 -------------
>  include/drm/intel/display_parent_interface.h        |  3 +++
>  6 files changed, 20 insertions(+), 16 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 9370da9d215c..789bc11a324c 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -64,3 +64,9 @@ bool intel_parent_fence_support_legacy(struct intel_display *display)
>  {
>  	return display->parent->fence_support_legacy && display->parent->fence_support_legacy(display->drm);
>  }
> +
> +void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
> +{
> +	if (display->parent->fence_priority_display)
> +		display->parent->fence_priority_display(fence);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 41d6943786fb..b3cce2c6b017 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -21,4 +21,6 @@ bool intel_parent_vgpu_active(struct intel_display *display);
>  
>  bool intel_parent_fence_support_legacy(struct intel_display *display);
>  
> +void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 5105e3278bc4..a7fec5ba6ac0 100644
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
> @@ -56,6 +55,7 @@
>  #include "intel_fb_pin.h"
>  #include "intel_fbdev.h"
>  #include "intel_panic.h"
> +#include "intel_parent.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
>  #include "skl_scaler.h"
> @@ -1180,8 +1180,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		goto unpin_fb;
>  
>  	if (new_plane_state->uapi.fence) {
> -		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
> -
> +		intel_parent_fence_priority_display(display, new_plane_state->uapi.fence);
>  		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>  						     new_plane_state->uapi.fence);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ac189b90f985..7cc74b76774a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -750,12 +750,19 @@ static bool fence_support_legacy(struct drm_device *drm)
>  	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
>  }
>  
> +static void fence_priority_display(struct dma_fence *fence)
> +{
> +	if (dma_fence_is_i915(fence))
> +		i915_gem_fence_wait_priority_display(fence);
> +}
> +
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.irq = &i915_display_irq_interface,
>  	.rps = &i915_display_rps_interface,
>  	.vgpu_active = vgpu_active,
>  	.fence_support_legacy = fence_support_legacy,
> +	.fence_priority_display = fence_priority_display,
>  };
>  
>  const struct intel_display_parent_interface *i915_driver_parent_interface(void)
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
> index 2ea68a31224d..fd066309184d 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -64,6 +64,9 @@ struct intel_display_parent_interface {
>  
>  	/** @fence_support_legacy: Support legacy fencing? Optional. */
>  	bool (*fence_support_legacy)(struct drm_device *drm);
> +
> +	/** @fence_priority_display: Set display priority. Optional. */
> +	void (*fence_priority_display)(struct dma_fence *fence);
>  };
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
