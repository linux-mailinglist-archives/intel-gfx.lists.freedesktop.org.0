Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5D198A7F3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 16:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9AAC10E0E3;
	Mon, 30 Sep 2024 14:58:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gcapffqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E846E10E0EC;
 Mon, 30 Sep 2024 14:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727708330; x=1759244330;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=v8YbEUoGkpfFcfExcW7wZUzrYppDBHCK/mjIr2MxhEw=;
 b=gcapffqZxwm2tbQvZ4la/ccF6Ih27R5kZwiUHeLto0mWlj2tPNAgp1Ly
 9+yi9EGdJW5aVgUnWZwVUDsxFbVp8DLVM65pqbWpqNl8/gt0AoKrlkJWE
 H92bv2/JsNKesH0bFjSp3wiraGX6B5pvThHmQf12U1TYuiEdGSk2TKCPs
 D50lwCNZxadj1T39KFQaKDtUyWoAoxLmEOPjkGMt2jsKPIweEQlGh9t/n
 4sAxjewUrVUBuo4ILSqEPJ16b8wbSEZix/6wPSYhtj6FDQz+5MeXv/Aq8
 nW9zi6gpONsM0LR+sp7f851jTO5CzEEujEddNqPGJsG/2Wx3LOrN0nsCI A==;
X-CSE-ConnectionGUID: JTgo3VB8QlumU8TzCq+Hyg==
X-CSE-MsgGUID: 1a7hwKfZR/eN/g8o3wgZzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26754060"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26754060"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:58:50 -0700
X-CSE-ConnectionGUID: 9CNfmsIXR86Kea6ixBktTw==
X-CSE-MsgGUID: SZU63O85RH+Dw46TNTGIlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77869227"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.136])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:58:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Anshuman Gupta <anshuman.gupta@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>,
 stable@vger.kernel.org
Subject: Re: [PATCH v2 1/6] drm/i915/gem: fix bitwise and logical AND mixup
In-Reply-To: <11901d29-f211-46a9-96ee-cf52558e4eeb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726680898.git.jani.nikula@intel.com>
 <643cc0a4d12f47fd8403d42581e83b1e9c4543c7.1726680898.git.jani.nikula@intel.com>
 <ZvXGwFBbOa7-035L@intel.com> <87r095ze2i.fsf@intel.com>
 <87wmitw8kc.fsf@intel.com>
 <11901d29-f211-46a9-96ee-cf52558e4eeb@intel.com>
Date: Mon, 30 Sep 2024 17:58:33 +0300
Message-ID: <87cyklw5ly.fsf@intel.com>
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

On Mon, 30 Sep 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> On 30/09/2024 14:54, Jani Nikula wrote:
>> On Fri, 27 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>> On Thu, 26 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>>>> On Wed, Sep 18, 2024 at 08:35:43PM +0300, Jani Nikula wrote:
>>>>> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
>>>>> the wakeref is non-zero, it's either -1 or a dynamically allocated
>>>>> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
>>>>> the code works by coincidence with the bitwise AND, but with
>>>>> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
>>>>> condition evaluates to false, and intel_wakeref_auto() doesn't get
>>>>> called. Switch to the intended logical AND.
>>>>>
>>>>> v2: Use != to avoid clang -Wconstant-logical-operand (Nathan)
>>>>
>>>> oh, this is ugly!
>>>>
>>>> Wouldn't it be better then to use IS_ENABLED() macro?
>>>
>>> It's an int config option, not a bool. (Yes, the name is misleading.)
>>>
>>> IS_ENABLED(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND) would be the same as
>>> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND == 1.
>>>
>>> We're actually checking if the int value != 0, so IMO the patch at hand
>>> is fine.
>> 
>> Ping, r-b on this one too?
>
> r-b still holds for v2, fwiw.

Thanks for the reviews, pushed the lot to drm-intel-next.

BR,
Jani.

>
>> 
>> BR,
>> Jani.
>> 
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>>>
>>>>>
>>>>> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
>>>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>>>>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>>>>> Cc: Nathan Chancellor <nathan@kernel.org>
>>>>> Cc: <stable@vger.kernel.org> # v6.1+
>>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com> # v1
>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1
>>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>> index 5c72462d1f57..b22e2019768f 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>> @@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>>>>>   		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>>>>>   	}
>>>>>   
>>>>> -	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>>>>> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND != 0)
>>>>>   		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>>>>>   				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>>>>>   
>>>>> -- 
>>>>> 2.39.2
>>>>>
>> 

-- 
Jani Nikula, Intel
