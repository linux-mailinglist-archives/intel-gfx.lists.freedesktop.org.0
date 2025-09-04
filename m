Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177EFB43F0B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 16:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F8D10EA5C;
	Thu,  4 Sep 2025 14:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXcYDFR4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9914210EA5C;
 Thu,  4 Sep 2025 14:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756996668; x=1788532668;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CjlOOxyPRaTRMBHVwVrvZeeQxtWIkf0ACWPNImzffVo=;
 b=kXcYDFR4oH4fK7dDfvnUuU36hmmLgAJ+fE2BRlZ71sqWSVutOFPUtLED
 lbNW+/G/ivkv8HP1AVKn1Azf34efFt82Qwmgr2v9DzaDKdDDqtgHaqqVS
 nQGKR+U02n7I/H5qRlJeO/39mH1bAbjkBce9+auEvcuIg2Qe6lPAEA+lP
 8gOzdmGBE+hQamAxELIDfs/ttyCIV3CU/lsClwRxIw9p6FIp88Mf4aj/8
 QMcbAMS8xVclSau52k9gnXCazltd6lQP3SOPHQWs+HR1fL980xyFC+jw8
 0xY3wHRMPaDgVpUwlGpxlKMKimdFrDWmEodZxS+I8ssiUJmy/x5KA2WXL w==;
X-CSE-ConnectionGUID: IfApxnskRxy0jDS9/l2cXg==
X-CSE-MsgGUID: 3EfP+00wR2G/4dXsQq5lAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58369911"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="58369911"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 07:37:47 -0700
X-CSE-ConnectionGUID: l4F7EsWyS4ixVyAVcSEwPg==
X-CSE-MsgGUID: NnxR7f5iRViAmsBxEk3PuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="176026940"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.178])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 07:37:45 -0700
Date: Thu, 4 Sep 2025 17:37:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
Message-ID: <aLmkNu6AJ6LGVt6q@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
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

On Wed, Sep 03, 2025 at 11:32:03PM +0300, Jani Nikula wrote:
> xe does xe_bo_unpin_map_no_vm() on the failure path. Add a common helper
> to enable further refactoring.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
>  3 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 3837973b0d25..6b70823ce5ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -51,6 +51,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
>  	return &obj->base;
>  }
>  
> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
> +{
> +	/* nop? */

gem_object_put() is what destroys the bo on i915, so I think you're
introducing a leak in the next patch with this nop implementation.

xe seems to be riddled with footguns here since it conflates
creation+pinning+whatever in the same thing (and I guess it
doesn't know how to clean all that up when the last reference
to the object disappears?) and you have to use that horribly
misnamed function instead...

> +}
> +
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> index b10c4635bf46..6d6f316834df 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -17,6 +17,7 @@ struct intel_display;
>  
>  u32 intel_fbdev_fb_pitch_align(u32 stride);
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  					       struct drm_mode_fb_cmd2 *mode_cmd);
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 9a5d14d5781a..9a5cf50ea7de 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -54,6 +54,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
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
> @@ -76,7 +81,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>  							  mode_cmd->modifier[0]),
>  				      mode_cmd);
>  	if (IS_ERR(fb)) {
> -		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
> +		intel_fbdev_fb_bo_destroy(obj);
>  		goto err;
>  	}
>  
> -- 
> 2.47.2

-- 
Ville Syrjälä
Intel
