Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EC597BF9A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315DA10E5F5;
	Wed, 18 Sep 2024 17:26:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wz8qSrSx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABDD10E28B;
 Wed, 18 Sep 2024 17:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680367; x=1758216367;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oAzU6jacWPSFfbD7N2+YNUm86tr4pswV9w5y/WuPw04=;
 b=Wz8qSrSx7MBh0VG/dsNNXnCiPAsj4ZEAPLs+nkoTGYniBlLvuWkJIJpL
 Qupf/lAeO1vL2cYYGMDza0NQ2THD5VLoH5vZCbJYHv3A8F3dI6Qp1dehv
 0n+TDMhdOwKHO9lQcNGTNl+qdyVxf5neFvbrUtQjAiCyhCGfNj42h8xE+
 ELoWlJ7CDT4j36tOZydA9lq+aHgvnP8DBRxXTnWeWNkEDagNEKALhTv4W
 eOzDK5lUvhMqdEPeZ8CErfRtw5Hu46grJ6oCxuOPpm1eArM6yMzrzIxt3
 TtHi2khIQz//OOOH9mE+hrkuXW2u3UR+ezgbmcjxOnGWLEoRjd38x1mck A==;
X-CSE-ConnectionGUID: 4oxVZpL9TrKCHmulHk2JeQ==
X-CSE-MsgGUID: E8FOw0goT2i8YlzJ0HSJnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25730822"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25730822"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:26:07 -0700
X-CSE-ConnectionGUID: 7nytcQ0mRrG/sdJj2C9WIQ==
X-CSE-MsgGUID: pBAnT4nZQ9mzoEO9Bww4iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74444114"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:26:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Matthew
 Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915/gem: fix bitwise and logical AND mixup
In-Reply-To: <20240918150542.GA4049109@thelio-3990X>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726658138.git.jani.nikula@intel.com>
 <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
 <20240918150542.GA4049109@thelio-3990X>
Date: Wed, 18 Sep 2024 20:26:00 +0300
Message-ID: <87v7ysan6f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 18 Sep 2024, Nathan Chancellor <nathan@kernel.org> wrote:
> On Wed, Sep 18, 2024 at 02:17:44PM +0300, Jani Nikula wrote:
>> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
>> the wakeref is non-zero, it's either -1 or a dynamically allocated
>> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
>> the code works by coincidence with the bitwise AND, but with
>> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
>> condition evaluates to false, and intel_wakeref_auto() doesn't get
>> called. Switch to the intended logical AND.
>> 
>> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.1+
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> index 5c72462d1f57..c157ade48c39 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>>  		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>>  	}
>>  
>> -	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>
> This is going to result in a clang warning:
>
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: error: use of logical '&&' with constant operand [-Werror,-Wconstant-logical-operand]
>    1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>         |                     ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: note: use '&' for a bitwise operation
>    1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>         |                     ^~
>         |                     &
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1134:14: note: remove constant to silence this warning
>    1134 |         if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   1 error generated.
>
> Consider adding the explicit '!= 0' to make it clear this should be a
> boolean expression.

Thanks, will be fixed in v2.

BR,
Jani.


>
> Cheers,
> Nathan
>
>>  		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>>  				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
