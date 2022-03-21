Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD014E2662
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 13:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8997A10E230;
	Mon, 21 Mar 2022 12:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBE410E230
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 12:29:34 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id gi14so434080qvb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 05:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LM3OUC8toHjHbsQOiTHz6z/M8/SXo+c+1Wjmc4WCng0=;
 b=qPd0E5M520cTLaYrYuSJtb340WFSCA9fPlxAjlvTynFe1VN2E2qAeC5Fkzxsd8kMvb
 x8m2BVO2dlajofs7WLTFOOIUJEGvzAnTdebuQ+cxo65qbpBbVQf/YARhPIi903akUMCu
 t0f3MUUp9bx3IdmJa15VosVafOosDS7LCndOZsZ4JI/FFMPpyi9Xf7pwQZ9SqMeM4Aj9
 dA422D63WRcM4Sbn7oT0vY8fSkQGCsMmVHw7JtQIq3gD/w2gJmCHl830T/3tTwZqAGpf
 FN+WkfQTU/IDKdTbGPZL4vpWfm7/cB/aIJv6L23QK6W/+my+hN/SemJwyzj+ewPD2Ih6
 RRZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LM3OUC8toHjHbsQOiTHz6z/M8/SXo+c+1Wjmc4WCng0=;
 b=j/YT0QMSM0D/5JJcrOfN5KeNlDGcA/ek4IJuHzk2kIEXLkC9eWdh5NMeMAoHZBJQLn
 oO598Up2XbH2YumYmjoESqS0Q1O/sS6o6p1XrAdZfhKPljEaAW5jFaRUi3wXi0sHnb27
 BZkmCtbYsm10Kctgsn1dYhvhXgnBcykOt7f2Fo6GpeJsOAD7ss4lC6+P7vJmehUQ79TN
 RmVoCy3L3gXhhGacWRYiNj3imi7kX0b3KCI97Q7mVi5oGZrceFwUwNg33C2fgbfvhhRM
 dG3g3Hj8x1ErLNc2M1EtdHZubFmy/5XZRv0TSa0NFrP+MuwMSTVs2zUHqXjtqQR/haBt
 JaoA==
X-Gm-Message-State: AOAM531QQF3si8hC/NVNsP7P2+0Z7oQxTau37i90zRWoAEsbP6LCSEdo
 GcnnqLr5uzp1cnUDMO4okyPLcUmXodxCEwRzRfw=
X-Google-Smtp-Source: ABdhPJyOJzRbKjPYlbsPjDXZgRydEX0sw5DJ6CyucZvTbMjkI6FnvIyJQp8EORBT9rnTLwTOfx8qrmNXKdrsYYYdYdQ=
X-Received: by 2002:a05:6214:c85:b0:441:2bb9:92fa with SMTP id
 r5-20020a0562140c8500b004412bb992famr2288975qvr.21.1647865773272; Mon, 21 Mar
 2022 05:29:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
 <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
In-Reply-To: <6cec7503-b7ab-8d7c-dff0-b83d65a9e3df@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 21 Mar 2022 12:29:07 +0000
Message-ID: <CAM0jSHN63X_wANE=6LutBOWpETOkB27sQmCb=X4U_sOTvdppSA@mail.gmail.com>
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

On Fri, 18 Mar 2022 at 09:22, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> On 17.3.2022 13.55, Matthew Auld wrote:
> > On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
> > <juhapekka.heikkila@gmail.com> wrote:
> >>
> >> Add fallback smem allocation for dpt if stolen memory
> >> allocation failed.
> >>
> >> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
> >>   1 file changed, 14 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> >> index fb0e7e79e0cd..c8b66433d4db 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> >> @@ -10,6 +10,7 @@
> >>   #include "intel_display_types.h"
> >>   #include "intel_dpt.h"
> >>   #include "intel_fb.h"
> >> +#include "gem/i915_gem_internal.h"
> >
> > Nit: these should be kept sorted
> >
> >>
> >>   struct i915_dpt {
> >>          struct i915_address_space vm;
> >> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>          void __iomem *iomem;
> >>          struct i915_gem_ww_ctx ww;
> >>          int err;
> >> +       u64 pin_flags = 0;
> >> +
> >> +       if (i915_gem_object_is_stolen(dpt->obj))
> >> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
> >>
> >>          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >>          atomic_inc(&i915->gpu_error.pending_fb_pin);
> >> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >>                          continue;
> >>
> >>                  vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
> >> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
> >> +                                                 pin_flags);
> >>                  if (IS_ERR(vma)) {
> >>                          err = PTR_ERR(vma);
> >>                          continue;
> >> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
> >>
> >>          size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
> >>
> >> -       if (HAS_LMEM(i915))
> >> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >> -       else
> >> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> >> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
> >>                  dpt_obj = i915_gem_object_create_stolen(i915, size);
> >> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
> >> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
> >> +                           fb->base.base.id);
> >> +
> >> +               dpt_obj = i915_gem_object_create_internal(i915, size);
> >
> > Looks like we are missing some prerequisite patch to be able to
> > directly map such memory in vma_pin_iomap?
>
> For these functions I'm more like a consumer, I was following
> suggestions from Chris on this. Is there something extra that should be
> considered in this regard when use it like this?

AFAICT this will trigger the WARN_ON() in vma_pin_iomap() if we
fallback to create_internal(), since the object is now not lmem and is
also not map_and_fenceable(i.e PIN_MAPPABLE).

The other issue is that we need some way of CPU mapping this type of
object, like with calling i915_gem_object_pin_map() inside
vma_pin_iomap(). It looks like there is an internal patch that tries
to handle both issues, so I guess we need to also bring that patch
upstream as a prerequisite to this?

>
> >
> >> +       }
> >>          if (IS_ERR(dpt_obj))
> >>                  return ERR_CAST(dpt_obj);
> >>
> >> --
> >> 2.28.0
> >>
>
