Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAAEB864E5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:45:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1805110E8D8;
	Thu, 18 Sep 2025 17:45:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OlUo0ET0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2847310E8D8;
 Thu, 18 Sep 2025 17:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217532; x=1789753532;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uT5Xo4ScFZLTtZVSTUXNdtaxqdpVwZM9IufnoFXYKes=;
 b=OlUo0ET0CyN1qpVNfJXxy3cOY1SqPzmrhIwobU4C7d3dLW3OKt+174HM
 R0YErpeWqrOqx+9SpsiFbr+Gjv0l7WWt8DQx+bWzLJc7Jc/t/QMqxjjcJ
 lKGJDY+MJ6yf9tFKBRcoWTAvN5rDrAZRj0nbaWLp3Lc9wnZLciT/GTmtx
 vB85QGb9Zqxupk2tAH/bRVTlG9Ubad1SymQOebfltT8cJ7Vbd4Ej1amUn
 6jDWi/nDhpfBPUhPb2BGdjolFYuIjg4vko6pMmAyfMSLhTw8X62S4FAeL
 KUgkYeX1n9F7SsoTYvC5AGzaoUAlYjGtEu2WVNyWXuLlhskwhj/nKjjS7 w==;
X-CSE-ConnectionGUID: DrunkCUpSf2cg+oqV5RhMQ==
X-CSE-MsgGUID: yInqQxDuT6auhbR9Fwl0IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60624824"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60624824"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:45:31 -0700
X-CSE-ConnectionGUID: UypgGZ+eRoyk2Tq3eUk1bA==
X-CSE-MsgGUID: jP9T2/gBQHSEfXKf5MfgYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="174879855"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:45:30 -0700
Date: Thu, 18 Sep 2025 20:45:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 09/10] drm/{i915,xe}/fbdev: pass struct drm_device to
 intel_fbdev_fb_fill_info()
Message-ID: <aMxFN1G6JTX-RUdU@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <1f633154f5f3106f55d7525a711bf347f5635ea7.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1f633154f5f3106f55d7525a711bf347f5635ea7.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:59AM +0300, Jani Nikula wrote:
> This code is in fact driver core rather than display specific. Pass
> struct drm_device instead of struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +--
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 6 ++----
>  4 files changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 4bc9a053ca40..3fbdf75415cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -332,7 +332,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  
>  	obj = intel_fb_bo(&fb->base);
>  
> -	ret = intel_fbdev_fb_fill_info(display, info, obj, vma);
> +	ret = intel_fbdev_fb_fill_info(display->drm, info, obj, vma);
>  	if (ret)
>  		goto out_unpin;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index c802a4b2bfc7..8af409bff0f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -50,10 +50,10 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>  	drm_gem_object_put(obj);
>  }
>  
> -int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> +int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct drm_i915_private *i915 = to_i915(drm);
>  	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
>  	struct i915_gem_ww_ctx ww;
>  	void __iomem *vaddr;
> @@ -85,7 +85,7 @@ int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info
>  
>  		vaddr = i915_vma_pin_iomap(vma);
>  		if (IS_ERR(vaddr)) {
> -			drm_err(display->drm,
> +			drm_err(drm,
>  				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
>  			ret = PTR_ERR(vaddr);
>  			continue;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 3b7b59d664b5..1fa44ed28543 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -11,11 +11,10 @@ struct drm_gem_object;
>  struct drm_mode_fb_cmd2;
>  struct fb_info;
>  struct i915_vma;
> -struct intel_display;
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
> -int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> +int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
>  			     struct drm_gem_object *obj, struct i915_vma *vma);
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 37681503edb1..35a5b07eeba4 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -5,8 +5,6 @@
>  
>  #include <linux/fb.h>
>  
> -#include "intel_display_core.h"
> -#include "intel_display_types.h"
>  #include "intel_fbdev_fb.h"
>  #include "xe_bo.h"
>  #include "xe_ttm_stolen_mgr.h"
> @@ -53,11 +51,11 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>  	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>  }
>  
> -int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> +int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>  {
>  	struct xe_bo *obj = gem_to_xe_bo(_obj);
> -	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +	struct pci_dev *pdev = to_pci_dev(drm->dev);
>  
>  	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
>  		if (obj->flags & XE_BO_FLAG_STOLEN)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
