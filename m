Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9C5BFD1CA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 18:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFC010E802;
	Wed, 22 Oct 2025 16:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RULedA22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC72F10E806;
 Wed, 22 Oct 2025 16:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761149988; x=1792685988;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vnfn4gpscPSmQico4M2b8/YIehiTcYRw7agNTFzsAyo=;
 b=RULedA22/IJQicFI0y/TPUi5eBmt/fN97Y3gHmNSyQ2DCkm0TDjLZXtD
 HsUfD+hgGcyvKZcV99WNw0vRuNG8visVxkxP996XNfrXntZ/uzckRSUs+
 2fGlWNsd1lzlJArxW4mbM29tSXRWuiRR01OLpCGRsAi1OAQQAyJwOjNzM
 pH08kZdX1LhKi25lHqmP7/dnyabRxzGjEKTUk3mozHIZzosrDgRlXDiOT
 X0X6RHI0QGSKvOS1O4lgEtLHJ+dmFkkCnbnXZVh9+0UjNJkV4uUftHznx
 cQulANodOuj1Hu/uv0ymvU7AguI7kio/12xJPB83dbtHb7/I07ZhOFM5J g==;
X-CSE-ConnectionGUID: k0TuY4wBRYib+V5C+wUOdQ==
X-CSE-MsgGUID: GPd5yADlTICJ0M1QYzpHhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73909735"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="73909735"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:19:47 -0700
X-CSE-ConnectionGUID: glL2TLhgQd+tW/hjHoGZRA==
X-CSE-MsgGUID: 8ChiwOD7S52T1EO3pcxUAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="187956636"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:19:45 -0700
Date: Wed, 22 Oct 2025 19:19:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten@lankhorst.se>
Subject: Re: [PATCH v2] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aPkEHv4iCGjYi2AC@intel.com>
References: <20251022161054.708388-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251022161054.708388-1-jani.nikula@intel.com>
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

On Wed, Oct 22, 2025 at 07:10:54PM +0300, Jani Nikula wrote:
> For reasons still unknown, xe appears to require a stride alignment of
> XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
> separate stride alignment for i915 and xe, until the issue is root
> caused.
> 
> v2: Add FIXME comment, reference issue with Link (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten@lankhorst.se>
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220
> Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
> Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  5 +++++
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  3 +++
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 11 +++++++++++
>  4 files changed, 20 insertions(+), 1 deletion(-)
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
> index af72f7305e5a..7ad76022cb14 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -12,6 +12,17 @@
>  
>  #include <generated/xe_device_wa_oob.h>
>  
> +/*
> + * FIXME: There shouldn't be any reason to have XE_PAGE_SIZE stride
> + * alignment. The same 64 as i915 uses should be fine, and we shouldn't need to
> + * have driver specific values. However, dropping the stride alignment to 64
> + * leads to underflowing the bo pin count in the atomic cleanup work.
> + */
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
