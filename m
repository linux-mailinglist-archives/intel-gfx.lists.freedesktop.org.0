Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F82BB43F29
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 16:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2529710EA6C;
	Thu,  4 Sep 2025 14:39:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VceUwz98";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F7C10EA6C;
 Thu,  4 Sep 2025 14:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756996795; x=1788532795;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3xmETnXGLFpCwSiy0cgqpoKTuz2wxvjJZ87c4BLsi7U=;
 b=VceUwz98114T17uqwZpQSTQlzMOeKA7a8G0KqGp7+YLh26Tbqhi1VrPf
 NeH9leLHs6E6WAMYcjX2DQaBPdJ8RZMBYy7rd/kunMXy9uMFmBs4wG6/s
 EG7OXmRNbHdz7eQvSZerO8kXz5WXnSzSypmR7zlJpdtdwerqcrVJ0kj0F
 zLZPCH0dzim2fiOGST31uNmkBPhdz4eE9Ur8+PydvapHg+Ugfc6x06mXp
 WxwT1NfnFIGi93hSDDsBD6agWxwtKSy5Ep8dTYZAAfq4bj/wSrr7q3nx5
 +xJA8XbpVJqLt1bI0zRqkRxNdphnwbO2qkZloDPxtk+t18oBM25wPHDJn w==;
X-CSE-ConnectionGUID: qSlkP5czRp2zqYaQuprygg==
X-CSE-MsgGUID: PeaQnpc2QA242GAXBl8geA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59405073"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="59405073"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 07:39:42 -0700
X-CSE-ConnectionGUID: U9VSElRsQEie7mJdn5ushg==
X-CSE-MsgGUID: RwbNGf+RQWSWP2XBAZmJig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="177132750"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.178])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 07:39:41 -0700
Date: Thu, 4 Sep 2025 17:39:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/{i915,xe}/fbdev: deduplicate fbdev creation
Message-ID: <aLmkqiiyMu77TFxx@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <a233292c243fc3ad85c637665ffe2b62815cd63c.1756931441.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a233292c243fc3ad85c637665ffe2b62815cd63c.1756931441.git.jani.nikula@intel.com>
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

On Wed, Sep 03, 2025 at 11:32:04PM +0300, Jani Nikula wrote:
> With the bo creation helper in place, we can lift
> intel_framebuffer_create() part to common code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 31 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 29 ---------------
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 --
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 35 -------------------
>  4 files changed, 28 insertions(+), 69 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 5ac66fb88fcf..d7131de5c7ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -227,13 +227,38 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
>  		       struct drm_fb_helper_surface_size *sizes)
>  {
>  	struct drm_mode_fb_cmd2 mode_cmd = {};
> -	struct intel_framebuffer *fb;
> +	struct drm_framebuffer *fb;
> +	struct drm_gem_object *obj;
> +	int size;
>  
>  	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
>  
> -	fb = intel_fbdev_fb_alloc(display->drm, &mode_cmd);
> +	size = mode_cmd.pitches[0] * mode_cmd.height;
> +	size = PAGE_ALIGN(size);
> +
> +	obj = intel_fbdev_fb_bo_create(display->drm, size);
> +	if (IS_ERR(obj)) {
> +		fb = ERR_CAST(obj);
> +		goto err;

This use of goto doesn't make much sense to me in this function.

> +	}
> +
> +	fb = intel_framebuffer_create(obj,
> +				      drm_get_format_info(display->drm,
> +							  mode_cmd.pixel_format,
> +							  mode_cmd.modifier[0]),
> +				      &mode_cmd);
> +	if (IS_ERR(fb)) {
> +		intel_fbdev_fb_bo_destroy(obj);
> +		goto err;
> +	}
> +
> +	drm_gem_object_put(obj);
> +
> +	return to_intel_framebuffer(fb);
> +
> +err:
> +	return ERR_CAST(fb);
>  
> -	return fb;
>  }
>  
>  int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 6b70823ce5ef..1ac62a064936 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -10,7 +10,6 @@
>  #include "i915_drv.h"
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
> -#include "intel_fb.h"
>  #include "intel_fbdev_fb.h"
>  
>  u32 intel_fbdev_fb_pitch_align(u32 stride)
> @@ -56,34 +55,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>  	/* nop? */
>  }
>  
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd)
> -{
> -	struct drm_framebuffer *fb;
> -	struct drm_gem_object *obj;
> -	int size;
> -
> -	size = mode_cmd->pitches[0] * mode_cmd->height;
> -	size = PAGE_ALIGN(size);
> -
> -	obj = intel_fbdev_fb_bo_create(drm, size);
> -	if (IS_ERR(obj)) {
> -		fb = ERR_CAST(obj);
> -		goto err;
> -	}
> -
> -	fb = intel_framebuffer_create(obj,
> -				      drm_get_format_info(drm,
> -							  mode_cmd->pixel_format,
> -							  mode_cmd->modifier[0]),
> -				      mode_cmd);
> -	drm_gem_object_put(obj);
> -
> -	return to_intel_framebuffer(fb);
> -err:
> -	return ERR_CAST(fb);
> -}
> -
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 6d6f316834df..bb0ce3a85ff9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -18,8 +18,6 @@ struct intel_display;
>  u32 intel_fbdev_fb_pitch_align(u32 stride);
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *obj, struct i915_vma *vma);
>  
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 9a5cf50ea7de..2e8490a8cdb1 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -7,7 +7,6 @@
>  
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
> -#include "intel_fb.h"
>  #include "intel_fbdev_fb.h"
>  #include "xe_bo.h"
>  #include "xe_ttm_stolen_mgr.h"
> @@ -59,40 +58,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>  	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>  }
>  
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd)
> -{
> -	struct drm_framebuffer *fb;
> -	struct drm_gem_object *obj;
> -	int size;
> -
> -	size = mode_cmd->pitches[0] * mode_cmd->height;
> -	size = PAGE_ALIGN(size);
> -
> -	obj = intel_fbdev_fb_bo_create(drm, size);
> -	if (IS_ERR(obj)) {
> -		fb = ERR_CAST(obj);
> -		goto err;
> -	}
> -
> -	fb = intel_framebuffer_create(obj,
> -				      drm_get_format_info(drm,
> -							  mode_cmd->pixel_format,
> -							  mode_cmd->modifier[0]),
> -				      mode_cmd);
> -	if (IS_ERR(fb)) {
> -		intel_fbdev_fb_bo_destroy(obj);
> -		goto err;
> -	}
> -
> -	drm_gem_object_put(obj);
> -
> -	return to_intel_framebuffer(fb);
> -
> -err:
> -	return ERR_CAST(fb);
> -}
> -
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>  {
> -- 
> 2.47.2

-- 
Ville Syrjälä
Intel
