Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C521B5C5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 15:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E16B6E053;
	Fri, 10 Jul 2020 13:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1006E053
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 13:04:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21777726-1500050 for multiple; Fri, 10 Jul 2020 14:04:03 +0100
MIME-Version: 1.0
In-Reply-To: <dc33c66e-a557-cc3f-5355-4085c76ac3fd@linux.intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-33-matthew.auld@intel.com>
 <dc33c66e-a557-cc3f-5355-4085c76ac3fd@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 14:04:00 +0100
Message-ID: <159438624062.23667.1825504801298339805@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 32/60] drm/i915/lmem: support pread
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

Quoting Tvrtko Ursulin (2020-07-10 13:39:32)
> 
> On 10/07/2020 12:57, Matthew Auld wrote:
> > We need to add support for pread'ing an LMEM object.
> > 
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_lmem.c      | 112 ++++++++++++++++++
> >   drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |   6 +
> >   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +
> >   drivers/gpu/drm/i915/i915_gem.c               |   6 +
> >   4 files changed, 126 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > index 932ee21e6609..9142ba299aa1 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > @@ -8,6 +8,92 @@
> >   #include "gem/i915_gem_lmem.h"
> >   #include "i915_drv.h"
> >   
> > +static int lmem_pread(struct drm_i915_gem_object *obj,
> > +                   const struct drm_i915_gem_pread *arg)
> > +{
> > +     struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > +     struct intel_runtime_pm *rpm = &i915->runtime_pm;
> > +     intel_wakeref_t wakeref;
> > +     struct dma_fence *fence;
> > +     char __user *user_data;
> > +     unsigned int offset;
> > +     unsigned long idx;
> > +     u64 remain;
> > +     int ret;
> > +
> > +     ret = i915_gem_object_wait(obj,
> > +                                I915_WAIT_INTERRUPTIBLE,
> > +                                MAX_SCHEDULE_TIMEOUT);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = i915_gem_object_pin_pages(obj);
> > +     if (ret)
> > +             return ret;
> > +
> > +     i915_gem_object_lock(obj);
> > +     ret = i915_gem_object_set_to_wc_domain(obj, false);
> > +     if (ret) {
> > +             i915_gem_object_unlock(obj);
> > +             goto out_unpin;
> > +     }
> > +
> > +     fence = i915_gem_object_lock_fence(obj);
> > +     i915_gem_object_unlock(obj);
> > +     if (!fence) {
> > +             ret = -ENOMEM;
> > +             goto out_unpin;
> > +     }
> > +
> > +     wakeref = intel_runtime_pm_get(rpm);
> > +
> > +     remain = arg->size;
> > +     user_data = u64_to_user_ptr(arg->data_ptr);
> > +     offset = offset_in_page(arg->offset);
> > +     for (idx = arg->offset >> PAGE_SHIFT; remain; idx++) {
> > +             unsigned long unwritten;
> > +             void __iomem *vaddr;
> > +             int length;
> > +
> > +             length = remain;
> > +             if (offset + length > PAGE_SIZE)
> > +                     length = PAGE_SIZE - offset;
> > +
> > +             vaddr = i915_gem_object_lmem_io_map_page_atomic(obj, idx);
> > +             if (!vaddr) {
> > +                     ret = -ENOMEM;
> > +                     goto out_put;
> > +             }
> > +             unwritten = __copy_to_user_inatomic(user_data,
> > +                                                 (void __force *)vaddr + offset,
> > +                                                 length);
> > +             io_mapping_unmap_atomic(vaddr);
> > +             if (unwritten) {
> > +                     vaddr = i915_gem_object_lmem_io_map_page(obj, idx);
> > +                     unwritten = copy_to_user(user_data,
> > +                                              (void __force *)vaddr + offset,
> > +                                              length);
> > +                     io_mapping_unmap(vaddr);
> > +             }
> > +             if (unwritten) {
> > +                     ret = -EFAULT;
> > +                     goto out_put;
> > +             }
> > +
> > +             remain -= length;
> > +             user_data += length;
> > +             offset = 0;
> > +     }
> > +
> > +out_put:
> > +     intel_runtime_pm_put(rpm, wakeref);
> > +     i915_gem_object_unlock_fence(obj, fence);
> > +out_unpin:
> > +     i915_gem_object_unpin_pages(obj);
> > +
> > +     return ret;
> > +}
> > +
> >   const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
> >       .name = "i915_gem_object_lmem",
> >       .flags = I915_GEM_OBJECT_HAS_IOMEM,
> > @@ -15,8 +101,34 @@ const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
> >       .get_pages = i915_gem_object_get_pages_buddy,
> >       .put_pages = i915_gem_object_put_pages_buddy,
> >       .release = i915_gem_object_release_memory_region,
> > +
> > +     .pread = lmem_pread,
> >   };
> >   
> > +void __iomem *
> > +i915_gem_object_lmem_io_map_page(struct drm_i915_gem_object *obj,
> > +                              unsigned long n)
> > +{
> > +     resource_size_t offset;
> > +
> > +     offset = i915_gem_object_get_dma_address(obj, n);
> > +     offset -= obj->mm.region->region.start;
> > +
> > +     return io_mapping_map_wc(&obj->mm.region->iomap, offset, PAGE_SIZE);
> > +}
> > +
> > +void __iomem *
> > +i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
> > +                                     unsigned long n)
> > +{
> > +     resource_size_t offset;
> > +
> > +     offset = i915_gem_object_get_dma_address(obj, n);
> > +     offset -= obj->mm.region->region.start;
> > +
> > +     return io_mapping_map_atomic_wc(&obj->mm.region->iomap, offset);
> > +}
> > +
> >   bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
> >   {
> >       return obj->ops == &i915_gem_lmem_obj_ops;
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> > index fc3f15580fe3..a24d94bc380f 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> > @@ -14,6 +14,12 @@ struct intel_memory_region;
> >   
> >   extern const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops;
> >   
> > +void __iomem *i915_gem_object_lmem_io_map_page(struct drm_i915_gem_object *obj,
> > +                                            unsigned long n);
> > +void __iomem *
> > +i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
> > +                                     unsigned long n);
> > +
> >   bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
> >   
> >   struct drm_i915_gem_object *
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > index 5335f799b548..b37ae7b32f53 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > @@ -56,6 +56,8 @@ struct drm_i915_gem_object_ops {
> >       void (*truncate)(struct drm_i915_gem_object *obj);
> >       void (*writeback)(struct drm_i915_gem_object *obj);
> >   
> > +     int (*pread)(struct drm_i915_gem_object *,
> > +                  const struct drm_i915_gem_pread *arg);
> >       int (*pwrite)(struct drm_i915_gem_object *obj,
> >                     const struct drm_i915_gem_pwrite *arg);
> >   
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > index 9aa3066cb75d..1805b5e6bc30 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -519,6 +519,12 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
> >   
> >       trace_i915_gem_object_pread(obj, args->offset, args->size);
> >   
> > +     ret = -ENODEV;
> > +     if (obj->ops->pread)
> > +             ret = obj->ops->pread(obj, args);
> > +     if (ret != -ENODEV)
> > +             goto out;
> > +
> >       ret = i915_gem_object_wait(obj,
> >                                  I915_WAIT_INTERRUPTIBLE,
> >                                  MAX_SCHEDULE_TIMEOUT);
> > 
> 
> It would be really nice to consolidate the redundant 
> wait/lock/pin/domain management between smem and lmem paths (new vfunc 
> vs the existing code). Maybe pull out all the common operations and to 
> the rest wholly via vfuncs?
> 
> Or maybe bits of Maarten's "drm/i915: Remove locking from 
> i915_gem_object_prepare_read/write" could be used here, not sure without 
> a deeper look. Just wanting to pencil this area for rework hopefully 
> before the merge.

The sketch was to go fully vfunc, but with the vfuncs on the backing
store not the GEM object itself. I have a plan for a simple but universal
handler that complies with ww_mutex semantics (not being allowed to hold
anything across the copy_(to|from)_user is painful, if only we already
knew how to handle that, sigh), but it will be slow and heavy. That
should allow for the default handler in all cases, with special casing
for shmemfs backing store and the like if we know we can do lighter
fastpaths. Same applies for all the other direct access, since we need
to isolate those from migration (and I think we should do them all in
situ without initiating migration implicitly.).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
