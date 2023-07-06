Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD13749DDB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 15:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8987D10E3E5;
	Thu,  6 Jul 2023 13:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502D610E3E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 13:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688650563; x=1720186563;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=z8J2uiC9MENrN5B9R5W4+uLFNtZ6F/oBy5sR7qBF0m0=;
 b=TgQGcGdHBPdTrq85N7im2yUdUGpdLzWH7mRZ3W0xkeSgdKZq8EQGzH2I
 OkL96FfFzi/R1gpU1i14zhL6VwZWQHiw72acEQum/wX7hCtagCetd5aaC
 4MSst4LKMsNI/m/c6iQy3PnF8ePPvFIMOFFO9SY0phwTXYCftafih1R+k
 xPY5i5eo2AP+cidsnekKorpTi41x8WhiKfq3mGJJTfTCz7aQRa041v0rJ
 5u+yqZLdfKKACNuWBdX0a0CbQ5/pxxo/N/0tgPLEW3Dy4d1TpGs7O4MHW
 /y4uOYC+GOCOqG+TVNFatPAGOic4DhnPC5x0kVm1xslOiAEeJ7k0GHAzK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="362472708"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="362472708"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="832946906"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="832946906"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.219.35])
 ([10.251.219.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:36:00 -0700
Message-ID: <837c9971-79fc-015c-e611-a161cb8d4b96@linux.intel.com>
Date: Thu, 6 Jul 2023 15:35:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <20230630170140.17319-2-nirmoy.das@intel.com>
 <a1a668fb-52a4-9d3a-03cc-443f2ff077aa@linux.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <a1a668fb-52a4-9d3a-03cc-443f2ff077aa@linux.intel.com>
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


On 7/6/2023 3:32 PM, Tvrtko Ursulin wrote:
>
> On 30/06/2023 18:01, Nirmoy Das wrote:
>> Use smem on MTL due to a HW bug in MTL that prevents
>> reading from stolen memory using LMEM BAR.
>
> Does anything remain in stolen or could the memory region just not be 
> created?


GSC requires DSM which can't use smem for another bug.


Regards,

Nirmoy


>
> Regards,
>
> Tvrtko
>
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
>>           obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>>       if (IS_ERR(obj))
>>           return PTR_ERR(obj);
