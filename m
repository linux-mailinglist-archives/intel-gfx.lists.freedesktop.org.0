Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7E72F816C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 18:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CE06E459;
	Fri, 15 Jan 2021 17:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2356E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 17:01:54 +0000 (UTC)
IronPort-SDR: 1E9k+AWBkvv014PDLP1tJIRQU4RlCwGCRU0dAAiK9mncf45ZPQCEIGjKdEiYeBByxGu+grc5Sd
 7f34+cwPCdqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="157756146"
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="157756146"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 09:01:39 -0800
IronPort-SDR: 8hlDk8YjZsR76GFHh36Q+7TV0NpuGyqW3F5KtHrHePA2f523yk9cLAMzpZwDcL8nkHME2IBPaf
 44u1CPTxHBpw==
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="425372036"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 09:01:38 -0800
Date: Fri, 15 Jan 2021 19:01:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210115170134.GA790707@ideak-desk.fi.intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <20210114201314.783648-3-imre.deak@intel.com>
 <161065943192.19482.15482952281257910023@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161065943192.19482.15482952281257910023@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH v7 2/3] drm/i915/gem: Add a helper to read
 data from a GEM object page
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 09:23:51PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2021-01-14 20:13:13)
> > Add a simple helper to read data with the CPU from the page of a GEM
> > object. Do the read either via a kmap if the object has struct pages
> > or an iomap otherwise. This is needed by the next patch, reading a u64
> > value from the object (w/o requiring the obj to be mapped to the GPU).
> > 
> > Suggested by Chris.
> > 
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c | 75 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 +
> >  2 files changed, 77 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > index 00d24000b5e8..010f8d735e40 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > @@ -32,6 +32,7 @@
> >  #include "i915_gem_mman.h"
> >  #include "i915_gem_object.h"
> >  #include "i915_globals.h"
> > +#include "i915_memcpy.h"
> >  #include "i915_trace.h"
> >  
> >  static struct i915_global_object {
> > @@ -383,6 +384,80 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
> >         }
> >  }
> >  
> > +static void
> > +i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
> [noted later about parameter order + types]
> 
> > +{
> > +       const void *src_map;
> > +       const void *src_ptr;
> > +
> > +       src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
> > +
> > +       src_ptr = src_map + offset_in_page(offset);
> > +       if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
> > +               drm_clflush_virt_range((void *)src_ptr, size);
> > +       memcpy(dst, src_ptr, size);
> > +
> > +       kunmap_atomic((void *)src_map);
> 
> Live without marking the src pointers as const*.

Ok.

> > +}
> > +
> > +static void
> > +i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
> > +{
> > +       const void __iomem *src_map;
> > +       const void __iomem *src_ptr;
> > +
> > +       src_map = io_mapping_map_wc(&obj->mm.region->iomap,
> > +                                   i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT),
> > +                                   PAGE_SIZE);
> > +
> > +       src_ptr = src_map + offset_in_page(offset);
> > +       if (!i915_memcpy_from_wc(dst, src_ptr, size))
> > +               memcpy(dst, src_ptr, size);
> 
> Sparse will complain about the mixed __iomem/regular pointers. So you
> might as well use memcpy_from_io() here.

Ok.

> Unfortunately memcpy_from_wc needs explicit casting.

Ok.

> A task for rainy day is massaging i915_memcpy_from_wc() to be sparse
> clean for iomem.
> 
> > +
> > +       io_mapping_unmap((void __iomem *)src_map);
> > +}
> > +
> > +/**
> > + * i915_gem_object_read_from_page - read data from the page of a GEM object
> > + * @obj: GEM object to read from
> > + * @offset: offset within the object
> > + * @size: size to read
> > + * @dst: buffer to store the read data
> > + *
> > + * Reads data from @obj after syncing against any pending GPU writes on it.
> > + * The requested region to read from can't cross a page boundary.
> > + *
> > + * Returns 0 on sucess, negative error code on failre.
> > + */
> > +int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, unsigned long offset, size_t size, void *dst)
> 
> offset -> u64

Ok.

> size_t size? meh, it must only be an int

Yes, used int but forgot to change it here.

> We use the convention of 
> read_from_page(obj, offset_into_obj,
> 	       dst, length_of_read_into_dst)
> for parameter ordering.

Ok.

> > +{
> > +       int ret;
> > +
> > +       WARN_ON(offset + size > obj->base.size ||
> > +               offset_in_page(offset) + size > PAGE_SIZE);
> 
> This is only from internal users, so GEM_BUG_ON() (or you would use
> if(GEM_WARN_ON) return -EINVAL).
> 
> GEM_BUG_ON(offset > obj->base.size);
> GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
> (since size is a multiple of pages)

Ok, will use GEM_BUG_ON().

> > +
> > +       i915_gem_object_lock(obj, NULL);
> > +
> > +       ret = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
> > +       if (ret)
> > +               goto unlock;
> 
> Is there an absolute requirement for this read to be serialised against
> everything?

No, especially not for the only current user that has it already synced.
I thought that syncing against any write makes always sense, but I
suppose the user may want instead something more fine-grained.

> If not, let the caller decide if they need some sort of flush/wait
> before reading, and the lock can be removed.
> 
> In any case, always prefer interruptible waits and if there's a callpath
> that absolutely must not be interruptible, pass that information along
> the arguments.

Atm it's only used from atomic_commit_tail() which can't fail, hence
went for uninterruptible. But I'll remove the lock.

> 
> > +       ret = i915_gem_object_pin_pages(obj);
> 
> So at present one would not need to lock the object for the pages.
> And then we would not need to hold the lock across the read as we hold
> the pages.

Ok, so will remove all of lock/wait/pin and leave instead only a
GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));

> 
> > +       if (ret)
> > +               goto unlock;
> > +
> > +       if (i915_gem_object_has_struct_page(obj))
> > +               i915_gem_object_read_from_page_kmap(obj, offset, size, dst);
> > +       else
> else if (i915_gem_object_is_iomem(obj))
> > +               i915_gem_object_read_from_page_iomap(obj, offset, size, dst);
> else
> 	ret = -ENODEV;

Ok.

> But on the whole, this works and is agnostic enough to handle current HW.

Thanks for the review.

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
