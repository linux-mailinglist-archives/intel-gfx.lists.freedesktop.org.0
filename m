Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A14CB864C1
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF63410E8D7;
	Thu, 18 Sep 2025 17:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a0MLqEWo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BBD10E3D3;
 Thu, 18 Sep 2025 17:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217382; x=1789753382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gfVM1MRlUpefybXYmBfJb8jzUwrVz1meqhiHzN5wY70=;
 b=a0MLqEWoTmx1hD1VsSABUQaeuJMNTXZCc157CZ9OIZIig4wYXnz4VvRS
 5TcChurFp6b3WNZgEJS8ZKgW6SgUhhG0vRiBdHX18SOOY6qwsAa2S9o0G
 KcmCLEpdG4WnAx1bb10SvovP3njdJmszT3wnQ57LV+jT4PLPRm1BBsC6Z
 2P+zVMC4WJ8AYZaL//zFCYZAludhyZwsxrjemqazdQs1gsTThKSYTeQbz
 QOnE6jy6DUx5Wxdg9PrbwvaxDF0B8dXLvN6f4Jqe7kBhECaY31f+tYJv9
 3mH7cD2AYJZq7+xxmfcffIsEf1NnddODr+ohXl7IFyr6ZZBfq0WAIb/K3 g==;
X-CSE-ConnectionGUID: djQF4ghDTs6CUI0LZkGH5A==
X-CSE-MsgGUID: 7U9vYBCeR/6o+M8kG1WgiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60671777"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60671777"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:43:02 -0700
X-CSE-ConnectionGUID: DZK9cs1uSzia+jWRpGrH/g==
X-CSE-MsgGUID: vuJqn5mySze135ThXpk/dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="180032843"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:43:00 -0700
Date: Thu, 18 Sep 2025 20:42:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/10] drm/xe/fbdev: abstract bo creation
Message-ID: <aMxEovGtSeRlYG2K@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <74dfb9f3e6e05a93d54a8ab534e4384145b52571.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <74dfb9f3e6e05a93d54a8ab534e4384145b52571.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:56AM +0300, Jani Nikula wrote:
> Separate fbdev bo creation into a separate function
> intel_fbdev_fb_bo_create().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 33 ++++++++++++++-------
>  1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 8eaf1cc7fdf9..48225062211c 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -15,16 +15,11 @@
>  
>  #include <generated/xe_wa_oob.h>
>  
> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> -					       struct drm_mode_fb_cmd2 *mode_cmd)
> +struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
> -	struct drm_framebuffer *fb;
>  	struct xe_device *xe = to_xe_device(drm);
>  	struct xe_bo *obj;
> -	int size;
>  
> -	size = mode_cmd->pitches[0] * mode_cmd->height;
> -	size = PAGE_ALIGN(size);
>  	obj = ERR_PTR(-ENODEV);
>  
>  	if (!IS_DGFX(xe) && !XE_GT_WA(xe_root_mmio_gt(xe), 22019338487_display)) {
> @@ -48,21 +43,39 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  
>  	if (IS_ERR(obj)) {
>  		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
> -		fb = ERR_PTR(-ENOMEM);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	return &obj->ttm.base;
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
>  		goto err;
>  	}
>  
> -	fb = intel_framebuffer_create(&obj->ttm.base,
> +	fb = intel_framebuffer_create(obj,
>  				      drm_get_format_info(drm,
>  							  mode_cmd->pixel_format,
>  							  mode_cmd->modifier[0]),
>  				      mode_cmd);
>  	if (IS_ERR(fb)) {
> -		xe_bo_unpin_map_no_vm(obj);
> +		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>  		goto err;
>  	}
>  
> -	drm_gem_object_put(&obj->ttm.base);
> +	drm_gem_object_put(obj);
>  
>  	return to_intel_framebuffer(fb);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
