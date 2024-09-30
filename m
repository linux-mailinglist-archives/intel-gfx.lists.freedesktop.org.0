Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DD498A62A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 15:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E5CD10E504;
	Mon, 30 Sep 2024 13:55:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrt2KZaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85E510E3F6;
 Mon, 30 Sep 2024 13:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727704500; x=1759240500;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lU9Iw+9fXhpwvJ4aYxm37TuLZEitmM+DZgzjVdKPIuc=;
 b=nrt2KZaHVXOnozIHsw35bwiV7TBfeVlfQHWYbHNBORqBJvAjXIj1onA7
 gTZufm8JoAgvkVr7JjBhVyzcsYMDMLVvsFF1IKdT9TmLUSPfhdCLlSAFF
 ljqR2eMVu+pYWF1SPICf66WiHnyi0ovcRJrmdkAVJCtRL7rs5lvezSmvQ
 nJ9bqcqqrSvsKEu7gQdjjmMsTaHKZ/Obiv1sWOgUM3gqCX9/JWYHenL24
 o0/ujb8qxGjDeOO5lrO5Q1ZErwHfH2HgrkEvQcqVFM/1U9mWkbSe1ngV/
 IrWRNHRBO2lMwpk0PjaqhcvfVxDdOz56BsxuAXZYGfcTJ7vzRLALR0W4L g==;
X-CSE-ConnectionGUID: 3438XEd7QdCzzO/n4Evmbg==
X-CSE-MsgGUID: HAHWyqRnTCyA4qGrzVFnWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44254172"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="44254172"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:54:59 -0700
X-CSE-ConnectionGUID: DR3IS1+qQaSdtk7Z9NGX/g==
X-CSE-MsgGUID: IN5vmG/KS8CmYG8id1p+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73361272"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.136])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:54:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Matthew
 Auld <matthew.auld@intel.com>, Anshuman Gupta <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Nathan
 Chancellor <nathan@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/6] drm/i915/gem: fix bitwise and logical AND mixup
In-Reply-To: <87r095ze2i.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726680898.git.jani.nikula@intel.com>
 <643cc0a4d12f47fd8403d42581e83b1e9c4543c7.1726680898.git.jani.nikula@intel.com>
 <ZvXGwFBbOa7-035L@intel.com> <87r095ze2i.fsf@intel.com>
Date: Mon, 30 Sep 2024 16:54:43 +0300
Message-ID: <87wmitw8kc.fsf@intel.com>
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

On Fri, 27 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 26 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Wed, Sep 18, 2024 at 08:35:43PM +0300, Jani Nikula wrote:
>>> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
>>> the wakeref is non-zero, it's either -1 or a dynamically allocated
>>> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
>>> the code works by coincidence with the bitwise AND, but with
>>> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
>>> condition evaluates to false, and intel_wakeref_auto() doesn't get
>>> called. Switch to the intended logical AND.
>>> 
>>> v2: Use != to avoid clang -Wconstant-logical-operand (Nathan)
>>
>> oh, this is ugly!
>>
>> Wouldn't it be better then to use IS_ENABLED() macro?
>
> It's an int config option, not a bool. (Yes, the name is misleading.)
>
> IS_ENABLED(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND) would be the same as
> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND == 1.
>
> We're actually checking if the int value != 0, so IMO the patch at hand
> is fine.

Ping, r-b on this one too?

BR,
Jani.

>
> BR,
> Jani.
>
>
>>
>>> 
>>> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>>> Cc: Nathan Chancellor <nathan@kernel.org>
>>> Cc: <stable@vger.kernel.org> # v6.1+
>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com> # v1
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index 5c72462d1f57..b22e2019768f 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>>>  		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>>>  	}
>>>  
>>> -	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>>> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND != 0)
>>>  		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>>>  				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>>>  
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
