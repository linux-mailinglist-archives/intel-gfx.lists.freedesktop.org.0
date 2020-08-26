Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96842253588
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 18:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0D96E1E0;
	Wed, 26 Aug 2020 16:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16A06E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 16:55:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22247659-1500050 for multiple; Wed, 26 Aug 2020 17:55:10 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNeuARGUXXQHoC5toqvpWFBv3fdpJrWB=R287xfezPYBg@mail.gmail.com>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-2-chris@chris-wilson.co.uk>
 <CAM0jSHNeuARGUXXQHoC5toqvpWFBv3fdpJrWB=R287xfezPYBg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 26 Aug 2020 17:55:09 +0100
Message-ID: <159846090927.19114.5144651094573970068@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915/gem: Use set_pte_at() for
 assigning the vmapped PTE
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

Quoting Matthew Auld (2020-08-26 17:36:52)
> On Wed, 26 Aug 2020 at 14:28, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Use set_pte_at() to assign the PTE pointer returned by alloc_vm_area(),
> > rather than a direct assignment.
> 
> and crucially add the missing sync stuff for the mapping?

Fortunately not for x86.

> > Fixes: 6056e50033d9 ("drm/i915/gem: Support discontiguous lmem object maps")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_pages.c | 33 +++++++++++++++++++----
> >  1 file changed, 28 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > index 51b63e05dbe4..0c3d0d6429ae 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > @@ -241,6 +241,17 @@ static inline pte_t iomap_pte(resource_size_t base,
> >         return pte_mkspecial(pfn_pte((base + offset) >> PAGE_SHIFT, prot));
> >  }
> >
> > +static void sync_vm_area(struct vm_struct *area)
> > +{
> > +       unsigned long start = (unsigned long)area->addr;
> > +       unsigned long end = start + area->size;
> > +
> > +       if (ARCH_PAGE_TABLE_SYNC_MASK & PGTBL_PTE_MODIFIED)
> > +               arch_sync_kernel_mappings(start, end); /* expected DCE */
> 
> What is DCE again?

"Dead code eliminated." arch_sync_kernel_mappings() is not exported, so
if a platform were to require us to call it, we have a problem.

I figured it would be better get a complaint and know the problem
exists, having had the set_pmd() issue bite once.

I expect if the problem does arise, the alloc_vm_area() interface will
be changed to remove set_pte_at() from drivers. Just my guess. It could
just be as simple as removing that pte[] and requiring us to use
apply_to_page_range directly.

> > +
> > +       flush_cache_vmap(start, end);
> > +}
> > +
> >  /* The 'mapping' part of i915_gem_object_pin_map() below */
> >  static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
> >                                  enum i915_map_type type)
> > @@ -308,24 +319,36 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
> >         }
> >
> >         if (i915_gem_object_has_struct_page(obj)) {
> > +               unsigned long addr = (unsigned long)area->addr;
> >                 struct sgt_iter iter;
> >                 struct page *page;
> >                 pte_t **ptes = mem;
> >
> > -               for_each_sgt_page(page, iter, sgt)
> > -                       **ptes++ = mk_pte(page, pgprot);
> > +               for_each_sgt_page(page, iter, sgt) {
> > +                       set_pte_at(&init_mm, addr, *ptes, mk_pte(page, pgprot));
> 
> init_mm needs to be exported?

Odd, because I recall that's why we didn't use it previously... But it
compiles with i915.ko as a module. Hmm, that probably means set_pte_at()
expands to a macro that doesn't use init_mm on x86. Again, that will
cause a problem no doubt somewhere else, where it should be a problem
for whatever reason the mm_struct is required for writing the PTE.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
