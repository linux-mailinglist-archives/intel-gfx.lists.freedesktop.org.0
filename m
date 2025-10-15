Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59770BE0195
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 20:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4AF10E8B2;
	Wed, 15 Oct 2025 18:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VeHad5JV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CAC10E8B2;
 Wed, 15 Oct 2025 18:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760552367; x=1792088367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RkhKLa2VidYJjUHzC3xK5Fq4aXdCYNMgYctg2EInJnc=;
 b=VeHad5JVpbkE+kXEjOlPGJA2+sLqhKKKgVuqsCT07eg+fC9LAdCWpX6A
 vJXkEm0EMoZtMT7IaabWs22DtXOojA9Ttwi/7M2SNdqCqmAwFZVi2//Rp
 CSJayF4xlAJz5ZdcgtCaP6CrXQ8z4dv3x2R2AnI3JnuY/8dqdNhD/pj+Q
 kgQlMUQzVr0Fcm1TKTXEY/UiIz19jfVAx3qxI7ctBiSZCBI5fASBEGSSf
 /58VxWFTdViLDSKWUkaw3ood8iLH4FyBl2+9e7zcRT4Xt86SchETqWc8s
 z+ux5sANVom+9y4zzlrGVejKVxk7XFoo8Ql4uxhiHlZ6Pmwc9k4QFSzzm g==;
X-CSE-ConnectionGUID: KMAXchgQRYSUKmtKhV9xHg==
X-CSE-MsgGUID: 8LSjOfEpQDWC8MHKBlV8jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80176733"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="80176733"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 11:19:27 -0700
X-CSE-ConnectionGUID: rtvYCrEZTXy8JYpJSmmztw==
X-CSE-MsgGUID: J9k9szaCSfuUeSpmTuMMsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="182185633"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.116])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 11:19:25 -0700
Date: Wed, 15 Oct 2025 21:19:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aO_lqiAxxwE4n6fP@intel.com>
References: <20251015111922.2194539-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015111922.2194539-1-jani.nikula@intel.com>
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

On Wed, Oct 15, 2025 at 02:19:22PM +0300, Jani Nikula wrote:
> For reasons still unknown, xe appears to require a stride alignment of
> XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
> separate stride alignment for i915 and xe, until the issue is root
> caused.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220

I don't think we should close that with duct tape. So IMO this
needs a FIXME and someone needs to actually figure out what
the heck is going on there.

> Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
> Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 5 +++++
>  4 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 51d3d87caf43..d5c001761aa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -218,7 +218,7 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
>  	mode_cmd->width = sizes->surface_width;
>  	mode_cmd->height = sizes->surface_height;
>  
> -	mode_cmd->pitches[0] = ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> +	mode_cmd->pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>  	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>  							   sizes->surface_depth);
>  	mode_cmd->modifier[0] = DRM_FORMAT_MOD_LINEAR;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 56b145841473..0838fdd37254 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -10,6 +10,11 @@
>  #include "i915_drv.h"
>  #include "intel_fbdev_fb.h"
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> +{
> +	return ALIGN(stride, 64);
> +}
> +
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 1fa44ed28543..fd0b3775dc1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -6,12 +6,15 @@
>  #ifndef __INTEL_FBDEV_FB_H__
>  #define __INTEL_FBDEV_FB_H__
>  
> +#include <linux/types.h>
> +
>  struct drm_device;
>  struct drm_gem_object;
>  struct drm_mode_fb_cmd2;
>  struct fb_info;
>  struct i915_vma;
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride);
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>  int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index af72f7305e5a..e6957d989381 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -12,6 +12,11 @@
>  
>  #include <generated/xe_device_wa_oob.h>
>  
> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> +{
> +	return ALIGN(stride, XE_PAGE_SIZE);
> +}
> +
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
>  	struct xe_device *xe = to_xe_device(drm);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
