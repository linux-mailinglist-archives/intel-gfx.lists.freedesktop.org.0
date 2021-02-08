Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 122603138F5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697AC6E911;
	Mon,  8 Feb 2021 16:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58046E911
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:11:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23812962-1500050 for multiple; Mon, 08 Feb 2021 16:11:07 +0000
MIME-Version: 1.0
In-Reply-To: <6f648ec5-e28b-513c-d29a-2e5dd4924ab6@linux.intel.com>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-10-chris@chris-wilson.co.uk>
 <81c2bbff-7059-856d-56ae-8a42607a919e@linux.intel.com>
 <161279816578.9448.5547982919972033105@build.alporthouse.com>
 <6f648ec5-e28b-513c-d29a-2e5dd4924ab6@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 08 Feb 2021 16:11:07 +0000
Message-ID: <161280066761.9448.9385902061504520287@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 10/31] drm/i915: Fair low-latency scheduling
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

Quoting Tvrtko Ursulin (2021-02-08 16:03:03)
> 
> On 08/02/2021 15:29, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-02-08 14:56:31)
> >> On 08/02/2021 10:52, Chris Wilson wrote:
> >>> +static bool need_preempt(const struct intel_engine_cs *engine,
> >>>                         const struct i915_request *rq)
> >>>    {
> >>>        const struct i915_sched *se = &engine->sched;
> >>> -     int last_prio;
> >>> +     const struct i915_request *first = NULL;
> >>> +     const struct i915_request *next;
> >>>    
> >>>        if (!i915_sched_use_busywait(se))
> >>>                return false;
> >>>    
> >>>        /*
> >>> -      * Check if the current priority hint merits a preemption attempt.
> >>> -      *
> >>> -      * We record the highest value priority we saw during rescheduling
> >>> -      * prior to this dequeue, therefore we know that if it is strictly
> >>> -      * less than the current tail of ESLP[0], we do not need to force
> >>> -      * a preempt-to-idle cycle.
> >>> -      *
> >>> -      * However, the priority hint is a mere hint that we may need to
> >>> -      * preempt. If that hint is stale or we may be trying to preempt
> >>> -      * ourselves, ignore the request.
> >>> -      *
> >>> -      * More naturally we would write
> >>> -      *      prio >= max(0, last);
> >>> -      * except that we wish to prevent triggering preemption at the same
> >>> -      * priority level: the task that is running should remain running
> >>> -      * to preserve FIFO ordering of dependencies.
> >>> +      * If this request is special and must not be interrupted at any
> >>> +      * cost, so be it. Note we are only checking the most recent request
> >>> +      * in the context and so may be masking an earlier vip request. It
> >>> +      * is hoped that under the conditions where nopreempt is used, this
> >>> +      * will not matter (i.e. all requests to that context will be
> >>> +      * nopreempt for as long as desired).
> >>>         */
> >>> -     last_prio = max(effective_prio(rq), I915_PRIORITY_NORMAL - 1);
> >>> -     if (engine->execlists.queue_priority_hint <= last_prio)
> >>> +     if (i915_request_has_nopreempt(rq))
> >>>                return false;
> >>>    
> >>>        /*
> >>>         * Check against the first request in ELSP[1], it will, thanks to the
> >>>         * power of PI, be the highest priority of that context.
> >>>         */
> >>> -     if (!list_is_last(&rq->sched.link, &se->requests) &&
> >>> -         rq_prio(list_next_entry(rq, sched.link)) > last_prio)
> >>> -             return true;
> >>> +     next = next_elsp_request(se, rq);
> >>> +     if (dl_before(next, first))
> >>
> >> Here first is always NULL so dl_before always returns true, meaning it
> >> appears redundant to call it.
> > 
> > I was applying a pattern :)
> 
> Yeah, thought so. It's fine.
> 
> > 
> >>
> >>> +             first = next;
> >>>    
> >>>        /*
> >>>         * If the inflight context did not trigger the preemption, then maybe
> >>> @@ -356,8 +343,31 @@ static bool need_preempt(struct intel_engine_cs *engine,
> >>>         * ELSP[0] or ELSP[1] as, thanks again to PI, if it was the same
> >>>         * context, it's priority would not exceed ELSP[0] aka last_prio.
> >>>         */
> >>> -     return max(virtual_prio(&engine->execlists),
> >>> -                queue_prio(se)) > last_prio;
> >>> +     next = first_request(se);
> >>> +     if (dl_before(next, first))
> >>> +             first = next; > +
> >>> +     next = first_virtual(engine);
> >>> +     if (dl_before(next, first))
> >>> +             first = next;
> >>> +
> >>> +     if (!dl_before(first, rq))
> >>> +             return false;
> >>
> >> Ends up earliest deadline between list of picks: elsp[1] (or maybe next
> >> in context, depends on coalescing criteria), first in the priolist,
> >> first virtual.
> >>
> >> Virtual has a separate queue so that's understandable, but can "elsp[1]"
> >> really have an earlier deadling than first_request() (head of thepriolist)?
> > 
> > elsp[1] could have been promoted and thus now have an earlier deadline
> > than elsp[0]. Consider the heartbeat as a trivial example that is first
> > submitted at very low priority, but by the end has absolute priority.
> 
> The tree is not kept sorted at all times, or at least at the time 
> need_preempt peeks at it?

The tree of priorites/deadline itself is sorted. ELSP[] is the HW
runlist, which is a snapshot at the time of submission (and while it
should have been in order, may not now e).

need_preempt() tries to answer the question of "if I were to unwind
everything, would the first request in the resulting priority tree be of
earlier deadline & higher priority than the currently running request?".
So we have to guess the future shape of the tree.

> >>> +static u64 virtual_deadline(u64 kt, int priority)
> >>> +{
> >>> +     return i915_sched_to_ticks(kt + prio_slice(priority));
> >>> +}
> >>> +
> >>> +u64 i915_scheduler_next_virtual_deadline(int priority)
> >>> +{
> >>> +     return virtual_deadline(ktime_get_mono_fast_ns(), priority);
> >>> +}
> >>
> >> This helpers becomes a bit odd in that the only two callers are rewind
> >> and defer. And it queries ktime, while before deadline was set based on
> >> signalers.
> >>
> >> Where is the place which set the ktime based deadline (converted to
> >> ticks) for requests with no signalers?
> > 
> > signal_deadline() with no signalers returns now. So the first request in
> > a sequence is queued with virtual_deadline(now() + prio_slice()).
> 
> Ah ok.
> 
> > 
> >>>    void i915_request_enqueue(struct i915_request *rq)
> >>>    {
> >>> -     struct intel_engine_cs *engine = rq->engine;
> >>> -     struct i915_sched *se = intel_engine_get_scheduler(engine);
> >>> +     struct i915_sched *se = i915_request_get_scheduler(rq);
> >>> +     u64 dl = earliest_deadline(se, rq);
> >>>        unsigned long flags;
> >>>        bool kick = false;
> >>>    
> >>> @@ -880,11 +1107,11 @@ void i915_request_enqueue(struct i915_request *rq)
> >>>                list_add_tail(&rq->sched.link, &se->hold);
> >>>                i915_request_set_hold(rq);
> >>>        } else {
> >>> -             queue_request(se, rq);
> >>> -
> >>> +             set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>> +             kick = __i915_request_set_deadline(se, rq,
> >>> +                                                min(dl, rq_deadline(rq)));
> >>
> >> What is this min for? Dl has been computed above based on rq, so I
> >> wonder why rq_deadline has to be considered again.
> > 
> > earliest_deadline() only looks at the signalers (or now if none) and
> > picks the next deadline in that sequence. However, some requests we may
> > set the deadline explicitly (e.g. heartbeat has a known deadline, vblank
> > rendering we can approximate a deadline) and so we also consider what
> > deadline has already been specified.
> > 
> >> Because earliest_deadline does not actually consider rq->sched.deadline?
> >> So conceptually earliest_deadline would be described as what?
> > 
> > sequence_deadline() ?
> > 
> > earliest_deadline_for_this_sequence() ?
> 
> Don't know really. Don't think it's a matter of names just me building a 
> good image of the operation.
> 
> But as earliest does imply earliest, which then gets potentially 
> overwritten with something even earlier, hm.. baseline? :) Default? 
> Nah.. Scheduling_deadline? Tree deadline? Sorted deadline?

Maybe current_deadline().
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
