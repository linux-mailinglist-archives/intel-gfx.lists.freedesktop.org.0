Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDFA42AAAE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 19:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E994F6E823;
	Tue, 12 Oct 2021 17:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C7B6E823
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 17:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214163138"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="214163138"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 10:25:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491071774"
Received: from annahenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 10:25:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211012043502.1377715-7-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211012043502.1377715-1-airlied@gmail.com>
 <20211012043502.1377715-7-airlied@gmail.com>
Date: Tue, 12 Oct 2021 20:25:17 +0300
Message-ID: <87y26yxiiq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/display: refactor fbdev
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

On Tue, 12 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This just cleans up the calls a bit.

I get an uneasy feeling about the changes in the error paths here. The
happy day scenario looks fine.

>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 64 +++++++++++++---------
>  1 file changed, 38 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index adc3a81be9f7..7ac9348d20c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -171,6 +171,35 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>  	return 0;
>  }
>  
> +static int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
> +				     struct intel_fbdev *ifbdev,
> +				     void **vaddr)
> +{
> +	const struct i915_ggtt_view view = {
> +		.type = I915_GGTT_VIEW_NORMAL,
> +	};
> +	ifbdev->vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> +						 &view, false, &ifbdev->vma_flags);
> +
> +	if (IS_ERR(ifbdev->vma)) {
> +		return PTR_ERR(ifbdev->vma);

ifbdev->vma remains non-NULL error pointer.

> +	}
> +
> +	*vaddr = i915_vma_pin_iomap(ifbdev->vma);
> +	if (IS_ERR(*vaddr)) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to remap framebuffer into virtual memory\n");
> +		return PTR_ERR(vaddr);

Old error path would do unpin here.

> +	}
> +	return 0;
> +}
> +
> +static void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
> +{
> +	if (ifbdev->vma)
> +		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> +}
> +
>  static int intelfb_create(struct drm_fb_helper *helper,
>  			  struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -181,13 +210,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
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
> @@ -224,10 +248,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
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
> @@ -261,19 +283,12 @@ static int intelfb_create(struct drm_fb_helper *helper,
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
> @@ -281,23 +296,21 @@ static int intelfb_create(struct drm_fb_helper *helper,
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

Old code assigns these only on success.

I'm not insisting on making changes, but I guess I need to be told it
doesn't matter.

BR,
Jani.

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
> @@ -316,8 +329,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
>  
>  	drm_fb_helper_fini(&ifbdev->helper);
>  
> -	if (ifbdev->vma)
> -		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> +	intel_fbdev_unpin(ifbdev);
>  
>  	if (ifbdev->fb)
>  		drm_framebuffer_remove(&ifbdev->fb->base);

-- 
Jani Nikula, Intel Open Source Graphics Center
