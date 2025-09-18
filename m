Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7F9B864E2
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688DA10E31F;
	Thu, 18 Sep 2025 17:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/mkGs+S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FF310E31F;
 Thu, 18 Sep 2025 17:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217490; x=1789753490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LTs5Bs+x9eNH4YolfaoNiNoJy/KrJJAXck7KOjqvTUg=;
 b=H/mkGs+S5Aa+HQTY6WPK1qTWHS9N0I3tVVd7MFW4ECDBvcxj4WNA5WsU
 xZ7u0UGa93SEFsIYN39bDs9WWdWpuoFsNsq+YcVOy57AuTMn4jStO6HZc
 4A/LFbhHiG6f18XiRVJhUF2nlJ72KbkW6I41H5qftdUxkhQtDksu4b2ic
 rXun2h2zAby+DFYl12JkuNXUKpt9PfYqUtSkinSeOseh9WbHmpkwqfUoW
 b40nEzzNwlZmzU7IMnsuoNwpyraV/qEx+2L/TjrG+jobZoGEFIZiBoUSm
 fJYBhjo1R8+QfA7uMateCWhbbrdy1ZStnJkqnJVwmqow4MaVzYaxIM9+x Q==;
X-CSE-ConnectionGUID: MGyW5HTVSCSu8p9ySytMUQ==
X-CSE-MsgGUID: gYrdbFVqRgKCpdluWFOuyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60671902"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60671902"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:44:46 -0700
X-CSE-ConnectionGUID: V+6eRBrhQzeAlSuc8z56OQ==
X-CSE-MsgGUID: ftMLiUVUS8OOFQmtMqa/bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="176428460"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:44:45 -0700
Date: Thu, 18 Sep 2025 20:44:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 08/10] drm/{i915,xe}/fbdev: deduplicate fbdev creation
Message-ID: <aMxFCsIJlz9ThHYp@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <7289deac730a877ab1bfcc467f9d063fdccf3930.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7289deac730a877ab1bfcc467f9d063fdccf3930.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:58AM +0300, Jani Nikula wrote:
> With the bo creation helper in place, we can lift
> intel_framebuffer_create() part to common code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 31 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 34 ------------------
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 --
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 35 -------------------
>  4 files changed, 28 insertions(+), 74 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index e46c08762b84..4bc9a053ca40 100644
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
> index a7dab8cd3aa2..c802a4b2bfc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -10,7 +10,6 @@
>  #include "i915_drv.h"
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
> -#include "intel_fb.h"
>  #include "intel_fbdev_fb.h"
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
> @@ -51,39 +50,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>  	drm_gem_object_put(obj);
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
> -err:
> -	return ERR_CAST(fb);
> -}
> -
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 8b6214b0ad0e..3b7b59d664b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -15,8 +15,6 @@ struct intel_display;
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *obj, struct i915_vma *vma);
>  
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index defbab3df55b..37681503edb1 100644
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
> @@ -54,40 +53,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
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
> 2.47.3

-- 
Ville Syrjälä
Intel
