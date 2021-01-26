Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A503C303E88
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 14:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7B56E091;
	Tue, 26 Jan 2021 13:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0F06E091
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 13:24:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23703750-1500050 for multiple; Tue, 26 Jan 2021 13:24:05 +0000
MIME-Version: 1.0
In-Reply-To: <10f2ca0b-f18a-47c7-b038-9c40135cc040@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-5-chris@chris-wilson.co.uk>
 <8201dfc1-9490-d0d9-f661-d7bb4e752723@linux.intel.com>
 <161166063330.29150.16248716198298940868@build.alporthouse.com>
 <fed21604-64d0-d08f-7797-1d3a785d4abf@linux.intel.com>
 <161166213986.29150.12808740894418927064@build.alporthouse.com>
 <10f2ca0b-f18a-47c7-b038-9c40135cc040@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 13:24:07 +0000
Message-ID: <161166744720.2943.1804423973098975957@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 05/41] drm/i915: Restructure priority
 inheritance
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
Cc: thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-26 13:15:29)
> 
> On 26/01/2021 11:55, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-26 11:40:24)
> >>
> >> On 26/01/2021 11:30, Chris Wilson wrote:
> >>> Quoting Tvrtko Ursulin (2021-01-26 11:12:53)
> >>>>
> >>>>
> >>>> On 25/01/2021 14:01, Chris Wilson wrote:
> >>>>> +static void ipi_schedule(struct work_struct *wrk)
> >>>>> +{
> >>>>> +     struct i915_sched_ipi *ipi = container_of(wrk, typeof(*ipi), work);
> >>>>> +     struct i915_request *rq = xchg(&ipi->list, NULL);
> >>>>> +
> >>>>> +     do {
> >>>>> +             struct i915_request *rn = xchg(&rq->sched.ipi_link, NULL);
> >>>>> +             int prio;
> >>>>> +
> >>>>> +             prio = ipi_get_prio(rq);
> >>>>> +
> >>>>> +             /*
> >>>>> +              * For cross-engine scheduling to work we rely on one of two
> >>>>> +              * things:
> >>>>> +              *
> >>>>> +              * a) The requests are using dma-fence fences and so will not
> >>>>> +              * be scheduled until the previous engine is completed, and
> >>>>> +              * so we cannot cross back onto the original engine and end up
> >>>>> +              * queuing an earlier request after the first (due to the
> >>>>> +              * interrupted DFS).
> >>>>> +              *
> >>>>> +              * b) The requests are using semaphores and so may be already
> >>>>> +              * be in flight, in which case if we cross back onto the same
> >>>>> +              * engine, we will already have put the interrupted DFS into
> >>>>> +              * the priolist, and the continuation will now be queued
> >>>>> +              * afterwards [out-of-order]. However, since we are using
> >>>>> +              * semaphores in this case, we also perform yield on semaphore
> >>>>> +              * waits and so will reorder the requests back into the correct
> >>>>> +              * sequence. This occurrence (of promoting a request chain
> >>>>> +              * that crosses the engines using semaphores back unto itself)
> >>>>> +              * should be unlikely enough that it probably does not matter...
> >>>>> +              */
> >>>>> +             local_bh_disable();
> >>>>> +             i915_request_set_priority(rq, prio);
> >>>>> +             local_bh_enable();
> >>>>
> >>>> Is it that important and wouldn't the priority order restore eventually
> >>>> due timeslicing?
> >>>
> >>> There would be a window in which we executed userspace code
> >>> out-of-order. That's enough to scare me! However, for our PI dependency
> >>> chains it should not matter as the only time we do submit out-of-order,
> >>> we are stuck on _our_ semaphore that cannot be resolved until the
> >>> requests are back in-order.
> >>
> >> Out of order how? Within a single timeline?! I though only with
> >> incomplete view of priority inheritance, which in my mind could only
> >> cause deadlocks (if no timeslicing). But really really out of order?
> > 
> > Fences between timelines. Let's say we have 3 requests, A,B,C all with
> > sequential fencing (C depends on B depends on A), but B is on a
> > different engine to (A, C) and we are using semaphores to submit early.
> > If we bump the priority of C, we see it crosses the engine to B, and send
> > an ipi_priority, but set C to be higher priority than A. So we now
> > schedule C before A!
> 
> Yeah so different timelines, I think that's not a huge problem to start 
> with. Only if things were non-preemptable.

And for the special case where it may occur, it's inside an preemptible
section (under our control).

> > However, since C depends on B which depends on A, C is stuck on its
> > semaphore from B, and B is waiting for A. As soon as A is set to the
> > same priority as C (after a couple of ipi_priority()), we rerun the
> > scheduler see that C has a semaphore-yield (or eventually timeslice
> > expired) and so run A before C, and order is restored.
> > 
> >>> I've tried to trick this into causing problems with the
> >>> i915_selftest/igt_schedule_cycle and gem_exec_schedule/noreorder.
> >>> Fortunately for my sanity, neither test have caught any problems.
> >>>
> >>> This is the handwaving part of removing the global lock.
> >>>
> >>>>> +     /*
> >>>>> +      * If we are setting the priority before being submitted, see if we
> >>>>> +      * can quickly adjust our own priority in-situ and avoid taking
> >>>>> +      * the contended engine->active.lock. If we need priority inheritance,
> >>>>> +      * take the slow route.
> >>>>> +      */
> >>>>> +     if (rq_prio(rq) == I915_PRIORITY_INVALID) {
> >>>>> +             struct i915_dependency *p;
> >>>>> +
> >>>>> +             rcu_read_lock();
> >>>>> +             for_each_signaler(p, rq) {
> >>>>> +                     struct i915_request *s =
> >>>>> +                             container_of(p->signaler, typeof(*s), sched);
> >>>>> +
> >>>>> +                     if (rq_prio(s) >= prio)
> >>>>> +                             continue;
> >>>>> +
> >>>>> +                     if (__i915_request_is_complete(s))
> >>>>> +                             continue;
> >>>>> +
> >>>>> +                     break;
> >>>>> +             }
> >>>>> +             rcu_read_unlock();
> >>>>
> >>>> Exit this loop with a first lower priority incomplete signaler. What
> >>>> does the block below then do? Feels like it needs a comment.
> >>>
> >>> I thought I had sufficiently explained that in the comment above.
> >>>
> >>> /* Update priority in place if no PI required */
> >>>>> +             if (&p->signal_link == &rq->sched.signalers_list &&
> >>>>> +                 cmpxchg(&rq->sched.attr.priority,
> >>>>> +                         I915_PRIORITY_INVALID,
> >>>>> +                         prio) == I915_PRIORITY_INVALID)
> >>>>> +                     return;
> >>>
> >>> It could do a few more tricks to change the priority in-place a second
> >>> time, but I did not think that would be frequent enough to matter.
> >>> Whereas we always adjust the priority from INVALID once before
> >>> submission, and avoiding taking the lock then does make a difference to
> >>> the profiles.
> >>
> >> To start with, if p is NULL or un-initialized (can be, no?) then
> >> relationship of &p->signal_link to &rq->sched.signalers_list escapes me.
> > 
> > p is constrained to be a member of the signalers_list or its head.
> 
> Is it defined list_for_each_entry exits with pos set? It is in 
> implementation but I don't know why it would have to be. Could you 
> change this to some form of list_empty or a descriptively named helper 
> for clarity?

It as defined as the macro gets.

There's a list_entry_is_head(). That sounds new.

commit e130816164e244b692921de49771eeb28205152d
Author: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date:   Thu Oct 15 20:11:31 2020 -0700

    include/linux/list.h: add a macro to test if entry is pointing to the head

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
