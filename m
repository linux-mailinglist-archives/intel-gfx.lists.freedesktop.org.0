Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EC723D959
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 12:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8A36E8B3;
	Thu,  6 Aug 2020 10:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEBD6E8B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 10:44:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22048841-1500050 for multiple; Thu, 06 Aug 2020 11:44:36 +0100
MIME-Version: 1.0
In-Reply-To: <9d313c82-2ee4-6edf-d734-79aac95a7697@linux.intel.com>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-4-chris@chris-wilson.co.uk>
 <9d313c82-2ee4-6edf-d734-79aac95a7697@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 06 Aug 2020 11:44:34 +0100
Message-ID: <159671067437.25811.13757214547754055778@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 03/37] drm/i915/gt: Free stale request on
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

Quoting Tvrtko Ursulin (2020-08-05 16:05:28)
> 
> On 05/08/2020 13:21, Chris Wilson wrote:
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
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 22 +++++++++++++++++++---
> >   1 file changed, 19 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 417f6b0c6c61..cb04bc5474be 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -180,6 +180,7 @@
> >   #define EXECLISTS_REQUEST_SIZE 64 /* bytes */
> >   
> >   struct virtual_engine {
> > +     struct rcu_head rcu;
> >       struct intel_engine_cs base;
> >       struct intel_context context;
> >   
> > @@ -5393,10 +5394,25 @@ static void virtual_context_destroy(struct kref *kref)
> >               container_of(kref, typeof(*ve), context.ref);
> >       unsigned int n;
> >   
> > -     GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> > -     GEM_BUG_ON(ve->request);
> >       GEM_BUG_ON(ve->context.inflight);
> >   
> > +     if (unlikely(ve->request)) {
> > +             struct i915_request *old;
> > +             unsigned long flags;
> > +
> > +             spin_lock_irqsave(&ve->base.active.lock, flags);
> > +
> > +             old = fetch_and_zero(&ve->request);
> > +             if (old) {
> > +                     GEM_BUG_ON(!i915_request_completed(old));
> > +                     __i915_request_submit(old);
> > +                     i915_request_put(old);
> > +             }
> > +
> > +             spin_unlock_irqrestore(&ve->base.active.lock, flags);
> > +     }
> > +     GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> > +
> >       for (n = 0; n < ve->num_siblings; n++) {
> >               struct intel_engine_cs *sibling = ve->siblings[n];
> >               struct rb_node *node = &ve->nodes[sibling->id].rb;
> > @@ -5422,7 +5438,7 @@ static void virtual_context_destroy(struct kref *kref)
> >       intel_engine_free_request_pool(&ve->base);
> >   
> >       kfree(ve->bonds);
> > -     kfree(ve);
> > +     kfree_rcu(ve, rcu);
> >   }
> >   
> >   static void virtual_engine_initial_hint(struct virtual_engine *ve)
> > 
> 
> If it would go without the previous patch I think it would simply mean a 
> normal kfree here. In both cases it looks okay to me.

Ah, this rcu predates the other by an untold number of months :)

I'm trying to remember why I thought there was a danger here that the
zombie could be accessed as we destroyed the veng. There's definitely
something precarious with the context unpin being called from retire,
while the stale request is being resubmitted and the final reference
being dropped (with preemption jumping between).

So after that thought, the rcu here is just paper, the final step
required after removing the request, decoupling the virtual engines, is
flushing the tasklet. The problem though is that intel_context_put()
is iirc called from some nasty contexts. An rcu_work is quite tempting,
we have rcu read locks around most of the accessors baring a concurrent
tasklet [hopefully not missing anything], so it's just that tasklet
flush requiring process context during destroy.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
