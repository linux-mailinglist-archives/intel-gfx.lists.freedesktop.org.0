Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF8E75088D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 14:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E28110E501;
	Wed, 12 Jul 2023 12:43:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB29E10E501
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 12:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689165819; x=1720701819;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cUBmYDaXs9OuEt235FTBVt7g4wAaBk8/2TtDz9dEV1U=;
 b=mbx+/GhR9DjXkGoDY5I4gloEPp776r8jNRmeXlIRcf4WfXP9itvqVXwA
 OvEIgillgI4yy4iCTKE36x3pkYhmy6uBwGQMYIB5I/f4S9GjE4orgG53j
 ZJb0QDUotiv7A/kVzgItH6Zt//P/+/UXyE76pYxSEMTblvmK5cELF2wNT
 NXUvgDptt+rRbXEP9Lz1oMuVFMm2cVA8WgWlVOC+llfmsgH83uSzesUO7
 Lnp1bpD2JwrhlXNbb4Tr9wBsslsl9LHnk0aohNaHO8MAR5ZzJdPC/mf+O
 0CxS2GBsEk78H0F4V1GczdOBf9J/+O404O5ZLpbk84e9yawepoCsfT9lP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="363746191"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="363746191"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 05:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="895619375"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="895619375"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 05:43:37 -0700
Message-ID: <497c9b56-3315-16d8-8594-a050550647bc@linux.intel.com>
Date: Wed, 12 Jul 2023 14:43:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <20230630170140.17319-2-nirmoy.das@intel.com>
 <a1a668fb-52a4-9d3a-03cc-443f2ff077aa@linux.intel.com>
 <837c9971-79fc-015c-e611-a161cb8d4b96@linux.intel.com>
 <73912e3b-69af-b95c-7b0b-8518d003a3d2@linux.intel.com>
 <4032e558-00f7-4c9b-6d4a-7b8958361237@linux.intel.com>
 <a443b2f7-8a9b-1b8e-c6ef-61dce338ef87@linux.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <a443b2f7-8a9b-1b8e-c6ef-61dce338ef87@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not use stolen on
 MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/11/2023 5:59 PM, Tvrtko Ursulin wrote:
>
> On 10/07/2023 10:00, Nirmoy Das wrote:
>> Hi Tvrkto,
>>
>> On 7/6/2023 3:43 PM, Tvrtko Ursulin wrote:
>>>
>>> On 06/07/2023 14:35, Nirmoy Das wrote:
>>>>
>>>> On 7/6/2023 3:32 PM, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 30/06/2023 18:01, Nirmoy Das wrote:
>>>>>> Use smem on MTL due to a HW bug in MTL that prevents
>>>>>> reading from stolen memory using LMEM BAR.
>>>>>
>>>>> Does anything remain in stolen or could the memory region just not 
>>>>> be created?
>>>>
>>>>
>>>> GSC requires DSM which can't use smem for another bug.
>>>
>>> Okay, thanks.
>>>
>>> As a related comment, these if-if-if object creation ladders were 
>>> always a bit ugly and some years ago I was suggesting we create a 
>>> helper with some "intent/usage" flags. Which could then dtrt ie. 
>>> create the right object for that intent/usage and platform. I 
>>> *think* I possibly even had a RFC... need to try and find it.
>>
>>
>> Did you find it :) Would be nice to have a better way to detect and 
>> apply memory region as per platfrom/usecase.
>
> Nope. Basically the idea boiled down to figuring out if it is possible 
> to express the "requirements" via intent flags. Like do we need CPU 
> access, is it mostly GPU, can it be volatile etc. And then combine the 
> intent with the platform to figure out what kind of object to create. 


Yes, that would be nice.

> But it was many years ago and I am not sure if the idea would still 
> apply so easily, without looking at the all call sites. Could easily 
> end up complicated so I cannot dare to say it is worth spending time 
> looking at this.

I will record this in a Jira and hopefully get back to this when I have 
less urgent work.


Thanks,

Nirmoy

>
> Regards,
>
> Tvrtko
>
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>>
>>>> Regards,
>>>>
>>>> Nirmoy
>>>>
>>>>
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>>
>>>>>> Cc: Oak Zeng <oak.zeng@intel.com>
>>>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>>>>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 ++
>>>>>>   drivers/gpu/drm/i915/display/intel_overlay.c | 7 ++++---
>>>>>>   2 files changed, 6 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>>>>>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>>>> index 1cc0ddc6a310..10e38d60f9ef 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>>>> @@ -182,6 +182,8 @@ static int intelfb_alloc(struct drm_fb_helper 
>>>>>> *helper,
>>>>>>           obj = i915_gem_object_create_lmem(dev_priv, size,
>>>>>>                             I915_BO_ALLOC_CONTIGUOUS |
>>>>>>                             I915_BO_ALLOC_USER);
>>>>>> +    } else if (IS_METEORLAKE(dev_priv)) { /* Wa_22018444074 */
>>>>>> +        obj = i915_gem_object_create_shmem(dev_priv, size);
>>>>>>       } else {
>>>>>>           /*
>>>>>>            * If the FB is too big, just don't use it since fbdev 
>>>>>> is not very
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c 
>>>>>> b/drivers/gpu/drm/i915/display/intel_overlay.c
>>>>>> index d6fe2bbabe55..05ae446c8a56 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>>>>>> @@ -1348,12 +1348,13 @@ int intel_overlay_attrs_ioctl(struct 
>>>>>> drm_device *dev, void *data,
>>>>>>   static int get_registers(struct intel_overlay *overlay, bool 
>>>>>> use_phys)
>>>>>>   {
>>>>>>       struct drm_i915_private *i915 = overlay->i915;
>>>>>> -    struct drm_i915_gem_object *obj;
>>>>>> +    struct drm_i915_gem_object *obj = NULL;
>>>>>>       struct i915_vma *vma;
>>>>>>       int err;
>>>>>>   -    obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>>>>> -    if (IS_ERR(obj))
>>>>>> +    if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
>>>>>> +        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>>>>> +    if (IS_ERR_OR_NULL(obj))
>>>>>>           obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>>>>>>       if (IS_ERR(obj))
>>>>>>           return PTR_ERR(obj);
