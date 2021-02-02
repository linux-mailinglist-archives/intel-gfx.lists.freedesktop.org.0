Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C50230C815
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 18:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013266E969;
	Tue,  2 Feb 2021 17:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB6A6E969
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 17:43:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23775547-1500050 for multiple; Tue, 02 Feb 2021 17:43:53 +0000
MIME-Version: 1.0
In-Reply-To: <2097da50-efe4-1b23-67b5-9a43a70198c9@linux.intel.com>
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-8-chris@chris-wilson.co.uk>
 <2097da50-efe4-1b23-67b5-9a43a70198c9@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 17:43:53 +0000
Message-ID: <161228783372.1150.6556483629376691686@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 08/14] drm/i915/selftests: Force a rewind if at
 first we don't succeed
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

Quoting Tvrtko Ursulin (2021-02-02 16:52:18)
> 
> On 02/02/2021 15:14, Chris Wilson wrote:
> > live_timeslice_rewind assumes a particular traversal and reordering
> > after the first timeslice yield. However, the outcome can be either
> > (A1, A2, B1) or (A1, B2, A2) depending on the path taken through the
> > dependency graph. So if we do not get the outcome we need at first, give
> > it a priority kick to force a rewind.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/selftest_execlists.c | 21 +++++++++++++++++++-
> >   1 file changed, 20 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > index 951e2bf867e1..68e1398704a4 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > @@ -1107,6 +1107,7 @@ static int live_timeslice_rewind(void *arg)
> >               struct i915_request *rq[3] = {};
> >               struct intel_context *ce;
> >               unsigned long timeslice;
> > +             unsigned long timeout;
> >               int i, err = 0;
> >               u32 *slot;
> >   
> > @@ -1173,11 +1174,29 @@ static int live_timeslice_rewind(void *arg)
> >   
> >               /* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
> >               ENGINE_TRACE(engine, "forcing tasklet for rewind\n");
> > -             while (i915_request_is_active(rq[A2])) { /* semaphore yield! */
> > +             i = 0;
> > +             timeout = jiffies + HZ;
> > +             while (i915_request_is_active(rq[A2]) &&
> > +                    time_before(jiffies, timeout)) { /* semaphore yield! */
> >                       /* Wait for the timeslice to kick in */
> >                       del_timer(&engine->execlists.timer);
> >                       tasklet_hi_schedule(&engine->execlists.tasklet);
> >                       intel_engine_flush_submission(engine);
> > +
> > +                     /*
> > +                      * Unfortunately this assumes that during the
> > +                      * search of the wait tree it sees the requests
> > +                      * in a particular order. That order is not
> > +                      * strictly determined and it may pick either
> > +                      * A2 or B1 to immediately follow A1.
> > +                      *
> > +                      * Break the tie with a set-priority. This defeats
> > +                      * the goal of trying to cause a rewind with a
> > +                      * timeslice, but alas, a rewind is better than
> > +                      * none.
> > +                      */
> > +                     if (i++)
> > +                             i915_request_set_priority(rq[B1], 1);
> >               }
> >               /* -> ELSP[] = { { A:rq1 }, { B:rq1 } } */
> >               GEM_BUG_ON(!i915_request_is_active(rq[A1]));
> > 
> 
> Didn't fully get the intricacies of the test, but, how about not messing 
> with priorities but just kicking it for longer until it eventually 
> re-orders to the desired sequence? Surely if it keeps insisting of the 
> same order which is making no progress there is a flaw in timeslicing 
> anyway? Or if it fails skip the test.

Ah. The test is trying to prove internals of the ELSP[] behave in a
certain manner without forcing it to. However, there's no requirement
for it to do anything of the sort.

[What is the test trying to prove? That on timeslice we are capable of
removing a request from an earlier context to allow early switching to a
second context. This requires us to force the context switch to prevent
the currently executing context from keeping its RING_TAIL (which points
at the A2) but resample it so that it ends at A1. We attempt to prove
that with independent spinners, if we don't reset A2 then it will remain
executing instead of switching to B2 as we expect.]

So what happens is that we queue

[{A1, A2}, {B1}]

trigger a timeslice [by forcing the timer expiry]

and expect us to rearrange ELSP 

as [{A1}, {B2}]

because B2 depends on A1, on every timeslice that pair must be in that
order.

And we are looking for A2 to be back in the queue.

Since A2 has no dependency on B2, and vice versa that is a free
variable. Everytime we walk the graph, we start with deferring
A1, then A2, then B2. Looking at the graph in the same order everytime,
and end up packing {A1, A2} together into the same context submission.

You are right that if we allowed A1 to finish, then the timeslicing would
reverse A2, B2. However, we don't let spinner A1 finish so everything
stays in the same order.

Hmm. The problem is the graph order is determined by order of
construction. Now, we are free to randomise the order of that graph,
though we need to take different locks. Even if we just cycle the graph
one element (that would be enough to break the repetition here, we still
need that lock). Hmm.

The other option is to change the order of the graph by reordering the
construction, and keeping the original packing by deferring the
scheduling.

Let's see how horrible it is to cycle elements on defer. (Curse the
irqlock pollution.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
