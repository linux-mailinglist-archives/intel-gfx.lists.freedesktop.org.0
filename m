Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577E0C5E26F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 17:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD7310EAC3;
	Fri, 14 Nov 2025 16:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJUPIcwt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0637E10EAC1;
 Fri, 14 Nov 2025 16:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763137106; x=1794673106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=M4zAbtvRBRSDSBxEPmfBHicO4Y5Q4jK2XPtpS5EBXtY=;
 b=AJUPIcwtoHCb6a4uDGgPiadKKjxlywJge2IzeW9CqeJWwotGF4N+wf3c
 IK9SULHWZQWDg5QKoVEmn2/nKLmX3BZV6CDl8p4hRdvHeyQvEeil41w9E
 UlbiLk1A0tU1LVbqoGDjrwtv39vY/v8QdMclyhXxuMHIqrb4RPOsYq918
 Hu5A+Be3qkDjxuSzOp8NMGkLJrfyHqCMH1id2XAwgu7D7BpucRR0C3SIM
 Fsbd1oJpntg9TIEJiASMc5YDle3ZdW44tZ05HUy2XFfvgSqMS8D/R/No5
 qzbeWEg7y6Rl2LJlZsy3D5ajJYVLg+EZhETgpLEiAzoRlXFLpE2d2fsWi w==;
X-CSE-ConnectionGUID: EhAZ4ykXS+6m4xlIp6J5TQ==
X-CSE-MsgGUID: bjMiWK2kRWWUGRVwPXKtZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="76335901"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="76335901"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 08:18:26 -0800
X-CSE-ConnectionGUID: Fv5pA/xHScyh3+M55B+AXA==
X-CSE-MsgGUID: QbYd/5UeRaCii+0BfDZbxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="193922384"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 08:18:24 -0800
Date: Fri, 14 Nov 2025 18:18:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] FIXME drm/i915: add .has_fenced_regions to parent
 interface
Message-ID: <aRdWTgHVEKkG7-sf@intel.com>
References: <ee77882f46d6f68893337801439609bec2f08e9f.1763115899.git.jani.nikula@intel.com>
 <20251114151611.1187018-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251114151611.1187018-1-jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 05:16:11PM +0200, Jani Nikula wrote:
> Add .has_fenced_regions() to display parent interface, removing more
> dependencies on struct drm_i915_private, i915_drv.h, and
> gt/intel_gt_types.h.
> 
> This allows us to remove the xe compat gt/intel_gt_types.h.
> 
> v2: s/fence_support_legacy/has_fenced_regions/ (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

We should probably follow up with a wider renaming to keep the
terminology in sync. But that might require some actual thought,
so perhaps something to look at later.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c              |  8 ++------
>  drivers/gpu/drm/i915/display/intel_parent.c           |  5 +++++
>  drivers/gpu/drm/i915/display/intel_parent.h           |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c                    |  6 ++++++
>  .../drm/xe/compat-i915-headers/gt/intel_gt_types.h    | 11 -----------
>  include/drm/intel/display_parent_interface.h          |  3 +++
>  6 files changed, 18 insertions(+), 17 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index ab0bcea5aa89..2facd368a068 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -47,9 +47,6 @@
>  
>  #include "gem/i915_gem_stolen.h"
>  
> -#include "gt/intel_gt_types.h"
> -
> -#include "i915_drv.h"
>  #include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_de.h"
> @@ -64,6 +61,7 @@
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_parent.h"
> +#include "intel_step.h"
>  
>  #define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> @@ -267,9 +265,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
>  
>  static bool intel_fbc_has_fences(struct intel_display *display)
>  {
> -	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
> -
> -	return intel_gt_support_legacy_fencing(to_gt(i915));
> +	return intel_parent_has_fenced_regions(display);
>  }
>  
>  static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 3786fd42827d..535065e57213 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -36,3 +36,8 @@ bool intel_parent_vgpu_active(struct intel_display *display)
>  {
>  	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
>  }
> +
> +bool intel_parent_has_fenced_regions(struct intel_display *display)
> +{
> +	return display->parent->has_fenced_regions && display->parent->has_fenced_regions(display->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 222c95836d35..04320d937777 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -13,4 +13,6 @@ void intel_parent_irq_synchronize(struct intel_display *display);
>  
>  bool intel_parent_vgpu_active(struct intel_display *display);
>  
> +bool intel_parent_has_fenced_regions(struct intel_display *display);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f21f1919a225..9ba46850da72 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -744,10 +744,16 @@ static bool vgpu_active(struct drm_device *drm)
>  	return intel_vgpu_active(to_i915(drm));
>  }
>  
> +static bool has_fenced_regions(struct drm_device *drm)
> +{
> +	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
> +}
> +
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.irq = &i915_display_irq_interface,
>  	.vgpu_active = vgpu_active,
> +	.has_fenced_regions = has_fenced_regions,
>  };
>  
>  const struct intel_display_parent_interface *i915_driver_parent_interface(void)
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> deleted file mode 100644
> index c15806d6c4f7..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_GT_TYPES__
> -#define __INTEL_GT_TYPES__
> -
> -#define intel_gt_support_legacy_fencing(gt) 0
> -
> -#endif
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index f3834f36ce74..927d964f2071 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -51,6 +51,9 @@ struct intel_display_parent_interface {
>  
>  	/** @vgpu_active: Is vGPU active? Optional. */
>  	bool (*vgpu_active)(struct drm_device *drm);
> +
> +	/** @has_fenced_regions: Support legacy fencing? Optional. */
> +	bool (*has_fenced_regions)(struct drm_device *drm);
>  };
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
