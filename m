Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D811F215F61
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 21:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E6289CE2;
	Mon,  6 Jul 2020 19:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71FC89CE2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 19:32:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21733069-1500050 for multiple; Mon, 06 Jul 2020 20:31:56 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-3-chris@chris-wilson.co.uk>
 <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 06 Jul 2020 20:31:54 +0100
Message-ID: <159406391450.24180.17117233250109586893@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: Switch to object
 allocations for page directories
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-07-06 20:06:38)
> On Mon, 6 Jul 2020 at 07:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > The GEM object is grossly overweight for the practicality of tracking
> > large numbers of individual pages, yet it is currently our only
> > abstraction for tracking DMA allocations. Since those allocations need
> > to be reserved upfront before an operation, and that we need to break
> > away from simple system memory, we need to ditch using plain struct page
> > wrappers.
> >
> > In the process, we drop the WC mapping as we ended up clflushing
> > everything anyway due to various issues across a wider range of
> > platforms. Though in a future step, we need to drop the kmap_atomic
> > approach which suggests we need to pre-map all the pages and keep them
> > mapped.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> <snip>
> 
> >
> > -int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
> > +int setup_scratch_page(struct i915_address_space *vm)
> >  {
> >         unsigned long size;
> >
> > @@ -338,21 +174,22 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
> >          */
> >         size = I915_GTT_PAGE_SIZE_4K;
> >         if (i915_vm_is_4lvl(vm) &&
> > -           HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K)) {
> > +           HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K))
> >                 size = I915_GTT_PAGE_SIZE_64K;
> > -               gfp |= __GFP_NOWARN;
> > -       }
> > -       gfp |= __GFP_ZERO | __GFP_RETRY_MAYFAIL;
> >
> >         do {
> > -               unsigned int order = get_order(size);
> > -               struct page *page;
> > -               dma_addr_t addr;
> > +               struct drm_i915_gem_object *obj;
> >
> > -               page = alloc_pages(gfp, order);
> > -               if (unlikely(!page))
> > +               obj = vm->alloc_pt_dma(vm, size);
> > +               if (IS_ERR(obj))
> >                         goto skip;
> >
> > +               if (pin_pt_dma(vm, obj))
> > +                       goto skip_obj;
> > +
> > +               if (obj->mm.page_sizes.sg < size)
> > +                       goto skip_obj;
> > +
> 
> We should still check the alignment of the final dma address
> somewhere, in the case of 64K. I have for sure seen dma misalignment
> here before.

True. A nuisance to reject a 64K contiguous page because of dma
misalignment. I wonder if we can pass alignment to iommu.

/*
 * DMA_ATTR_NO_KERNEL_MAPPING: Lets the platform to avoid creating a kernel
 * virtual mapping for the allocated buffer.
 */
#define DMA_ATTR_NO_KERNEL_MAPPING      (1UL << 4)

Ahem. I hope that isn't being applied to all of our buffers....

/*
 * DMA_ATTR_WRITE_COMBINE: Specifies that writes to the mapping may be
 * buffered to improve performance.
 */
#define DMA_ATTR_WRITE_COMBINE          (1UL << 2)

On the other hand; tell me more dma-mapping.h!

But nothing there to influence alignment :(

> > @@ -362,61 +199,28 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
> >                  * should it ever be accidentally used, the effect should be
> >                  * fairly benign.
> >                  */
> > -               poison_scratch_page(page, size);
> > -
> > -               addr = dma_map_page_attrs(vm->dma,
> > -                                         page, 0, size,
> > -                                         PCI_DMA_BIDIRECTIONAL,
> > -                                         DMA_ATTR_SKIP_CPU_SYNC |
> > -                                         DMA_ATTR_NO_WARN);
> > -               if (unlikely(dma_mapping_error(vm->dma, addr)))
> > -                       goto free_page;
> > -
> > -               if (unlikely(!IS_ALIGNED(addr, size)))
> > -                       goto unmap_page;
> > -
> > -               vm->scratch[0].base.page = page;
> > -               vm->scratch[0].base.daddr = addr;
> > -               vm->scratch_order = order;
> > +               poison_scratch_page(obj);
> 
> Since this is now an internal object, which lacks proper clearing, do
> we need to nuke the page(s) somewhere, since it is visible to
> userspace? The posion_scratch seems to only be for debug builds.

Yes. It needs to be cleared [when not poisoned].
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
