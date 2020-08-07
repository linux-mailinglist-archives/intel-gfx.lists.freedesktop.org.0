Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AD323ED84
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 14:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AED76E0F2;
	Fri,  7 Aug 2020 12:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3BD6E0F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 12:45:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22061040-1500050 for multiple; Fri, 07 Aug 2020 13:45:14 +0100
MIME-Version: 1.0
In-Reply-To: <7566ff71-bb34-6c77-2d82-8b2c8ab18e7c@linux.intel.com>
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-7-chris@chris-wilson.co.uk>
 <7566ff71-bb34-6c77-2d82-8b2c8ab18e7c@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 13:45:13 +0100
Message-ID: <159680431305.9674.11790479708511618256@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Free stale request on
 destroying the virtual engine
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

Quoting Tvrtko Ursulin (2020-08-07 13:08:07)
> 
> On 07/08/2020 09:32, Chris Wilson wrote:
> > Since preempt-to-busy, we may unsubmit a request while it is still on
> > the HW and completes asynchronously. That means it may be retired and in
> > the process destroy the virtual engine (as the user has closed their
> > context), but that engine may still be holding onto the unsubmitted
> > compelted request. Therefore we need to potentially cleanup the old
> > request on destroying the virtual engine. We also have to keep the
> > virtual_engine alive until after the sibling's execlists_dequeue() have
> > finished peeking into the virtual engines, for which we serialise with
> > RCU.
> > 
> > v2: Be paranoid and flush the tasklet as well.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 50 ++++++++++++++++++++++++-----
> >   1 file changed, 42 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 0c632f15f677..87528393276c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -182,6 +182,7 @@
> >   struct virtual_engine {
> >       struct intel_engine_cs base;
> >       struct intel_context context;
> > +     struct rcu_work rcu;
> >   
> >       /*
> >        * We allow only a single request through the virtual engine at a time
> > @@ -5387,33 +5388,47 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
> >       return &ve->base.execlists.default_priolist.requests[0];
> >   }
> >   
> > -static void virtual_context_destroy(struct kref *kref)
> > +static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >   {
> >       struct virtual_engine *ve =
> > -             container_of(kref, typeof(*ve), context.ref);
> > +             container_of(wrk, typeof(*ve), rcu.work);
> >       unsigned int n;
> >   
> > -     GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> > -     GEM_BUG_ON(ve->request);
> >       GEM_BUG_ON(ve->context.inflight);
> >   
> > +     if (unlikely(ve->request)) {
> > +             struct i915_request *old;
> > +
> > +             spin_lock_irq(&ve->base.active.lock);
> > +
> > +             old = fetch_and_zero(&ve->request);
> > +             if (old) {
> > +                     GEM_BUG_ON(!i915_request_completed(old));
> > +                     __i915_request_submit(old);
> > +                     i915_request_put(old);
> > +             }
> > +
> > +             spin_unlock_irq(&ve->base.active.lock);
> > +     }
> > +
> >       for (n = 0; n < ve->num_siblings; n++) {
> >               struct intel_engine_cs *sibling = ve->siblings[n];
> >               struct rb_node *node = &ve->nodes[sibling->id].rb;
> > -             unsigned long flags;
> >   
> >               if (RB_EMPTY_NODE(node))
> >                       continue;
> >   
> > -             spin_lock_irqsave(&sibling->active.lock, flags);
> > +             spin_lock_irq(&sibling->active.lock);
> >   
> >               /* Detachment is lazily performed in the execlists tasklet */
> >               if (!RB_EMPTY_NODE(node))
> >                       rb_erase_cached(node, &sibling->execlists.virtual);
> >   
> > -             spin_unlock_irqrestore(&sibling->active.lock, flags);
> > +             spin_unlock_irq(&sibling->active.lock);
> >       }
> > -     GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
> 
> Hm why remove this assert? I understood the point of doing this via rcu 
> is to guarantee tasklet would be finished, if it was queued or in progress.

We don't hold the rcu read lock across the virtual_submission_tasklet.

So consider the case were the virtual_engine is freed by retiring the
last request, but that request is in the middle of being resubmitted and
at that time it is not completed so we invoke the tasklet. Before the
tasklet can complete, the retire (and retire again of the barrier) drops
the last reference to the virtual engine held by the context-pin, and
since nothing is holding an rcu_read_lock() the grace period quickly
quiesces and we enter the rcu_work on another cpu -- while the tasklet
is still running.

The first thing we do is remove the request, we know it is complete. But
that request may already be being captured by a sibling -- no problem,
the reference is transferred. And so after decoupling from the siblings,
we ensure that the tasklet is flushed...

No, that's also bad.

We need to flush the tasklet before decoupling as the tasklet may add
ourselves to the sibling after we remove the rb_node.

Then once we know that we've freed the request, stopped the tasklet
accessing us and removed ourselves from the sibling access, we can be
sure that there will be no more.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
