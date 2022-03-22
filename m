Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242654E3CBB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 11:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FCE10E55A;
	Tue, 22 Mar 2022 10:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBAD10E2B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 10:45:32 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id i65so7809055qkd.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 03:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RTLq2Ba0QZh38S0HcRGIwN1HGgss/CwRKkQmeqbxHM8=;
 b=OIl6FFouzPoVDJCLP0kUVGeQ7kZC2P0518gEyDBqw16lPT6Ucxw8g8rouS38KsV4uP
 JIU4Bk7l7uO7vR/f6qvANTz6PthpfIkS8eyhg+WjNhf3Y4PvxHxEZLbRAt486ZRUPXjy
 HMCsoE4uVmrgXYButz7vlA27Buw3vT4iOxYszng3XYGAYtuw+8ko0XYrSvrN5CGvKNfr
 eeficz9YEZACN6sfujQsw21c0KIxnTFA1ogzcDc4g+P9CHHy7rASsn/ZX0JZlK9G8xu8
 6oXtmAXroya4q5TOh5Iv0IPwjUJziF4ipWflartYgy01rNgUlqGq3Xpn8vbzJZ768ZzZ
 8RSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RTLq2Ba0QZh38S0HcRGIwN1HGgss/CwRKkQmeqbxHM8=;
 b=60UEnPSxizhuErfdTdKvzWk5wro4heEiIfNVlUF9UYGQg0+9+Ep3IjiBusk6Qt0xCf
 /3Vk8H1jbQqdIryVTgm6cF3Tt7jDKE7rp1BfP9ZzgRzOxo/MYCr+nn9zrCHQ23AqDDCs
 AgJmFpH7cJs3XfX4UKn3W11SHNbtrxJRGl6RBwFaQuoRjAg9ysh0EDnO2VDOgzHvlWss
 fBAXLb6pe2K3elqAw1u2nGJBryZ0Lr5auigOMVi0LfzXqc4S0Gi9b1kMN/BTBKKxgt5/
 AQuEgf0UTQUzyIaI2HoLXu0eWxp4ZXTLc+cR0DCt2sb76GdjoyAu1AWgVAJo7eqSDS9/
 Uqcg==
X-Gm-Message-State: AOAM530hjNGA7+0/Cwg7mlzmPuOhQk8OlmsAozXlfYMiIAFoN6VGM1Pq
 xVKMFar1CPNdrnK5ifA16G4zF9a/gyTJsxTOc46I5bdHnAA=
X-Google-Smtp-Source: ABdhPJx9wfRXBIqyR8hP1/5AMoDMVht+nUFe9kP+Xh6F81tCMnVnyQGvcl7eFK0n/I5jbcWcz3BYJpxObIO0Q+5Oug0=
X-Received: by 2002:a37:4cf:0:b0:67b:1821:f89a with SMTP id
 198-20020a3704cf000000b0067b1821f89amr14936310qke.7.1647945932038; Tue, 22
 Mar 2022 03:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
 <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
 <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
 <9fea9a74-f7d2-bb36-c0c8-aea86d4ae791@gmail.com>
In-Reply-To: <9fea9a74-f7d2-bb36-c0c8-aea86d4ae791@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Mar 2022 10:45:05 +0000
Message-ID: <CAM0jSHMzJwY6oRz7cbqYL91OawoXixww-c7EdvTiY8RrnG9aMA@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Mar 2022 at 18:36, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> On 21.3.2022 14.29, Matthew Auld wrote:
> > On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
> > <juhapekka.heikkila@gmail.com> wrote:
> >>
> >> On 17.3.2022 13.55, Matthew Auld wrote:
> >>> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
> >>> <juhapekka.heikkila@gmail.com> wrote:
> >>>>
> >>>> Add fallback smem allocation for dpt if stolen memory
> >>>> allocation failed.
> >>>>
> >>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >>>> ---
> >>>>    drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
> >>>>    1 file changed, 14 insertions(+), 4 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>> index fb0e7e79e0cd..c8b66433d4db 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>> @@ -10,6 +10,7 @@
> >>>>    #include "intel_display_types.h"
> >>>>    #include "intel_dpt.h"
> >>>>    #include "intel_fb.h"
> >>>> +#include "gem/i915_gem_internal.h"
> >>>
> >>> Nit: these should be kept sorted
> >>>
> >>>>
> >>>>    struct i915_dpt {
> >>>>           struct i915_address_space vm;
> >>>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>>>           void __iomem *iomem;
> >>>>           struct i915_gem_ww_ctx ww;
> >>>>           int err;
> >>>> +       u64 pin_flags = 0;
> >>>> +
> >>>> +       if (i915_gem_object_is_stolen(dpt->obj))
> >>>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
> >>>>
> >>>>           wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >>>>           atomic_inc(&i915->gpu_error.pending_fb_pin);
> >>>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>>>                           continue;
> >>>>
> >>>>                   vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
> >>>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
> >>>> +                                                 pin_flags);
> >>>>                   if (IS_ERR(vma)) {
> >>>>                           err = PTR_ERR(vma);
> >>>>                           continue;
> >>>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
> >>>>
> >>>>           size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
> >>>>
> >>>> -       if (HAS_LMEM(i915))
> >>>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >>>> -       else
> >>>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >>>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
> >>>>                   dpt_obj = i915_gem_object_create_stolen(i915, size);
> >>>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
> >>>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
> >>>> +                           fb->base.base.id);
> >>>> +
> >>>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
> >>>
> >>> Looks like we are missing some prerequisite patch to be able to
> >>> directly map such memory in vma_pin_iomap?
> >>
> >> For these functions I'm more like a consumer, I was following
> >> suggestions from Chris on this. Is there something extra that should be
> >> considered in this regard when use it like this?
> >
> > AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
> > fallback to create_internal(), since the object is now not lmem and is
> > also not map_and_fenceable(i.e PIN_MAPPABLE).
>
> This shouldn't affect case when dpt allocation from lmem failed, it is
> expected to go to "return ERR_CAST(dpt_obj);" below these comments. On
> situation when allocating lmem and stolen failed on next "if" I added
> !HAS_LMEM(i915) to handle situation with lmem. Though, when I was
> originally trying this patch without limiting lmem case I remember with
> dg2 I got black screen but I don't remember seeing WARN_ON() in logs.
>
> >
> > The other issue is that we need some way of CPU mapping this type of
> > object, like with calling i915_gem_object_pin_map() inside
> > vma_pin_iomap(). It looks like there is an internal patch that tries
> > to handle both issues, so I guess we need to also bring that patch
> > upstream as a prerequisite to this?
>
> I have above in intel_dpt_pin(..) that "pin_flags |= PIN_MAPPABLE" when
> handling stolen memory. I suspect patch you are referring to is this
> same patch I wrote, here just adjusted for upstreaming. This patch was
> earlier tried by Lucas and Manasi to be working with adlp and apparently
> cases with virtual machine this make it possible to have tiled
> framebuffers. Without this patch those special cases will get -e2big
> when creating tiled fb and no stolen memory available.

When the GGTT pin eventually ends up returning some vma that is not
within the ggtt->mappable_end, then we will start hitting the above
issues, starting with the WARN_ON. If you use PIN_HIGH here for the
non-stolen case, it should highlight the issue more reliably I think.

>
> /Juha-Pekka
>
> >
> >>
> >>>
> >>>> +       }
> >>>>           if (IS_ERR(dpt_obj))
> >>>>                   return ERR_CAST(dpt_obj);
> >>>>
> >>>> --
> >>>> 2.28.0
> >>>>
> >>
>
