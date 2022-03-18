Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 359A54DD700
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706B410E76C;
	Fri, 18 Mar 2022 09:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDE610E74A
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:22:21 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id p15so15816123ejc.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 02:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=aTp+fBBQaEZ1ZwfAHNcW2mkNFYSkWOnrVhwRvlA6mpo=;
 b=SZxnHyXXJl/v07GOOYqadQG9+yiYOsvhAT0YjQQkwcS0UrpmZhJ/wDuCPOlgGbYZIR
 prfYyYfY5zFpbxhYGEN3U4UoyX5Vr5JF6CS8NJESnxGRDFoYyLF2B3XyHStx99zC3AU5
 wWc+LTj1IPrdxz4m6uiujcUFThkksx8bxpxEJhhsEv8gldSs5FBmYPY9HyO5+Xxw1zyE
 Dhb6/lmZPCC6nHjnKdKkjvzztqvs9whW2K8EkzX8LFtNO5OgqSQzUAmX01+T0Ft7ywPQ
 Sqty7dMLodQCV/4POgxOleouhvNLhmugh8x+ijT8+2lRqKl0yOfitZphI5enwT+1aFUG
 7ISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=aTp+fBBQaEZ1ZwfAHNcW2mkNFYSkWOnrVhwRvlA6mpo=;
 b=oFY+GMAMp3Ljg14Uv7O877m75tc7R37WnWHtXUTSYthCmlqvNVbkzPTVKWciNRkS5f
 F5kH0wvlW14zUYx+DKRlYPzti4pFGAdsep1vNJ07r1D/PCCnRHZ3hfHVqY4HFr3Yuoeh
 pSXLfUWCjSiQ/Vlrk44IFcZdtZj04P4G0rdwEp2keehGEOy1Ofrp5YZVZCgd0t7NkcvT
 oPrwKa2wp7i5B6PDY0VGekAQFmL9EqzZjag2s0Sv71ZOfPXxMjvF8gGz6Z2SD3tT/sXD
 zmDcUZPo/ybuiwsHZfo+9ynAb5lcfmh5JHCXKhjkefVJz6ZLluZFIRXqHSETdLTV1C4/
 kpiA==
X-Gm-Message-State: AOAM532rFs2ghRM4Aw+ChPSewkclLl/PA0x4t1ZQZp7FCUWnJNMeExQQ
 jN3CA1uxhqaKD/U2knCwL6W5oRjTYmRXeVq5
X-Google-Smtp-Source: ABdhPJytVoORHxiwM3PMtC9xPQv2DFiHgt/ij3Gy8hnwKtftA3EbvX8iaXsihBPruhBMWRe6tC5Vog==
X-Received: by 2002:a17:906:e16:b0:6df:c796:25b5 with SMTP id
 l22-20020a1709060e1600b006dfc79625b5mr196175eji.302.1647595339401; 
 Fri, 18 Mar 2022 02:22:19 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.88])
 by smtp.googlemail.com with ESMTPSA id
 n24-20020a17090673d800b006df8ec24712sm2292901ejl.215.2022.03.18.02.22.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Mar 2022 02:22:19 -0700 (PDT)
Message-ID: <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
Date: Fri, 18 Mar 2022 11:22:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add smem fallback
 allocation for dpt
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 17.3.2022 13.55, Matthew Auld wrote:
> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> Add fallback smem allocation for dpt if stolen memory
>> allocation failed.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
>>   1 file changed, 14 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index fb0e7e79e0cd..c8b66433d4db 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -10,6 +10,7 @@
>>   #include "intel_display_types.h"
>>   #include "intel_dpt.h"
>>   #include "intel_fb.h"
>> +#include "gem/i915_gem_internal.h"
> 
> Nit: these should be kept sorted
> 
>>
>>   struct i915_dpt {
>>          struct i915_address_space vm;
>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>          void __iomem *iomem;
>>          struct i915_gem_ww_ctx ww;
>>          int err;
>> +       u64 pin_flags = 0;
>> +
>> +       if (i915_gem_object_is_stolen(dpt->obj))
>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
>>
>>          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>          atomic_inc(&i915->gpu_error.pending_fb_pin);
>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>                          continue;
>>
>>                  vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
>> +                                                 pin_flags);
>>                  if (IS_ERR(vma)) {
>>                          err = PTR_ERR(vma);
>>                          continue;
>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>
>>          size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>>
>> -       if (HAS_LMEM(i915))
>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>> -       else
>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>>                  dpt_obj = i915_gem_object_create_stolen(i915, size);
>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
>> +                           fb->base.base.id);
>> +
>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
> 
> Looks like we are missing some prerequisite patch to be able to
> directly map such memory in vma_pin_iomap?

For these functions I'm more like a consumer, I was following 
suggestions from Chris on this. Is there something extra that should be 
considered in this regard when use it like this?

> 
>> +       }
>>          if (IS_ERR(dpt_obj))
>>                  return ERR_CAST(dpt_obj);
>>
>> --
>> 2.28.0
>>

