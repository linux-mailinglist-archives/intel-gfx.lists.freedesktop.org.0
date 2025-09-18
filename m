Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D77B8645B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D84F10E338;
	Thu, 18 Sep 2025 17:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rhr+NMy3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61D010E324;
 Thu, 18 Sep 2025 17:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217226; x=1789753226;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HciA1Y66yEKQ/NH7VDSK5QBUogwokwWL+MkAzoWZCtk=;
 b=Rhr+NMy3RR0YjUvuq2ew2TpLyEP+W4xP+AMsZdOPo1kxeowCbrden7RX
 IZ909dZ4mTj1rnPYbYwu2RxCk5y7xic9QQEvL0g+Bk66ZixQqAlvcJ/Qd
 SsQ1iXgBNDHoVCfPric0EoqZMGaLNczz+/E4WtcMlGUN13HZpYbZ8SnQD
 XMndJMpCndF4JDm7ar4sKj34vi4FSozJDFI9Yg/h5NhiVgH7kFZRvol6t
 cT/ZifnEP3Z0KWF+lmvF9MEIjNEQf34/7XNdTUfgaKaCPOFplQYxhW12i
 AWgs1QreH28CQLQbMNKdulspgDBVnoBvcL1NRncEzEBMw6yWS9gGxoHc/ w==;
X-CSE-ConnectionGUID: UWKq8KTbSO6gizyJccd7rA==
X-CSE-MsgGUID: tQAy16k5T4iQWNNbATvaPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60447372"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60447372"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:40:26 -0700
X-CSE-ConnectionGUID: yy30rDcsRhuUl4xCxKLrRg==
X-CSE-MsgGUID: 7qi3b4g/RyacJtqZvFsBRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="174733047"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:40:24 -0700
Date: Thu, 18 Sep 2025 20:40:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 04/10] drm/{i915,xe}/fbdev: deduplicate struct
 drm_mode_fb_cmd2 init
Message-ID: <aMxEBcEI5zpjfTbh@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <e922e47bfd39f9c5777f869ff23c23309ebbb380.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e922e47bfd39f9c5777f869ff23c23309ebbb380.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:54AM +0300, Jani Nikula wrote:
> Pull struct drm_mode_fb_cmd2 initialization out of the driver dependent
> code into shared display code.
> 
> v2: Rebase on xe stride alignment change
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 32 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 25 ++++-----------
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +--
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 25 ++++-----------
>  4 files changed, 45 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 46c6de5f6088..e46c08762b84 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -207,6 +207,35 @@ static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
>  	.fb_set_suspend = intelfb_set_suspend,
>  };
>  
> +static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
> +				      struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	/* we don't do packed 24bpp */
> +	if (sizes->surface_bpp == 24)
> +		sizes->surface_bpp = 32;
> +
> +	mode_cmd->width = sizes->surface_width;
> +	mode_cmd->height = sizes->surface_height;
> +
> +	mode_cmd->pitches[0] = ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> +	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
> +							   sizes->surface_depth);
> +}
> +
> +static struct intel_framebuffer *
> +__intel_fbdev_fb_alloc(struct intel_display *display,
> +		       struct drm_fb_helper_surface_size *sizes)
> +{
> +	struct drm_mode_fb_cmd2 mode_cmd = {};
> +	struct intel_framebuffer *fb;
> +
> +	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
> +
> +	fb = intel_fbdev_fb_alloc(display->drm, &mode_cmd);
> +
> +	return fb;
> +}
> +
>  int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  				   struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -237,7 +266,8 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
>  		drm_dbg_kms(display->drm,
>  			    "no BIOS fb, allocating a new one\n");
> -		fb = intel_fbdev_fb_alloc(display->drm, sizes);
> +
> +		fb = __intel_fbdev_fb_alloc(display, sizes);
>  		if (IS_ERR(fb))
>  			return PTR_ERR(fb);
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 4de13d1a4c7a..685612e6afc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -3,7 +3,7 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> -#include <drm/drm_fb_helper.h>
> +#include <linux/fb.h>
>  
>  #include "gem/i915_gem_lmem.h"
>  
> @@ -14,28 +14,15 @@
>  #include "intel_fbdev_fb.h"
>  
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_fb_helper_surface_size *sizes)
> +					       struct drm_mode_fb_cmd2 *mode_cmd)
>  {
>  	struct intel_display *display = to_intel_display(drm);
>  	struct drm_i915_private *dev_priv = to_i915(drm);
>  	struct drm_framebuffer *fb;
> -	struct drm_mode_fb_cmd2 mode_cmd = {};
>  	struct drm_i915_gem_object *obj;
>  	int size;
>  
> -	/* we don't do packed 24bpp */
> -	if (sizes->surface_bpp == 24)
> -		sizes->surface_bpp = 32;
> -
> -	mode_cmd.width = sizes->surface_width;
> -	mode_cmd.height = sizes->surface_height;
> -
> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> -	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
> -							  sizes->surface_depth);
> -
> -	size = mode_cmd.pitches[0] * mode_cmd.height;
> +	size = mode_cmd->pitches[0] * mode_cmd->height;
>  	size = PAGE_ALIGN(size);
>  
>  	obj = ERR_PTR(-ENODEV);
> @@ -64,9 +51,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  
>  	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
>  				      drm_get_format_info(drm,
> -							  mode_cmd.pixel_format,
> -							  mode_cmd.modifier[0]),
> -				      &mode_cmd);
> +							  mode_cmd->pixel_format,
> +							  mode_cmd->modifier[0]),
> +				      mode_cmd);
>  	if (IS_ERR(fb)) {
>  		i915_gem_object_put(obj);
>  		goto err;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 668ae355f5e5..83454ffbf79c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -7,14 +7,14 @@
>  #define __INTEL_FBDEV_FB_H__
>  
>  struct drm_device;
> -struct drm_fb_helper_surface_size;
>  struct drm_gem_object;
> +struct drm_mode_fb_cmd2;
>  struct fb_info;
>  struct i915_vma;
>  struct intel_display;
>  
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_fb_helper_surface_size *sizes);
> +					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>  			     struct drm_gem_object *obj, struct i915_vma *vma);
>  
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 5c0874bfa6ab..8eaf1cc7fdf9 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -3,7 +3,7 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> -#include <drm/drm_fb_helper.h>
> +#include <linux/fb.h>
>  
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
> @@ -16,27 +16,14 @@
>  #include <generated/xe_wa_oob.h>
>  
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_fb_helper_surface_size *sizes)
> +					       struct drm_mode_fb_cmd2 *mode_cmd)
>  {
>  	struct drm_framebuffer *fb;
>  	struct xe_device *xe = to_xe_device(drm);
> -	struct drm_mode_fb_cmd2 mode_cmd = {};
>  	struct xe_bo *obj;
>  	int size;
>  
> -	/* we don't do packed 24bpp */
> -	if (sizes->surface_bpp == 24)
> -		sizes->surface_bpp = 32;
> -
> -	mode_cmd.width = sizes->surface_width;
> -	mode_cmd.height = sizes->surface_height;
> -
> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> -	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
> -							  sizes->surface_depth);
> -
> -	size = mode_cmd.pitches[0] * mode_cmd.height;
> +	size = mode_cmd->pitches[0] * mode_cmd->height;
>  	size = PAGE_ALIGN(size);
>  	obj = ERR_PTR(-ENODEV);
>  
> @@ -67,9 +54,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  
>  	fb = intel_framebuffer_create(&obj->ttm.base,
>  				      drm_get_format_info(drm,
> -							  mode_cmd.pixel_format,
> -							  mode_cmd.modifier[0]),
> -				      &mode_cmd);
> +							  mode_cmd->pixel_format,
> +							  mode_cmd->modifier[0]),
> +				      mode_cmd);
>  	if (IS_ERR(fb)) {
>  		xe_bo_unpin_map_no_vm(obj);
>  		goto err;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
