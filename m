Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDFC1D7D43
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 17:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BDC89E01;
	Mon, 18 May 2020 15:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36CF89E01
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 15:48:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21231882-1500050 for multiple; Mon, 18 May 2020 16:48:16 +0100
MIME-Version: 1.0
In-Reply-To: <158981641568.7442.12836609150291014605@build.alporthouse.com>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-7-chris@chris-wilson.co.uk>
 <adfc123c-7ae4-5d27-cd01-b3d050e3a25b@linux.intel.com>
 <158980685142.17769.13828694630708094538@build.alporthouse.com>
 <3878c571-9353-67f7-b979-9d03209fa8c4@linux.intel.com>
 <158981641568.7442.12836609150291014605@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158981689559.7442.9374907088507796058@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 16:48:15 +0100
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Decouple inflight virtual
 engines
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

Quoting Chris Wilson (2020-05-18 16:40:15)
> Quoting Tvrtko Ursulin (2020-05-18 15:55:46)
> > 
> > On 18/05/2020 14:00, Chris Wilson wrote:
> > > Quoting Tvrtko Ursulin (2020-05-18 13:53:29)
> > >>
> > >> On 18/05/2020 09:14, Chris Wilson wrote:
> > >>> Once a virtual engine has been bound to a sibling, it will remain bound
> > >>> until we finally schedule out the last active request. We can not rebind
> > >>> the context to a new sibling while it is inflight as the context save
> > >>> will conflict, hence we wait. As we cannot then use any other sibliing
> > >>> while the context is inflight, only kick the bound sibling while it
> > >>> inflight and upon scheduling out the kick the rest (so that we can swap
> > >>> engines on timeslicing if the previously bound engine becomes
> > >>> oversubscribed).
> > >>>
> > >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 30 +++++++++++++----------------
> > >>>    1 file changed, 13 insertions(+), 17 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >>> index 7a5ac3375225..fe8f3518d6b8 100644
> > >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >>> @@ -1398,9 +1398,8 @@ execlists_schedule_in(struct i915_request *rq, int idx)
> > >>>    static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
> > >>>    {
> > >>>        struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
> > >>> -     struct i915_request *next = READ_ONCE(ve->request);
> > >>>    
> > >>> -     if (next == rq || (next && next->execution_mask & ~rq->execution_mask))
> > >>> +     if (READ_ONCE(ve->request))
> > >>>                tasklet_hi_schedule(&ve->base.execlists.tasklet);
> > >>>    }
> > >>>    
> > >>> @@ -1821,18 +1820,14 @@ first_virtual_engine(struct intel_engine_cs *engine)
> > >>>                        rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> > >>>                struct i915_request *rq = READ_ONCE(ve->request);
> > >>>    
> > >>> -             if (!rq) { /* lazily cleanup after another engine handled rq */
> > >>> +             /* lazily cleanup after another engine handled rq */
> > >>> +             if (!rq || !virtual_matches(ve, rq, engine)) {
> > >>>                        rb_erase_cached(rb, &el->virtual);
> > >>>                        RB_CLEAR_NODE(rb);
> > >>>                        rb = rb_first_cached(&el->virtual);
> > >>>                        continue;
> > >>>                }
> > >>>    
> > >>> -             if (!virtual_matches(ve, rq, engine)) {
> > >>> -                     rb = rb_next(rb);
> > >>> -                     continue;
> > >>> -             }
> > >>> -
> > >>>                return ve;
> > >>>        }
> > >>>    
> > >>> @@ -5478,7 +5473,6 @@ static void virtual_submission_tasklet(unsigned long data)
> > >>>        if (unlikely(!mask))
> > >>>                return;
> > >>>    
> > >>> -     local_irq_disable();
> > >>>        for (n = 0; n < ve->num_siblings; n++) {
> > >>>                struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
> > >>>                struct ve_node * const node = &ve->nodes[sibling->id];
> > >>> @@ -5488,20 +5482,19 @@ static void virtual_submission_tasklet(unsigned long data)
> > >>>                if (!READ_ONCE(ve->request))
> > >>>                        break; /* already handled by a sibling's tasklet */
> > >>>    
> > >>> +             spin_lock_irq(&sibling->active.lock);
> > >>> +
> > >>>                if (unlikely(!(mask & sibling->mask))) {
> > >>>                        if (!RB_EMPTY_NODE(&node->rb)) {
> > >>> -                             spin_lock(&sibling->active.lock);
> > >>>                                rb_erase_cached(&node->rb,
> > >>>                                                &sibling->execlists.virtual);
> > >>>                                RB_CLEAR_NODE(&node->rb);
> > >>> -                             spin_unlock(&sibling->active.lock);
> > >>>                        }
> > >>> -                     continue;
> > >>> -             }
> > >>>    
> > >>> -             spin_lock(&sibling->active.lock);
> > >>> +                     goto unlock_engine;
> > >>> +             }
> > >>>    
> > >>> -             if (!RB_EMPTY_NODE(&node->rb)) {
> > >>> +             if (unlikely(!RB_EMPTY_NODE(&node->rb))) {
> > >>>                        /*
> > >>>                         * Cheat and avoid rebalancing the tree if we can
> > >>>                         * reuse this node in situ.
> > >>> @@ -5541,9 +5534,12 @@ static void virtual_submission_tasklet(unsigned long data)
> > >>>                if (first && prio >= sibling->execlists.queue_priority_hint)
> > >>>                        tasklet_hi_schedule(&sibling->execlists.tasklet);
> > >>>    
> > >>> -             spin_unlock(&sibling->active.lock);
> > >>> +unlock_engine:
> > >>> +             spin_unlock_irq(&sibling->active.lock);
> > >>> +
> > >>> +             if (intel_context_inflight(&ve->context))
> > >>> +                     break;
> > >>
> > >> So virtual request may not be added to all siblings any longer. Will it
> > >> still be able to schedule it on any if time slicing kicks in under these
> > >> conditions?
> > > 
> > > Yes.
> > >   
> > >> This is equivalent to the hunk in first_virtual_engine which also
> > >> removes it from all other siblings.
> > >>
> > >> I guess it's inline with what the commit messages says - that new
> > >> sibling will be picked upon time slicing. I just don't quite see the
> > >> path which would do it. Only path which shuffles the siblings array
> > >> around is in dequeue, and dequeue on other that the engine which first
> > >> picked it will not happen any more. I must be missing something..
> > > 
> > > It's all on the execlists_schedule_out. During timeslicing we call
> > > unwind_incomplete_requests which moves the requests back to the priotree
> > > (and in this patch back to the virtual engine).
> > > 
> > > But... We cannot use the virtual request on any other engine until it has
> > > been scheduled out. That only happens after we complete execlists_dequeue()
> > > and submit a new ELSP[]. Once the HW acks the change, we call
> > > execlists_schedule_out on the virtual_request.
> > > 
> > > Now we known that intel_context_inflight() will return false so any
> > > engine can pick up the request, and so it's time to kick the virtual
> > > tasklet and in turn kick all the siblings.
> > > 
> > > So timeslicing works by not submitting the virtual request again and
> > > when it expires on this sibling[0], we wake up all the other siblings
> > > and the first that is idle wins the race.
> > 
> > If a virtual request is on hw and timeslice expires:
> > 
> > 1. Unwinds the request.
> >        -> kicks the virtual tasklet
> > 2. Virtual tasklet runs and puts the request back on siblings.
> >        -> kicks the physical tasklets
> > 3. Siblings tasklet runs and submits the request.
> > 
> > So two tasklets latency even if no other runnable requests?
> 
> Yes. It's worse than that when you look at it. Since the other
> execlists_submission_tasklet will run *before* we schedule out, they do
> nothing as they cannot use the virtual request. So they will only
> function when we kick them again after the schedule-out.
> 
> This was "bug" number 3 I mentioned you found with your tiny snippet.
> In the next patch we optimise away the ineffective timeslice preemptions
> of the virtual request. The inter-engine inefficiencies are inherent to
> the system though -- we can only schedule the other engines once we have
> scheduled out after the context save of the virtual engine.

It's worth mentioning that while glaringly inefficient, the rescheduling
is vital for fast virtual engine migration. Some of my attempts to avoid
the extra kicks, ended up skipping the rescheduling (e.g. keeping a pair
of virtual engines in a single ELSP and timeslicing between that pair)
and that leads to poor wsim results.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
