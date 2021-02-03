Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E27430E06B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 18:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5436EB4D;
	Wed,  3 Feb 2021 17:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61A86EB4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 17:03:05 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id l11so306433qvt.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 09:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7hOjJITHe43DghClU0n7E6LiB1AQQi1Bu19ytUBqXto=;
 b=CgK0u8etZCj9wJC67BJa6sXys8hWHz8qA0ge3pTR99Qo5Ntk7VaTnhvrOEWMlXU4ho
 iGBeyB7FfvzoO0131543/uwBZ7p0Iq7oyDHL+XiCnBzJ3EtoHr40vi/V65k3OCV/1Avq
 +7Qv26K5sgCQhVOlNhLSo69szlsQMQoipLzvWOjdNe2r5nTEBWGC5MMx91pDgm5sxFR7
 mR5Md4lxsM36Jgm7kiAuuvGUHkwo6s9VifRYnXhFcC8Xg3HK/OtbJMEyDcTfj+8wP83n
 eKo+eZKh///0wO7hKoX4EtUwGKeIc4l82m3UEfJ9hUcRVY4V7D+jCnhNI7DMWf9aC4yb
 Q7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7hOjJITHe43DghClU0n7E6LiB1AQQi1Bu19ytUBqXto=;
 b=dTEHXzfA2ANEyqyw+BmV3PCX2sB8GkcFd76Fjzh4NlyVUrjNFZlX21cQ5/JBR4iBl0
 f+5/RLzx1vSSSYEUaD3XxB/bZBVUSNNlAdqgL9WiZBZqWv8J4UkJHxja3qW+G6JH6LMi
 k5HZliRfHHm8+Jgz/mO6xZXjYhy2dvyPvzYoEF1os29oJpLN3lTs9kTUVAKW9ZENhwMi
 Lp56IDjiSy3z9wzAAd9IdFJ4YV5IaM0nptQh9BglrjcIxR0YUFnjZJATXfl6v7sRB6mG
 uSgVGOhAxI1fMqc6fhM+A0DQXLkjd4LyLOJWTWdYDKHrMVlCRlPh09/4emAv1OJm0Hv2
 UPfw==
X-Gm-Message-State: AOAM530jFTZ8gHSdKd9oXfKbUBi3SJPZDTh+MGnORY+9keheSVcLLLyG
 hk6cBuyNMnsyibjicioBqhrM9/+lXqAYaAbp2oo=
X-Google-Smtp-Source: ABdhPJyNoAQIRUW0Wl9DTd1ZRpbzrRnYSCq6jz6Jo3rHR+UZoRuCUDZmRIzUt/iMAU398KI9Ir9ksvrew8xUsrDI6yw=
X-Received: by 2002:a0c:a789:: with SMTP id v9mr3688081qva.41.1612371784810;
 Wed, 03 Feb 2021 09:03:04 -0800 (PST)
MIME-Version: 1.0
References: <20210203152333.511453-1-matthew.auld@intel.com>
 <20210203152333.511453-3-matthew.auld@intel.com>
 <9a947b5a0cea4072b2e8371c3c17249b@intel.com>
In-Reply-To: <9a947b5a0cea4072b2e8371c3c17249b@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 3 Feb 2021 17:02:38 +0000
Message-ID: <CAM0jSHNdRHCTOGfZqmFKgWBb0bfcCnj+O1Rhtm-whbw6EiafbA@mail.gmail.com>
To: "Tang, CQ" <cq.tang@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM
 plumbing for GGTT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 3 Feb 2021 at 16:51, Tang, CQ <cq.tang@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Matthew Auld
> > Sent: Wednesday, February 3, 2021 7:24 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM plumbing
> > for GGTT
> >
> > For the PTEs we get an LM bit, to signal whether the page resides in SMEM or
> > LMEM.
> >
> > Based on a patch from Michel Thierry.
> >
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 24 +++++++++++++++++++-----
> > drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 +++-
> >  2 files changed, 22 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index fc399ac16eda..b0b8ded834f0 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -10,6 +10,8 @@
> >
> >  #include <drm/i915_drm.h>
> >
> > +#include "gem/i915_gem_lmem.h"
> > +
> >  #include "intel_gt.h"
> >  #include "i915_drv.h"
> >  #include "i915_scatterlist.h"
> > @@ -189,7 +191,12 @@ static u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> >                               enum i915_cache_level level,
> >                               u32 flags)
> >  {
> > -     return addr | _PAGE_PRESENT;
> > +     gen8_pte_t pte = addr | _PAGE_PRESENT;
> > +
> > +     if (flags & PTE_LM)
> > +             pte |= GEN12_GGTT_PTE_LM;
> > +
> > +     return pte;
> >  }
> >
> >  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte) @@ -201,13
> > +208,13 @@ static void gen8_ggtt_insert_page(struct i915_address_space
> > *vm,
> >                                 dma_addr_t addr,
> >                                 u64 offset,
> >                                 enum i915_cache_level level,
> > -                               u32 unused)
> > +                               u32 flags)
> >  {
> >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> >       gen8_pte_t __iomem *pte =
> >               (gen8_pte_t __iomem *)ggtt->gsm + offset /
> > I915_GTT_PAGE_SIZE;
> >
> > -     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));
> > +     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
> >
> >       ggtt->invalidate(ggtt);
> >  }
> > @@ -217,7 +224,7 @@ static void gen8_ggtt_insert_entries(struct
> > i915_address_space *vm,
> >                                    enum i915_cache_level level,
> >                                    u32 flags)
> >  {
> > -     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
> > +     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level,
> > flags);
> >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> >       gen8_pte_t __iomem *gte;
> >       gen8_pte_t __iomem *end;
> > @@ -459,6 +466,8 @@ static void ggtt_bind_vma(struct i915_address_space
> > *vm,
> >       pte_flags = 0;
> >       if (i915_gem_object_is_readonly(obj))
> >               pte_flags |= PTE_READ_ONLY;
> > +     if (i915_gem_object_is_lmem(obj))
> > +             pte_flags |= PTE_LM;
> >
> >       vm->insert_entries(vm, vma, cache_level, pte_flags);
> >       vma->page_sizes.gtt = I915_GTT_PAGE_SIZE; @@ -794,6 +803,7 @@
> > static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> >       struct drm_i915_private *i915 = ggtt->vm.i915;
> >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> >       phys_addr_t phys_addr;
> > +     u32 pte_flags;
> >       int ret;
> >
> >       /* For Modern GENs the PTEs and register space are split in the BAR
> > */ @@ -823,9 +833,13 @@ static int ggtt_probe_common(struct i915_ggtt
> > *ggtt, u64 size)
> >               return ret;
> >       }
> >
> > +     pte_flags = 0;
> > +     if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
> > +             pte_flags |= PTE_LM;
> > +
> >       ggtt->vm.scratch[0]->encode =
> >               ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
> > -                                 I915_CACHE_NONE, 0);
> > +                                 I915_CACHE_NONE, pte_flags);
> >
> >       return 0;
> >  }
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > index 0eef625dd787..24b5808df16d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > @@ -85,7 +85,9 @@ typedef u64 gen8_pte_t;
> >  #define BYT_PTE_SNOOPED_BY_CPU_CACHES        REG_BIT(2)
> >  #define BYT_PTE_WRITEABLE            REG_BIT(1)
> >
> > -#define GEN12_PPGTT_PTE_LM BIT_ULL(11)
> > +#define GEN12_PPGTT_PTE_LM   BIT_ULL(11)
> > +
> > +#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
>
> Where does the Bspec say bit-1 is for LMEM?

Bspec: 45015 <- GGTT
Bspec: 45040 <- ppGTT

I'll update the commit messages.

>
> --CQ
>
> >
> >  /*
> >   * Cacheability Control is a 4-bit value. The low three bits are stored in bits
> > --
> > 2.26.2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
