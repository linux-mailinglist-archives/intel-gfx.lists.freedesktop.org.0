Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95D230E1B4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 19:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261676EB0C;
	Wed,  3 Feb 2021 18:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2EC6EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 18:01:17 +0000 (UTC)
IronPort-SDR: RelBVvqdLrGfDIfIUfKkp5AX/D8/4nQ6prmUN/TsKd52YtbMy3gEop10X5UbPMM2/wSSK8PKK6
 7WUqxeMHP9dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="181231443"
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="181231443"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 10:01:16 -0800
IronPort-SDR: Hy5hlqJyX/HrxtbZeDmjvYMeJAjsNILZ9z6BXwH20jOxzbxvWoiV2CkGiXFSeBkHXB/Gu/ae03
 jCqisu+HU/Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="414619226"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2021 10:01:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 3 Feb 2021 18:01:14 +0000
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.002;
 Wed, 3 Feb 2021 10:01:13 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM plumbing
 for GGTT
Thread-Index: AQHW+kC1aB4dKezT2ESM0+ZtUMe3fKpGpMXAgACJlQD//4ljYA==
Date: Wed, 3 Feb 2021 18:01:13 +0000
Message-ID: <d4b238215f224814b63508d6a49400da@intel.com>
References: <20210203152333.511453-1-matthew.auld@intel.com>
 <20210203152333.511453-3-matthew.auld@intel.com>
 <9a947b5a0cea4072b2e8371c3c17249b@intel.com>
 <CAM0jSHNdRHCTOGfZqmFKgWBb0bfcCnj+O1Rhtm-whbw6EiafbA@mail.gmail.com>
In-Reply-To: <CAM0jSHNdRHCTOGfZqmFKgWBb0bfcCnj+O1Rhtm-whbw6EiafbA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Matthew Auld <matthew.william.auld@gmail.com>
> Sent: Wednesday, February 3, 2021 9:03 AM
> To: Tang, CQ <cq.tang@intel.com>
> Cc: Auld, Matthew <matthew.auld@intel.com>; intel-
> gfx@lists.freedesktop.org; Chris Wilson <chris@chris-wilson.co.uk>
> Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM
> plumbing for GGTT
> 
> On Wed, 3 Feb 2021 at 16:51, Tang, CQ <cq.tang@intel.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Matthew Auld
> > > Sent: Wednesday, February 3, 2021 7:24 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/gtt/dg1: add PTE_LM
> > > plumbing for GGTT
> > >
> > > For the PTEs we get an LM bit, to signal whether the page resides in
> > > SMEM or LMEM.
> > >
> > > Based on a patch from Michel Thierry.
> > >
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio
> > > <daniele.ceraolospurio@intel.com>
> > > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 24 +++++++++++++++++++-----
> > > drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 +++-
> > >  2 files changed, 22 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index fc399ac16eda..b0b8ded834f0 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -10,6 +10,8 @@
> > >
> > >  #include <drm/i915_drm.h>
> > >
> > > +#include "gem/i915_gem_lmem.h"
> > > +
> > >  #include "intel_gt.h"
> > >  #include "i915_drv.h"
> > >  #include "i915_scatterlist.h"
> > > @@ -189,7 +191,12 @@ static u64 gen8_ggtt_pte_encode(dma_addr_t
> addr,
> > >                               enum i915_cache_level level,
> > >                               u32 flags)  {
> > > -     return addr | _PAGE_PRESENT;
> > > +     gen8_pte_t pte = addr | _PAGE_PRESENT;
> > > +
> > > +     if (flags & PTE_LM)
> > > +             pte |= GEN12_GGTT_PTE_LM;
> > > +
> > > +     return pte;
> > >  }
> > >
> > >  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte) @@
> > > -201,13
> > > +208,13 @@ static void gen8_ggtt_insert_page(struct
> > > +i915_address_space
> > > *vm,
> > >                                 dma_addr_t addr,
> > >                                 u64 offset,
> > >                                 enum i915_cache_level level,
> > > -                               u32 unused)
> > > +                               u32 flags)
> > >  {
> > >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > >       gen8_pte_t __iomem *pte =
> > >               (gen8_pte_t __iomem *)ggtt->gsm + offset /
> > > I915_GTT_PAGE_SIZE;
> > >
> > > -     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));
> > > +     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
> > >
> > >       ggtt->invalidate(ggtt);
> > >  }
> > > @@ -217,7 +224,7 @@ static void gen8_ggtt_insert_entries(struct
> > > i915_address_space *vm,
> > >                                    enum i915_cache_level level,
> > >                                    u32 flags)  {
> > > -     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
> > > +     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level,
> > > flags);
> > >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > >       gen8_pte_t __iomem *gte;
> > >       gen8_pte_t __iomem *end;
> > > @@ -459,6 +466,8 @@ static void ggtt_bind_vma(struct
> > > i915_address_space *vm,
> > >       pte_flags = 0;
> > >       if (i915_gem_object_is_readonly(obj))
> > >               pte_flags |= PTE_READ_ONLY;
> > > +     if (i915_gem_object_is_lmem(obj))
> > > +             pte_flags |= PTE_LM;
> > >
> > >       vm->insert_entries(vm, vma, cache_level, pte_flags);
> > >       vma->page_sizes.gtt = I915_GTT_PAGE_SIZE; @@ -794,6 +803,7 @@
> > > static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > >       struct drm_i915_private *i915 = ggtt->vm.i915;
> > >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > >       phys_addr_t phys_addr;
> > > +     u32 pte_flags;
> > >       int ret;
> > >
> > >       /* For Modern GENs the PTEs and register space are split in
> > > the BAR */ @@ -823,9 +833,13 @@ static int ggtt_probe_common(struct
> > > i915_ggtt *ggtt, u64 size)
> > >               return ret;
> > >       }
> > >
> > > +     pte_flags = 0;
> > > +     if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
> > > +             pte_flags |= PTE_LM;
> > > +
> > >       ggtt->vm.scratch[0]->encode =
> > >               ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
> > > -                                 I915_CACHE_NONE, 0);
> > > +                                 I915_CACHE_NONE, pte_flags);
> > >
> > >       return 0;
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > index 0eef625dd787..24b5808df16d 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > @@ -85,7 +85,9 @@ typedef u64 gen8_pte_t;
> > >  #define BYT_PTE_SNOOPED_BY_CPU_CACHES        REG_BIT(2)
> > >  #define BYT_PTE_WRITEABLE            REG_BIT(1)
> > >
> > > -#define GEN12_PPGTT_PTE_LM BIT_ULL(11)
> > > +#define GEN12_PPGTT_PTE_LM   BIT_ULL(11)
> > > +
> > > +#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
> >
> > Where does the Bspec say bit-1 is for LMEM?
> 
> Bspec: 45015 <- GGTT
> Bspec: 45040 <- ppGTT

I looked both document, I don't see bit-1 is used as DM indicator, it is R/W bit. I also see bit-11 is ignored.
The only place I see bit-11 as DM is Bspec 53521

--CQ


> 
> I'll update the commit messages.
> 
> >
> > --CQ
> >
> > >
> > >  /*
> > >   * Cacheability Control is a 4-bit value. The low three bits are
> > > stored in bits
> > > --
> > > 2.26.2
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
