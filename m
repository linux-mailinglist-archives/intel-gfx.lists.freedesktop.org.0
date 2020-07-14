Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E9521F5BB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F66E6E993;
	Tue, 14 Jul 2020 15:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E84A6E993
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:05:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21816852-1500050 for multiple; Tue, 14 Jul 2020 16:05:46 +0100
MIME-Version: 1.0
In-Reply-To: <e93eba0c-59ad-5071-9fcd-e5f482cdf752@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-13-chris@chris-wilson.co.uk>
 <e93eba0c-59ad-5071-9fcd-e5f482cdf752@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 16:05:44 +0100
Message-ID: <159473914497.28702.10527563816597904776@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 12/20] drm/i915/gem: Asynchronous GTT
 unbinding
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-14 10:02:35)
> 
> On 06/07/2020 07:19, Chris Wilson wrote:
> > It is reasonably common for userspace (even modern drivers like iris) to
> > reuse an active address for a new buffer. This would cause the
> > application to stall under its mutex (originally struct_mutex) until the
> > old batches were idle and it could synchronously remove the stale PTE.
> > However, we can queue up a job that waits on the signal for the old
> > nodes to complete and upon those signals, remove the old nodes replacing
> > them with the new ones for the batch. This is still CPU driven, but in
> > theory we can do the GTT patching from the GPU. The job itself has a
> > completion signal allowing the execbuf to wait upon the rebinding, and
> > also other observers to coordinate with the common VM activity.
> > 
> > Letting userspace queue up more work, lets it do more stuff without
> > blocking other clients. In turn, we take care not to let it too much
> > concurrent work, creating a small number of queues for each context to
> > limit the number of concurrent tasks.
> 
> This is a monster patch.. what is the end result here? If there are a 
> few conflicts they can go async, but if more than "concurrency width" 
> need evict then it will be synchronous?

No, if userspace gets far ahead of the binder, the tasks join the queue,
and userspace continues on to complete the submission [without blocking,
for as much as is possible, the waits I have not yet killed should only
be hit if userspace exhausts the entire GTT for itself]. The throttling
for userspace is indeeded to be on acquiring the timeline->mutex and
checking for sufficient ring space, so right at the very start where we
have the O_NONBLOCK check.

> Could you do without this patch for the first implementation? Or come up 
> with ideas to split it up and so make understanding and review manageable?

Challenging. The task is to hold vm->mutex for all the i915_vma_pin(),
which entails breaking i915_vma_pin() into its steps [those before /
during / after vm->mutex]

The intention is really to use the lessons learnt here to generalise it
again.

> > +static int best_hole(struct drm_mm *mm, struct drm_mm_node *node,
> > +                  u64 start, u64 end, u64 align)
> > +{
> > +     struct drm_mm_node *hole;
> > +     u64 size = node->size;
> > +
> > +     do {
> > +             hole = __best_hole(mm, size);
> > +             if (!hole)
> > +                     return -ENOSPC;
> > +
> > +             node->start = round_up(max(start, drm_mm_hole_node_start(hole)),
> > +                                    align);
> > +             if (min(drm_mm_hole_node_end(hole), end) >=
> > +                 node->start + node->size)
> > +                     return drm_mm_reserve_node(mm, node);
> > +
> > +             /*
> > +              * Too expensive to search for every single hole every time,
> > +              * so just look for the next bigger hole, introducing enough
> > +              * space for alignments. Finding the smallest hole with ideal
> > +              * alignment scales very poorly, so we choose to waste space
> > +              * if an alignment is forced. On the other hand, simply
> > +              * randomly selecting an offset in 48b space will cause us
> > +              * to use the majority of that space and exhaust all memory
> > +              * in storing the page directories. Compromise is required.
> > +              */
> > +             size = hole->hole_size + align;
> > +     } while (1);
> > +}
> 
> evict_for_* and all above, feels like it is too much for 
> i915_gem_execbuffer.c. How about that goes to i915_gem_evict.c? Apart 
> from it depending on eb_vm_work..

Right. It's also a question of whether this should work as a part of the
vm (gt/intel_gtt*) or as part of the user rules above that (gem/foo*)
At the moment, execbuf should be the *only* place that cares about
multiple PIN_USER and the risk of eviction interlocks.

> Best hole at least operates solely on drm_mm so should go out, 
> presumably in preparation for moving into drm core.

Yikes. The algorithm is very wasteful and doesn't do a good job of
picking a good candidate, I wouldn't suggest this is suitable for wide
use. It's just less bad than randomly picking (and so spreading evenly)
over 48b. There was an attempt to do a fast drm_mm alignment search, but
has not yet yielded something we can use. So for the time being a hack
to avoid the O(N^2).

> Hm, i915_gem_eb_vm.c for most of the rest?

It's currently 25% of i915_gem_execbuffer.c, ~1000 / 3750 lines, for the
entire chunk of eb_reserve_vm. About 500 for the search/evict/bind code
itself. A sizeable chunk, just not sure where it really belongs. I do
agree that it doesn't really belong here, in one huge file.

> > +static void eb_vma_work_release(struct dma_fence_work *base)
> > +{
> > +     struct eb_vm_work *work = container_of(base, typeof(*work), base);
> > +
> > +     __eb_bind_vma(work);
> 
> Looks like on some early cancels this can try to cleanup things which 
> haven't been set up yet, like the dereference of work->bind[n]. I don't 
> see any protection against that.

work->count = 0, then work->count = as_far_as_is_valid.
 
> Maybe it would be enough if work->count was set after the work has been 
> set up.

Right :-p

> Why is a callback called eb_vma_work_release doing doing the binds 
> anyway? I'd expect release to clean up, not do the work.

Because we have committed the changes in place to i915_vma and have no
rollback. So if we cancel in the middle of those, the work so far must
be committed.

It's because

static void fence_work(struct work_struct *work)
{
        struct dma_fence_work *f = container_of(work, typeof(*f), work);

        if (!f->dma.error) {
                int err;

                err = f->ops->work(f);
                if (err)
                        dma_fence_set_error(&f->dma, err);
        }

        fence_complete(f);
        dma_fence_put(&f->dma);
}

so if we always call f->ops->work(), then the eb release can be sane,
but I need to check the other users. I haven't made my mind up whether
calling f->ops->work() when already in error is a good convention or not.

> > +static int wait_for_unbinds(struct i915_execbuffer *eb,
> > +                         struct list_head *unbound,
> > +                         int pass)
> > +{
> > +     struct eb_vma *ev;
> > +     int err;
> > +
> > +     list_for_each_entry(ev, unbound, unbound_link) {
> > +             struct i915_vma *vma = ev->vma;
> > +
> > +             GEM_BUG_ON(ev->flags & __EXEC_OBJECT_HAS_PIN);
> > +
> > +             if (drm_mm_node_allocated(&vma->node) &&
> > +                 eb_vma_misplaced(ev->exec, vma, ev->flags)) {
> > +                     err = i915_vma_unbind(vma);
> > +                     if (err)
> > +                             return err;
> > +             }
> > +
> > +             /* Wait for previous to avoid reusing vma->node */
> > +             err = i915_vma_wait_for_unbind(vma);
> 
> This waits on vma->active, presumably the current execbuf hasn't added 
> anything to it so far..

This is after the current execbuf has released everything it added, so
the wait here will either be for its own incomplete error work, or for
someone else.

> 
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     switch (pass) {
> > +     default:
> > +             return -ENOSPC;
> > +
> > +     case 2:
> > +             /*
> > +              * Too fragmented, retire everything on the timeline and so
> > +              * make it all [contexts included] available to evict.
> > +              */
> > +             err = wait_for_timeline(eb->context->timeline);
> > +             if (err)
> > +                     return err;
> > +
> > +             fallthrough;
> > +     case 1:
> > +             /* XXX ticket lock */
> > +             if (i915_active_wait(&eb->context->vm->binding))
> 
> .. and this waits on itself? Or?

For contemporary execbuf with inflight binders. If we fall off the
greedy path where we aim to reuse our resident working set and only
that set, we need to coordinate with everyone else also trying to use
the vm so that we allocate the entire thing for ourselves should we need
to. There's a thundering herd problem here in that we may never quiesce
a shared vm to claim it all for us. Same old risks, and we can't do an
extended hold of vm->mutex unless we are able to avoid all allocations
after that point. And that's quite tricky.

> > +             /* No allocations allowed beyond this point */
> > +             if (mutex_lock_interruptible(&vm->mutex))
> > +                     return eb_vm_work_cancel(work, -EINTR);
> > +
> > +             err = eb_vm_throttle(work);
> 
> The effect is installing an async await on the current binding work, 
> with the signaler being what is currently in vm->binding. This could be 
> another execbuf from the same client?

Yes, it's keyed on the GEM context.async_id, so will only be queued
behind execbufs from the same context. Of course, it will accumulate
waits for the actual vma, which may be across clients, as well.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
