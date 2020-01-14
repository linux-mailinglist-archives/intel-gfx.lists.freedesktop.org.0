Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE18613B270
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 19:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD7D89568;
	Tue, 14 Jan 2020 18:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387EB89568
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 18:57:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19880007-1500050 for multiple; Tue, 14 Jan 2020 18:57:20 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
 <20200113104442.1753973-3-chris@chris-wilson.co.uk>
 <40d5588a-9c47-495b-a7d2-b8adacc50ef2@linux.intel.com>
In-Reply-To: <40d5588a-9c47-495b-a7d2-b8adacc50ef2@linux.intel.com>
Message-ID: <157902823691.5559.7542458052744881431@skylake-alporthouse-com>
Date: Tue, 14 Jan 2020 18:57:16 +0000
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Allow temporary suspension
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

Quoting Tvrtko Ursulin (2020-01-14 18:33:07)
> 
> On 13/01/2020 10:44, Chris Wilson wrote:
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
> > References: https://gitlab.freedesktop.org/drm/intel/issues/738
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   1 +
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 +
> >   drivers/gpu/drm/i915/gt/intel_lrc.c          | 109 ++++++++++++++++++-
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c       | 103 ++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_request.h          |  22 ++++
> >   5 files changed, 231 insertions(+), 5 deletions(-)
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
> > index 00287515e7af..6f4f9912a364 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -295,6 +295,7 @@ struct intel_engine_cs {
> >       struct {
> >               spinlock_t lock;
> >               struct list_head requests;
> > +             struct list_head hold;
> >       } active;
> >   
> >       struct llist_head barrier_tasks;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 685659f079a2..e0347e05e577 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2355,6 +2355,77 @@ static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
> >       }
> >   }
> >   
> > +static void __execlists_hold(struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     if (!i915_request_completed(rq)) {
> > +             RQ_TRACE(rq, "on hold\n");
> > +             if (i915_request_is_active(rq))
> > +                     __i915_request_unsubmit(rq);
> > +             clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > +             list_move_tail(&rq->sched.link, &rq->engine->active.hold);
> > +             i915_request_set_hold(rq);
> > +     }
> > +
> > +     list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> > +             struct i915_request *w =
> > +                     container_of(p->waiter, typeof(*w), sched);
> > +
> > +             /* Leave semaphores spinning on the other engines */
> > +             if (w->engine != rq->engine)
> > +                     continue;
> > +
> > +             __execlists_hold(w);
> 
> Seems like easy stack overflow attach due recursion.

Beh, not that easy with 8k stack and a context limit, and finite ring
sizes. We can definitely reduce the stack to a local list_head, just
need to think carefully about list ordering. (We can use the dfs_link as
we can't take the spinlock. One day, we'll find a way to avoid the
global dfs_lock. Just not today.)

> 
> > +     }
> > +}
> > +
> > +__maybe_unused
> > +static void execlists_hold(struct intel_engine_cs *engine,
> > +                        struct i915_request *rq)
> > +{
> > +     spin_lock_irq(&engine->active.lock);
> > +     __execlists_hold(rq);
> 
> Can this get called with rq->engine != engine?

Not intentionally.

> > +     spin_unlock_irq(&engine->active.lock);
> > +}
> > +
> > +static void __execlists_unhold(struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     if (!i915_request_has_hold(rq))
> > +             return;
> > +
> > +     i915_request_clear_hold(rq);
> > +     list_move_tail(&rq->sched.link,
> > +                    i915_sched_lookup_priolist(rq->engine, rq_prio(rq)));
> > +     set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > +     RQ_TRACE(rq, "hold release\n");
> > +
> > +     list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> > +             struct i915_request *w =
> > +                     container_of(p->waiter, typeof(*w), sched);
> > +
> > +             if (w->engine != rq->engine)
> > +                     continue;
> > +
> > +             __execlists_unhold(w);
> > +     }
> > +}
> > +
> > +__maybe_unused
> > +static void execlists_unhold(struct intel_engine_cs *engine,
> > +                          struct i915_request *rq)
> > +{
> > +     spin_lock_irq(&engine->active.lock);
> > +     __execlists_unhold(rq);
> > +     if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> > +             engine->execlists.queue_priority_hint = rq_prio(rq);
> > +             tasklet_hi_schedule(&engine->execlists.tasklet);
> > +     }
> > +     spin_unlock_irq(&engine->active.lock);
> > +}
> > +
> >   static noinline void preempt_reset(struct intel_engine_cs *engine)
> >   {
> >       const unsigned int bit = I915_RESET_ENGINE + engine->id;
> > @@ -2466,6 +2537,29 @@ static void submit_queue(struct intel_engine_cs *engine,
> >       __submit_queue_imm(engine);
> >   }
> >   
> > +static bool hold_request(const struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
> > +             const struct i915_request *s =
> > +                     container_of(p->signaler, typeof(*s), sched);
> > +
> > +             if (s->engine != rq->engine)
> > +                     continue;
> > +
> > +             return i915_request_has_hold(s);
> > +     }
> > +
> > +     return false;
> > +}
> 
> I am not sure what question this function is answering. Needs a comment 
> or a better name I think.

if (hold_request(rq))

/* Do we want to hold this request? */

Seems redundant. If you want a better verb, suggest one, but not
suspend.

> > +
> > +static bool on_hold(const struct intel_engine_cs *engine,
> > +                 const struct i915_request *rq)
> > +{
> > +     return !list_empty(&engine->active.hold) && hold_request(rq);
> 
> When is engine != rq->engine?

Since we already have engine = rq->engine in a local and this is just a
descriptive helper predicate.

> Secondly, first part of the conditional seems to be asking whether this 
> engine has any requests on hold. Second part whether a particular rq has 
> a dependency on hold, on the same engine as rq->engine. Needs to be 
> explained with a comment.

Really, seems to be self-explanatory. Not much more one can say that
isn't said by the code.

/* Are we holding any requests? Are we holding this request? */
> 
> Is the first check just an optimisation?

No small optimisation, but just an optimisation.

> > +}
> > +
> >   static void execlists_submit_request(struct i915_request *request)
> >   {
> >       struct intel_engine_cs *engine = request->engine;
> > @@ -2474,13 +2568,18 @@ static void execlists_submit_request(struct i915_request *request)
> >       /* Will be called from irq-context when using foreign fences. */
> >       spin_lock_irqsave(&engine->active.lock, flags);
> >   
> > -     queue_request(engine, &request->sched, rq_prio(request));
> > -     set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> > +     if (unlikely(on_hold(engine, request))) {
> > +             i915_request_set_hold(request);
> > +             list_add_tail(&request->sched.link, &engine->active.hold);
> 
> Or explained here.
> 
> But in general this part is for when new dependencies of a held request 
> become runnable?

Yes. Seemed pretty clear :-p
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
