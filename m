Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A742B946D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 15:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2481E89C88;
	Thu, 19 Nov 2020 14:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225BB89C88
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 14:22:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23042863-1500050 for multiple; Thu, 19 Nov 2020 14:22:10 +0000
MIME-Version: 1.0
In-Reply-To: <baa6511a-629d-9b65-b80a-b620dd13b53b@linux.intel.com>
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-14-chris@chris-wilson.co.uk>
 <86cb67d0-ac39-7f83-8ff8-eed3ef7c5943@linux.intel.com>
 <160569868396.3553.1145860250763004021@build.alporthouse.com>
 <ea07e30a-8972-d06b-8d97-f5e7e4228eae@linux.intel.com>
 <160570140499.3553.14837272178441325470@build.alporthouse.com>
 <baa6511a-629d-9b65-b80a-b620dd13b53b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 14:22:08 +0000
Message-ID: <160579572865.3416.10178835579091430788@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 14/28] drm/i915/gt: Free stale request on
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

Quoting Tvrtko Ursulin (2020-11-19 14:06:00)
> 
> On 18/11/2020 12:10, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-11-18 11:38:43)
> >>
> >> On 18/11/2020 11:24, Chris Wilson wrote:
> >>> Quoting Tvrtko Ursulin (2020-11-18 11:05:24)
> >>>>
> >>>> On 17/11/2020 11:30, Chris Wilson wrote:
> >>>>> Since preempt-to-busy, we may unsubmit a request while it is still on
> >>>>> the HW and completes asynchronously. That means it may be retired and in
> >>>>> the process destroy the virtual engine (as the user has closed their
> >>>>> context), but that engine may still be holding onto the unsubmitted
> >>>>> compelted request. Therefore we need to potentially cleanup the old
> >>>>> request on destroying the virtual engine. We also have to keep the
> >>>>> virtual_engine alive until after the sibling's execlists_dequeue() have
> >>>>> finished peeking into the virtual engines, for which we serialise with
> >>>>> RCU.
> >>>>>
> >>>>> v2: Be paranoid and flush the tasklet as well.
> >>>>> v3: And flush the tasklet before the engines, as the tasklet may
> >>>>> re-attach an rb_node after our removal from the siblings.
> >>>>>
> >>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>> ---
> >>>>>     drivers/gpu/drm/i915/gt/intel_lrc.c | 61 +++++++++++++++++++++++++----
> >>>>>     1 file changed, 54 insertions(+), 7 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> index 17cb7060eb29..c11433884cf6 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> @@ -182,6 +182,7 @@
> >>>>>     struct virtual_engine {
> >>>>>         struct intel_engine_cs base;
> >>>>>         struct intel_context context;
> >>>>> +     struct rcu_work rcu;
> >>>>>     
> >>>>>         /*
> >>>>>          * We allow only a single request through the virtual engine at a time
> >>>>> @@ -5470,44 +5471,90 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
> >>>>>         return &ve->base.execlists.default_priolist.requests[0];
> >>>>>     }
> >>>>>     
> >>>>> -static void virtual_context_destroy(struct kref *kref)
> >>>>> +static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >>>>>     {
> >>>>>         struct virtual_engine *ve =
> >>>>> -             container_of(kref, typeof(*ve), context.ref);
> >>>>> +             container_of(wrk, typeof(*ve), rcu.work);
> >>>>>         unsigned int n;
> >>>>>     
> >>>>> -     GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> >>>>> -     GEM_BUG_ON(ve->request);
> >>>>>         GEM_BUG_ON(ve->context.inflight);
> >>>>>     
> >>>>> +     /* Preempt-to-busy may leave a stale request behind. */
> >>>>> +     if (unlikely(ve->request)) {
> >>>>> +             struct i915_request *old;
> >>>>> +
> >>>>> +             spin_lock_irq(&ve->base.active.lock);
> >>>>> +
> >>>>> +             old = fetch_and_zero(&ve->request);
> >>>>> +             if (old) {
> >>>>> +                     GEM_BUG_ON(!i915_request_completed(old));
> >>>>> +                     __i915_request_submit(old);
> >>>>> +                     i915_request_put(old);
> >>>>> +             }
> >>>>> +
> >>>>> +             spin_unlock_irq(&ve->base.active.lock);
> >>>>> +     }
> >>>>> +
> >>>>> +     /*
> >>>>> +      * Flush the tasklet in case it is still running on another core.
> >>>>> +      *
> >>>>> +      * This needs to be done before we remove ourselves from the siblings'
> >>>>> +      * rbtrees as in the case it is running in parallel, it may reinsert
> >>>>> +      * the rb_node into a sibling.
> >>>>> +      */
> >>>>> +     tasklet_kill(&ve->base.execlists.tasklet);
> >>>>
> >>>> Can it still be running after an RCU period?
> >>>
> >>> I think there is a window between checking to see if the request is
> >>> completed and kicking the tasklet, that is not under the rcu lock and
> >>> opportunity for the request to be retired, and barrier flushed to drop
> >>> the context references.
> >>
> >>   From where would that check come?
> > 
> > The window of opportunity extends all the way from the
> > i915_request_completed check during unsubmit right until the virtual
> > engine tasklet is executed -- we do not hold a reference to the virtual
> > engine for the tasklet, and that request may be retired in the
> > background, and along with it the virtual engine destroyed.
> 
> In this case aren't sibling tasklets also a problem?

The next stanza decouples the siblings. At this point, we know that the
request must have been completed (to retire and drop the context
reference) so at this point nothing should be allowed to kick the
virtual engine tasklet, it's just the outstanding execution we need to
serialise. So the following assertion that nothing did kick the tasklet
as we decoupled the siblings holds. After that assertion, there should
be nothing else that knows about the virtual tasklet.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
