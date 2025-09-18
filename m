Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A330FB864D9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373BE10E3D3;
	Thu, 18 Sep 2025 17:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Be3/fSJD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A6E10E3D3;
 Thu, 18 Sep 2025 17:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217418; x=1789753418;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RFXjhsZnlXlWFeqhEYZQY2jvdmiLIDB91SqLvQmuqK0=;
 b=Be3/fSJDXbEigVacrI6BKFDmJDsKvY1DWlPyf9fThcOZrerLLO/22QZu
 xhnRRDZzVpYepqc9kWnSvlTUyziPJ2Y6ISQ8BnSwgVnHc+zaffRgFF6Vf
 7tiB6OBDgUZrpcFCVQaJyq39UVf4eLuBcYSJlW3vMhFvI+fNCTDuYRDD2
 DyscAgnRl1xKHzY9Pr+xXR9lvSggiRSyq8DKTz+Ylr9uikVUdK3ot2exx
 q5/pFYVYw7E2w/XKBQqj/Hcv+5zeXPL3CIrP1w4ZZHp7Wa29T4MOoNMLu
 qb5kYY/FjbNkG06X3+BYwuH85WqqE6aP0Wm+1kD+Th7YrtytLMf852274 Q==;
X-CSE-ConnectionGUID: DMOLHQg1TLyvRnzsBgPzYg==
X-CSE-MsgGUID: aEFNoqXWQeWvd5x+KE0M/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="83156465"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="83156465"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:43:38 -0700
X-CSE-ConnectionGUID: tEcZjaFxT+GCfI9ymsllsg==
X-CSE-MsgGUID: unjWw8pSQYWTU1BuEwS2fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="179889852"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:43:36 -0700
Date: Thu, 18 Sep 2025 20:43:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 07/10] drm/{i915,xe}/fbdev: add
 intel_fbdev_fb_bo_destroy()
Message-ID: <aMxExfraYUfQh3QZ@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <22bc3c3158f5a22ab258ada8684766fdf75fefec.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22bc3c3158f5a22ab258ada8684766fdf75fefec.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:57AM +0300, Jani Nikula wrote:
> i915 and xe do different things on the failure path; i915 calls
> drm_gem_object_put() while xe calls xe_bo_unpin_map_no_vm(). Add a
> helper to enable further refactoring.
> 
> v2: Call drm_gem_object_put() on intel_fbdev_fb_bo_destroy()
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
>  3 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index bfd05fd34348..a7dab8cd3aa2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -46,6 +46,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
>  	return &obj->base;
>  }
>  
> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
> +{
> +	drm_gem_object_put(obj);
> +}
> +
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> @@ -68,7 +73,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  							  mode_cmd->modifier[0]),
>  				      mode_cmd);
>  	if (IS_ERR(fb)) {
> -		drm_gem_object_put(obj);
> +		intel_fbdev_fb_bo_destroy(obj);
>  		goto err;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index 6a4ba40d5831..8b6214b0ad0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -14,6 +14,7 @@ struct i915_vma;
>  struct intel_display;
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 48225062211c..defbab3df55b 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -49,6 +49,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
>  	return &obj->ttm.base;
>  }
>  
> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
> +{
> +	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
> +}
> +
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> @@ -71,7 +76,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  							  mode_cmd->modifier[0]),
>  				      mode_cmd);
>  	if (IS_ERR(fb)) {
> -		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
> +		intel_fbdev_fb_bo_destroy(obj);
>  		goto err;
>  	}
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
