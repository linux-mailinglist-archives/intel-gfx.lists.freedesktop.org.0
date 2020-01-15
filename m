Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D039B13BED1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 12:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBA26E92C;
	Wed, 15 Jan 2020 11:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806FD6E92C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 11:46:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19887250-1500050 for multiple; Wed, 15 Jan 2020 11:46:29 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115083346.2601512-2-chris@chris-wilson.co.uk>
 <20200115111007.2602806-1-chris@chris-wilson.co.uk>
 <d4633e2b-3504-95c8-dfd5-21082247d84b@linux.intel.com>
In-Reply-To: <d4633e2b-3504-95c8-dfd5-21082247d84b@linux.intel.com>
Message-ID: <157908878740.12549.12668646167438953690@skylake-alporthouse-com>
Date: Wed, 15 Jan 2020 11:46:27 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Allow temporary suspension
 of inflight requests
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

Quoting Tvrtko Ursulin (2020-01-15 11:37:23)
> 
> On 15/01/2020 11:10, Chris Wilson wrote:
> > In order to support out-of-line error capture, we need to remove the
> > active request from HW and put it to one side while a worker compresses
> > and stores all the details associated with that request. (As that
> > compression may take an arbitrary user-controlled amount of time, we
> > want to let the engine continue running on other workloads while the
> > hanging request is dumped.) Not only do we need to remove the active
> > request, but we also have to remove its context and all requests that
> > were dependent on it (both in flight, queued and future submission).
> > 
> > Finally once the capture is complete, we need to be able to resubmit the
> > request and its dependents and allow them to execute.
> > 
> > v2: Replace stack recursion with a simple list.
> > v3: Check all the parents, not just the first, when searching for a
> > stuck ancestor!
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/738
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   1 +
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 +
> >   drivers/gpu/drm/i915/gt/intel_lrc.c          | 160 ++++++++++++++++++-
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c       | 103 ++++++++++++
> >   drivers/gpu/drm/i915/i915_request.h          |  22 +++
> >   5 files changed, 283 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index f451ef376548..c296aaf381e7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -671,6 +671,7 @@ void
> >   intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
> >   {
> >       INIT_LIST_HEAD(&engine->active.requests);
> > +     INIT_LIST_HEAD(&engine->active.hold);
> >   
> >       spin_lock_init(&engine->active.lock);
> >       lockdep_set_subclass(&engine->active.lock, subclass);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 00287515e7af..77e68c7643de 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -295,6 +295,7 @@ struct intel_engine_cs {
> >       struct {
> >               spinlock_t lock;
> >               struct list_head requests;
> > +             struct list_head hold; /* ready requests, but on hold */
> >       } active;
> >   
> >       struct llist_head barrier_tasks;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index f0cbd240a8c2..05a05ceeac6a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2353,6 +2353,146 @@ static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
> >       }
> >   }
> >   
> > +static void __execlists_hold(struct i915_request *rq)
> > +{
> > +     LIST_HEAD(list);
> > +
> > +     do {
> > +             struct i915_dependency *p;
> > +
> > +             if (i915_request_is_active(rq))
> > +                     __i915_request_unsubmit(rq);
> > +
> > +             RQ_TRACE(rq, "on hold\n");
> > +             clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > +             list_move_tail(&rq->sched.link, &rq->engine->active.hold);
> > +             i915_request_set_hold(rq);
> > +
> > +             list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> > +                     struct i915_request *w =
> > +                             container_of(p->waiter, typeof(*w), sched);
> > +
> > +                     /* Leave semaphores spinning on the other engines */
> > +                     if (w->engine != rq->engine)
> > +                             continue;
> > +
> > +                     if (list_empty(&w->sched.link))
> > +                             continue; /* Not yet submitted */
> > +
> > +                     if (i915_request_completed(w))
> > +                             continue;
> > +
> > +                     if (i915_request_has_hold(rq))
> > +                             continue;
> > +
> > +                     list_move_tail(&w->sched.link, &list);
> > +             }
> > +
> > +             rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> > +     } while (rq);
> > +}
> > +
> > +__maybe_unused
> > +static void execlists_hold(struct intel_engine_cs *engine,
> > +                        struct i915_request *rq)
> > +{
> > +     spin_lock_irq(&engine->active.lock);
> > +
> > +     /*
> > +      * Transfer this request onto the hold queue to prevent it
> > +      * being resumbitted to HW (and potentially completed) before we have
> > +      * released it. Since we may have already submitted following
> > +      * requests, we need to remove those as well.
> > +      */
> > +     GEM_BUG_ON(i915_request_completed(rq));
> > +     GEM_BUG_ON(i915_request_has_hold(rq));
> > +     GEM_BUG_ON(rq->engine != engine);
> > +     __execlists_hold(rq);
> > +
> > +     spin_unlock_irq(&engine->active.lock);
> > +}
> > +
> > +static bool hold_request(const struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     /*
> > +      * If one of our ancestors is on hold, we must also be on hold,
> > +      * otherwise we will bypass it and execute before it.
> > +      */
> > +     list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
> > +             const struct i915_request *s =
> > +                     container_of(p->signaler, typeof(*s), sched);
> > +
> > +             if (s->engine != rq->engine)
> > +                     continue;
> > +
> > +             if (i915_request_has_hold(s))
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> > +static void __execlists_unhold(struct i915_request *rq)
> > +{
> > +     LIST_HEAD(list);
> > +
> > +     do {
> > +             struct i915_dependency *p;
> > +
> > +             GEM_BUG_ON(!i915_request_has_hold(rq));
> > +             GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
> > +
> > +             i915_request_clear_hold(rq);
> > +             list_move_tail(&rq->sched.link,
> > +                            i915_sched_lookup_priolist(rq->engine,
> > +                                                       rq_prio(rq)));
> > +             set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > +             RQ_TRACE(rq, "hold release\n");
> > +
> > +             /* Also release any children on this engine that are ready */
> > +             list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> > +                     struct i915_request *w =
> > +                             container_of(p->waiter, typeof(*w), sched);
> > +
> > +                     if (w->engine != rq->engine)
> > +                             continue;
> > +
> > +                     if (!i915_request_has_hold(rq))
> > +                             continue;
> > +
> > +                     /* Check that no other parents are on hold */
> > +                     if (hold_request(rq))
> > +                             continue;
> 
> I had a question on this check. How can it be other parents on the same 
> engine on hold if there can be one engine reset at a time?

We hold onto the request for capture past the reset. So there could be
multiple capture workers in flight, if we have a flurry of clients
each triggering a GPU hang.

> Oh and also I was thinking would i915_request_has_hold be better called 
> i915_request_is_held? Or is_on_hold?

i915_request_on_hold() has been popping into my held as I read it. Fits
with the on_priority_queue() and I might do a i915_request_is_ready()
{ return !list_empty()) }. (I am formulating a plan to
s/active.requests/active.run/ and
s/i915_request_is_active/i915_request_on_runlist/)

Then is_active() could be return !list_empty().
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
