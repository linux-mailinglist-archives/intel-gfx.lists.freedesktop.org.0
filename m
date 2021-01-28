Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C95230762E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 13:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E126E1B3;
	Thu, 28 Jan 2021 12:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD51B6E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 12:32:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23725408-1500050 for multiple; Thu, 28 Jan 2021 12:32:52 +0000
MIME-Version: 1.0
In-Reply-To: <3624beac-15d5-ed2f-ab0f-2444feab7131@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-22-chris@chris-wilson.co.uk>
 <3624beac-15d5-ed2f-ab0f-2444feab7131@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 12:32:50 +0000
Message-ID: <161183717090.2943.2300525814758303137@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 22/41] drm/i915: Fair low-latency scheduling
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

Quoting Tvrtko Ursulin (2021-01-28 11:35:59)
> 
> On 25/01/2021 14:01, Chris Wilson wrote:
> > The first "scheduler" was a topographical sorting of requests into
> > priority order. The execution order was deterministic, the earliest
> > submitted, highest priority request would be executed first. Priority
> > inheritance ensured that inversions were kept at bay, and allowed us to
> > dynamically boost priorities (e.g. for interactive pageflips).
> > 
> > The minimalistic timeslicing scheme was an attempt to introduce fairness
> > between long running requests, by evicting the active request at the end
> > of a timeslice and moving it to the back of its priority queue (while
> > ensuring that dependencies were kept in order). For short running
> > requests from many clients of equal priority, the scheme is still very
> > much FIFO submission ordering, and as unfair as before.
> > 
> > To impose fairness, we need an external metric that ensures that clients
> > are interpersed, so we don't execute one long chain from client A before
> > executing any of client B. This could be imposed by the clients
> > themselves by using fences based on an external clock, that is they only
> > submit work for a "frame" at frame-intervals, instead of submitting as
> > much work as they are able to. The standard SwapBuffers approach is akin
> > to double bufferring, where as one frame is being executed, the next is
> > being submitted, such that there is always a maximum of two frames per
> > client in the pipeline and so ideally maintains consistent input-output
> > latency. Even this scheme exhibits unfairness under load as a single
> > client will execute two frames back to back before the next, and with
> > enough clients, deadlines will be missed.
> > 
> > The idea introduced by BFS/MuQSS is that fairness is introduced by
> > metering with an external clock. Every request, when it becomes ready to
> > execute is assigned a virtual deadline, and execution order is then
> > determined by earliest deadline. Priority is used as a hint, rather than
> > strict ordering, where high priority requests have earlier deadlines,
> > but not necessarily earlier than outstanding work. Thus work is executed
> > in order of 'readiness', with timeslicing to demote long running work.
> > 
> > The Achille's heel of this scheduler is its strong preference for
> > low-latency and favouring of new queues. Whereas it was easy to dominate
> > the old scheduler by flooding it with many requests over a short period
> > of time, the new scheduler can be dominated by a 'synchronous' client
> > that waits for each of its requests to complete before submitting the
> > next. As such a client has no history, it is always considered
> > ready-to-run and receives an earlier deadline than the long running
> > requests. This is compensated for by refreshing the current execution's
> > deadline and by disallowing preemption for timeslice shuffling.
> > 
> > In contrast, one key advantage of disconnecting the sort key from the
> > priority value is that we can freely adjust the deadline to compensate
> > for other factors. This is used in conjunction with submitting requests
> > ahead-of-schedule that then busywait on the GPU using semaphores. Since
> > we don't want to spend a timeslice busywaiting instead of doing real
> > work when available, we deprioritise work by giving the semaphore waits
> > a later virtual deadline. The priority deboost is applied to semaphore
> > workloads after they miss a semaphore wait and a new context is pending.
> > The request is then restored to its normal priority once the semaphores
> > are signaled so that it not unfairly penalised under contention by
> > remaining at a far future deadline. This is a much improved and cleaner
> > version of commit f9e9e9de58c7 ("drm/i915: Prioritise non-busywait
> > semaphore workloads").
> > 
> > To check the impact on throughput (often the downfall of latency
> > sensitive schedulers), we used gem_wsim to simulate various transcode
> > workloads with different load balancers, and varying the number of
> > competing [heterogenous] clients. On Kabylake gt3e running at fixed
> > clocks,
> > 
> > +delta%------------------------------------------------------------------+
> > |       a                                                                |
> > |       a                                                                |
> > |       a                                                                |
> > |       a                                                                |
> > |       aa                                                               |
> > |      aaa                                                               |
> > |      aaaa                                                              |
> > |     aaaaaa                                                             |
> > |     aaaaaa                                                             |
> > |     aaaaaa   a                a                                        |
> > | aa  aaaaaa a a      a  a   aa a       a         a       a             a|
> > ||______M__A__________|                                                  |
> > +------------------------------------------------------------------------+
> >      N           Min           Max        Median          Avg       Stddev
> >    108    -4.6326643     47.797855 -0.00069639128     2.116185   7.6764049
> 
> +47% is aggregate throughput or 47% less variance between worst-best 
> clients from the group?

Each point is relative change in throughput, wsim work-per-second B/A.

That +47% is due to the improved semaphore deprioritisation.
If you look at earlier results, it used to be range like -20%,20% where
sometimes we did better with avoiding the busywaits and sometimes worse.
The fix for the -20% was to apply the semaphore deprioritisation after a
miss rather than upfront (as we previously did).

> > @@ -549,9 +559,12 @@ static void __execlists_schedule_out(struct i915_request * const rq,
> >        * If we have just completed this context, the engine may now be
> >        * idle and we want to re-enter powersaving.
> >        */
> > -     if (intel_timeline_is_last(ce->timeline, rq) &&
> > -         __i915_request_is_complete(rq))
> > -             intel_engine_add_retire(engine, ce->timeline);
> > +     if (__i915_request_is_complete(rq)) {
> > +             if (!intel_timeline_is_last(ce->timeline, rq))
> > +                     i915_request_update_deadline(list_next_entry(rq, link));
> 
> Comment here explaining why it is important to update the deadline for 
> the following request once previous completes?
> 
> And this is just for the last request of the coalesced bunch right?

Yes. It follows on from the consideration that a deadline is set when
the request becomes ready. As we submit work ahead of the completion
signals, we may unfairly postpone further submissions along an active
context as the accumulated deadline far exceeds a new client, but both
pieces of work are ready to be executed.

From a bandwidth pov, this is still a reasonable hack as the executing
context finished early and did not consume all of its timeslice/budget.
So we award the next request in the context with the remainder of the
budget, and a fresh client will have its full budget.

Without this quirk, we always favour new clients versus long running
work.

> > @@ -892,10 +892,7 @@ release_queue(struct intel_engine_cs *engine,
> >       i915_request_get(rq);
> >       i915_request_add(rq);
> >   
> > -     local_bh_disable();
> > -     i915_request_set_priority(rq, prio);
> > -     local_bh_enable(); /* kick tasklet */
> > -
> > +     i915_request_set_deadline(rq, deadline);
> 
> I am thinking some underscores to this API could be beneficial to 
> emphasise how high level callers should not use it on their requests. 
> Thinking about things like tests and in kernel clients - my 
> understanding is API is not for them.

Ah, this is intended to be used just like changing priority, e.g., in
the display we set a deadline for the pageflip. So although the deadline
is soft, it is still a meaningful ktime_t.

That extra information will, of course, only be carried as far as it is
understood.

> >       switch (state) {
> >       case FENCE_COMPLETE:
> > +             i915_request_update_deadline(rq);
> 
> This will pull the deadline in or push out in practice?

In, or be ignored.

This signal corresponds to when the request would normally be submitted
as being ready. So we re-evaluate the request afresh.

As it is also after the semaphore, the new deadline is not only computed
relative the current time, but it is also without the semaphore
deboosting.

> > +static u64 prio_slice(int prio)
> > +{
> > +     u64 slice;
> > +     int sf;
> > +
> > +     /*
> > +      * This is the central heuristic to the virtual deadlines. By
> > +      * imposing that each task takes an equal amount of time, we
> > +      * let each client have an equal slice of the GPU time. By
> > +      * bringing the virtual deadline forward, that client will then
> > +      * have more GPU time, and vice versa a lower priority client will
> > +      * have a later deadline and receive less GPU time.
> > +      *
> > +      * In BFS/MuQSS, the prio_ratios[] are based on the task nice range of
> > +      * [-20, 20], with each lower priority having a ~10% longer deadline,
> > +      * with the note that the proportion of CPU time between two clients
> > +      * of different priority will be the square of the relative prio_slice.
> > +      *
> > +      * In contrast, this prio_slice() curve was chosen because it gave good
> > +      * results with igt/gem_exec_schedule. It may not be the best choice!
> > +      *
> > +      * With a 1ms scheduling quantum:
> > +      *
> > +      *   MAX USER:  ~32us deadline
> > +      *   0:         ~16ms deadline
> 
> Interesting centre/default point. Relates to 60Hz? If so how about 
> exporting some sysfs controls?

It's expected that we will definitely have input from cgroup here to
determine relative bandwidth budgets. The nice thing about the deadline
design is that it directly translates into bandwidth budgets :)

(But it will definitely take many tests to prove we get the right
factors for relative workload distribution.)

sysfs is a possibility, but for the difficulty in naming the controls.
So mostly kept as an ace up the sleeve until Joonas asks "can we...?"

> > @@ -545,21 +756,15 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
> >                * any preemption required, be dealt with upon submission.
> >                * See engine->submit_request()
> >                */
> > -             if (!i915_request_is_ready(rq))
> > -                     continue;
> > -
> >               GEM_BUG_ON(rq->engine != engine);
> > -             if (i915_request_in_priority_queue(rq)) {
> > -                     struct list_head *prev = rq->sched.link.prev;
> > +             if (i915_request_is_ready(rq) &&
> > +                 set_earliest_deadline(rq, rq_deadline(rq)))
> 
> Inside here it walks the signalers list for rq, while this is inside the 
> loop which already walks the whole signalers tree for each rq. I wonder 
> if there is scope to somehow eliminate this another sub-walk. But to be 
> honest it makes my head spin how to do it so probably best to leave it 
> for later, if even possible.

Yes. 'nuff said. :)

The inner dfs should be short as it should not have to descend into the
tree again. But there's some freedom as each set-priority may pick a
different deadline and so different subtrees may require re-traversing.

> >   int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
> >   {
> >       static const struct i915_subtest tests[] = {
> > +             SUBTEST(single_deadline),
> > +             SUBTEST(wide_deadline),
> > +             SUBTEST(inv_deadline),
> > +             SUBTEST(sparse_deadline),
> > +
> >               SUBTEST(single_priority),
> >               SUBTEST(wide_priority),
> >               SUBTEST(inv_priority),
> > 
> 
> Numbers talk for themselves (who hasn't played with intel_gpu_top and 
> clients stats enough probably can't appreciate how bad current code can 
> schedule), design looks elegant, code is tidy. I'd say go for it and 
> tweak/fix in situ if something pops up. So r-b in waiting effectively, 
> just want to finish the series.

Aye. And wsim thoughput/deadline modes proved invaluable.

I have not been able to measure any difference in game benchmarks (except
if you look at them in intel_gpu_top) as they are dominated by a single
client on a single engine, but the small sample of media transcode
benchmarks I have saw a very nice uptick.

Where this matters most will be in saturated multi-client systems,
especially when asked for more precise budgets. The interactive desktop
being a simple example, but since we always had very aggressive priority
boosting for flips, I doubt anyone would notice [if we couldn't maintain
vrefresh in the first place, the system will always feel laggy].
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
