Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3595121F60C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428D26E3A4;
	Tue, 14 Jul 2020 15:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079E46E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:21:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21817059-1500050 for multiple; Tue, 14 Jul 2020 16:21:31 +0100
MIME-Version: 1.0
In-Reply-To: <3bfd8979-5207-82cf-867d-70f18f33c58b@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-14-chris@chris-wilson.co.uk>
 <3bfd8979-5207-82cf-867d-70f18f33c58b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 16:21:29 +0100
Message-ID: <159474008967.28702.3882585057748567490@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915/gem: Bind the fence async
 for execbuf
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

Quoting Tvrtko Ursulin (2020-07-14 13:19:22)
> 
> On 06/07/2020 07:19, Chris Wilson wrote:
> > It is illegal to wait on an another vma while holding the vm->mutex, as
> > that easily leads to ABBA deadlocks (we wait on a second vma that waits
> > on us to release the vm->mutex). So while the vm->mutex exists, move the
> > waiting outside of the lock into the async binding pipeline.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  21 +--
> >   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  | 137 +++++++++++++++++-
> >   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h  |   5 +
> >   3 files changed, 151 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 6a406e8798ef..c14c3b7e0dfd 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1056,15 +1056,6 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
> >               return err;
> >   
> >   pin:
> > -     if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
> > -             err = __i915_vma_pin_fence(vma); /* XXX no waiting */
> > -             if (unlikely(err))
> > -                     return err;
> > -
> > -             if (vma->fence)
> > -                     bind->ev->flags |= __EXEC_OBJECT_HAS_FENCE;
> > -     }
> > -
> >       bind_flags &= ~atomic_read(&vma->flags);
> >       if (bind_flags) {
> >               err = set_bind_fence(vma, work);
> > @@ -1095,6 +1086,15 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
> >       bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
> >       GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
> >   
> > +     if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
> > +             err = __i915_vma_pin_fence_async(vma, &work->base);
> > +             if (unlikely(err))
> > +                     return err;
> > +
> > +             if (vma->fence)
> > +                     bind->ev->flags |= __EXEC_OBJECT_HAS_FENCE;
> > +     }
> > +
> >       return 0;
> >   }
> >   
> > @@ -1160,6 +1160,9 @@ static void __eb_bind_vma(struct eb_vm_work *work)
> >               struct eb_bind_vma *bind = &work->bind[n];
> >               struct i915_vma *vma = bind->ev->vma;
> >   
> > +             if (bind->ev->flags & __EXEC_OBJECT_HAS_FENCE)
> > +                     __i915_vma_apply_fence_async(vma);
> > +
> >               if (!bind->bind_flags)
> >                       goto put;
> >   
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > index 7fb36b12fe7a..734b6aa61809 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > @@ -21,10 +21,13 @@
> >    * IN THE SOFTWARE.
> >    */
> >   
> > +#include "i915_active.h"
> >   #include "i915_drv.h"
> >   #include "i915_scatterlist.h"
> > +#include "i915_sw_fence_work.h"
> >   #include "i915_pvinfo.h"
> >   #include "i915_vgpu.h"
> > +#include "i915_vma.h"
> >   
> >   /**
> >    * DOC: fence register handling
> > @@ -340,19 +343,37 @@ static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
> >       return ERR_PTR(-EDEADLK);
> >   }
> >   
> > +static int fence_wait_bind(struct i915_fence_reg *reg)
> > +{
> > +     struct dma_fence *fence;
> > +     int err = 0;
> > +
> > +     fence = i915_active_fence_get(&reg->active.excl);
> > +     if (fence) {
> > +             err = dma_fence_wait(fence, true);
> > +             dma_fence_put(fence);
> > +     }
> > +
> > +     return err;
> > +}
> > +
> >   int __i915_vma_pin_fence(struct i915_vma *vma)
> >   {
> >       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
> > -     struct i915_fence_reg *fence;
> > +     struct i915_fence_reg *fence = vma->fence;
> >       struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
> >       int err;
> >   
> >       lockdep_assert_held(&vma->vm->mutex);
> >   
> >       /* Just update our place in the LRU if our fence is getting reused. */
> > -     if (vma->fence) {
> > -             fence = vma->fence;
> > +     if (fence) {
> >               GEM_BUG_ON(fence->vma != vma);
> > +
> > +             err = fence_wait_bind(fence);
> > +             if (err)
> > +                     return err;
> > +
> >               atomic_inc(&fence->pin_count);
> >               if (!fence->dirty) {
> >                       list_move_tail(&fence->link, &ggtt->fence_list);
> > @@ -384,6 +405,116 @@ int __i915_vma_pin_fence(struct i915_vma *vma)
> >       return err;
> >   }
> >   
> > +static int set_bind_fence(struct i915_fence_reg *fence,
> > +                       struct dma_fence_work *work)
> > +{
> > +     struct dma_fence *prev;
> > +     int err;
> > +
> > +     if (rcu_access_pointer(fence->active.excl.fence) == &work->dma)
> > +             return 0;
> 
> What is this checking for?

Paranoia to avoid waiting upon ourselves. Should be possible to declare
it a GEM_BUG_ON.

> > +     err = i915_sw_fence_await_active(&work->chain,
> > +                                      &fence->active,
> > +                                      I915_ACTIVE_AWAIT_ACTIVE);
> > +     if (err)
> > +             return err;
> > +
> > +     if (i915_active_acquire(&fence->active))
> > +             return -ENOENT;
> > +
> > +     prev = i915_active_set_exclusive(&fence->active, &work->dma);
> > +     if (unlikely(prev)) {
> > +             err = i915_sw_fence_await_dma_fence(&work->chain, prev, 0,
> > +                                                 GFP_NOWAIT | __GFP_NOWARN);
> 
> This is a potential allocation under vm->mutex.

Aye, and it is not allowed to shrink because we hold vm->mutex.
It's the biggest problem with trying to build up a job with many
dependencies, where each vma may need to evict multiple others and have
a number of awaits.

> > +             dma_fence_put(prev);
> > +     }
> > +
> > +     i915_active_release(&fence->active);
> > +     return err < 0 ? err : 0;
> > +}
> > +
> > +int __i915_vma_pin_fence_async(struct i915_vma *vma,
> > +                            struct dma_fence_work *work)
> > +{
> > +     struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
> > +     struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
> > +     struct i915_fence_reg *fence = vma->fence;
> > +     int err;
> > +
> > +     lockdep_assert_held(&vma->vm->mutex);
> > +
> > +     /* Just update our place in the LRU if our fence is getting reused. */
> > +     if (fence) {
> > +             GEM_BUG_ON(fence->vma != vma);
> > +             GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
> > +     } else if (set) {
> > +             if (!i915_vma_is_map_and_fenceable(vma))
> > +                     return -EINVAL;
> > +
> > +             fence = fence_find(ggtt);
> > +             if (IS_ERR(fence))
> > +                     return -ENOSPC;
> > +
> > +             GEM_BUG_ON(atomic_read(&fence->pin_count));
> > +             fence->dirty = true;
> > +     } else {
> > +             return 0;
> > +     }
> > +
> > +     atomic_inc(&fence->pin_count);
> > +     list_move_tail(&fence->link, &ggtt->fence_list);
> > +     if (!fence->dirty)
> > +             return 0;
> > +
> > +     if (INTEL_GEN(fence_to_i915(fence)) < 4 &&
> > +         rcu_access_pointer(vma->active.excl.fence) != &work->dma) {
> 
> This second part is the same check as in set_bind_fence.

The await for implicit unfenced blits? That's subtly different.
 
> Should it go to a helper with a self-descriptive name and then this 
> function would gate both the gen > 4 check and the set_bind_fence call 
> under it?
> 
> > +             /* implicit 'unfenced' GPU blits */
> > +             err = i915_sw_fence_await_active(&work->chain,
> > +                                              &vma->active,
> > +                                              I915_ACTIVE_AWAIT_ACTIVE);
> > +             if (err)
> > +                     goto err_unpin;
> > +     }
> > +
> > +     err = set_bind_fence(fence, work);
> > +     if (err)
> > +             goto err_unpin;
> > +
> > +     if (set) {
> > +             fence->start = vma->node.start;
> > +             fence->size  = vma->fence_size;
> > +             fence->stride = i915_gem_object_get_stride(vma->obj);
> > +             fence->tiling = i915_gem_object_get_tiling(vma->obj);
> > +
> > +             vma->fence = fence;
> > +     } else {
> > +             fence->tiling = 0;
> > +             vma->fence = NULL;
> > +     }
> > +
> > +     set = xchg(&fence->vma, set);
> > +     if (set && set != vma) {
> > +             GEM_BUG_ON(set->fence != fence);
> > +             WRITE_ONCE(set->fence, NULL);
> > +             i915_vma_revoke_mmap(set);
> > +     }
> > +
> > +     return 0;
> > +
> > +err_unpin:
> > +     atomic_dec(&fence->pin_count);
> > +     return err;
> > +}
> > +
> > +void __i915_vma_apply_fence_async(struct i915_vma *vma)
> > +{
> > +     struct i915_fence_reg *fence = vma->fence;
> > +
> > +     if (fence->dirty)
> > +             fence_write(fence);
> 
> What is async in here?

This executes the async work. The first function was pin_fence_async, so
this was apply_fence_async because that looked symmetrical.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
