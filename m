Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D5C4E435C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 16:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613A310E0B1;
	Tue, 22 Mar 2022 15:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF34910E0B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 15:53:45 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id k125so14327809qkf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 08:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3ZtMC1dZdRlkCYXT1AVpLd1nEH4TJkxWmVB7xDvCPrE=;
 b=Vttg1e1H9AgaHXAD93luIIzFQhKByL4Hn6xxl7buNod6Eb4j9aHMVwGanV8uQyJ0Ez
 U67RZCYJQQsyywmPAbBUWfsgQanVDgCMF4N9LDcj9AKtOWEJoLW+FLQMS3lhNy4X74Nx
 yQKNpqgQA/GD7gxDP78SZNhGynpvcXhxPjYJXAlwCe1W9jP6hvtrEGXm/jNTc/KtubBI
 lmP0FbA73NAnaNvEUwZYQqXpUSOCfUeZj5e7OcE0FnNIDPbQbAEXQv+FGDeK4Xd1Y2NP
 7vmRBq/pjWwHof3tPqgK4MrQxAqS4TQMWUx/unebOl8D8fmH8VsXpMbPeStPESsFGUcX
 hoUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3ZtMC1dZdRlkCYXT1AVpLd1nEH4TJkxWmVB7xDvCPrE=;
 b=ao3eXNInLpRdBQYGUJDE0aDJjFxLMscpGDcVx+RniORLaBrvIV0LBrGHg9TUh9vhvY
 ZtxszNh7CevpJycyCz4pFNRar7X0FVNBKwkdx2h+69qaA5tZrjMm2v3t/1EDrhM8bE5l
 GJ9gwurdrC7YeAV8Mt6rPVMUr1SuDCbKxGBhW/Rh8+QHQyvE4OSp0xXgZKjpsmOEYZik
 ds+otMXbNnGyMb0iPTVGAPDlsfjQ6B5BNZz6nAk37an2Pr5TSoQe/WWQyehP0qAnbjPv
 5XROcNb3O2iFtQZySqBGs8A5m0pzldQfcgPgr/yXiDu/JqDGk19h5l028f8knN3X5EMt
 wn6g==
X-Gm-Message-State: AOAM533LDP428dqtw28P3YaNmjZT6kfq/m+U3yyCIHY6vZooYL7Cy7dC
 iBPuMOLvfDzuDpFWtAwta3eEM1sGjUEXEYfXAWSSTApZ7yY=
X-Google-Smtp-Source: ABdhPJxdlgcp0PuLxdr3XWkJtuGhOw+98Hcbta4Jv6NnYyWN6xPrtjF6kjaVO7sYt52dpHQYIDSbPhAKXZJmlq9Bv+s=
X-Received: by 2002:a05:620a:f0d:b0:67e:1961:b061 with SMTP id
 v13-20020a05620a0f0d00b0067e1961b061mr15994124qkl.82.1647964424515; Tue, 22
 Mar 2022 08:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
 <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
 <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
 <9fea9a74-f7d2-bb36-c0c8-aea86d4ae791@gmail.com>
 <CAM0jSHMzJwY6oRz7cbqYL91OawoXixww-c7EdvTiY8RrnG9aMA@mail.gmail.com>
 <4533088c-3d4b-7701-9fb5-8f2316e6a491@gmail.com>
In-Reply-To: <4533088c-3d4b-7701-9fb5-8f2316e6a491@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Mar 2022 15:53:18 +0000
Message-ID: <CAM0jSHOw5hvXdgse4MC4h5N7PJDUAXK+pY7iEr7z+kp2okegKw@mail.gmail.com>
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

On Tue, 22 Mar 2022 at 12:06, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> On 22.3.2022 12.45, Matthew Auld wrote:
> > On Mon, 21 Mar 2022 at 18:36, Juha-Pekka Heikkila
> > <juhapekka.heikkila@gmail.com> wrote:
> >>
> >> On 21.3.2022 14.29, Matthew Auld wrote:
> >>> On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
> >>> <juhapekka.heikkila@gmail.com> wrote:
> >>>>
> >>>> On 17.3.2022 13.55, Matthew Auld wrote:
> >>>>> On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
> >>>>> <juhapekka.heikkila@gmail.com> wrote:
> >>>>>>
> >>>>>> Add fallback smem allocation for dpt if stolen memory
> >>>>>> allocation failed.
> >>>>>>
> >>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >>>>>> ---
> >>>>>>     drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
> >>>>>>     1 file changed, 14 insertions(+), 4 deletions(-)
> >>>>>>
> >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>>>> index fb0e7e79e0cd..c8b66433d4db 100644
> >>>>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> >>>>>> @@ -10,6 +10,7 @@
> >>>>>>     #include "intel_display_types.h"
> >>>>>>     #include "intel_dpt.h"
> >>>>>>     #include "intel_fb.h"
> >>>>>> +#include "gem/i915_gem_internal.h"
> >>>>>
> >>>>> Nit: these should be kept sorted
> >>>>>
> >>>>>>
> >>>>>>     struct i915_dpt {
> >>>>>>            struct i915_address_space vm;
> >>>>>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>>>>>            void __iomem *iomem;
> >>>>>>            struct i915_gem_ww_ctx ww;
> >>>>>>            int err;
> >>>>>> +       u64 pin_flags = 0;
> >>>>>> +
> >>>>>> +       if (i915_gem_object_is_stolen(dpt->obj))
> >>>>>> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
> >>>>>>
> >>>>>>            wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >>>>>>            atomic_inc(&i915->gpu_error.pending_fb_pin);
> >>>>>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>>>>>                            continue;
> >>>>>>
> >>>>>>                    vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
> >>>>>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
> >>>>>> +                                                 pin_flags);
> >>>>>>                    if (IS_ERR(vma)) {
> >>>>>>                            err = PTR_ERR(vma);
> >>>>>>                            continue;
> >>>>>> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
> >>>>>>
> >>>>>>            size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
> >>>>>>
> >>>>>> -       if (HAS_LMEM(i915))
> >>>>>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >>>>>> -       else
> >>>>>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >>>>>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
> >>>>>>                    dpt_obj = i915_gem_object_create_stolen(i915, size);
> >>>>>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
> >>>>>> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
> >>>>>> +                           fb->base.base.id);
> >>>>>> +
> >>>>>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
> >>>>>
> >>>>> Looks like we are missing some prerequisite patch to be able to
> >>>>> directly map such memory in vma_pin_iomap?
> >>>>
> >>>> For these functions I'm more like a consumer, I was following
> >>>> suggestions from Chris on this. Is there something extra that should be
> >>>> considered in this regard when use it like this?
> >>>
> >>> AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
> >>> fallback to create_internal(), since the object is now not lmem and is
> >>> also not map_and_fenceable(i.e PIN_MAPPABLE).
> >>
> >> This shouldn't affect case when dpt allocation from lmem failed, it is
> >> expected to go to "return ERR_CAST(dpt_obj);" below these comments. On
> >> situation when allocating lmem and stolen failed on next "if" I added
> >> !HAS_LMEM(i915) to handle situation with lmem. Though, when I was
> >> originally trying this patch without limiting lmem case I remember with
> >> dg2 I got black screen but I don't remember seeing WARN_ON() in logs.
> >>
> >>>
> >>> The other issue is that we need some way of CPU mapping this type of
> >>> object, like with calling i915_gem_object_pin_map() inside
> >>> vma_pin_iomap(). It looks like there is an internal patch that tries
> >>> to handle both issues, so I guess we need to also bring that patch
> >>> upstream as a prerequisite to this?
> >>
> >> I have above in intel_dpt_pin(..) that "pin_flags |= PIN_MAPPABLE" when
> >> handling stolen memory. I suspect patch you are referring to is this
> >> same patch I wrote, here just adjusted for upstreaming. This patch was
> >> earlier tried by Lucas and Manasi to be working with adlp and apparently
> >> cases with virtual machine this make it possible to have tiled
> >> framebuffers. Without this patch those special cases will get -e2big
> >> when creating tiled fb and no stolen memory available.
> >
> > When the GGTT pin eventually ends up returning some vma that is not
> > within the ggtt->mappable_end, then we will start hitting the above
> > issues, starting with the WARN_ON. If you use PIN_HIGH here for the
> > non-stolen case, it should highlight the issue more reliably I think.
> >
>
> You mean once there's no space left in stolen there would be WARN_ON()?
> This is case which was earlier tested by Lucas and Manasi on adlp to be
> working correctly, this was on top of drm-tip. Also on internal testing
> you can see platforms taking this path reliably with no errors.
>
> I'm not sure why use PIN_HIGH for non stolen case, my exposure to gem
> related parts is limited hence I was following Chris's suggestion to put
> zero flag for i915_gem_object_ggtt_pin_ww(..) when not using stolen.

Asking for PIN_MAPPABLE ensures that the vma is always placed within
the mappable part of the GGTT(i.e ggtt->mappable_end), which is
usually only the first 256M of the GGTT. If we don't ask for
PIN_MAPPABLE(which is what this patch is doing for the non-stolen
case) then the vma might now be placed outside of the special mappable
range. This mappable range has a corresponding MMIO window which lets
us access, via some CPU address, the memory pointed at by those GGTT
PTEs. In the case of stolen system-memory this is the only known
reliable way to access such memory from the CPU. However if this is
just normal system memory(which is what this patch is now doing) then
we can just map it directly and don't need the PIN_MAPPABLE thing, but
that is exactly the piece we are also missing in vma_pin_iomap. The
WARN_ON(!i915_vma_is_map_and_fenceable(vma)) should catch this issue,
but I assume it's only by coincidence that we are not hitting it with
this patch, since the vma just so happens to be in the mappable
part(?), but that won't always be the case. If you look at the
internal version of vma_pin_iomap() there is some extra code to handle
this, which I guess should be a prerequisite to this patch.

>
> /Juha-pekka
