Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86A997BCFF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 15:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BCD10E265;
	Wed, 18 Sep 2024 13:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvIylYbe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6557510E19B;
 Wed, 18 Sep 2024 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726665899; x=1758201899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/LAA4EJIg52bKSE0rQfIY4l8Ih6Jw/u/MwRTL4ohXFU=;
 b=UvIylYbea839UyE65CtgPvtgikVFuHna4SpDARyRQnwO6nEKrjVIzni6
 C9feaRujljQLAyvERvFayAh3dEwCbU9wFrQbftnmdqiz4yqW6uP1SDet2
 OsciJsN/hMNecnAyA+3gpF0nVuPlu6iLvQXap4uJ45u0Mw/0zUwTvOUey
 7T8sOpUuEUV+aqSpbIdCa+vhp5x9F2jjRcfbA3MVfGGOJBsWZgE8UaLO+
 bH4QWYUPVeDdbMC4jxvARPwYi8Ds+kAKkqAHqyRxU0lIMYbwRvH2yjuza
 sDEeLdA3S+lj6kSeMcC2KptO4t9QjGGfpUwyBcsG66lPUDCqqzT3dBISh w==;
X-CSE-ConnectionGUID: 1YRmWFy5Qsax5fkAKPOfKQ==
X-CSE-MsgGUID: kwjdAUErQwejEF3uKlFxow==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25517027"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25517027"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 06:24:46 -0700
X-CSE-ConnectionGUID: aztiQoaPT/ChmChtGyZM4w==
X-CSE-MsgGUID: lbYSVQ79RjCVlgS+T5epHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="73708488"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.223])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 06:24:43 -0700
Date: Wed, 18 Sep 2024 15:24:40 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915/gem: fix bitwise and logical AND mixup
Message-ID: <ZurUmA5D04FgV2v6@ashyti-mobl2.lan>
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

Hi Jani,

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

ops!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

>  		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>  				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>  
> -- 
> 2.39.2
