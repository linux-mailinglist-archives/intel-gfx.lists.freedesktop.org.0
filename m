Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CE14331F4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 11:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CD56EB63;
	Tue, 19 Oct 2021 09:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599B56EB63
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 09:15:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="314665535"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="314665535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 02:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="566853826"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 19 Oct 2021 02:15:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 12:15:13 +0300
Date: Tue, 19 Oct 2021 12:15:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YW6MoRm2bpAJUwCi@intel.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
 <20211017234106.2412994-3-airlied@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017234106.2412994-3-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: move fbdev pin code
 into fb_pin
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

On Mon, Oct 18, 2021 at 09:41:04AM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> 
> This moves the fbdev pin code over and moves the internal
> interfaces to static.
> 
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 37 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_fb_pin.h | 15 ++++-----
>  drivers/gpu/drm/i915/display/intel_fbdev.c  | 32 ------------------
>  3 files changed, 41 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 3f77f3013584..0beb0aa33337 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -71,7 +71,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  	return vma;
>  }
>  
> -struct i915_vma *
> +static struct i915_vma *
>  intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  			   bool phys_cursor,
>  			   const struct i915_ggtt_view *view,
> @@ -199,7 +199,8 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  	return vma;
>  }
>  
> -void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
> +static void
> +intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
>  {
>  	if (flags & PLANE_HAS_FENCE)
>  		i915_vma_unpin_fence(vma);
> @@ -272,3 +273,35 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
>  			intel_dpt_unpin(intel_fb->dpt_vm);
>  	}
>  }
> +
> +void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
> +{
> +	if (ifbdev->vma)
> +		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> +	ifbdev->vma = NULL;
> +	ifbdev->vma_flags = 0;
> +}
> +
> +int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
> +			      struct intel_fbdev *ifbdev,
> +			      void **vaddr)
> +{
> +	const struct i915_ggtt_view view = {
> +		.type = I915_GGTT_VIEW_NORMAL,
> +	};
> +	ifbdev->vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> +						 &view, false, &ifbdev->vma_flags);
> +
> +	if (IS_ERR(ifbdev->vma)) {
> +		return PTR_ERR(ifbdev->vma);
> +	}

I suppose easiest to just regenrate this one after fixing the
sparse/checkpatch issues in the previous patch.

Also the fbdev code still has to root around inside the vma/etc.
so the abstraction is pretty weak. So not sure how much this
buys us.

But I guess no real harm in it either.
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
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> index e4fcd0218d9d..88d736264348 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -8,21 +8,18 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_i915_private;
>  struct drm_framebuffer;
> +struct intel_fbdev;
>  struct i915_vma;
>  struct intel_plane_state;
>  struct i915_ggtt_view;
>  
> -struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> -			   bool phys_cursor,
> -			   const struct i915_ggtt_view *view,
> -			   bool uses_fence,
> -			   unsigned long *out_flags);
> -
> -void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
> -
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state);
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
>  
> +int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
> +			      struct intel_fbdev *ifbdev,
> +			      void **vaddr);
> +void intel_fbdev_unpin(struct intel_fbdev *ifbdev);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index c3ea9639a4ed..cee85fcc2085 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -171,38 +171,6 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>  	return 0;
>  }
>  
> -static void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
> -{
> -	if (ifbdev->vma)
> -		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
> -	ifbdev->vma = NULL;
> -	ifbdev->vma_flags = 0;
> -}
> -
> -static int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
> -				     struct intel_fbdev *ifbdev,
> -				     void **vaddr)
> -{
> -	const struct i915_ggtt_view view = {
> -		.type = I915_GGTT_VIEW_NORMAL,
> -	};
> -	ifbdev->vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> -						 &view, false, &ifbdev->vma_flags);
> -
> -	if (IS_ERR(ifbdev->vma)) {
> -		return PTR_ERR(ifbdev->vma);
> -	}
> -
> -	*vaddr = i915_vma_pin_iomap(ifbdev->vma);
> -	if (IS_ERR(*vaddr)) {
> -		intel_fbdev_unpin(ifbdev);
> -		drm_err(&dev_priv->drm,
> -			"Failed to remap framebuffer into virtual memory\n");
> -		return PTR_ERR(vaddr);
> -	}
> -	return 0;
> -}
> -
>  static int intelfb_create(struct drm_fb_helper *helper,
>  			  struct drm_fb_helper_surface_size *sizes)
>  {
> -- 
> 2.25.4

-- 
Ville Syrjälä
Intel
