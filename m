Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD9A6B812B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 19:51:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6963110E135;
	Mon, 13 Mar 2023 18:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A10010E135
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 18:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678733460; x=1710269460;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NRQXkvIHK/AVY80i5UcvlF+lV9fWlPHwifnlpjXvbaI=;
 b=WmVElR5cxRsLPSYqE+/MU8bsutvxdQIjZlRm2enbWvKY6sgO8eVep9K1
 hx9T/Y3qZF1FFjzYtwiIa+4AULYzi9JuAVlc4o1YaYT/1K5ofPfHyoY88
 Vk7tgmGV7wc+HBnwx++yYOSDD9hUqAmUHZYQTXsvqRyE1rxQ0ykPbeptP
 iLbFjI/nurq5aWj0xmsoc2ELyAhWP/HVPb/c45m1pRdrl9wi++TLktz0/
 czKkQpCHEhNgw0dssvjuDVilqxkEdvti/xSmmSozq2+Ns9gPWygQbl4YQ
 4M/Z1XQ4m+O5qA3ldRE0uzd5l3DdUFXKCPNYajHWhqrxS2cGs3WYuTj5/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="399824527"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="399824527"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 11:50:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="852879750"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="852879750"
Received: from ttulbure-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.34.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 11:50:01 -0700
Date: Mon, 13 Mar 2023 19:49:59 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZA9wV37logKwKaFj@ashyti-mobl2.lan>
References: <20230307144652.17595-1-nirmoy.das@intel.com>
 <20230307144652.17595-2-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307144652.17595-2-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] drm/i915/display: Implement fb_mmap
 callback function
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@intel.com>, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Tue, Mar 07, 2023 at 03:46:52PM +0100, Nirmoy Das wrote:
> If stolen memory allocation fails for fbdev, the driver will
> fallback to system memory. Calculation of smem_start is wrong
> for such framebuffer objs if the platform comes with no gmadr or
> no aperture. Solve this by adding fb_mmap callback which will
> use GTT if aperture is available otherwise will use cpu to access
> the framebuffer.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

I basically agree with the patch, but I would like to have an
opinion from Jani or Ville (or whoever wants to chime in).

Andi

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 3659350061a7..67427d020bd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -40,8 +40,10 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_fourcc.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>  
>  #include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_mman.h"
>  
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
> @@ -120,6 +122,16 @@ static int intel_fbdev_pan_display(struct fb_var_screeninfo *var,
>  	return ret;
>  }
>  
> +#define to_intel_fbdev(x) container_of(x, struct intel_fbdev, helper)
> +static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
> +{
> +	struct intel_fbdev *fbdev = to_intel_fbdev(info->par);
> +	struct drm_gem_object *bo = drm_gem_fb_get_obj(&fbdev->fb->base, 0);
> +	struct drm_i915_gem_object *obj = to_intel_bo(bo);
> +
> +	return i915_gem_fb_mmap(obj, vma);
> +}
> +
>  static const struct fb_ops intelfb_ops = {
>  	.owner = THIS_MODULE,
>  	DRM_FB_HELPER_DEFAULT_OPS,
> @@ -131,6 +143,7 @@ static const struct fb_ops intelfb_ops = {
>  	.fb_imageblit = drm_fb_helper_cfb_imageblit,
>  	.fb_pan_display = intel_fbdev_pan_display,
>  	.fb_blank = intel_fbdev_blank,
> +	.fb_mmap = intel_fbdev_mmap,
>  };
>  
>  static int intelfb_alloc(struct drm_fb_helper *helper,
> -- 
> 2.39.0
