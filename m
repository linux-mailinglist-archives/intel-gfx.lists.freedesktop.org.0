Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E52B864AF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A5310E8B7;
	Thu, 18 Sep 2025 17:42:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLe28QaF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CCC10E3D3;
 Thu, 18 Sep 2025 17:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217346; x=1789753346;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8TpAKel0kXA4trqh03+DNnJBAB07NNV4cNHv2hC1cnc=;
 b=cLe28QaFQmT10qplpewaT6X7Th4sT4TmD+IIwzLjR5Sn3lTAR6A1SWMj
 txH11oZasN8TKLptZHBcAON4q/mR/LrzvvqIf1q6IwwFf6OItGW2xg3bU
 8iXD6YDxQqTEMCEP4EgU+BM8gbxMtWOSHfO7GjdVO6NPFAbbObCOtxUlQ
 j+vrJR7sD8qfO7yNq43ftMbNqTm04DjDkuuq9Ulr4tsIhHBlDd0Cxqjqz
 zsfSH722Bbqf8U2NCAq8uTTCHI1rxw+lCEja3k6+Uw0GY/Q8+PfA9Rk/x
 euPzba15z53bfJckaWobFvK4DxS50aqmLhSmbFwgmDM61ZdwtirF2KiP8 A==;
X-CSE-ConnectionGUID: GtF0KDSmSW6wW7+0o8Qq7Q==
X-CSE-MsgGUID: lL4qaG6sT3SadrncHq5EEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59599790"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="59599790"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:42:13 -0700
X-CSE-ConnectionGUID: BQoLGFgcSCCaUPDC8lBg1Q==
X-CSE-MsgGUID: LdEYFOTJQt28ZaLrgUvf4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175169345"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:42:11 -0700
Date: Thu, 18 Sep 2025 20:42:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 05/10] drm/i915/fbdev: abstract bo creation
Message-ID: <aMxEcPgyH-UqsFzv@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <cb3999ceae43d56e075c28a1f4581169ce457ab0.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb3999ceae43d56e075c28a1f4581169ce457ab0.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:55AM +0300, Jani Nikula wrote:
> Separate fbdev bo creation into a separate function
> intel_fbdev_fb_bo_create().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 33 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  1 +
>  2 files changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 685612e6afc5..bfd05fd34348 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -13,17 +13,11 @@
>  #include "intel_fb.h"
>  #include "intel_fbdev_fb.h"
>  
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd)
> +struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
>  	struct intel_display *display = to_intel_display(drm);
>  	struct drm_i915_private *dev_priv = to_i915(drm);
> -	struct drm_framebuffer *fb;
>  	struct drm_i915_gem_object *obj;
> -	int size;
> -
> -	size = mode_cmd->pitches[0] * mode_cmd->height;
> -	size = PAGE_ALIGN(size);
>  
>  	obj = ERR_PTR(-ENODEV);
>  	if (HAS_LMEM(dev_priv)) {
> @@ -49,17 +43,36 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  		return ERR_PTR(-ENOMEM);
>  	}
>  
> -	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
> +	return &obj->base;
> +}
> +
> +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> +					       struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	struct drm_framebuffer *fb;
> +	struct drm_gem_object *obj;
> +	int size;
> +
> +	size = mode_cmd->pitches[0] * mode_cmd->height;
> +	size = PAGE_ALIGN(size);
> +
> +	obj = intel_fbdev_fb_bo_create(drm, size);
> +	if (IS_ERR(obj)) {
> +		fb = ERR_CAST(obj);
> +		goto err;
> +	}
> +
> +	fb = intel_framebuffer_create(obj,
>  				      drm_get_format_info(drm,
>  							  mode_cmd->pixel_format,
>  							  mode_cmd->modifier[0]),
>  				      mode_cmd);
>  	if (IS_ERR(fb)) {
> -		i915_gem_object_put(obj);
> +		drm_gem_object_put(obj);
>  		goto err;
>  	}
>  
> -	i915_gem_object_put(obj);
> +	drm_gem_object_put(obj);
>  
>  	return to_intel_framebuffer(fb);
>  err:
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 83454ffbf79c..6a4ba40d5831 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -13,6 +13,7 @@ struct fb_info;
>  struct i915_vma;
>  struct intel_display;
>  
> +struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
