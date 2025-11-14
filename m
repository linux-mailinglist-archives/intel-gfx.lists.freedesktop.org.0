Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745F8C5D749
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 14:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B43A10EA6D;
	Fri, 14 Nov 2025 13:59:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xf2Jv+Qk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3421610EA71;
 Fri, 14 Nov 2025 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763128748; x=1794664748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8FWcRtL4VxT7+df0kI4WbJlxeALfjNzEG25LC2qyasA=;
 b=Xf2Jv+QkLhmIFKl25iSS8TlWzHm1uroVZP+QCsUflSTN37HWqoeBdUMN
 eYwV1PupkS+lYzorsw5erlg11CrnbOlFxngmTf35XmAz9kVE5V7v0qyCj
 ebunAMuZTHcyY18Pv211A+4b8WM8qRasiXfzm4OMMv9TumiWOn504RChz
 8gC9292osyJkrL4Elkdt72gu5q1FABBAoTWE/mrsOQf9dz6QCclytuyiG
 PxlEgYQvH/vF1xaeuAD9TqcdAMJo+dU4d+n1VE2cq7zUYEY3g8sN6ProH
 WuKEOtjdHdT7n2n8pXAQLAvlN3srQQ6Uqwew2YfVp61VLMMlnjD/3fSR0 g==;
X-CSE-ConnectionGUID: VAPde0rWTRW6nRxiPqNrug==
X-CSE-MsgGUID: C+H8x2kwS0aSLuJFLJIlog==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="69091729"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="69091729"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:59:08 -0800
X-CSE-ConnectionGUID: Q6UvpmdmSwiNstkceZtQag==
X-CSE-MsgGUID: zvkgcLOEQKmwIQUIwAaGMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="194769433"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:59:06 -0800
Date: Fri, 14 Nov 2025 15:59:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915: add .vgpu_active to parent interface
Message-ID: <aRc1qMIMxCqJAN6y@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <b89bdfeb42207d62f49af7ab633a761bb279565c.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b89bdfeb42207d62f49af7ab633a761bb279565c.1763115899.git.jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 12:26:43PM +0200, Jani Nikula wrote:
> Add .vgpu_active() to display parent interface, removing more
> dependencies on struct drm_i915_private, i915_drv.h, and i915_vgpu.h.
> 
> This also allows us to remove the xe compat i915_vgpu.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c      |  6 ++----
>  drivers/gpu/drm/i915/display/intel_fbc.c       |  5 ++---
>  drivers/gpu/drm/i915/display/intel_parent.c    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_parent.h    |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c             |  6 ++++++
>  .../gpu/drm/xe/compat-i915-headers/i915_vgpu.h | 18 ------------------
>  include/drm/intel/display_parent_interface.h   |  3 +++
>  7 files changed, 20 insertions(+), 25 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 9d2a23c96c61..153ff4b4b52c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -13,8 +13,6 @@
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
>  
> -#include "i915_drv.h"
> -#include "i915_vgpu.h"
>  #include "i9xx_plane.h"
>  #include "icl_dsi.h"
>  #include "intel_atomic.h"
> @@ -28,6 +26,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> +#include "intel_parent.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
> @@ -671,7 +670,6 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>  	int scanline_end = intel_get_crtc_scanline(crtc);
>  	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
>  	ktime_t end_vbl_time = ktime_get();
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
>  	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
>  
> @@ -737,7 +735,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>  
>  	local_irq_enable();
>  
> -	if (intel_vgpu_active(dev_priv))
> +	if (intel_parent_vgpu_active(display))
>  		goto out;
>  
>  	if (crtc->debug.start_vbl_count &&
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 437d2fda20a7..ab0bcea5aa89 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -50,7 +50,6 @@
>  #include "gt/intel_gt_types.h"
>  
>  #include "i915_drv.h"
> -#include "i915_vgpu.h"
>  #include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_de.h"
> @@ -64,6 +63,7 @@
>  #include "intel_fbc.h"
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_parent.h"
>  
>  #define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> @@ -1485,7 +1485,6 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  				 struct intel_plane *plane)
>  {
>  	struct intel_display *display = to_intel_display(state->base.dev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> @@ -1501,7 +1500,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (intel_vgpu_active(i915)) {
> +	if (intel_parent_vgpu_active(display)) {
>  		plane_state->no_fbc_reason = "VGPU active";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 375713f6f411..3786fd42827d 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -31,3 +31,8 @@ void intel_parent_irq_synchronize(struct intel_display *display)
>  {
>  	display->parent->irq->synchronize(display->drm);
>  }
> +
> +bool intel_parent_vgpu_active(struct intel_display *display)
> +{
> +	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 3ade493f1008..222c95836d35 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -11,4 +11,6 @@ struct intel_display;
>  bool intel_parent_irq_enabled(struct intel_display *display);
>  void intel_parent_irq_synchronize(struct intel_display *display);
>  
> +bool intel_parent_vgpu_active(struct intel_display *display);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 07715aef62d3..f21f1919a225 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -739,9 +739,15 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
>  }
>  
> +static bool vgpu_active(struct drm_device *drm)
> +{
> +	return intel_vgpu_active(to_i915(drm));
> +}
> +
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.irq = &i915_display_irq_interface,
> +	.vgpu_active = vgpu_active,
>  };
>  
>  const struct intel_display_parent_interface *i915_driver_parent_interface(void)
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
> deleted file mode 100644
> index 4931c7198f13..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#ifndef _I915_VGPU_H_
> -#define _I915_VGPU_H_
> -
> -#include <linux/types.h>
> -
> -struct drm_i915_private;
> -
> -static inline bool intel_vgpu_active(struct drm_i915_private *i915)
> -{
> -	return false;
> -}
> -
> -#endif /* _I915_VGPU_H_ */
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 3a008a18eb65..f3834f36ce74 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -48,6 +48,9 @@ struct intel_display_parent_interface {
>  
>  	/** @irq: IRQ interface */
>  	const struct intel_display_irq_interface *irq;
> +
> +	/** @vgpu_active: Is vGPU active? Optional. */
> +	bool (*vgpu_active)(struct drm_device *drm);
>  };
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
