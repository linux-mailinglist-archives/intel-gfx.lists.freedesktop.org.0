Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 896893983C0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 10:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D906EB70;
	Wed,  2 Jun 2021 08:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3336EB72
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 08:01:07 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 t6-20020a4ae9a60000b0290245a5133898so365331ood.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 01:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xMGz/+ljNfGQpXCS2mh8hGwuTRA0yh2kcEnETCIDzb0=;
 b=NuKfdVqcLVeM9HBzcOR29G5HzyLFzGut6aCeiRTf9S6ehbSRchZtaFV1jXFeBYTnp8
 +7LaSNZMbLMya1g943PyuD71iI8MdVFynkAXb2sKQizADU3eJi1HSe2+3EtVl4GvtKyh
 oL6bccPGkviSFedsbOQlKSuFU8rvsJ/R8X5So=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xMGz/+ljNfGQpXCS2mh8hGwuTRA0yh2kcEnETCIDzb0=;
 b=Bzt76vkwQsm0INLIU8dP5gbBxMFRRR7NxImAc5HZNsaFTIbUSsL02foDOz5rqOtbkp
 Rqrg8VxNSWftF3AHi/aTyFdx3TP0NPls9k3123IMj5kG3STakqZsHWHFZVrV7lShcLOS
 e2c/5q2CvVTOqp3s4f9d6i0E0q84Z6vzUpT75JLvBh9mkxG1ckRkiRffVcsjEkPKieFg
 hkizAfm+P9/HtQiy3niNmCzUtRanZ6BZrQ3L/fnfccaNw2uhPmAdmrN+OSy/+Ip7dLAN
 uJKDpVEo46mBFjBiuc5LI2UZvR3FTJaF6CDfh5K9tjAXU9DxQMRZ9PeB4PrtabTLgILp
 vfSA==
X-Gm-Message-State: AOAM533eMMhWzF8DJXwk1qzHsdVKcvvptpy+aIciDoFKP4WxRABnw5rm
 dy0C5I+TCJKasIsgkjnNaNRHz1T9dj32ADcsnlIK+w==
X-Google-Smtp-Source: ABdhPJxFDL1h5BF88dPr8M7r4wP1krwubu4IUcEhq5DEWKSeZsMhXLGRg5h8xVXuzOtwiIauCe9kreeOF+nkW+DBXas=
X-Received: by 2002:a4a:8e04:: with SMTP id q4mr23570673ook.28.1622620865933; 
 Wed, 02 Jun 2021 01:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210527185145.458021-1-matthew.auld@intel.com>
 <CAM0jSHOOB7=SLC+cgmXn4pWets+BJzdk=R+7LVzE+Aje2_FW5Q@mail.gmail.com>
In-Reply-To: <CAM0jSHOOB7=SLC+cgmXn4pWets+BJzdk=R+7LVzE+Aje2_FW5Q@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 2 Jun 2021 10:00:54 +0200
Message-ID: <CAKMK7uE1yrh-_+shOR5EuLZQaQyckDHNA8uhgwAx6-pLQaHifA@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] Revert "i915: use io_mapping_map_user"
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 Matthew Auld <matthew.auld@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 2, 2021 at 9:28 AM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Thu, 27 May 2021 at 19:52, Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > This reverts commit b739f125e4ebd73d10ed30a856574e13649119ed.
> >
> > We are unfortunately seeing more issues like we did in 293837b9ac8d
> > ("Revert "i915: fix remap_io_sg to verify the pgprot""), except this is
> > now for the vm_fault_gtt path, where we are now hitting the same
> > BUG_ON(!pte_none(*pte)):
> >
> > [10887.466150] kernel BUG at mm/memory.c:2183!
> > [10887.466162] invalid opcode: 0000 [#1] PREEMPT SMP PTI
> > [10887.466168] CPU: 0 PID: 7775 Comm: ffmpeg Tainted: G     U            5.13.0-rc3-CI-Nightly #1
> > [10887.466174] Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./J4205-ITX, BIOS P1.40 07/14/2017
> > [10887.466177] RIP: 0010:remap_pfn_range_notrack+0x30f/0x440
> > [10887.466188] Code: e8 96 d7 e0 ff 84 c0 0f 84 27 01 00 00 48 ba 00 f0 ff ff ff ff 0f 00 4c 89 e0 48 c1 e0 0c 4d 85 ed 75 96 48 21 d0 31 f6 eb a9 <0f> 0b 48 39 37 0f 85 0e 01 00 00 48 8b 0c 24 48 39 4f 08 0f 85 00
> > [10887.466193] RSP: 0018:ffffc90006e33c50 EFLAGS: 00010286
> > [10887.466198] RAX: 800000000000002f RBX: 00007f5e01800000 RCX: 0000000000000028
> > [10887.466201] RDX: 0000000000000001 RSI: ffffea0000000000 RDI: 0000000000000000
> > [10887.466204] RBP: ffffea000033fea8 R08: 800000000000002f R09: ffff8881072256e0
> > [10887.466207] R10: ffffc9000b84fff8 R11: 0000000017dab000 R12: 0000000000089f9f
> > [10887.466210] R13: 800000000000002f R14: 00007f5e017e4000 R15: ffff88800cffaf20
> > [10887.466213] FS:  00007f5e04849640(0000) GS:ffff888278000000(0000) knlGS:0000000000000000
> > [10887.466216] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [10887.466220] CR2: 00007fd9b191a2ac CR3: 00000001829ac000 CR4: 00000000003506f0
> > [10887.466223] Call Trace:
> > [10887.466233]  vm_fault_gtt+0x1ca/0x5d0 [i915]
> > [10887.466381]  ? ktime_get+0x38/0x90
> > [10887.466389]  __do_fault+0x37/0x90
> > [10887.466395]  __handle_mm_fault+0xc46/0x1200
> > [10887.466402]  handle_mm_fault+0xce/0x2a0
> > [10887.466407]  do_user_addr_fault+0x1c5/0x660
> >
> > Reverting this commit is reported to fix the issue.
> >
> > Reported-by: Eero Tamminen <eero.t.tamminen@intel.com>
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/3519
> > Fixes: b739f125e4eb ("i915: use io_mapping_map_user")
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>
> Could someone give an ack for this? There are at least two separate
> user reports for this issue.

I was assuming Christoph would ack this, but fwiw:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Also adding Joonas to make sure this doesn't miss the -fixes pull
request train. Also can't hurt to cc Linus since he reverted the other
part of this already in -rc3.
-Daniel
>
> > ---
> >  drivers/gpu/drm/i915/Kconfig             |  1 -
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c |  9 ++---
> >  drivers/gpu/drm/i915/i915_drv.h          |  3 ++
> >  drivers/gpu/drm/i915/i915_mm.c           | 44 ++++++++++++++++++++++++
> >  4 files changed, 52 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> > index 93f4d059fc89..1e1cb245fca7 100644
> > --- a/drivers/gpu/drm/i915/Kconfig
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -20,7 +20,6 @@ config DRM_I915
> >         select INPUT if ACPI
> >         select ACPI_VIDEO if ACPI
> >         select ACPI_BUTTON if ACPI
> > -       select IO_MAPPING
> >         select SYNC_FILE
> >         select IOSF_MBI
> >         select CRC32
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > index f6fe5cb01438..8598a1c78a4c 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > @@ -367,10 +367,11 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
> >                 goto err_unpin;
> >
> >         /* Finally, remap it using the new GTT offset */
> > -       ret = io_mapping_map_user(&ggtt->iomap, area, area->vm_start +
> > -                       (vma->ggtt_view.partial.offset << PAGE_SHIFT),
> > -                       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
> > -                       min_t(u64, vma->size, area->vm_end - area->vm_start));
> > +       ret = remap_io_mapping(area,
> > +                              area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
> > +                              (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
> > +                              min_t(u64, vma->size, area->vm_end - area->vm_start),
> > +                              &ggtt->iomap);
> >         if (ret)
> >                 goto err_fence;
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 0f6d27da69ac..e926f20c5b82 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1941,6 +1941,9 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
> >                         struct drm_file *file);
> >
> >  /* i915_mm.c */
> > +int remap_io_mapping(struct vm_area_struct *vma,
> > +                    unsigned long addr, unsigned long pfn, unsigned long size,
> > +                    struct io_mapping *iomap);
> >  int remap_io_sg(struct vm_area_struct *vma,
> >                 unsigned long addr, unsigned long size,
> >                 struct scatterlist *sgl, resource_size_t iobase);
> > diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> > index 9a777b0ff59b..666808cb3a32 100644
> > --- a/drivers/gpu/drm/i915/i915_mm.c
> > +++ b/drivers/gpu/drm/i915/i915_mm.c
> > @@ -37,6 +37,17 @@ struct remap_pfn {
> >         resource_size_t iobase;
> >  };
> >
> > +static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
> > +{
> > +       struct remap_pfn *r = data;
> > +
> > +       /* Special PTE are not associated with any struct page */
> > +       set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
> > +       r->pfn++;
> > +
> > +       return 0;
> > +}
> > +
> >  #define use_dma(io) ((io) != -1)
> >
> >  static inline unsigned long sgt_pfn(const struct remap_pfn *r)
> > @@ -66,7 +77,40 @@ static int remap_sg(pte_t *pte, unsigned long addr, void *data)
> >         return 0;
> >  }
> >
> > +/**
> > + * remap_io_mapping - remap an IO mapping to userspace
> > + * @vma: user vma to map to
> > + * @addr: target user address to start at
> > + * @pfn: physical address of kernel memory
> > + * @size: size of map area
> > + * @iomap: the source io_mapping
> > + *
> > + *  Note: this is only safe if the mm semaphore is held when called.
> > + */
> > +int remap_io_mapping(struct vm_area_struct *vma,
> > +                    unsigned long addr, unsigned long pfn, unsigned long size,
> > +                    struct io_mapping *iomap)
> > +{
> > +       struct remap_pfn r;
> > +       int err;
> > +
> >  #define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
> > +       GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
> > +
> > +       /* We rely on prevalidation of the io-mapping to skip track_pfn(). */
> > +       r.mm = vma->vm_mm;
> > +       r.pfn = pfn;
> > +       r.prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
> > +                         (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK));
> > +
> > +       err = apply_to_page_range(r.mm, addr, size, remap_pfn, &r);
> > +       if (unlikely(err)) {
> > +               zap_vma_ptes(vma, addr, (r.pfn - pfn) << PAGE_SHIFT);
> > +               return err;
> > +       }
> > +
> > +       return 0;
> > +}
> >
> >  /**
> >   * remap_io_sg - remap an IO mapping to userspace
> > --
> > 2.26.3
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
