Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FBD5F41E6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 13:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6902110E563;
	Tue,  4 Oct 2022 11:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9B310E564
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 11:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664882527; x=1696418527;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c6lt9y7HzUo/lF9XU3E9Qoy3+pJ2kpMzAcfzG4yAaX8=;
 b=Tlk9bwagyIWlz1amj1ssHJtbI239VSE2yy9PTAnfDQ40w3El9yQi/nCJ
 O42Wgjb6FwwoN1nlzud/235R0KwevDRI/d+48MOkxUDK4jg7IL6sZ3KrB
 MFlNkQTiRsvCeixbHRLZ9DWjYegSCck/ziPCaMHfGhIFzmQbtvuAC9iuc
 r0zAeUIaUmftdnt5ESwO/6DZjC45adWgXwN56FAHa9zGsg1EEX7/JzkZf
 BIIJEPADbmtPsJcthhspbn6wiLb9yJdE0jCJrox9RoYFBN9TJKNVgMslS
 oHNSTJ4jhLZ1pgyIfnIEf+uKSGHUqWuYKg/GtbgWQG5SSyOOQP4W++vOS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="301605470"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="301605470"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:22:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="657096037"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="657096037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 04 Oct 2022 04:22:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 14:22:03 +0300
Date: Tue, 4 Oct 2022 14:22:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YzwXW3rEpPbK6R67@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
 <20221004103311.194409-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221004103311.194409-2-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/5] drm/i915/display: handle migration
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

On Tue, Oct 04, 2022 at 11:33:08AM +0100, Matthew Auld wrote:
> On platforms like DG2, it looks like the dpt path here is missing the
> migrate-to-lmem step on discrete platforms.
> 
> Fixes: 33e7a975103c ("drm/i915/xelpd: First stab at DPT support")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jianshui Yu <jianshui.yu@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 23 ++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 0cd9e8cb078b..32206bd359da 100644
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

Not sure why this is different between the dpt and non-dpt paths?

> +
>  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
>  
> @@ -37,10 +44,20 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
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
> +		if (ret)
> +			continue;
>  	}

The non-dpt path has the whole thing under the same lock.
Is there a reason we're not doing the same thing for both?

I guess some kind of unification effort would be nice to
avoid the codepaths diverging for no good reason.

Maybe even some refactoring would be nice to share more code,
but IIRC all the fence/mappable stuff in the lower levels
of the ggtt paths is what got in the way of just reusing
more of the ggtt code directly.

>  	if (ret) {
>  		vma = ERR_PTR(ret);
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
