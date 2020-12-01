Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C771F2CAF18
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 22:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5AA6E92A;
	Tue,  1 Dec 2020 21:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199DD6E92A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 21:47:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23182404-1500050 for multiple; Tue, 01 Dec 2020 21:47:51 +0000
MIME-Version: 1.0
In-Reply-To: <bdac1115-e71c-b014-f33a-9fa81d277f31@intel.com>
References: <20201130130843.44334-1-matthew.auld@intel.com>
 <160674232973.8815.8625041556670650754@build.alporthouse.com>
 <bdac1115-e71c-b014-f33a-9fa81d277f31@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 01 Dec 2020 21:47:50 +0000
Message-ID: <160685927071.21230.15834967407229209174@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: Limit block size to 4G
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-12-01 16:35:53)
> On 30/11/2020 13:18, Chris Wilson wrote:
> > Quoting Matthew Auld (2020-11-30 13:08:43)
> >> From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> >>
> >> Block sizes are only limited by the largest power-of-two that will fit
> >> in the region size, but to construct an object we also require feeding
> >> it into an sg list, where the upper limit of the sg entry is at most
> >> UINT_MAX. Therefore to prevent issues with allocating blocks that are
> >> too large, add the flag I915_ALLOC_MAX_SEGMENT_SIZE which should limit
> >> block sizes to the i915_sg_segment_size().
> >>
> >> v2: (matt)
> >>    - query the max segment.
> >>    - prefer flag to limit block size to 4G, since it's best not to assume
> >>      the user will feed the blocks into an sg list.
> >>    - simple selftest so we don't have to guess.
> >>
> >> Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> >> Cc: Matthew Auld <matthew.auld@intel.com>
> >> Cc: CQ Tang <cq.tang@intel.com>
> >> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> >> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gem/i915_gem_region.c    |  2 +-
> >>   drivers/gpu/drm/i915/intel_memory_region.c    | 16 +++++-
> >>   drivers/gpu/drm/i915/intel_memory_region.h    |  5 +-
> >>   .../drm/i915/selftests/intel_memory_region.c  | 50 +++++++++++++++++++
> >>   4 files changed, 69 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> >> index 1515384d7e0e..e72d78074c9e 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> >> @@ -42,7 +42,7 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
> >>                  return -ENOMEM;
> >>          }
> >>   
> >> -       flags = I915_ALLOC_MIN_PAGE_SIZE;
> >> +       flags = I915_ALLOC_MIN_PAGE_SIZE | I915_ALLOC_MAX_SEGMENT_SIZE;
> >>          if (obj->flags & I915_BO_ALLOC_CONTIGUOUS)
> >>                  flags |= I915_ALLOC_CONTIGUOUS;
> >>   
> >> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> >> index b326993a1026..8a376f1b5b3b 100644
> >> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> >> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> >> @@ -72,6 +72,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
> >>                                        struct list_head *blocks)
> >>   {
> >>          unsigned int min_order = 0;
> >> +       unsigned int max_order;
> >>          unsigned long n_pages;
> >>   
> >>          GEM_BUG_ON(!IS_ALIGNED(size, mem->mm.chunk_size));
> >> @@ -92,13 +93,26 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
> >>   
> >>          n_pages = size >> ilog2(mem->mm.chunk_size);
> >>   
> >> +       /*
> >> +        * If we going to feed this into an sg list we should limit the block
> >> +        * sizes such that we don't exceed the i915_sg_segment_size().
> >> +        */
> >> +       if (flags & I915_ALLOC_MAX_SEGMENT_SIZE) {
> >> +               unsigned int max_segment = i915_sg_segment_size();
> >> +
> >> +               GEM_BUG_ON(max_segment < mem->mm.chunk_size);
> > 
> > iirc, the swiotlb segment size can be adjusted by user parameter.
> > [Don't ask if swiotlb is compatible with lmem, I suspect not ;]
> > 
> > I think err on the side of safety, just in case the user does find a way
> > to adjust the parameter,
> > 
> > if (GEM_WARN_ON(max_segment < mem->mm.chunk_size))
> >       max_order = 0;
> > else
> >       max_order = ilog2(max_segment) - ilog2(mem->mm.chunk_size);
> 
> I think I made a big mess here :|
> 
> Thoughts on just making this max_segment = UINT_MAX, or perhaps dropping 
> the flag and just hiding these details in the sg construction phase, 
> where we just split the blocks down into i915_sg_segment_size() sg 
> chunks, if required. Otherwise we start seeing explosions with some 
> large contiguous object.

Oh, I missed the conflict between I915_ALLOC_CONTIGUOUS and
I915_ALLOC_MAX_SEGMENT_SIZE. Bad reviewer.

The latter (split sg construction) is what we do elsewhere in case we get
a huge contiguous chunk.

The appeal of splitting the buddies is that it's done once at the start.

Conversely splitting sg constructions mean we do it once at the end.
But it means we have to conservatively allocate the sgtable and trim.
More work, but less passing flags to forewarn the allocator about the
user.

The fixup would be something like:

        if (flags & I915_ALLOC_MAX_SEGMENT_SIZE) {
                unsigned int max_segment = i915_sg_segment_size();

                if (GEM_WARN_ON(max_segment < mem->mm.chunk_size))
                        max_order = 0;
                else
                        max_order = ilog2(max_segment) - ilog2(mem->mm.chunk_size);

                min_order = min(min_order, max_order);
	}

And at that point we clearly may still allocate more than max_segment,
and less than the desired contiguous size.

The only way to meet both I915_ALLOC_CONTIGUOUS and
i915_sg_segment_size() is to split at the sg constuction.

Unless you do intend for I915_ALLOC_CONTIGUOUS to only return a single
element in the scatterlist? In which case we need to return an error if
I915_ALLOC_CONTIGUOUS exceeds I915_ALLOC_MAX_SEGMENT_SIZE.

The positive news is that we successfully tested the test suite.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
