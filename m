Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCADA2EC0F8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 17:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65AF388E45;
	Wed,  6 Jan 2021 16:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D64188E45
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 16:19:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23519979-1500050 for multiple; Wed, 06 Jan 2021 16:19:52 +0000
MIME-Version: 1.0
In-Reply-To: <160994932055.14894.15675793524963876311@build.alporthouse.com>
References: <20210106123939.18435-1-chris@chris-wilson.co.uk>
 <20210106123939.18435-4-chris@chris-wilson.co.uk>
 <0ed63aeb-d58e-5ec6-2072-65d17be612dc@linux.intel.com>
 <160994932055.14894.15675793524963876311@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 16:19:50 +0000
Message-ID: <160994999066.14894.9422598495920220435@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Remove timeslice
 suppression
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

Quoting Chris Wilson (2021-01-06 16:08:40)
> Quoting Tvrtko Ursulin (2021-01-06 15:57:49)
> > 
> > 
> > On 06/01/2021 12:39, Chris Wilson wrote:
> > > In the next^W future patch, we remove the strict priority system and
> > > continuously re-evaluate the relative priority of tasks. As such we need
> > > to enable the timeslice whenever there is more than one context in the
> > > pipeline. This simplifies the decision and removes some of the tweaks to
> > > suppress timeslicing, allowing us to lift the timeslice enabling to a
> > > common spot at the end of running the submission tasklet.
> > > 
> > > One consequence of the suppression is that it was reducing fairness
> > > between virtual engines on an over saturated system; undermining the
> > > principle for timeslicing.
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2802
> > > Testcase: igt/gem_exec_balancer/fairslice
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  10 -
> > >   .../drm/i915/gt/intel_execlists_submission.c  | 173 +++++++-----------
> > >   2 files changed, 68 insertions(+), 115 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > index 430066e5884c..df62e793e747 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > @@ -238,16 +238,6 @@ struct intel_engine_execlists {
> > >        */
> > >       unsigned int port_mask;
> > >   
> > > -     /**
> > > -      * @switch_priority_hint: Second context priority.
> > > -      *
> > > -      * We submit multiple contexts to the HW simultaneously and would
> > > -      * like to occasionally switch between them to emulate timeslicing.
> > > -      * To know when timeslicing is suitable, we track the priority of
> > > -      * the context submitted second.
> > > -      */
> > > -     int switch_priority_hint;
> > > -
> > >       /**
> > >        * @queue_priority_hint: Highest pending priority.
> > >        *
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > index ba3114fd4389..50d4308023f3 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > @@ -1143,25 +1143,6 @@ static void defer_active(struct intel_engine_cs *engine)
> > >       defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
> > >   }
> > >   
> > > -static bool
> > > -need_timeslice(const struct intel_engine_cs *engine,
> > > -            const struct i915_request *rq)
> > > -{
> > > -     int hint;
> > > -
> > > -     if (!intel_engine_has_timeslices(engine))
> > > -             return false;
> > > -
> > > -     hint = max(engine->execlists.queue_priority_hint,
> > > -                virtual_prio(&engine->execlists));
> > > -
> > > -     if (!list_is_last(&rq->sched.link, &engine->active.requests))
> > > -             hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
> > > -
> > > -     GEM_BUG_ON(hint >= I915_PRIORITY_UNPREEMPTABLE);
> > > -     return hint >= effective_prio(rq);
> > > -}
> > > -
> > >   static bool
> > >   timeslice_yield(const struct intel_engine_execlists *el,
> > >               const struct i915_request *rq)
> > > @@ -1181,76 +1162,68 @@ timeslice_yield(const struct intel_engine_execlists *el,
> > >       return rq->context->lrc.ccid == READ_ONCE(el->yield);
> > >   }
> > >   
> > > -static bool
> > > -timeslice_expired(const struct intel_engine_execlists *el,
> > > -               const struct i915_request *rq)
> > > +static bool needs_timeslice(const struct intel_engine_cs *engine,
> > > +                         const struct i915_request *rq)
> > >   {
> > > +     if (!intel_engine_has_timeslices(engine))
> > > +             return false;
> > > +
> > > +     /* If not currently active, or about to switch, wait for next event */
> > > +     if (!rq || __i915_request_is_complete(rq))
> > > +             return false;
> > > +
> > > +     /* We do not need to start the timeslice until after the ACK */
> > > +     if (READ_ONCE(engine->execlists.pending[0]))
> > > +             return false;
> > > +
> > > +     /* If ELSP[1] is occupied, always check to see if worth slicing */
> > > +     if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests))
> > > +             return true;
> > > +
> > > +     /* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
> > > +     if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
> > > +             return true;
> > > +
> > > +     return !RB_EMPTY_ROOT(&engine->execlists.virtual.rb_root);
> > > +}
> > > +
> > > +static bool
> > > +timeslice_expired(struct intel_engine_cs *engine, const struct i915_request *rq)
> > > +{
> > > +     const struct intel_engine_execlists *el = &engine->execlists;
> > > +
> > > +     if (i915_request_has_nopreempt(rq) && __i915_request_has_started(rq))
> > > +             return false;
> > > +
> > > +     if (!needs_timeslice(engine, rq))
> > > +             return false;
> > > +
> > >       return timer_expired(&el->timer) || timeslice_yield(el, rq);
> > >   }
> > >   
> > > -static int
> > > -switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
> > > -{
> > > -     if (list_is_last(&rq->sched.link, &engine->active.requests))
> > > -             return engine->execlists.queue_priority_hint;
> > > -
> > > -     return rq_prio(list_next_entry(rq, sched.link));
> > > -}
> > > -
> > > -static inline unsigned long
> > > -timeslice(const struct intel_engine_cs *engine)
> > > +static unsigned long timeslice(const struct intel_engine_cs *engine)
> > >   {
> > >       return READ_ONCE(engine->props.timeslice_duration_ms);
> > >   }
> > >   
> > > -static unsigned long active_timeslice(const struct intel_engine_cs *engine)
> > > -{
> > > -     const struct intel_engine_execlists *execlists = &engine->execlists;
> > > -     const struct i915_request *rq = *execlists->active;
> > > -
> > > -     if (!rq || __i915_request_is_complete(rq))
> > > -             return 0;
> > > -
> > > -     if (READ_ONCE(execlists->switch_priority_hint) < effective_prio(rq))
> > > -             return 0;
> > > -
> > > -     return timeslice(engine);
> > > -}
> > > -
> > > -static void set_timeslice(struct intel_engine_cs *engine)
> > > +static void start_timeslice(struct intel_engine_cs *engine)
> > >   {
> > > +     struct intel_engine_execlists *el = &engine->execlists;
> > >       unsigned long duration;
> > >   
> > > -     if (!intel_engine_has_timeslices(engine))
> > > -             return;
> > > +     /* Disable the timer if there is nothing to switch to */
> > > +     duration = 0;
> > > +     if (needs_timeslice(engine, *el->active)) {
> > > +             if (el->timer.expires) {
> > 
> > Why not just timer_pending check? Are you sure timer->expires cannot 
> > legitimately be at jiffie 0 in wrap conditions?
> 
> This is actually to test if we have set the timer or not, and avoid
> extending an already active timeslice. We are abusing the jiffie wrap
> being unlikely and of no great consequence (one missed timeslice/preempt
> timer should be picked up by the next poke of the driver) as part of
> set_timer_ms/cancel_timer.

I see you've asked this before:

void set_timer_ms(struct timer_list *t, unsigned long timeout)
{
        if (!timeout) {
                cancel_timer(t);
                return;
        }

        timeout = msecs_to_jiffies(timeout);

        /*
         * Paranoia to make sure the compiler computes the timeout before
         * loading 'jiffies' as jiffies is volatile and may be updated in
         * the background by a timer tick. All to reduce the complexity
         * of the addition and reduce the risk of losing a jiffie.
         */
        barrier();

        /* Keep t->expires = 0 reserved to indicate a canceled timer. */
        mod_timer(t, jiffies + timeout ?: 1);
}

:)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
