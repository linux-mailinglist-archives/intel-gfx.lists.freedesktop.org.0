Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0134E3E12
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A11F10E57F;
	Tue, 22 Mar 2022 12:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1959810E57F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:06:10 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id o10so16957016ejd.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 05:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nMQEx5/JC1uCNfN8svUeFoqDd0sYejiEKCYHgqdc7GI=;
 b=hd1NBo3OJr8JLzB8EKovtIL69s12IGeTVhbbuXdEe4DxcEbV7XfRjJrX1QmRpQ7nbk
 9QIUe6JAAf3RDB5U/TSlEqOPdIN02iTUy5gXvU/LpbSr/zTwndR4eYkkEMSuAsNs/ZzN
 S4SDg3o3M2ZyICoS6sa2ZfDfA199BXfrp5WmrEWAM+t5+vWyT8llx8cw0SCDd3MeILq0
 3TO6bm9rr6dxTDZcbHAN2V8L7xZyg84Sz9yqXtApHvRVG2daBAs+W3zzKCJD+XWSa4as
 MDNHG/7STmHcAYCqWkE2MASp/FsSg3BvGH+sSfOOFPaEusuInJj2JEUAJO2LyRfJI4Er
 NtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nMQEx5/JC1uCNfN8svUeFoqDd0sYejiEKCYHgqdc7GI=;
 b=O1v24YHLRN0xOucwWEOHh8gb2OnXAh2JIymY1FGnPabTaiIOOCGMcasqU+bCwUwnIt
 tTTbuBsnFVYeOZHTB8noFyeHsJlQH0sjg/iIr/vT+v3DKg8MX4IXdWO3xozZZf05LHd5
 ruz0RReFzw8nx4A46PXWVgvwWhzMk55w1pY9wkfVl/xtDf2HSh1y3WXSFQGdaUzy4MSS
 Y0jiQAY0KxEVc48l3xTgG7oX0ZeN6PGY3eX3uVacmQCsExHGlnOBW0r4AIMBtCIhrylo
 2WWAM8TRwJQ9QBsLECuvGbHMmGz5JPySR2JHYReIQ0hTq277sdjQCImXQepsQk/w0W1K
 O2xA==
X-Gm-Message-State: AOAM530n8IOEmjK+hBcUJIwfArdr07L7RpciNtzHUOMUmaJxWbx65+T5
 NNwm5CGpgObvaqfarGSRuz3HDW5hjVa5rReO
X-Google-Smtp-Source: ABdhPJzRpxgBboSGdMdqm5p4GwRugDgl1VPlp5qQF4qjmdz87QXYXOaZ574buzhZ+jYQUw/1LAWMeA==
X-Received: by 2002:a17:906:3fc3:b0:6ce:3eda:95a4 with SMTP id
 k3-20020a1709063fc300b006ce3eda95a4mr24581410ejj.271.1647950768056; 
 Tue, 22 Mar 2022 05:06:08 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.85])
 by smtp.googlemail.com with ESMTPSA id
 qk30-20020a1709077f9e00b006dfae33d969sm5916175ejc.216.2022.03.22.05.06.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Mar 2022 05:06:07 -0700 (PDT)
Message-ID: <4533088c-3d4b-7701-9fb5-8f2316e6a491@gmail.com>
Date: Tue, 22 Mar 2022 14:06:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
 <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
 <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
 <9fea9a74-f7d2-bb36-c0c8-aea86d4ae791@gmail.com>
 <CAM0jSHMzJwY6oRz7cbqYL91OawoXixww-c7EdvTiY8RrnG9aMA@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHMzJwY6oRz7cbqYL91OawoXixww-c7EdvTiY8RrnG9aMA@mail.gmail.com>
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

On 22.3.2022 12.45, Matthew Auld wrote:
> On Mon, 21 Mar 2022 at 18:36, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> On 21.3.2022 14.29, Matthew Auld wrote:
>>> On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>
>>>> On 17.3.2022 13.55, Matthew Auld wrote:
>>>>> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
>>>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>>>
>>>>>> Add fallback smem allocation for dpt if stolen memory
>>>>>> allocation failed.
>>>>>>
>>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
>>>>>>     1 file changed, 14 insertions(+), 4 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>> index fb0e7e79e0cd..c8b66433d4db 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>> @@ -10,6 +10,7 @@
>>>>>>     #include "intel_display_types.h"
>>>>>>     #include "intel_dpt.h"
>>>>>>     #include "intel_fb.h"
>>>>>> +#include "gem/i915_gem_internal.h"
>>>>>
>>>>> Nit: these should be kept sorted
>>>>>
>>>>>>
>>>>>>     struct i915_dpt {
>>>>>>            struct i915_address_space vm;
>>>>>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>>>            void __iomem *iomem;
>>>>>>            struct i915_gem_ww_ctx ww;
>>>>>>            int err;
>>>>>> +       u64 pin_flags = 0;
>>>>>> +
>>>>>> +       if (i915_gem_object_is_stolen(dpt->obj))
>>>>>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
>>>>>>
>>>>>>            wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>>>>>            atomic_inc(&i915->gpu_error.pending_fb_pin);
>>>>>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>>>                            continue;
>>>>>>
>>>>>>                    vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
>>>>>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
>>>>>> +                                                 pin_flags);
>>>>>>                    if (IS_ERR(vma)) {
>>>>>>                            err = PTR_ERR(vma);
>>>>>>                            continue;
>>>>>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>>>>>
>>>>>>            size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>>>>>>
>>>>>> -       if (HAS_LMEM(i915))
>>>>>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>>>> -       else
>>>>>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>>>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>>>>>>                    dpt_obj = i915_gem_object_create_stolen(i915, size);
>>>>>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>>>>>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
>>>>>> +                           fb->base.base.id);
>>>>>> +
>>>>>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
>>>>>
>>>>> Looks like we are missing some prerequisite patch to be able to
>>>>> directly map such memory in vma_pin_iomap?
>>>>
>>>> For these functions I'm more like a consumer, I was following
>>>> suggestions from Chris on this. Is there something extra that should be
>>>> considered in this regard when use it like this?
>>>
>>> AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
>>> fallback to create_internal(), since the object is now not lmem and is
>>> also not map_and_fenceable(i.e PIN_MAPPABLE).
>>
>> This shouldn't affect case when dpt allocation from lmem failed, it is
>> expected to go to "return ERR_CAST(dpt_obj);" below these comments. On
>> situation when allocating lmem and stolen failed on next "if" I added
>> !HAS_LMEM(i915) to handle situation with lmem. Though, when I was
>> originally trying this patch without limiting lmem case I remember with
>> dg2 I got black screen but I don't remember seeing WARN_ON() in logs.
>>
>>>
>>> The other issue is that we need some way of CPU mapping this type of
>>> object, like with calling i915_gem_object_pin_map() inside
>>> vma_pin_iomap(). It looks like there is an internal patch that tries
>>> to handle both issues, so I guess we need to also bring that patch
>>> upstream as a prerequisite to this?
>>
>> I have above in intel_dpt_pin(..) that "pin_flags |= PIN_MAPPABLE" when
>> handling stolen memory. I suspect patch you are referring to is this
>> same patch I wrote, here just adjusted for upstreaming. This patch was
>> earlier tried by Lucas and Manasi to be working with adlp and apparently
>> cases with virtual machine this make it possible to have tiled
>> framebuffers. Without this patch those special cases will get -e2big
>> when creating tiled fb and no stolen memory available.
> 
> When the GGTT pin eventually ends up returning some vma that is not
> within the ggtt->mappable_end, then we will start hitting the above
> issues, starting with the WARN_ON. If you use PIN_HIGH here for the
> non-stolen case, it should highlight the issue more reliably I think.
> 

You mean once there's no space left in stolen there would be WARN_ON()? 
This is case which was earlier tested by Lucas and Manasi on adlp to be 
working correctly, this was on top of drm-tip. Also on internal testing 
you can see platforms taking this path reliably with no errors.

I'm not sure why use PIN_HIGH for non stolen case, my exposure to gem 
related parts is limited hence I was following Chris's suggestion to put 
zero flag for i915_gem_object_ggtt_pin_ww(..) when not using stolen.

/Juha-pekka
