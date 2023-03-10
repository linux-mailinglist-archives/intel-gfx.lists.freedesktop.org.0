Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 297ED6B3BD0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 11:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE08A10E9C6;
	Fri, 10 Mar 2023 10:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A4210E9C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 10:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678443339; x=1709979339;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/XgFPdIs0WzFx0wDrtJ5mZi/DFoEjeNXX6skDcW4dMQ=;
 b=KAQ0B+wQ3vXsNFDCqS2Zbjs/cdHQ73PSQnvUanBzfMmG7wiU7BlVIOIN
 TIlT7I/UD9JVgB+R0VgLZDZdzf0S7DUP8K7ZpNUB6VaE4q2oRuF1Gw6rl
 OvFuyGoc5gyN8R83GTVcu0rnevO3M8l2k8SDwHaeKtv/g6tWCvCARj/rI
 wMpupgEpycX/cGpN/9DOQR0z5ByQWdYq3FWzu33aU9o8yFY6x6+iVxWTW
 wUaO+dlkYq+iHf26k0tA0qcQNzTjhfuCHdOd8o8sraYUOPOlflF9kGwN5
 9LLPoqyNulwhtsB44c7yw2vUc5/6DLcVou7xQFZGNLFSBvWfXVeS76ran g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401558389"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="401558389"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:15:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="710232915"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="710232915"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.59.238])
 ([10.252.59.238])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:15:36 -0800
Message-ID: <64864555-104e-c867-e5f0-9d6deac9fbef@linux.intel.com>
Date: Fri, 10 Mar 2023 11:15:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230307144652.17595-1-nirmoy.das@intel.com>
 <20230307144652.17595-2-nirmoy.das@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230307144652.17595-2-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: Jani Nikula <jani.nikula@intel.com>, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ping, please provide some feedback on this.

On 3/7/2023 3:46 PM, Nirmoy Das wrote:
> If stolen memory allocation fails for fbdev, the driver will
> fallback to system memory. Calculation of smem_start is wrong
> for such framebuffer objs if the platform comes with no gmadr or
> no aperture. Solve this by adding fb_mmap callback which will
> use GTT if aperture is available otherwise will use cpu to access
> the framebuffer.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbdev.c | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 3659350061a7..67427d020bd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -40,8 +40,10 @@
>   #include <drm/drm_crtc.h>
>   #include <drm/drm_fb_helper.h>
>   #include <drm/drm_fourcc.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>   
>   #include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_mman.h"
>   
>   #include "i915_drv.h"
>   #include "intel_display_types.h"
> @@ -120,6 +122,16 @@ static int intel_fbdev_pan_display(struct fb_var_screeninfo *var,
>   	return ret;
>   }
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
>   static const struct fb_ops intelfb_ops = {
>   	.owner = THIS_MODULE,
>   	DRM_FB_HELPER_DEFAULT_OPS,
> @@ -131,6 +143,7 @@ static const struct fb_ops intelfb_ops = {
>   	.fb_imageblit = drm_fb_helper_cfb_imageblit,
>   	.fb_pan_display = intel_fbdev_pan_display,
>   	.fb_blank = intel_fbdev_blank,
> +	.fb_mmap = intel_fbdev_mmap,
>   };
>   
>   static int intelfb_alloc(struct drm_fb_helper *helper,
