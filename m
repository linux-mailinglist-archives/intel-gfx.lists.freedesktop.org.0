Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701FA4E3013
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 19:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C87810E46E;
	Mon, 21 Mar 2022 18:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3860510E46E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 18:36:38 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p15so31636799ejc.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 11:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YjY1Z66kDXhLTgqJdjadj5vt7r+dxC93wcWwl9U20ns=;
 b=EFoAIOQXSl6ld/DToWkfXuyrieljB6mCeVekGql9IgHDJndaG8kQ+lV5B38xAJrlWk
 zeqAjwd3a4K5nDvwpRVjQSAETKrC7sKWazT0+FGs7JnBj8dmJqKSkquRxbz+LJZ/E7e9
 y8BDDmiSPHX0quMn8dRHOdMckeUDDIG+AmPjS8OYJ406a1WCC7QXhQGIDsauYyqQwfcT
 QRJ4qsFI2yTC6r4kaTv/B9P6lJV0IjCpXDN7iKSkgr6OgH0UcaT8NuLygp5In9z6T/HZ
 Bzj4bDT8ABQJ5ws62u5dVMgCJyCogt5t1Gc73oSB6sGsp/hJG2AIGduklAQKqqdKpB0G
 yjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YjY1Z66kDXhLTgqJdjadj5vt7r+dxC93wcWwl9U20ns=;
 b=ienLeYxsv12yxVu25Dom0WmIuQxCpPS12hLpJjgiZfRIdvUMbvYtccsCiu9H/QDVyP
 JgniB2hJ5REbwtRIW1hoYTssYaSc+v5cUKy6tVNUzB5BIZT0AQHUQeOcsXAolQv44kQW
 tR98jv4q7D34M+mRlPwdLldeFbnxjq+6ZnAzxIR8EEGvU3XUClinF7eogAR/fgX1OzNa
 L+xoRddwfbPWq2tsWgY04hMKFUPke38wpzke4obHeutMuVnp5DUGdDHrXGOB+lSAtfgx
 O2DcTUOYURrojlDL1wBCJIdxs+1kBAGJpznCLA9m817P89gGrm3Vo3jC8iV9hOZubEHv
 DGHw==
X-Gm-Message-State: AOAM5335dZDkCdz869JiamzhT4LDFs9q0tYiM04Dgvwjxy74VZRw8N2X
 e/8tDIzOzFjje7JUQepjPiA=
X-Google-Smtp-Source: ABdhPJyrVgBL20d/9aJYYthG2lZ2LSIIdVCkmrdsoEcHJxGXCfOKSwKZVx1gmJbPl+DIHGj2E7EAmQ==
X-Received: by 2002:a17:906:6547:b0:6bd:e2ad:8c82 with SMTP id
 u7-20020a170906654700b006bde2ad8c82mr21299120ejn.693.1647887796415; 
 Mon, 21 Mar 2022 11:36:36 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.83])
 by smtp.googlemail.com with ESMTPSA id
 q16-20020a170906145000b006bdaf981589sm7202683ejc.81.2022.03.21.11.36.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Mar 2022 11:36:35 -0700 (PDT)
Message-ID: <9fea9a74-f7d2-bb36-c0c8-aea86d4ae791@gmail.com>
Date: Mon, 21 Mar 2022 20:36:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
 <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
 <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
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

On 21.3.2022 14.29, Matthew Auld wrote:
> On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> On 17.3.2022 13.55, Matthew Auld wrote:
>>> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>
>>>> Add fallback smem allocation for dpt if stolen memory
>>>> allocation failed.
>>>>
>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
>>>>    1 file changed, 14 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>> index fb0e7e79e0cd..c8b66433d4db 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>> @@ -10,6 +10,7 @@
>>>>    #include "intel_display_types.h"
>>>>    #include "intel_dpt.h"
>>>>    #include "intel_fb.h"
>>>> +#include "gem/i915_gem_internal.h"
>>>
>>> Nit: these should be kept sorted
>>>
>>>>
>>>>    struct i915_dpt {
>>>>           struct i915_address_space vm;
>>>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>           void __iomem *iomem;
>>>>           struct i915_gem_ww_ctx ww;
>>>>           int err;
>>>> +       u64 pin_flags = 0;
>>>> +
>>>> +       if (i915_gem_object_is_stolen(dpt->obj))
>>>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
>>>>
>>>>           wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>>>           atomic_inc(&i915->gpu_error.pending_fb_pin);
>>>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>>>                           continue;
>>>>
>>>>                   vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
>>>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
>>>> +                                                 pin_flags);
>>>>                   if (IS_ERR(vma)) {
>>>>                           err = PTR_ERR(vma);
>>>>                           continue;
>>>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>>>
>>>>           size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>>>>
>>>> -       if (HAS_LMEM(i915))
>>>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>> -       else
>>>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>>>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>>>>                   dpt_obj = i915_gem_object_create_stolen(i915, size);
>>>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>>>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
>>>> +                           fb->base.base.id);
>>>> +
>>>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
>>>
>>> Looks like we are missing some prerequisite patch to be able to
>>> directly map such memory in vma_pin_iomap?
>>
>> For these functions I'm more like a consumer, I was following
>> suggestions from Chris on this. Is there something extra that should be
>> considered in this regard when use it like this?
> 
> AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
> fallback to create_internal(), since the object is now not lmem and is
> also not map_and_fenceable(i.e PIN_MAPPABLE).

This shouldn't affect case when dpt allocation from lmem failed, it is 
expected to go to "return ERR_CAST(dpt_obj);" below these comments. On 
situation when allocating lmem and stolen failed on next "if" I added 
!HAS_LMEM(i915) to handle situation with lmem. Though, when I was 
originally trying this patch without limiting lmem case I remember with 
dg2 I got black screen but I don't remember seeing WARN_ON() in logs.

> 
> The other issue is that we need some way of CPU mapping this type of
> object, like with calling i915_gem_object_pin_map() inside
> vma_pin_iomap(). It looks like there is an internal patch that tries
> to handle both issues, so I guess we need to also bring that patch
> upstream as a prerequisite to this?

I have above in intel_dpt_pin(..) that "pin_flags |= PIN_MAPPABLE" when 
handling stolen memory. I suspect patch you are referring to is this 
same patch I wrote, here just adjusted for upstreaming. This patch was 
earlier tried by Lucas and Manasi to be working with adlp and apparently 
cases with virtual machine this make it possible to have tiled 
framebuffers. Without this patch those special cases will get -e2big 
when creating tiled fb and no stolen memory available.

/Juha-Pekka

> 
>>
>>>
>>>> +       }
>>>>           if (IS_ERR(dpt_obj))
>>>>                   return ERR_CAST(dpt_obj);
>>>>
>>>> --
>>>> 2.28.0
>>>>
>>

