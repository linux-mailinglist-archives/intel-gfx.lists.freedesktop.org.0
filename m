Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C78EC5D75E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F88310EA75;
	Fri, 14 Nov 2025 14:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXZ6Eyq7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F4E10EA74;
 Fri, 14 Nov 2025 14:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763128996; x=1794664996;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NX+S77aW1pJ42oCEGPlbCFq4NPFGiMUk/flOTOSdzww=;
 b=BXZ6Eyq7wfPyZ5OUgHi0cKhKYyYS9tX/890ylKd2Pl/1AEzhnBvb5I8H
 usVxcuNgGOFSSuojGdzkS4MUF1sHkE3DIxNlYK4lMvSDg1hdqv/oA39z7
 8snhDcn2uoip7cnsKfICWWmvPMOeFB6sJ50jYwhflCYzMRy4lA+srFa4l
 JEOJ3HQC8kDtdp5mtm062G3hPK/6sYUE8am//1n/3a/1yWeJlAnZk6KAY
 NCJNqmhBkLjQlF0P/On4UaamtE7Q1EQl3V8y28d0xhlWv/ElnjpdjU1/l
 qHKoOV4xAklGrg04IVYOhr7Z53H0mbLr7LcOhxrBf1pIBvft8mExoGvh6 A==;
X-CSE-ConnectionGUID: V1Z6bqZ5SDmBEO725MiLCQ==
X-CSE-MsgGUID: iYpw3ORZRS+8WKED8HGFEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="82855920"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="82855920"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:03:16 -0800
X-CSE-ConnectionGUID: f4Z3AYPQSnaJNOVrcMq6Kw==
X-CSE-MsgGUID: yS8+ya2uQ+qTTbk/1cSM9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227131226"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:03:14 -0800
Date: Fri, 14 Nov 2025 16:03:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915: add .fence_support_legacy to parent
 interface
Message-ID: <aRc2n_WANoCWi19c@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <ee77882f46d6f68893337801439609bec2f08e9f.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ee77882f46d6f68893337801439609bec2f08e9f.1763115899.git.jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 12:26:44PM +0200, Jani Nikula wrote:
> Add .fence_support_legacy() to display parent interface, removing more
> dependencies on struct drm_i915_private, i915_drv.h, and
> gt/intel_gt_types.h.
> 
> This allows us to remove the xe compat gt/intel_gt_types.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
> index ab0bcea5aa89..8c56c87d00a9 100644
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
> +	return intel_parent_fence_support_legacy(display);

The naming is getting confusing. I'm thinking we should change
all of it to something like *_has_fenced_regions().

>  }
>  
>  static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 3786fd42827d..3dd31852e2e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -36,3 +36,8 @@ bool intel_parent_vgpu_active(struct intel_display *display)
>  {
>  	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
>  }
> +
> +bool intel_parent_fence_support_legacy(struct intel_display *display)
> +{
> +	return display->parent->fence_support_legacy && display->parent->fence_support_legacy(display->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 222c95836d35..fc6799db0361 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -13,4 +13,6 @@ void intel_parent_irq_synchronize(struct intel_display *display);
>  
>  bool intel_parent_vgpu_active(struct intel_display *display);
>  
> +bool intel_parent_fence_support_legacy(struct intel_display *display);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f21f1919a225..814b430de960 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -744,10 +744,16 @@ static bool vgpu_active(struct drm_device *drm)
>  	return intel_vgpu_active(to_i915(drm));
>  }
>  
> +static bool fence_support_legacy(struct drm_device *drm)
> +{
> +	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
> +}
> +
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
>  	.irq = &i915_display_irq_interface,
>  	.vgpu_active = vgpu_active,
> +	.fence_support_legacy = fence_support_legacy,
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
> index f3834f36ce74..11767adb0083 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -51,6 +51,9 @@ struct intel_display_parent_interface {
>  
>  	/** @vgpu_active: Is vGPU active? Optional. */
>  	bool (*vgpu_active)(struct drm_device *drm);
> +
> +	/** @fence_support_legacy: Support legacy fencing? Optional. */
> +	bool (*fence_support_legacy)(struct drm_device *drm);
>  };
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
