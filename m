Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F8B45311
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 11:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABC710EB49;
	Fri,  5 Sep 2025 09:23:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lH/MFhLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DB210EB47;
 Fri,  5 Sep 2025 09:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757064208; x=1788600208;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LW4GdXDjqgIsBmErnBuLzrecGYXb+QKUQL1sCZTTddA=;
 b=lH/MFhLMM2yWRNQJ7YV3lZdnPzhle2tA8F7ccvnwvExl2TlR83wPLw1r
 ruEZOeDN23FngsLcrdYFbyb4OAbzTcdFXx8UhQzDoquY3EmmdVh+lAOiA
 /FD6c86Mdf/1ddGIzgaWdQGv9GzvAnZ7tfE23LpVWDdpnMVg4/TwaNH5Y
 s2eSRAxkrC8jGAz9aLoyNGfdDHrjLugE9liJh4LDy4DpKK2VupIJN9LzQ
 SyuD/MUsuBJp36vweceGuPBY5jdcMdhWOcawJgePmTf5N+do0rCZ6MuCv
 Ed+ZQ26Wuzz9ykU7AFuE2SjjQURs6F5N9kl2JkwRfaVw1erAVFt/c+JKb g==;
X-CSE-ConnectionGUID: FEcYyi9iRPG9g9467/yVcA==
X-CSE-MsgGUID: uD0rD+hQRa2zi57iFs6k3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59333354"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59333354"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:23:28 -0700
X-CSE-ConnectionGUID: qdnjiA7sRqS1BRTSRidgtA==
X-CSE-MsgGUID: fuXbXBM5SZ+AWPXGhAJz8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="172006543"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:23:27 -0700
Date: Fri, 5 Sep 2025 12:23:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aLqsC87Ol_zCXOkN@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
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

On Wed, Sep 03, 2025 at 11:31:59PM +0300, Jani Nikula wrote:
> Add new helper intel_fbdev_fb_pitch_align() in preparation for further
> refactoring. The alignment is different for i915 and xe.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 8 ++++++--
>  3 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 9c557917d781..d1c03d7b9bdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -13,6 +13,11 @@
>  #include "intel_fb.h"
>  #include "intel_fbdev_fb.h"
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> +{
> +	return ALIGN(stride, 64);
> +}
> +
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -30,8 +35,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  	mode_cmd.width = sizes->surface_width;
>  	mode_cmd.height = sizes->surface_height;
>  
> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> +	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>  	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>  							  sizes->surface_depth);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 668ae355f5e5..caeb543d5efc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_FBDEV_FB_H__
>  #define __INTEL_FBDEV_FB_H__
>  
> +#include <linux/types.h>
> +
>  struct drm_device;
>  struct drm_fb_helper_surface_size;
>  struct drm_gem_object;
> @@ -13,6 +15,7 @@ struct fb_info;
>  struct i915_vma;
>  struct intel_display;
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride);
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_fb_helper_surface_size *sizes);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index bafca1059a40..fd2c40020eea 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -15,6 +15,11 @@
>  
>  #include <generated/xe_wa_oob.h>
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> +{
> +	return ALIGN(stride, XE_PAGE_SIZE);

I think someone needs to explain what the heck this extra alignment
is trying to achieve? I suspect it just needs to get nuked.

> +}
> +
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -31,8 +36,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  	mode_cmd.width = sizes->surface_width;
>  	mode_cmd.height = sizes->surface_height;
>  
> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), XE_PAGE_SIZE);
> +	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>  	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>  							  sizes->surface_depth);
>  
> -- 
> 2.47.2

-- 
Ville Syrjälä
Intel
