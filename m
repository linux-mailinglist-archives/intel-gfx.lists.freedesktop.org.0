Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9514E54E5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD66510E059;
	Wed, 23 Mar 2022 15:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE8610E059
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 15:09:40 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id dr20so3456902ejc.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 08:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=1Hk9JQW3pigOItIVo8X3Hm6TAYJsu2XYvzt5HfoJvnk=;
 b=X3GDCE47GmY5hXdrLi/2V9X7SocyC/o9qPhh4gdssjITtfyHZ9CY3pSXlsox3XTtC2
 056SQhzzEk11QrO8XKLqPB029730LgbO1W+RHiVSt8sEwYanwXJR4Jh7xHUuuxOWK2CC
 RHnEYb7uFX0HnwlBM5wqmgSjzkG7jHPbjB/8lqJh2b8MZN9Sqdc1G2WVztidRM96sgCp
 aoGPcJE9ODoHHzaVOglY8KE4MfnGcWliNHEKjbS3FUojmhN/5neX8HsnHH2EriAPpqii
 y5D9LHpE/Z7a884++U6+PizrALRWo3aMkqkIgnR221CJd8ypHc6oAXKYeFa44A+jWSw0
 dzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=1Hk9JQW3pigOItIVo8X3Hm6TAYJsu2XYvzt5HfoJvnk=;
 b=m1UQCrcoRuPFt6DqzdQs3UXMkgMW1wuDyc77j2dieofLJ8ubSQT+9Awarox5i2y2EU
 OmfH4kkkixElUhPKBAjO/EFIoH8S9TPfEPz7MSC7H2jA6WLu2tx4S7Hz7Vu4rogTZfu2
 EboZvHtsNL/KJcAXAU6SMiFNu83FJDijQyFN2TAFCeD8E2Pl62QzfB0W4wv0y2BZoJuF
 kEZ7jSgbE7nVMrBAuP1ZzGTkrtEI9uVWhSeCbLFqadeXPbcIjOAchiG4CxdYpk9rlbL9
 gopEIINfY5kgxngYZDwp5aJzLzjizmAwGB+sxHRoodNdK0e2R28KiPIcL1TrraBnY5dx
 tR1g==
X-Gm-Message-State: AOAM530o6shMhudh86ANZi1ZVP5RHeyla9O2mnY1Dtx+OGr6DJIpxBjS
 WWa4vWMZgv9cdPen3AT6D9g=
X-Google-Smtp-Source: ABdhPJyag/99NtQRU3qjbQjBm8SYPEoi7d+HQg3rsRn785YiUyUtTJoKze+V2IZcUvHBvV6fHOji4w==
X-Received: by 2002:a17:907:7e88:b0:6db:ad88:2294 with SMTP id
 qb8-20020a1709077e8800b006dbad882294mr413424ejc.371.1648048178490; 
 Wed, 23 Mar 2022 08:09:38 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.84])
 by smtp.googlemail.com with ESMTPSA id
 f6-20020a0564021e8600b00412ae7fda95sm90506edf.44.2022.03.23.08.09.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Mar 2022 08:09:37 -0700 (PDT)
Message-ID: <df827c43-78a1-e174-c8f6-7387f2ac3210@gmail.com>
Date: Wed, 23 Mar 2022 17:09:32 +0200
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
 <4533088c-3d4b-7701-9fb5-8f2316e6a491@gmail.com>
 <CAM0jSHOw5hvXdgse4MC4h5N7PJDUAXK+pY7iEr7z+kp2okegKw@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHOw5hvXdgse4MC4h5N7PJDUAXK+pY7iEr7z+kp2okegKw@mail.gmail.com>
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

On 22.3.2022 17.53, Matthew Auld wrote:
> On Tue, 22 Mar 2022 at 12:06, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> On 22.3.2022 12.45, Matthew Auld wrote:
>>> On Mon, 21 Mar 2022 at 18:36, Juha-Pekka Heikkila
>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>
>>>> On 21.3.2022 14.29, Matthew Auld wrote:
>>>>> On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
>>>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>>>
>>>>>> On 17.3.2022 13.55, Matthew Auld wrote:
>>>>>>> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
>>>>>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>>>>>
>>>>>>>> Add fallback smem allocation for dpt if stolen memory
>>>>>>>> allocation failed.
>>>>>>>>
>>>>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>>>>>> ---
>>>>>>>>      drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
>>>>>>>>      1 file changed, 14 insertions(+), 4 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>>> index fb0e7e79e0cd..c8b66433d4db 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>>> @@ -10,6 +10,7 @@
>>>>>>>>      #include "intel_display_types.h"
>>>>>>>>      #include "intel_dpt.h"
>>>>>>>>      #include "intel_fb.h"
>>>>>>>> +#include "gem/i915_gem_internal.h"
>>>>>>>
>>>>>>> Nit: these should be kept sorted
>>>>>>>
>>>>>>>>
>>>>>>>>      struct i915_dpt {
>>>>>>>>             struct i915_address_space vm;
>>>>>>>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>>>>>             void __iomem *iomem;
>>>>>>>>             struct i915_gem_ww_ctx ww;
>>>>>>>>             int err;
>>>>>>>> +       u64 pin_flags = 0;
>>>>>>>> +
>>>>>>>> +       if (i915_gem_object_is_stolen(dpt->obj))
>>>>>>>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
>>>>>>>>
>>>>>>>>             wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>>>>>>>             atomic_inc(&i915->gpu_error.pending_fb_pin);
>>>>>>>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>>>>>                             continue;
>>>>>>>>
>>>>>>>>                     vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
>>>>>>>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
>>>>>>>> +                                                 pin_flags);
>>>>>>>>                     if (IS_ERR(vma)) {
>>>>>>>>                             err = PTR_ERR(vma);
>>>>>>>>                             continue;
>>>>>>>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>>>>>>>
>>>>>>>>             size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>>>>>>>>
>>>>>>>> -       if (HAS_LMEM(i915))
>>>>>>>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>>>>>> -       else
>>>>>>>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>>>>>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>>>>>>>>                     dpt_obj = i915_gem_object_create_stolen(i915, size);
>>>>>>>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>>>>>>>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
>>>>>>>> +                           fb->base.base.id);
>>>>>>>> +
>>>>>>>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
>>>>>>>
>>>>>>> Looks like we are missing some prerequisite patch to be able to
>>>>>>> directly map such memory in vma_pin_iomap?
>>>>>>
>>>>>> For these functions I'm more like a consumer, I was following
>>>>>> suggestions from Chris on this. Is there something extra that should be
>>>>>> considered in this regard when use it like this?
>>>>>
>>>>> AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
>>>>> fallback to create_internal(), since the object is now not lmem and is
>>>>> also not map_and_fenceable(i.e PIN_MAPPABLE).
>>>>
>>>> This shouldn't affect case when dpt allocation from lmem failed, it is
>>>> expected to go to "return ERR_CAST(dpt_obj);" below these comments. On
>>>> situation when allocating lmem and stolen failed on next "if" I added
>>>> !HAS_LMEM(i915) to handle situation with lmem. Though, when I was
>>>> originally trying this patch without limiting lmem case I remember with
>>>> dg2 I got black screen but I don't remember seeing WARN_ON() in logs.
>>>>
>>>>>
>>>>> The other issue is that we need some way of CPU mapping this type of
>>>>> object, like with calling i915_gem_object_pin_map() inside
>>>>> vma_pin_iomap(). It looks like there is an internal patch that tries
>>>>> to handle both issues, so I guess we need to also bring that patch
>>>>> upstream as a prerequisite to this?
>>>>
>>>> I have above in intel_dpt_pin(..) that "pin_flags |= PIN_MAPPABLE" when
>>>> handling stolen memory. I suspect patch you are referring to is this
>>>> same patch I wrote, here just adjusted for upstreaming. This patch was
>>>> earlier tried by Lucas and Manasi to be working with adlp and apparently
>>>> cases with virtual machine this make it possible to have tiled
>>>> framebuffers. Without this patch those special cases will get -e2big
>>>> when creating tiled fb and no stolen memory available.
>>>
>>> When the GGTT pin eventually ends up returning some vma that is not
>>> within the ggtt->mappable_end, then we will start hitting the above
>>> issues, starting with the WARN_ON. If you use PIN_HIGH here for the
>>> non-stolen case, it should highlight the issue more reliably I think.
>>>
>>
>> You mean once there's no space left in stolen there would be WARN_ON()?
>> This is case which was earlier tested by Lucas and Manasi on adlp to be
>> working correctly, this was on top of drm-tip. Also on internal testing
>> you can see platforms taking this path reliably with no errors.
>>
>> I'm not sure why use PIN_HIGH for non stolen case, my exposure to gem
>> related parts is limited hence I was following Chris's suggestion to put
>> zero flag for i915_gem_object_ggtt_pin_ww(..) when not using stolen.
> 
> Asking for PIN_MAPPABLE ensures that the vma is always placed within
> the mappable part of the GGTT(i.e ggtt->mappable_end), which is
> usually only the first 256M of the GGTT. If we don't ask for
> PIN_MAPPABLE(which is what this patch is doing for the non-stolen
> case) then the vma might now be placed outside of the special mappable
> range. This mappable range has a corresponding MMIO window which lets
> us access, via some CPU address, the memory pointed at by those GGTT
> PTEs. In the case of stolen system-memory this is the only known
> reliable way to access such memory from the CPU. However if this is
> just normal system memory(which is what this patch is now doing) then
> we can just map it directly and don't need the PIN_MAPPABLE thing, but
> that is exactly the piece we are also missing in vma_pin_iomap. The
> WARN_ON(!i915_vma_is_map_and_fenceable(vma)) should catch this issue,
> but I assume it's only by coincidence that we are not hitting it with
> this patch, since the vma just so happens to be in the mappable
> part(?), but that won't always be the case. If you look at the
> internal version of vma_pin_iomap() there is some extra code to handle
> this, which I guess should be a prerequisite to this patch.

Ah, now I see what you meant. I think I found essential parts of code, 
I'll look into those and see what's needed. Thanks.

/Juha-Pekka
