Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6347933F78
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E9C10E12B;
	Wed, 17 Jul 2024 15:21:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3ZdQwQx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CDF10E12B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721229702; x=1752765702;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=araC7rX0JVHNap9TYW59GbLZbTMeExi2x/Z+JzH9bmM=;
 b=H3ZdQwQxxriFlBvubPz7htmA4I0q9vYFhnHXdW4xLcMC7Wws1V8blam1
 FCjHYLyu4IxRJpJoDqVHPCjCpMxCHEL9dDW5YgktTmtj0M9lq+CDDYrk1
 qxJl8hFadX/f9M7pMKACBzYdgE+eJSiaHxNsfsW+EaLvpij4M87yJoY6Z
 ySsjj0Tv9zYtUqCJYXScBkwChwbs4BVmnclJMJ7doZh10qeeCx/6eBt9p
 M3U69pZasCTRs0XVnnwBChIL/q7ZdoCTQDV2Ad9NkLsdM7pDdRNi4H3Dq
 UGXkCq5KUGRvJmiB4nq3wWrns8D7S4xgOdIowcemy1DZIFlfQ6ke8hdyX w==;
X-CSE-ConnectionGUID: IqydxmoCQsey4uBzvukjIQ==
X-CSE-MsgGUID: O82PX2PhR0+x+tXeHmzDlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18874127"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="18874127"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:21:42 -0700
X-CSE-ConnectionGUID: EIZRUoY1ScSUWBHNkPVEbA==
X-CSE-MsgGUID: jlw2EqTRS3yYanyN8ssr3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="50204676"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.38.191])
 ([10.246.38.191])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:21:40 -0700
Message-ID: <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
Date: Wed, 17 Jul 2024 17:21:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
 <CH0PR11MB5444A0D640A7B0E8C32189A0E5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <CH0PR11MB5444A0D640A7B0E8C32189A0E5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 7/17/2024 5:11 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Nirmoy Das <nirmoy.das@linux.intel.com>
> Sent: Wednesday, July 17, 2024 8:06 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; dan.carpenter@linaro.org; chris.p.wilson@linux.intel.com; Andi Shyti <andi.shyti@linux.intel.com>
> Subject: Re: [PATCH] drm/i915: Allow NULL memory region
>>
>> On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>>
>>> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
>>> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
>>> index 172dfa7c3588b..d40ee1b42110a 100644
>>> --- a/drivers/gpu/drm/i915/intel_memory_region.c
>>> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
>>> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>>>    			goto out_cleanup;
>>>    		}
>>>    
>>> -		mem->id = i;
>>> -		i915->mm.regions[i] = mem;
>> There is a check for mem just before that. You could use
>> IS_ERR_OR_NULL(mem) instead of IS_ERR().
> I think you're referring to the "goto out_cleanup" path?

Yes.

>
> mem being NULL is a valid use case, so we
> shouldn't take the error path when it's observed.
Not an error path if you return expected/correct value.

You could do
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 172dfa7c3588..41ef7fdfa69b 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -362,9 +362,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)

                 if (IS_ERR(mem)) {
                         err = PTR_ERR(mem);
-                       drm_err(&i915->drm,
-                               "Failed to setup region(%d) type=%d\n",
-                               err, type);
+                       if (err)
+                               drm_err(&i915->drm,
+                                       "Failed to setup region(%d) type=%d\n",
+                                       err, type);
                         goto out_cleanup;
                 }

PTR_ERR(NULL) should be 0 I think and could even add a info saying skipping setting up that reason.

Regards,
Nirmoy

> -Jonathan Cavitt
>
>>
>> Regards,
>>
>> Nirmoy
>>
>>> +		if (mem) { /* Skip on non-fatal errors */
>>> +			mem->id = i;
>>> +			i915->mm.regions[i] = mem;
>>> +		}
>>>    	}
>>>    
>>>    	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
