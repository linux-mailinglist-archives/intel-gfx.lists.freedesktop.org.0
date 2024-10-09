Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0E29971C4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 18:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD0B10E781;
	Wed,  9 Oct 2024 16:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OUOqig/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C335F10E781;
 Wed,  9 Oct 2024 16:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728491832; x=1760027832;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Nf19nwlPnMPkKk0hD4XZvsKTbAyJ8HAfiBI1lYwqgy8=;
 b=OUOqig/ARokf17xTa1/Ga1wAsskXoZCB4RTmrx20vBBAxgH9yD+qC3q1
 MpzQrYqrgkl5cNYZJXumYDau4vUPydMg6g7hK9n74lYx3PVYkO3jdjAnw
 uvtvRQUIjL1rtiq87sNN4f0RcCGkkaFHfkezQ3s0bSmb5sFCN5QJFLaFg
 1LM7O1wDtDYk+RhHkoW2nOk6DKpNQj7sTZBCfRJYjsho0X3ezEOZHYrq+
 BXmlRQmBfjnrPUAnDu93lChctGml5iRDIScYCvsU204auIHdtYZyZXNrY
 c7fmhhppTS8E+qWgpw5LU/oKTXMj4T2Dd5l0n1+IvMAwj2kIOw6XSaMGM g==;
X-CSE-ConnectionGUID: Txi45fXSQz+THZUSNhpgFA==
X-CSE-MsgGUID: etHhZcmETBy8RWA4P+JU/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27940534"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27940534"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 09:37:11 -0700
X-CSE-ConnectionGUID: 5j9SLUGaS/6Y79fuDZH/hA==
X-CSE-MsgGUID: /OWcpXkGTGeVEjWtt3tLbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76401867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 09:37:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 19:37:08 +0300
Date: Wed, 9 Oct 2024 19:37:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/xe/display: align framebuffers according to hw
 requirements
Message-ID: <ZwaxNJnHxQhN7K9c@intel.com>
References: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
 <20241009151947.2240099-3-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241009151947.2240099-3-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
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

On Wed, Oct 09, 2024 at 06:19:47PM +0300, Juha-Pekka Heikkila wrote:
> Align framebuffers in memory according to hw requirements instead of
> default page size alignment.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 57 ++++++++++++++++----------
>  1 file changed, 35 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 79dbbbe03c7f..761510ae0690 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -79,7 +79,8 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
>  
>  static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  			       const struct i915_gtt_view *view,
> -			       struct i915_vma *vma)
> +			       struct i915_vma *vma,
> +			       u64 physical_alignment)
>  {
>  	struct xe_device *xe = to_xe_device(fb->base.dev);
>  	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
> @@ -99,23 +100,29 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  				 XE_PAGE_SIZE);
>  
>  	if (IS_DGFX(xe))
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_VRAM0 |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size, ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_VRAM0 |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	else
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_STOLEN |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size,  ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_STOLEN |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	if (IS_ERR(dpt))
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_SYSTEM |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size,  ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_SYSTEM |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	if (IS_ERR(dpt))
>  		return PTR_ERR(dpt);
>  
> @@ -184,7 +191,8 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
>  
>  static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  				const struct i915_gtt_view *view,
> -				struct i915_vma *vma)
> +				struct i915_vma *vma,
> +				u64 physical_alignment)
>  {
>  	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
>  	struct xe_bo *bo = gem_to_xe_bo(obj);
> @@ -266,7 +274,8 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  }
>  
>  static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
> -					const struct i915_gtt_view *view)
> +					const struct i915_gtt_view *view,
> +					u64 physical_alignment)
>  {
>  	struct drm_device *dev = fb->base.dev;
>  	struct xe_device *xe = to_xe_device(dev);
> @@ -315,9 +324,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
>  
>  	vma->bo = bo;
>  	if (intel_fb_uses_dpt(&fb->base))
> -		ret = __xe_pin_fb_vma_dpt(fb, view, vma);
> +		ret = __xe_pin_fb_vma_dpt(fb, view, vma, physical_alignment);
>  	else
> -		ret = __xe_pin_fb_vma_ggtt(fb, view, vma);
> +		ret = __xe_pin_fb_vma_ggtt(fb, view, vma,  physical_alignment);
>  	if (ret)
>  		goto err_unpin;
>  
> @@ -358,7 +367,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  {
>  	*out_flags = 0;
>  
> -	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view);
> +	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, phys_alignment);
>  }
>  
>  void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
> @@ -372,11 +381,15 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  	struct drm_gem_object *obj = intel_fb_bo(fb);
>  	struct xe_bo *bo = gem_to_xe_bo(obj);
>  	struct i915_vma *vma;
> +	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +	u64 phys_alignment = plane->min_alignment(plane, fb, 0);

.min_alignment() gives you the virtual alignment. Physical alignment
is not covered (except for cursors on ancient hardware since those
don't go through ggtt translation at all).

I don't think we have any real way to even ask for specific physical
alignment with shmem. You get what you get.

>  
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
>  
> -	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
> +	vma = __xe_pin_fb_vma(intel_fb, &plane_state->view.gtt, phys_alignment);
> +
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
