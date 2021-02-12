Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1568131A020
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 14:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138106E0FF;
	Fri, 12 Feb 2021 13:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A926E0FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 13:55:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23850190-1500050 for multiple; Fri, 12 Feb 2021 13:55:28 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOtt2x03tZQh1HSYYnKHEqT2+ROa9ShL1M-hdunaT96RQ@mail.gmail.com>
References: <20210212102224.31060-1-chris@chris-wilson.co.uk>
 <20210212102224.31060-2-chris@chris-wilson.co.uk>
 <CAM0jSHOtt2x03tZQh1HSYYnKHEqT2+ROa9ShL1M-hdunaT96RQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 12 Feb 2021 13:55:28 +0000
Message-ID: <161313812829.4581.12177682099047882625@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Introduce guard pages to
 i915_vma
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-02-12 13:43:46)
> On Fri, 12 Feb 2021 at 10:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Introduce the concept of padding the i915_vma with guard pages before
> > and aft. The major consequence is that all ordinary uses of i915_vma
> > must use i915_vma_offset/i915_vma_size and not i915_vma.node.start/size
> > directly, as the drm_mm_node will include the guard pages that surround
> > our object.
> >
> > So in this patch, we look for all uses of i915_vma->node.start that
> > instead need to include the guard offset and switch them to
> > i915_vma_offset(), and in a few cases to i915_ggtt_offset(). Notable
> > exceptions are the selftests, which expect exact behaviour.
> >
> > The biggest connundrum is how exactly to mix request a fixed address
> > with guard pages, particular through the existing uABI. The user does
> > not know about guard pages, so such must be transparent to the user, and
> > so the execobj.offset must be that of the object itself excluding the
> > guard. So a PIN_OFFSET_FIXED must then be exclusive of the guard pages.
> >
> > In the next patch, we start using guard pages for scanout objects. While
> > these are limited to GGTT vma, on a few platforms these vma (or at least
> > an alias of the vma) is shared with userspace, so we may leak the
> > existence of such guards if we are not careful to ensure that the
> > execobj.offset is transparent and excludes the guards. (On such platforms,
> > without full-ppgtt, userspace has to use relocations so the presence of
> > more untouchable regions within its GTT such be of no further issue.)
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c  | 12 ++++++++++--
> >  drivers/gpu/drm/i915/i915_vma.c       | 10 +++++++---
> >  drivers/gpu/drm/i915/i915_vma.h       |  8 ++++----
> >  drivers/gpu/drm/i915/i915_vma_types.h |  3 ++-
> >  4 files changed, 23 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index c5803c434d33..6b326138e765 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -238,8 +238,12 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
> >
> >         gte = (gen8_pte_t __iomem *)ggtt->gsm;
> >         gte += vma->node.start / I915_GTT_PAGE_SIZE;
> > -       end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> >
> > +       end = gte + vma->guard / I915_GTT_PAGE_SIZE;
> > +       while (gte < end)
> > +               gen8_set_pte(gte++, vm->scratch[0]->encode);
> > +
> > +       end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
> >         for_each_sgt_daddr(addr, iter, vma->pages)
> >                 gen8_set_pte(gte++, pte_encode | addr);
> >         GEM_BUG_ON(gte > end);
> > @@ -289,8 +293,12 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
> >
> >         gte = (gen6_pte_t __iomem *)ggtt->gsm;
> >         gte += vma->node.start / I915_GTT_PAGE_SIZE;
> > -       end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> >
> > +       end = gte + vma->guard / I915_GTT_PAGE_SIZE;
> > +       while (gte < end)
> > +               gen8_set_pte(gte++, vm->scratch[0]->encode);
> > +
> > +       end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
> >         for_each_sgt_daddr(addr, iter, vma->pages)
> >                 iowrite32(vm->pte_encode(addr, level, flags), gte++);
> >         GEM_BUG_ON(gte > end);
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 17fe455bd770..155f510b4cc6 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -623,7 +623,7 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
> >  static int
> >  i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> >  {
> > -       unsigned long color;
> > +       unsigned long color, guard;
> >         u64 start, end;
> >         int ret;
> >
> > @@ -631,13 +631,16 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> >         GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
> >
> >         size = max(size, vma->size);
> > -       alignment = max(alignment, vma->display_alignment);
> > +       alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
> >         if (flags & PIN_MAPPABLE) {
> >                 size = max_t(typeof(size), size, vma->fence_size);
> >                 alignment = max_t(typeof(alignment),
> >                                   alignment, vma->fence_alignment);
> >         }
> >
> > +       guard = 0;
> > +       size += 2 * guard;
> > +
> >         GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
> >         GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
> >         GEM_BUG_ON(!is_power_of_2(alignment));
> > @@ -674,7 +677,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> >                         return -EINVAL;
> 
> Should we bother adjusting the overflows checking to account for the
> padding? Also maybe check that offset >= guard?

offset >= guard only for pinned.

And yes, it is sensible that we check we don't overflow with adding a guard.

> 
>         if (flags & PIN_OFFSET_FIXED) {
>                 u64 offset = flags & PIN_OFFSET_MASK;
> +
> +               if (offset < guard)
> +                       return -ENOSPC;
> +
>                 if (!IS_ALIGNED(offset, alignment) ||
> -                   range_overflows(offset, size, end))
> +                   range_overflows(offset, size - 2 * guard, end))
>                         return -EINVAL;
> 
> If the padding spills over the end, maybe it's ok, so long as the
> "real" range doesn't spill over, like if it needs to be placed within
> the mappable range. Otherwise maybe something like
> range_overflows(offset - guard, size - guard, end)?

My thought was that the user has no knowledge of the guard pages, nor
direct access to them [in theory], so they should not be penalised for
their placement, as far as is possible.

That we have to prevent wrap around and so restrict total placement to
[guard, end - guard] unfortunately belies our attempt to be
undetectable.

So the -EINVAL check should be against the full range, but we should
also do

if (offset < guard  || offset > gtt_end - guard)
	return -ENOSPC;


> Also bumping the alignment constraint for the OFFSET_FIXED case does
> seem a little scary? Is it not possible to just add the required
> padding around both ends of the provided offset?

Hmm. We don't need to bump the alignment, we just need to make sure the
guard is a multiple of the alignment (so that start + guard still meets
the alignment constraints).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
