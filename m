Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4490433125
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 10:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0896C6EB51;
	Tue, 19 Oct 2021 08:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911DA6EB51
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 08:35:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228407210"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="228407210"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 01:34:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="443792024"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 19 Oct 2021 01:34:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 11:34:45 +0300
Date: Tue, 19 Oct 2021 11:34:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YW6DJYvHuj5zyal4@intel.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
 <20211017234106.2412994-2-airlied@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017234106.2412994-2-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: refactor fbdev
 pin/unpin out into functions.
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

On Mon, Oct 18, 2021 at 09:41:03AM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> 
> This just cleans up the calls a bit.
> 
> v2: fix unpin in vaddr fail path (Jani)
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 67 +++++++++++++---------
>  1 file changed, 41 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index adc3a81be9f7..c3ea9639a4ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -171,6 +171,38 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>  	return 0;
>  }
>  
> +static void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
> +{
> +	if (ifbdev->vma)
> +		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> +	ifbdev->vma = NULL;
> +	ifbdev->vma_flags = 0;
> +}
> +
> +static int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
> +				     struct intel_fbdev *ifbdev,
> +				     void **vaddr)

__iomem ?

Was wonder why sparse didn't catch this, but looks like it did.

> +{
> +	const struct i915_ggtt_view view = {
> +		.type = I915_GGTT_VIEW_NORMAL,
> +	};

Surprised checkpatch didn't complain about lack of an empty line
after the variable declarations. Pretty sure I've seen it do that,
or was it perhaps some other checker?

> +	ifbdev->vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> +						 &view, false, &ifbdev->vma_flags);
> +
> +	if (IS_ERR(ifbdev->vma)) {
> +		return PTR_ERR(ifbdev->vma);
> +	}

A few trivial checkpatch warns around single line if-statements
vs. braces. Should be easy to clear those out.

Looks good otherwise
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	*vaddr = i915_vma_pin_iomap(ifbdev->vma);
> +	if (IS_ERR(*vaddr)) {
> +		intel_fbdev_unpin(ifbdev);
> +		drm_err(&dev_priv->drm,
> +			"Failed to remap framebuffer into virtual memory\n");
> +		return PTR_ERR(vaddr);
> +	}
> +	return 0;
> +}
> +
>  static int intelfb_create(struct drm_fb_helper *helper,
>  			  struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -181,13 +213,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	struct i915_ggtt *ggtt = &dev_priv->ggtt;
> -	const struct i915_ggtt_view view = {
> -		.type = I915_GGTT_VIEW_NORMAL,
> -	};
>  	intel_wakeref_t wakeref;
>  	struct fb_info *info;
> -	struct i915_vma *vma;
> -	unsigned long flags = 0;
>  	bool prealloc = false;
>  	void __iomem *vaddr;
>  	struct drm_i915_gem_object *obj;
> @@ -224,10 +251,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	 * This also validates that any existing fb inherited from the
>  	 * BIOS is suitable for own access.
>  	 */
> -	vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> -					 &view, false, &flags);
> -	if (IS_ERR(vma)) {
> -		ret = PTR_ERR(vma);
> +	ret = intel_fbdev_pin_and_fence(dev_priv, ifbdev, &vaddr);
> +	if (ret) {
>  		goto out_unlock;
>  	}
>  
> @@ -261,19 +286,12 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  
>  		/* Our framebuffer is the entirety of fbdev's system memory */
>  		info->fix.smem_start =
> -			(unsigned long)(ggtt->gmadr.start + vma->node.start);
> -		info->fix.smem_len = vma->node.size;
> +			(unsigned long)(ggtt->gmadr.start + ifbdev->vma->node.start);
> +		info->fix.smem_len = ifbdev->vma->node.size;
>  	}
>  
> -	vaddr = i915_vma_pin_iomap(vma);
> -	if (IS_ERR(vaddr)) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to remap framebuffer into virtual memory\n");
> -		ret = PTR_ERR(vaddr);
> -		goto out_unpin;
> -	}
>  	info->screen_base = vaddr;
> -	info->screen_size = vma->node.size;
> +	info->screen_size = ifbdev->vma->node.size;
>  
>  	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
>  
> @@ -281,23 +299,21 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	 * If the object is stolen however, it will be full of whatever
>  	 * garbage was left in there.
>  	 */
> -	if (!i915_gem_object_is_shmem(vma->obj) && !prealloc)
> +	if (!i915_gem_object_is_shmem(ifbdev->vma->obj) && !prealloc)
>  		memset_io(info->screen_base, 0, info->screen_size);
>  
>  	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
>  
>  	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
>  		    ifbdev->fb->base.width, ifbdev->fb->base.height,
> -		    i915_ggtt_offset(vma));
> -	ifbdev->vma = vma;
> -	ifbdev->vma_flags = flags;
> +		    i915_ggtt_offset(ifbdev->vma));
>  
>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  	vga_switcheroo_client_fb_set(pdev, info);
>  	return 0;
>  
>  out_unpin:
> -	intel_unpin_fb_vma(vma, flags);
> +	intel_fbdev_unpin(ifbdev);
>  out_unlock:
>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  	return ret;
> @@ -316,8 +332,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
>  
>  	drm_fb_helper_fini(&ifbdev->helper);
>  
> -	if (ifbdev->vma)
> -		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> +	intel_fbdev_unpin(ifbdev);
>  
>  	if (ifbdev->fb)
>  		drm_framebuffer_remove(&ifbdev->fb->base);
> -- 
> 2.25.4

-- 
Ville Syrjälä
Intel
