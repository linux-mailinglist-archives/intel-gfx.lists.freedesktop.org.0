Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A7230E290
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 19:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DF26E970;
	Wed,  3 Feb 2021 18:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936536E970
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 18:33:01 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id a7so647343qkb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 10:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xTWB0/yvwq6Ofk82hSfh9I5kl9DnD9//wjw9naPDLKo=;
 b=DJmBMmBYZmjnZm7WGgdSme2mAA+2GvGSc1TCvQweiFWwDV0m9GtUitojkza3Ooo5C4
 2IUhCE42Q8kbL4u/ilAHTc6tBQi7WRPVQ4ApH0b49hegNxajFJUxOTRneddcBXt7UC7R
 dTln3ZQLsq4rp5106YWVEpArxnDDXnDReQe/fXZlAHR2MKcQG5r3t+38dKAGiE7duG6X
 Oi8dFlkkzzak1ZvUmDGZQWLr7o8rji+b8lgjB9X6HoosUh1+Si7TBAeQJSGhbOOo6N2n
 TC3yyxnMAl6pVFiFGPRIZQo4iSwvCBrxmX0MzsLROcDSEnjTgQ3WfPTFhfD/PVgsovdW
 KXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xTWB0/yvwq6Ofk82hSfh9I5kl9DnD9//wjw9naPDLKo=;
 b=epttb91UXAZifSfc+6vAF1vb7c2idDhOUc0YObF9O287YLhVeKBTBF3Tb5eFTJUj6J
 7GcYuByTkPBNHXMCBqy8Edaw6zk3UVEewUFM1mwtAoGRPaTw6IhaG9KUXgMT5D/aDtCH
 icPKJc6I3Y/I9gyk2CNTZNZDMCH01iHCDFhxIiNDXIwwcjQENLPDXhw/PwDoTRCiUrYi
 ZkmEDP2QzF3jsv5q9mmuI0+dvRbpxVjpY1YgjnvixIHNn7VDLBFKESaX5uMfPcuR8dl9
 owOqQqJyograe8+8Iz/klfoXLVWbNo/Zaw0VgQ6Fy7Gmq1bPDLT/ZQ6C9V0LZzKi++Jg
 rmMQ==
X-Gm-Message-State: AOAM5302jC3UCHD6YmL64LTkTKLy/8ktQvUw3Lw1ok+zTi/tURZMlA8E
 qpXMwv3DABWI3pjxdvpM4RGTkQH+xGYlomfG+aQ=
X-Google-Smtp-Source: ABdhPJzBarLHXpNqW9G9DBD++9yQqGCDRtT9/zCNhQBGbHTJN2Elo/G/Lp9QswFgcnzCz4u22qOOuHNUoFvQcaHABww=
X-Received: by 2002:a37:418d:: with SMTP id o135mr3858265qka.426.1612377180727; 
 Wed, 03 Feb 2021 10:33:00 -0800 (PST)
MIME-Version: 1.0
References: <20210203152333.511453-1-matthew.auld@intel.com>
 <20210203152333.511453-3-matthew.auld@intel.com>
 <9a947b5a0cea4072b2e8371c3c17249b@intel.com>
 <CAM0jSHNdRHCTOGfZqmFKgWBb0bfcCnj+O1Rhtm-whbw6EiafbA@mail.gmail.com>
 <d4b238215f224814b63508d6a49400da@intel.com>
In-Reply-To: <d4b238215f224814b63508d6a49400da@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 3 Feb 2021 18:32:34 +0000
Message-ID: <CAM0jSHM7eW16wZxpnMEDX0V4WnXJAhAFrwCgthA5AAovzJAbVw@mail.gmail.com>
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

On Wed, 3 Feb 2021 at 18:01, Tang, CQ <cq.tang@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Matthew Auld <matthew.william.auld@gmail.com>
> > Sent: Wednesday, February 3, 2021 9:03 AM
> > To: Tang, CQ <cq.tang@intel.com>
> > Cc: Auld, Matthew <matthew.auld@intel.com>; intel-
> > gfx@lists.freedesktop.org; Chris Wilson <chris@chris-wilson.co.uk>
> > Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM
> > plumbing for GGTT
> >
> > On Wed, 3 Feb 2021 at 16:51, Tang, CQ <cq.tang@intel.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Matthew Auld
> > > > Sent: Wednesday, February 3, 2021 7:24 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM
> > > > plumbing for GGTT
> > > >
> > > > For the PTEs we get an LM bit, to signal whether the page resides in
> > > > SMEM or LMEM.
> > > >
> > > > Based on a patch from Michel Thierry.
> > > >
> > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > > Signed-off-by: Daniele Ceraolo Spurio
> > > > <daniele.ceraolospurio@intel.com>
> > > > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 24 +++++++++++++++++++-----
> > > > drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 +++-
> > > >  2 files changed, 22 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > index fc399ac16eda..b0b8ded834f0 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > @@ -10,6 +10,8 @@
> > > >
> > > >  #include <drm/i915_drm.h>
> > > >
> > > > +#include "gem/i915_gem_lmem.h"
> > > > +
> > > >  #include "intel_gt.h"
> > > >  #include "i915_drv.h"
> > > >  #include "i915_scatterlist.h"
> > > > @@ -189,7 +191,12 @@ static u64 gen8_ggtt_pte_encode(dma_addr_t
> > addr,
> > > >                               enum i915_cache_level level,
> > > >                               u32 flags)  {
> > > > -     return addr | _PAGE_PRESENT;
> > > > +     gen8_pte_t pte = addr | _PAGE_PRESENT;
> > > > +
> > > > +     if (flags & PTE_LM)
> > > > +             pte |= GEN12_GGTT_PTE_LM;
> > > > +
> > > > +     return pte;
> > > >  }
> > > >
> > > >  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte) @@
> > > > -201,13
> > > > +208,13 @@ static void gen8_ggtt_insert_page(struct
> > > > +i915_address_space
> > > > *vm,
> > > >                                 dma_addr_t addr,
> > > >                                 u64 offset,
> > > >                                 enum i915_cache_level level,
> > > > -                               u32 unused)
> > > > +                               u32 flags)
> > > >  {
> > > >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > > >       gen8_pte_t __iomem *pte =
> > > >               (gen8_pte_t __iomem *)ggtt->gsm + offset /
> > > > I915_GTT_PAGE_SIZE;
> > > >
> > > > -     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));
> > > > +     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
> > > >
> > > >       ggtt->invalidate(ggtt);
> > > >  }
> > > > @@ -217,7 +224,7 @@ static void gen8_ggtt_insert_entries(struct
> > > > i915_address_space *vm,
> > > >                                    enum i915_cache_level level,
> > > >                                    u32 flags)  {
> > > > -     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
> > > > +     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level,
> > > > flags);
> > > >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > > >       gen8_pte_t __iomem *gte;
> > > >       gen8_pte_t __iomem *end;
> > > > @@ -459,6 +466,8 @@ static void ggtt_bind_vma(struct
> > > > i915_address_space *vm,
> > > >       pte_flags = 0;
> > > >       if (i915_gem_object_is_readonly(obj))
> > > >               pte_flags |= PTE_READ_ONLY;
> > > > +     if (i915_gem_object_is_lmem(obj))
> > > > +             pte_flags |= PTE_LM;
> > > >
> > > >       vm->insert_entries(vm, vma, cache_level, pte_flags);
> > > >       vma->page_sizes.gtt = I915_GTT_PAGE_SIZE; @@ -794,6 +803,7 @@
> > > > static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > > >       struct drm_i915_private *i915 = ggtt->vm.i915;
> > > >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > > >       phys_addr_t phys_addr;
> > > > +     u32 pte_flags;
> > > >       int ret;
> > > >
> > > >       /* For Modern GENs the PTEs and register space are split in
> > > > the BAR */ @@ -823,9 +833,13 @@ static int ggtt_probe_common(struct
> > > > i915_ggtt *ggtt, u64 size)
> > > >               return ret;
> > > >       }
> > > >
> > > > +     pte_flags = 0;
> > > > +     if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
> > > > +             pte_flags |= PTE_LM;
> > > > +
> > > >       ggtt->vm.scratch[0]->encode =
> > > >               ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
> > > > -                                 I915_CACHE_NONE, 0);
> > > > +                                 I915_CACHE_NONE, pte_flags);
> > > >
> > > >       return 0;
> > > >  }
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > index 0eef625dd787..24b5808df16d 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > @@ -85,7 +85,9 @@ typedef u64 gen8_pte_t;
> > > >  #define BYT_PTE_SNOOPED_BY_CPU_CACHES        REG_BIT(2)
> > > >  #define BYT_PTE_WRITEABLE            REG_BIT(1)
> > > >
> > > > -#define GEN12_PPGTT_PTE_LM BIT_ULL(11)
> > > > +#define GEN12_PPGTT_PTE_LM   BIT_ULL(11)
> > > > +
> > > > +#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
> > >
> > > Where does the Bspec say bit-1 is for LMEM?
> >
> > Bspec: 45015 <- GGTT
> > Bspec: 45040 <- ppGTT
>
> I looked both document, I don't see bit-1 is used as DM indicator, it is R/W bit. I also see bit-11 is ignored.
> The only place I see bit-11 as DM is Bspec 53521

I see bit-1 as "Local Memory" in 45015, and bit-11 as "Local Memory"
in 45040. Also there is no R/W bit for the GGTT on DG1, so not sure
what version of the spec you are looking at. Just to be clear there
are two different bits here, one for the ppGTT and one for the GGTT,
they both have different layouts for their respective PTEs.

Bspec: 53521 is not applicable to DG1.

>
> --CQ
>
>
> >
> > I'll update the commit messages.
> >
> > >
> > > --CQ
> > >
> > > >
> > > >  /*
> > > >   * Cacheability Control is a 4-bit value. The low three bits are
> > > > stored in bits
> > > > --
> > > > 2.26.2
> > > >
> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
