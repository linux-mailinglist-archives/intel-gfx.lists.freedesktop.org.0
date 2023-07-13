Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 931F2752601
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 17:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D5C10E6F8;
	Thu, 13 Jul 2023 15:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F1D10E6FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689260602; x=1720796602;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=VhkDOJH+wSv7EEbD3hOQY+CH/qTo+1UkfXLE5CcCeJA=;
 b=ClXzMQypJUI8Oz0rHUoGtfTQc6te/XNM0xRLh5Ty8jBJhCVGNsUW97fh
 oOCzgp+0K2fK+NANL5PbEsYJrJwoK97x8rV6777GuzcylSBJvrLsNb3j2
 jMUJxOmNBJKfzzYQjW2Gc6hnR7z9bpR/QSWlR7aDwRHGGGYDE4RY+4g9s
 l7a8j02Mqfw0ZmXwAmtQVG7vt3HHaehCplIXFe6ZNBkq4rPOZeHA0dO30
 9XYP3DMPpiLLyjpXFKObsYiTMIdlEk/1OYxz3f5Ayq+rW8Negu4c6mFl/
 yPi7u7Evxl96l06ru4DJyd4QCMjZUASdvVPplpGzs8a01vJ0D9Q8wQyLh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345529601"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="345529601"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="812031287"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="812031287"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.53.19])
 ([10.252.53.19])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:02:36 -0700
Message-ID: <4c0d3946-e745-e021-e5f4-010dd20324fd@linux.intel.com>
Date: Thu, 13 Jul 2023 17:02:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230711220648.17108-1-nirmoy.das@intel.com>
 <20230711220648.17108-2-nirmoy.das@intel.com>
 <6d3e7ee4-4ba9-d3ee-0409-780b75c05a0b@linux.intel.com>
 <a6bdfae3-c289-0531-c474-a2452bbeefeb@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <a6bdfae3-c289-0531-c474-a2452bbeefeb@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Do not use stolen
 on MTL
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


On 7/13/2023 4:56 PM, Andrzej Hajda wrote:
>
>
> On 13.07.2023 16:45, Nirmoy Das wrote:
>>
>> On 7/12/2023 12:06 AM, Nirmoy Das wrote:
>>> Use smem on MTL due to a HW bug in MTL that prevents
>>> reading from stolen memory using LMEM BAR.
>>>
>>> v2: improve stolen skip detection(Andrzej)
>>>
>>> Cc: Oak Zeng <oak.zeng@intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> Reviewed-by: Oak Zeng <oak.zeng@intel.com>
>>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 5 ++++-
>>>   drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
>>>   2 files changed, 7 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> index 1cc0ddc6a310..e019bbcd474e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> @@ -187,8 +187,11 @@ static int intelfb_alloc(struct drm_fb_helper 
>>> *helper,
>>>            * If the FB is too big, just don't use it since fbdev is 
>>> not very
>>>            * important and we should probably use that space with 
>>> FBC or other
>>>            * features.
>>> +         *
>>> +         * Also skip stolen on MTL as Wa_22018444074 mitigation.
>>>            */
>>> -        if (size * 2 < dev_priv->dsm.usable_size)
>>> +        if (size * 2 < dev_priv->dsm.usable_size ||
>>> +            !(IS_METEORLAKE(dev_priv)))
>>
>> Just realized  this is wrong, stolen will be picked on non-mtl even 
>> if the stolen usable size is < 2*size which is not expected.
>
> if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size) ?


that should work, resent with that.


Thanks,

Nirmoy

>
> Regards
> Andrzej
>
>>
>> I will keep this as v1
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>>               obj = i915_gem_object_create_stolen(dev_priv, size);
>>>           if (IS_ERR(obj))
>>>               obj = i915_gem_object_create_shmem(dev_priv, size);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c 
>>> b/drivers/gpu/drm/i915/display/intel_overlay.c
>>> index d6fe2bbabe55..09c1aa1427ad 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>>> @@ -1348,11 +1348,12 @@ int intel_overlay_attrs_ioctl(struct 
>>> drm_device *dev, void *data,
>>>   static int get_registers(struct intel_overlay *overlay, bool 
>>> use_phys)
>>>   {
>>>       struct drm_i915_private *i915 = overlay->i915;
>>> -    struct drm_i915_gem_object *obj;
>>> +    struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
>>>       struct i915_vma *vma;
>>>       int err;
>>>   -    obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>> +    if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
>>> +        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>>       if (IS_ERR(obj))
>>>           obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>>>       if (IS_ERR(obj))
>
