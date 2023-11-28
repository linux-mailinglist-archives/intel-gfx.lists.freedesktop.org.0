Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2C77FBB97
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C04D10E524;
	Tue, 28 Nov 2023 13:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFCA610E524
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 13:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701178255; x=1732714255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=54bhYloDrOT2d9k+SjqmajdLS9UWyUcU9u0qmcF83uc=;
 b=BvtnmrLYxGmagUHlmTrIX180+93R05hvcea1BafGlaGWGjCKpz/CKQvr
 aJ+w65lLXzA0iNfMJ4iublnyl9RTS4+xNv9IsV0U2ggKVf6ZY+d+oaPK9
 8m/qEfrkNj8MPTZm2yqq3/uJBnAFGJBDvq+JWBLOJBGy7gTR0TIbfsHcT
 Ar3RGdAIOfW7X88hV6dDpCJmDFP1muZSWY1W+bibwI4b4ttoeonBfochF
 duiSlCYwYgeu06yNEWrFkL9tWbvH+10rxoflxj4cECjHm+6ysyTxdXKUX
 ZoQNK3Z7YgGzSX1fm+2+AFPpKSHwoiCoOoXx5Vqz8k32IX/9p+O7pqv80 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="392672955"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="392672955"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 05:30:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761935456"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761935456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 05:30:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 15:30:52 +0200
Date: Tue, 28 Nov 2023 15:30:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZWXrjLgovFrYNKYi@intel.com>
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
 <20231123074120.1641630-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231123074120.1641630-2-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 1/4] drm/i915/display: use
 intel_bo_to_drm_bo in intel_fb.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 23, 2023 at 09:41:17AM +0200, Jouni Högander wrote:
> We are preparing for Xe driver. I915 and Xe object implementation are
> differing. Do not use  i915_gem_object->base directly. Instead use
> intel_bo_to_drm_bo.
> 
> Also use drm_gem_object_put instead of i915_gem_object_put. This should be
> ok as i915_gem_object_put is really just doing 	__drm_gem_object_put.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index c1777ea35761..7c2df6c1f377 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1657,10 +1657,10 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
>  		max_size = max(max_size, offset + size);
>  	}
>  
> -	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
> +	if (mul_u32_u32(max_size, tile_size) > intel_bo_to_drm_bo(obj)->size) {
>  		drm_dbg_kms(&i915->drm,
>  			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
> -			    mul_u32_u32(max_size, tile_size), obj->base.size);
> +			    mul_u32_u32(max_size, tile_size), intel_bo_to_drm_bo(obj)->size);
>  		return -EINVAL;
>  	}
>  
> @@ -1889,7 +1889,7 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
>  						unsigned int *handle)
>  {
>  	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct drm_i915_private *i915 = to_i915(intel_bo_to_drm_bo(obj)->dev);
>  
>  	if (i915_gem_object_is_userptr(obj)) {
>  		drm_dbg(&i915->drm,
> @@ -1897,7 +1897,7 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
>  		return -EINVAL;
>  	}
>  
> -	return drm_gem_handle_create(file, &obj->base, handle);
> +	return drm_gem_handle_create(file, intel_bo_to_drm_bo(obj), handle);
>  }
>  
>  struct frontbuffer_fence_cb {
> @@ -1975,7 +1975,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  			   struct drm_i915_gem_object *obj,
>  			   struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
> +	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
>  	struct drm_framebuffer *fb = &intel_fb->base;
>  	u32 max_stride;
>  	unsigned int tiling, stride;
> @@ -2153,7 +2153,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  	}
>  
>  	fb = intel_framebuffer_create(obj, &mode_cmd);
> -	i915_gem_object_put(obj);
> +	drm_gem_object_put(intel_bo_to_drm_bo(obj));
>  
>  	return fb;
>  }
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
