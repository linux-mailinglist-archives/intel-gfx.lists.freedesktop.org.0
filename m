Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FBE31C301
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 21:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DED26E092;
	Mon, 15 Feb 2021 20:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8941F6E092
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 20:29:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23875728-1500050 for multiple; Mon, 15 Feb 2021 20:29:34 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNH-5WW4xn5xbPxVCgivd7bEHAVRGwVNNV+n7gN275txA@mail.gmail.com>
References: <20210215155616.26330-1-chris@chris-wilson.co.uk>
 <20210215155616.26330-2-chris@chris-wilson.co.uk>
 <CAM0jSHMk3ZX5wuqd0om+uD8caqaRcwa=eGfCojEvir5BXxvu8Q@mail.gmail.com>
 <161341294863.27357.9488104532739982982@build.alporthouse.com>
 <CAM0jSHNH-5WW4xn5xbPxVCgivd7bEHAVRGwVNNV+n7gN275txA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 15 Feb 2021 20:29:33 +0000
Message-ID: <161342097331.27357.10928471823635452702@build.alporthouse.com>
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

Quoting Matthew Auld (2021-02-15 19:31:39)
> On Mon, 15 Feb 2021 at 18:15, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Matthew Auld (2021-02-15 18:04:08)
> > > On Mon, 15 Feb 2021 at 15:56, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > >
> > > > Introduce the concept of padding the i915_vma with guard pages before
> > > > and aft. The major consequence is that all ordinary uses of i915_vma
> > > > must use i915_vma_offset/i915_vma_size and not i915_vma.node.start/size
> > > > directly, as the drm_mm_node will include the guard pages that surround
> > > > our object.
> > > >
> > > > The biggest connundrum is how exactly to mix requesting a fixed address
> > > > with guard pages, particularly through the existing uABI. The user does
> > > > not know about guard pages, so such must be transparent to the user, and
> > > > so the execobj.offset must be that of the object itself excluding the
> > > > guard. So a PIN_OFFSET_FIXED must then be exclusive of the guard pages.
> > > > The caveat is that some placements will be impossible with guard pages,
> > > > as wrap arounds need to be avoided, and the vma itself will require a
> > > > larger node. We must we not report EINVAL but ENOSPC as these are
> > > > unavailable locations within the GTT rather than conflicting user
> > > > requirements.
> > > >
> > > > In the next patch, we start using guard pages for scanout objects. While
> > > > these are limited to GGTT vma, on a few platforms these vma (or at least
> > > > an alias of the vma) is shared with userspace, so we may leak the
> > > > existence of such guards if we are not careful to ensure that the
> > > > execobj.offset is transparent and excludes the guards. (On such platforms
> > > > like ivb, without full-ppgtt, userspace has to use relocations so the
> > > > presence of more untouchable regions within its GTT such be of no further
> > > > issue.)
> > > >
> > > > v2: Include the guard range in the overflow checks and placement
> > > > restrictions.
> > > >
> > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c  | 12 ++++++++++--
> > > >  drivers/gpu/drm/i915/i915_vma.c       | 28 ++++++++++++++++++++++-----
> > > >  drivers/gpu/drm/i915/i915_vma.h       |  5 +++--
> > > >  drivers/gpu/drm/i915/i915_vma_types.h |  3 ++-
> > > >  4 files changed, 38 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > index c5803c434d33..6b326138e765 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > @@ -238,8 +238,12 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
> > > >
> > > >         gte = (gen8_pte_t __iomem *)ggtt->gsm;
> > > >         gte += vma->node.start / I915_GTT_PAGE_SIZE;
> > > > -       end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> > > >
> > > > +       end = gte + vma->guard / I915_GTT_PAGE_SIZE;
> > > > +       while (gte < end)
> > > > +               gen8_set_pte(gte++, vm->scratch[0]->encode);
> > > > +
> > > > +       end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
> > > >         for_each_sgt_daddr(addr, iter, vma->pages)
> > > >                 gen8_set_pte(gte++, pte_encode | addr);
> > > >         GEM_BUG_ON(gte > end);
> > > > @@ -289,8 +293,12 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
> > > >
> > > >         gte = (gen6_pte_t __iomem *)ggtt->gsm;
> > > >         gte += vma->node.start / I915_GTT_PAGE_SIZE;
> > > > -       end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> > > >
> > > > +       end = gte + vma->guard / I915_GTT_PAGE_SIZE;
> > > > +       while (gte < end)
> > > > +               gen8_set_pte(gte++, vm->scratch[0]->encode);
> > > > +
> > > > +       end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
> > > >         for_each_sgt_daddr(addr, iter, vma->pages)
> > > >                 iowrite32(vm->pte_encode(addr, level, flags), gte++);
> > > >         GEM_BUG_ON(gte > end);
> > > > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > > > index 748f5ea1ba04..31d0f8b64ec0 100644
> > > > --- a/drivers/gpu/drm/i915/i915_vma.c
> > > > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > > > @@ -623,7 +623,7 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
> > > >  static int
> > > >  i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > > >  {
> > > > -       unsigned long color;
> > > > +       unsigned long color, guard;
> > > >         u64 start, end;
> > > >         int ret;
> > > >
> > > > @@ -631,7 +631,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > > >         GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
> > > >
> > > >         size = max(size, vma->size);
> > > > -       alignment = max(alignment, vma->display_alignment);
> > > > +       alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
> > > >         if (flags & PIN_MAPPABLE) {
> > > >                 size = max_t(typeof(size), size, vma->fence_size);
> > > >                 alignment = max_t(typeof(alignment),
> > > > @@ -642,6 +642,9 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > > >         GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
> > > >         GEM_BUG_ON(!is_power_of_2(alignment));
> > > >
> > > > +       guard = vma->guard; /* retain guard across rebinds */
> > > > +       guard = ALIGN(guard, alignment);
> > > > +
> > > >         start = flags & PIN_OFFSET_BIAS ? flags & PIN_OFFSET_MASK : 0;
> > > >         GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
> > > >
> > > > @@ -651,12 +654,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > > >         if (flags & PIN_ZONE_4G)
> > > >                 end = min_t(u64, end, (1ULL << 32) - I915_GTT_PAGE_SIZE);
> > > >         GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
> > > > +       GEM_BUG_ON(2 * guard > end);
> > > >
> > > >         /* If binding the object/GGTT view requires more space than the entire
> > > >          * aperture has, reject it early before evicting everything in a vain
> > > >          * attempt to find space.
> > > >          */
> > > > -       if (size > end) {
> > > > +       if (size > end - 2 * guard) {
> > > >                 DRM_DEBUG("Attempting to bind an object larger than the aperture: request=%llu > %s aperture=%llu\n",
> > > >                           size, flags & PIN_MAPPABLE ? "mappable" : "total",
> > > >                           end);
> > > > @@ -669,16 +673,29 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > > >
> > > >         if (flags & PIN_OFFSET_FIXED) {
> > > >                 u64 offset = flags & PIN_OFFSET_MASK;
> > > > +
> > > >                 if (!IS_ALIGNED(offset, alignment) ||
> > > >                     range_overflows(offset, size, end))
> > > >                         return -EINVAL;
> > > >
> > > > +               /*
> > > > +                * The caller knows not of the guard added by others and
> > > > +                * requests for the offset of the start of its buffer
> > > > +                * to be fixed, which may not be the same as the position
> > > > +                * of the vma->node due to the guard pages.
> > > > +                */
> > > > +               if (offset < guard || offset > end - size - 2 * guard)
> > >
> > > (offset < guard || offset + size > end - guard)?
> >
> > Padding is afterwards as well as before; so total size grows by 2 *
> > guard. And since VT-d says that the overfetch wraps past the end of the
> > GTT to the front, we can't simply shrink the node if it abuts the end.
> >
> > So I'm confident the right check is end - size - 2*guard, and since we
> > already check that 2*guard is less than end, and size is less than end
> > minus the 2*guard, overflows have been caught.
> 
> I thought here the range [offset, offset + size] sits in between both
> sides of the padding.

Yes.

> The offset < guard checks the left side,

Yes.

> and so
> offset > end - size - guard will check the right side,

D'oh. You're right. Since the user offset is itself node.start + guard.

> but I didn't
> see a check for size > guard anywhere, hence the above.

size here is still the user size, which is independent of the guard, so
at this point there's no interaction between size and guard, we just
need to check the offset + size + guard is within range.

We have checked that end - size - 2*guard does not overflow, so we also
know that end - size - guard will not overflow. But as we have checked
for overflows already, we can use whatever construction looks more
natural.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
