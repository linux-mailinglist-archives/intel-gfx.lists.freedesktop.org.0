Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CCB933FCF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C190410E277;
	Wed, 17 Jul 2024 15:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy1kuDkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7FD10E277
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721230647; x=1752766647;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ILlsKvlWIxDv5NLsuf22D2ywneewJpfKbZgvIduDMWg=;
 b=Xy1kuDkgipQx3YJBFMh8OqzP9hmBd9BTVFBSq/Hu5MabpyaYkE7gUnz7
 J45U0QHbd/fDNuHJKLzUk1/ubwIVzLpbY+FKNjIEVOdYyYI/mlJgzxXmh
 tEE1KvShMXvVff7erjNinYMEOlWYzl2nf9v6amydHa/odotjHvaiK8Xav
 ucNj8zOOSaRK3ZKdUg+nc9BZVzRH8U6pTXTzpYzbPV+elT6kluEfKeoHb
 KXSSX+a2FdnT/0BeD5YlJH1aBMqR6Ui/71GKh9KnkomXhcdKg71jr7AAu
 5CQlpRpiwNZZK9dKIO9ySoTSwEHgDw0rJQawzy511P4sUDQGAO4GOgMBR A==;
X-CSE-ConnectionGUID: mblAjaO2TuunTHm5ZijVKg==
X-CSE-MsgGUID: zXWGB9b/Smi5mQxHrJMxTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="29412867"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="29412867"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:37:26 -0700
X-CSE-ConnectionGUID: FOQKAsmvSLSHBzcHaVAOcw==
X-CSE-MsgGUID: QKjtY1l8S8+VtFR0Qc89vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="81469411"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.38.191])
 ([10.246.38.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:37:24 -0700
Message-ID: <aaa58c27-572c-4b66-8753-5f7291912ac3@linux.intel.com>
Date: Wed, 17 Jul 2024 17:37:22 +0200
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
 <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
 <CH0PR11MB5444B7668BEE8E3815D05EDCE5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <CH0PR11MB5444B7668BEE8E3815D05EDCE5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 7/17/2024 5:30 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Nirmoy Das <nirmoy.das@linux.intel.com>
> Sent: Wednesday, July 17, 2024 8:22 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; dan.carpenter@linaro.org; chris.p.wilson@linux.intel.com; Andi Shyti <andi.shyti@linux.intel.com>
> Subject: Re: [PATCH] drm/i915: Allow NULL memory region
>>
>> On 7/17/2024 5:11 PM, Cavitt, Jonathan wrote:
>>> -----Original Message-----
>>> From: Nirmoy Das <nirmoy.das@linux.intel.com>
>>> Sent: Wednesday, July 17, 2024 8:06 AM
>>> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
>>> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; dan.carpenter@linaro.org; chris.p.wilson@linux.intel.com; Andi Shyti <andi.shyti@linux.intel.com>
>>> Subject: Re: [PATCH] drm/i915: Allow NULL memory region
>>>> On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
>>>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>>>>
>>>>> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
>>>>> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>>>>>     1 file changed, 4 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
>>>>> index 172dfa7c3588b..d40ee1b42110a 100644
>>>>> --- a/drivers/gpu/drm/i915/intel_memory_region.c
>>>>> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
>>>>> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>>>>>     			goto out_cleanup;
>>>>>     		}
>>>>>     
>>>>> -		mem->id = i;
>>>>> -		i915->mm.regions[i] = mem;
>>>> There is a check for mem just before that. You could use
>>>> IS_ERR_OR_NULL(mem) instead of IS_ERR().
>>> I think you're referring to the "goto out_cleanup" path?
>> Yes.
>>
>>> mem being NULL is a valid use case, so we
>>> shouldn't take the error path when it's observed.
>> Not an error path if you return expected/correct value.
> intel_memory_regions_driver_release releases all previously
> grabbed memory regions in the out_cleanup path.


Ah, yes. Isn't so simple as I thought.  Never mind ignore my previous 
comment.

> -Jonathan Cavitt
>
>> You could do
>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
>> index 172dfa7c3588..41ef7fdfa69b 100644
>> --- a/drivers/gpu/drm/i915/intel_memory_region.c
>> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
>> @@ -362,9 +362,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>>
>>                   if (IS_ERR(mem)) {
>>                           err = PTR_ERR(mem);
>> -                       drm_err(&i915->drm,
>> -                               "Failed to setup region(%d) type=%d\n",
>> -                               err, type);
>> +                       if (err)
>> +                               drm_err(&i915->drm,
>> +                                       "Failed to setup region(%d) type=%d\n",
>> +                                       err, type);
>>                           goto out_cleanup;
>>                   }
>>
>> PTR_ERR(NULL) should be 0 I think and could even add a info saying skipping setting up that reason.
>>
>> Regards,
>> Nirmoy
>>
>>> -Jonathan Cavitt
>>>
>>>> Regards,
>>>>
>>>> Nirmoy
>>>>
>>>>> +		if (mem) { /* Skip on non-fatal errors */
>>>>> +			mem->id = i;
>>>>> +			i915->mm.regions[i] = mem;
>>>>> +		}
>>>>>     	}
>>>>>     
>>>>>     	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
