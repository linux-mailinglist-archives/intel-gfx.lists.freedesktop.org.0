Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A6C97BE5F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 17:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DB610E5E4;
	Wed, 18 Sep 2024 15:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="fi1GILGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C860F10E5D9;
 Wed, 18 Sep 2024 15:05:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5389C5C0643;
 Wed, 18 Sep 2024 15:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41C37C4CEC2;
 Wed, 18 Sep 2024 15:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726671944;
 bh=NEbsoDGarkF9DcJ1oPB0XKgElHrM+/7uFjvxWCETW0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fi1GILGDGqdRw5CBleFgjz4TidR4S1TdejI62SRowk6vuJvj9pjXHpSAGdlPfuI1M
 c3oeEEdj1SqjpjawyCLABhDqu1sCnDS+03+xoA9DYwRWke5QOxrKvgrb+NF/fYtMsY
 VIFXPeamYNM2JkxHyIaU6Nil5kCJ8iYR+Iv9rNBh7BCaujHbYFPWR64ho6UDyUrYsT
 9ckVpjAZHZVEqjv9mYDoOZXB1Xlag32yFPdhICgUt8BNTKeqYMYHlaQr17xMflUtaf
 8/vEFafIFhm2kX5+RPV1NTouAhBw/rsvEdF4mDTTC/ita6U5rdLUV5bviZlp7H4KZO
 KkWckROIB9C4w==
Date: Wed, 18 Sep 2024 08:05:42 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915/gem: fix bitwise and logical AND mixup
Message-ID: <20240918150542.GA4049109@thelio-3990X>
References: <cover.1726658138.git.jani.nikula@intel.com>
 <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
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

On Wed, Sep 18, 2024 at 02:17:44PM +0300, Jani Nikula wrote:
> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
> the wakeref is non-zero, it's either -1 or a dynamically allocated
> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
> the code works by coincidence with the bitwise AND, but with
> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
> condition evaluates to false, and intel_wakeref_auto() doesn't get
> called. Switch to the intended logical AND.
> 
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.1+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 5c72462d1f57..c157ade48c39 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>  		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>  	}
>  
> -	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)

This is going to result in a clang warning:

  drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: error: use of logical '&&' with constant operand [-Werror,-Wconstant-logical-operand]
   1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
        |                     ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: note: use '&' for a bitwise operation
   1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
        |                     ^~
        |                     &
  drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: note: remove constant to silence this warning
   1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
        |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  1 error generated.

Consider adding the explicit '!= 0' to make it clear this should be a
boolean expression.

Cheers,
Nathan

>  		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>  				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>  
> -- 
> 2.39.2
> 
