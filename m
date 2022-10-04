Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E49035F4445
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3E3110E5FE;
	Tue,  4 Oct 2022 13:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A945110E5FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664890271; x=1696426271;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Q5b9q3FqrYv02looxVj6nYZWc/O1sl+BC3YdSVM1Kw4=;
 b=AFhn8PbeM2vuJTX85h28Vdonrrq7fcT6NUbftq45lfo805lk8IEy1EYN
 arT19yGPanxvjr2ZbUW3o/wVnH34IyEQlpH/Zm64CEWfRib+LYMfBX3a1
 nJemUNQZf6CPStH+PIQuC0GwoILQ/uw/1VycWFrUHNtGsQ72cdBqEzz8j
 zueasQXTGEZpmCGx+x2MvW+GvIkDkMor3BJ/l2CDckg2KQQkOcniIjonC
 Dt5CXF7fCB89ywiMqwsAuUSCFlh6gGRyd8Z4nZ6h2NDR64Lu/drJqRF4O
 S2Bp+CvKAYmIYQCS7/qXFZ574iEml8Tlka4DqM32VbSDl7auWYh1PPJJq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="367004401"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="367004401"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713010555"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="713010555"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2022 06:31:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 16:31:07 +0300
Date: Tue, 4 Oct 2022 16:31:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yzw1mxHC309xiLr+@intel.com>
References: <20221004131916.233474-1-matthew.auld@intel.com>
 <20221004131916.233474-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221004131916.233474-2-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 2/5] drm/i915/display: handle migration
 for dpt
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 04, 2022 at 02:19:13PM +0100, Matthew Auld wrote:
> On platforms like DG2, it looks like the dpt path here is missing the
> migrate-to-lmem step on discrete platforms.
> 
> v2:
>   - Move the vma_pin() under the for_i915_gem_ww(), otherwise the
>     object can be moved after dropping the lock and then doing the pin.
> 
> Fixes: 33e7a975103c ("drm/i915/xelpd: First stab at DPT support")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jianshui Yu <jianshui.yu@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 51 +++++++++++++--------
>  1 file changed, 33 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 0cd9e8cb078b..5031ee5695dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -26,10 +26,17 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  	struct drm_device *dev = fb->dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> +	struct i915_gem_ww_ctx ww;
>  	struct i915_vma *vma;
>  	u32 alignment;
>  	int ret;
>  
> +	/*
> +	 * We are not syncing against the binding (and potential migrations)
> +	 * below, so this vm must never be async.
> +	*/
> +	GEM_WARN_ON(vm->bind_async_flags);
> +
>  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
>  
> @@ -37,29 +44,37 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  
>  	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
>  
> -	ret = i915_gem_object_lock_interruptible(obj, NULL);
> -	if (!ret) {
> +	for_i915_gem_ww(&ww, ret, true) {
> +		ret = i915_gem_object_lock(obj, &ww);
> +		if (ret)
> +			continue;
> +
> +		if (HAS_LMEM(dev_priv)) {
> +			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> +			if (ret)
> +				continue;
> +		}
> +
>  		ret = i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
> -		i915_gem_object_unlock(obj);
> -	}
> -	if (ret) {
> -		vma = ERR_PTR(ret);
> -		goto err;
> -	}
> +		if (ret)
> +			continue;
>  
> -	vma = i915_vma_instance(obj, vm, view);
> -	if (IS_ERR(vma))
> -		goto err;
> +		vma = i915_vma_instance(obj, vm, view);
> +		if (IS_ERR(vma)) {
> +			ret = PTR_ERR(vma);
> +			continue;
> +		}
>  
> -	if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> -		ret = i915_vma_unbind_unlocked(vma);
> -		if (ret) {
> -			vma = ERR_PTR(ret);
> -			goto err;
> +		if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> +			ret = i915_vma_unbind(vma);
> +			if (ret)
> +				continue;
>  		}
> -	}
>  
> -	ret = i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
> +		ret = i915_vma_pin_ww(vma, &ww, 0, alignment, PIN_GLOBAL);
> +		if (ret)
> +			continue;
> +	}
>  	if (ret) {
>  		vma = ERR_PTR(ret);
>  		goto err;
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
