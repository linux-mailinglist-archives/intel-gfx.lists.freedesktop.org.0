Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F49229952
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 15:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0496E81B;
	Wed, 22 Jul 2020 13:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE946E81B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 13:42:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21896366-1500050 for multiple; Wed, 22 Jul 2020 14:42:47 +0100
MIME-Version: 1.0
In-Reply-To: <59af1fe0-9aaa-6ac7-02ba-b1e573f9ad40@linux.intel.com>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-8-chris@chris-wilson.co.uk>
 <59af1fe0-9aaa-6ac7-02ba-b1e573f9ad40@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jul 2020 14:42:46 +0100
Message-ID: <159542536697.15672.4338593343801068657@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/gt: Track signaled
 breadcrumbs outside of the breadcrumb spinlock
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

Quoting Tvrtko Ursulin (2020-07-22 14:26:36)
> 
> On 20/07/2020 10:23, Chris Wilson wrote:
> > Make b->signaled_requests a lockless-list so that we can manipulate it
> > outside of the b->irq_lock.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 42 +++++++++----------
> >   .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  2 +-
> >   drivers/gpu/drm/i915/i915_request.h           |  6 ++-
> >   3 files changed, 26 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > index 59e8cd505569..2b3ad17c63b9 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > @@ -175,32 +175,23 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
> >               intel_engine_add_retire(b->irq_engine, tl);
> >   }
> >   
> > -static bool __signal_request(struct i915_request *rq, struct list_head *signals)
> > -{
> > -     clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> > -
> > -     if (!__dma_fence_signal(&rq->fence))
> > -             return false;
> > -
> > -     list_add_tail(&rq->signal_link, signals);
> > -     return true;
> > -}
> > -
> >   static void signal_irq_work(struct irq_work *work)
> >   {
> >       struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
> >       const ktime_t timestamp = ktime_get();
> > +     struct llist_node *signal, *sn;
> >       struct intel_context *ce, *cn;
> >       struct list_head *pos, *next;
> > -     LIST_HEAD(signal);
> > +
> > +     signal = NULL;
> > +     if (!llist_empty(&b->signaled_requests))
> > +             signal = llist_del_all(&b->signaled_requests);
> 
> Uncoditional llist_del_all? It's not likely list will be empty and if it 
> is llist_del_all will return NULL.

Nah, this is likely to be empty, since this will only be filled after we
resubmit an already completed request. So the conditional is cheaper
than the locked xchg.

> >       spin_lock(&b->irq_lock);
> >   
> > -     if (b->irq_armed && list_empty(&b->signalers))
> > +     if (!signal && b->irq_armed && list_empty(&b->signalers))
> 
> Why !signal check in here? Couldn't figure out what changed to make this 
> needed.

Because we invoke signal_irq_work() after adding to
b->signaled_requests, I thought it was sensible to attempt keep the
interrupt shadow in place until after the following interrupt.
[Sadly we need to avoid the frequent enable/disable of the interrupts,
they are expensive enough to perform that it shows up in throughput
measurement. The question has become our _user_ interrupts now cheap
enough to always enable? The problem with snb dying under an interrupt
storm has been fixed, afaict we no longer burn through an entire core
handling interrupts when the GPU is busy.]

> >               __intel_breadcrumbs_disarm_irq(b);
> >   
> > -     list_splice_init(&b->signaled_requests, &signal);
> > -
> >       list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
> >               GEM_BUG_ON(list_empty(&ce->signals));
> >   
> > @@ -217,8 +208,13 @@ static void signal_irq_work(struct irq_work *work)
> >                        * spinlock as the callback chain may end up adding
> >                        * more signalers to the same context or engine.
> >                        */
> > -                     if (!__signal_request(rq, &signal))
> > +                     clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> > +                     if (__dma_fence_signal(&rq->fence)) {
> > +                             rq->signal_node.next = signal;
> > +                             signal = &rq->signal_node;
> 
> Okay it creates a bit of a differently ordered list like this but I 
> think it doesn't matter.

Right. We change the order in which we signal, but I reasoned that we
are already signaling in a loose order as dma_fence_signal() is called
from many, many different paths without a care to timeline order.

Signaling the most recent first may improve latency in some cases, and
since the latency will be smaller for the most recent request that will
be a relatively large improvement vs the increase in latency for
handling the older request after the most recent. This is pure
speculation, I haven't measured the effect.

> > diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> > index 16b721080195..874af6db6103 100644
> > --- a/drivers/gpu/drm/i915/i915_request.h
> > +++ b/drivers/gpu/drm/i915/i915_request.h
> > @@ -176,7 +176,11 @@ struct i915_request {
> >       struct intel_context *context;
> >       struct intel_ring *ring;
> >       struct intel_timeline __rcu *timeline;
> > -     struct list_head signal_link;
> > +
> > +     union {
> > +             struct list_head signal_link;
> > +             struct llist_node signal_node;
> 
> Transition is only from signal_link to signal_node, which uses and 
> initializes only one field, so I think potential garbage in other ones 
> is safe.

Yup, the signal_link was used to being garbage after signaling :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
