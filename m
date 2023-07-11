Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 700DA74F084
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 15:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C3A10E39C;
	Tue, 11 Jul 2023 13:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D988310E397
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 13:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689083059; x=1720619059;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=CMpZbCF4C/y+Kb/DKmaUxY65d2JyYioMib6b1JgwHpg=;
 b=BWoDAXZ8WEAY46/JGix3yKI6uof4MCKFHDy5VE2BN7i+E0bI4EbKHdMM
 9Vh8f+OvVEAQi8m0V+L8s7DO84C3Ih8PlqCBcqYPazXNtFwjHx0XCcOPH
 8u+136d2ntQ352WwKE0I49GOPUnCOno/L5W4sJMIHCRuhapdTc9AZ1fvN
 sBKwbsj6hHJ9XjneGfeEK7h8SHh9oX9IOvoTiPLuYrbplcPtmHcVkBvq9
 GGZ+9dGOgUDQbGkcFFrmciXM8i//IuK5x4ylKX+JQbCyDfU56TH7dyeQf
 Glrnk3qZmaXdLFX9hS6vL57kZ2O7AxfUmFZglPL2mPGe76yQO1I0b6lpV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="428317310"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="428317310"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 06:44:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="834700259"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="834700259"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.42.151])
 ([10.252.42.151])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 06:44:17 -0700
Message-ID: <c73f50c9-2729-49f5-19e2-dcdd9a53da32@linux.intel.com>
Date: Tue, 11 Jul 2023 15:44:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <20230630170140.17319-2-nirmoy.das@intel.com>
 <9ca1c205-4dc1-7e6f-04cd-2696f444d4c6@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <9ca1c205-4dc1-7e6f-04cd-2696f444d4c6@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/5/2023 12:02 PM, Andrzej Hajda wrote:
>
>
> On 30.06.2023 19:01, Nirmoy Das wrote:
>> Use smem on MTL due to a HW bug in MTL that prevents
>> reading from stolen memory using LMEM BAR.
>>
>> Cc: Oak Zeng <oak.zeng@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 ++
>>   drivers/gpu/drm/i915/display/intel_overlay.c | 7 ++++---
>>   2 files changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 1cc0ddc6a310..10e38d60f9ef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -182,6 +182,8 @@ static int intelfb_alloc(struct drm_fb_helper 
>> *helper,
>>           obj = i915_gem_object_create_lmem(dev_priv, size,
>>                             I915_BO_ALLOC_CONTIGUOUS |
>>                             I915_BO_ALLOC_USER);
>> +    } else if (IS_METEORLAKE(dev_priv)) { /* Wa_22018444074 */
>> +        obj = i915_gem_object_create_shmem(dev_priv, size);
>
> If you put the check inside following else clause, you will have only 
> one place to call i915_gem_object_create_shmem.
>
>>       } else {
>>           /*
>>            * If the FB is too big, just don't use it since fbdev is 
>> not very
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c 
>> b/drivers/gpu/drm/i915/display/intel_overlay.c
>> index d6fe2bbabe55..05ae446c8a56 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1348,12 +1348,13 @@ int intel_overlay_attrs_ioctl(struct 
>> drm_device *dev, void *data,
>>   static int get_registers(struct intel_overlay *overlay, bool use_phys)
>>   {
>>       struct drm_i915_private *i915 = overlay->i915;
>> -    struct drm_i915_gem_object *obj;
>> +    struct drm_i915_gem_object *obj = NULL;
>>       struct i915_vma *vma;
>>       int err;
>>   -    obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>> -    if (IS_ERR(obj))
>> +    if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
>> +        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>> +    if (IS_ERR_OR_NULL(obj))
>
> Initializing obj with ERR_PTR(-ENODEV) and using IS_ERR here will be 
> aligned to previous stanza (intelfb_alloc).
>
> Since my comments are close to  bikeshedding,


I will resend with those suggestion.


Thanks,

Nirmoy

> please go your way if you wish:
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Regards
> Andrzej
>
>>           obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>>       if (IS_ERR(obj))
>>           return PTR_ERR(obj);
>
