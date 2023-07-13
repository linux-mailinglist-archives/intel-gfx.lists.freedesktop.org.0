Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F69D7525C2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 16:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FAF10E6F3;
	Thu, 13 Jul 2023 14:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6225C10E6F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 14:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689260175; x=1720796175;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ZUTfC0HFF6uboSNYq1dYJk67PIIsONHqR4ZvpwtJxdE=;
 b=Av/HwOVEJJ9ncZpr+dPTVZrwmOK5ygqdFRgJXnWlKT/I/aef68LuaGjE
 c2J2iSQCCMUKUoe6uHXzAoiTVUC8BHAr408qo17cZwPmiH3bNoYhTOPYx
 5QE8RFrXxBTVAVdr7La3HztoV0EGgrL1OoZ++VC7FydJdk4f7SOwBhgPc
 3m+Zv2XR5BIabfZ6r0J8wmItOH3m62DxpsH6s1ZRSa8cTh7XBJDoChAWh
 riBLD8RLV5pjYXnHaQDssjBA4yY0Rmx3ehbc4sxDPERpF1Hir198eKiMh
 T6QYd5eaX3h1VN8KY+/rtzZrKpLpDKAr/ZIq6L+6WMyi1mt2oXx93qTpl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345526003"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="345526003"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751668273"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="751668273"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.2])
 ([10.213.8.2])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:56:11 -0700
Message-ID: <a6bdfae3-c289-0531-c474-a2452bbeefeb@intel.com>
Date: Thu, 13 Jul 2023 16:56:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230711220648.17108-1-nirmoy.das@intel.com>
 <20230711220648.17108-2-nirmoy.das@intel.com>
 <6d3e7ee4-4ba9-d3ee-0409-780b75c05a0b@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <6d3e7ee4-4ba9-d3ee-0409-780b75c05a0b@linux.intel.com>
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



On 13.07.2023 16:45, Nirmoy Das wrote:
>
> On 7/12/2023 12:06 AM, Nirmoy Das wrote:
>> Use smem on MTL due to a HW bug in MTL that prevents
>> reading from stolen memory using LMEM BAR.
>>
>> v2: improve stolen skip detection(Andrzej)
>>
>> Cc: Oak Zeng <oak.zeng@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Oak Zeng <oak.zeng@intel.com>
>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 5 ++++-
>>   drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
>>   2 files changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 1cc0ddc6a310..e019bbcd474e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -187,8 +187,11 @@ static int intelfb_alloc(struct drm_fb_helper 
>> *helper,
>>            * If the FB is too big, just don't use it since fbdev is 
>> not very
>>            * important and we should probably use that space with FBC 
>> or other
>>            * features.
>> +         *
>> +         * Also skip stolen on MTL as Wa_22018444074 mitigation.
>>            */
>> -        if (size * 2 < dev_priv->dsm.usable_size)
>> +        if (size * 2 < dev_priv->dsm.usable_size ||
>> +            !(IS_METEORLAKE(dev_priv)))
>
> Just realized  this is wrong, stolen will be picked on non-mtl even if 
> the stolen usable size is < 2*size which is not expected.

if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size) ?

Regards
Andrzej

>
> I will keep this as v1
>
>
> Regards,
>
> Nirmoy
>
>>               obj = i915_gem_object_create_stolen(dev_priv, size);
>>           if (IS_ERR(obj))
>>               obj = i915_gem_object_create_shmem(dev_priv, size);
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c 
>> b/drivers/gpu/drm/i915/display/intel_overlay.c
>> index d6fe2bbabe55..09c1aa1427ad 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1348,11 +1348,12 @@ int intel_overlay_attrs_ioctl(struct 
>> drm_device *dev, void *data,
>>   static int get_registers(struct intel_overlay *overlay, bool use_phys)
>>   {
>>       struct drm_i915_private *i915 = overlay->i915;
>> -    struct drm_i915_gem_object *obj;
>> +    struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
>>       struct i915_vma *vma;
>>       int err;
>>   -    obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>> +    if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
>> +        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>       if (IS_ERR(obj))
>>           obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>>       if (IS_ERR(obj))

