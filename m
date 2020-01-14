Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 054E813AB6E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 14:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066D76E3CE;
	Tue, 14 Jan 2020 13:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6146E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 13:53:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19875469-1500050 for multiple; Tue, 14 Jan 2020 13:53:31 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
 <20200113104442.1753973-2-chris@chris-wilson.co.uk>
 <9b90921d-be2b-0c17-c1e6-32cdfec3ab19@linux.intel.com>
 <157900084769.27314.2165867150839106315@skylake-alporthouse-com>
 <5cfeea48-3a31-6bae-76df-1f8a59978fd1@linux.intel.com>
In-Reply-To: <5cfeea48-3a31-6bae-76df-1f8a59978fd1@linux.intel.com>
Message-ID: <157901000889.27314.14317421467052474191@skylake-alporthouse-com>
Date: Tue, 14 Jan 2020 13:53:28 +0000
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use common priotree lists for
 virtual engine
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

Quoting Tvrtko Ursulin (2020-01-14 13:48:11)
> 
> On 14/01/2020 11:20, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-01-14 11:13:06)
> >> On 13/01/2020 10:44, Chris Wilson wrote:
> >>> Since commit 422d7df4f090 ("drm/i915: Replace engine->timeline with a
> >>> plain list"), we used the default embedded priotree slot for the virtual
> >>> engine request queue, which means we can also use the same solitary slot
> >>> with the scheduler. However, the priolist is expected to be guarded by
> >>> the engine->active.lock, but this is not true for the virtual engine
> >>>
> >>> References: 422d7df4f090 ("drm/i915: Replace engine->timeline with a plain list")
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_lrc.c   |  3 +++
> >>>    drivers/gpu/drm/i915/i915_request.c   |  4 +++-
> >>>    drivers/gpu/drm/i915/i915_request.h   | 16 ++++++++++++++++
> >>>    drivers/gpu/drm/i915/i915_scheduler.c |  3 +--
> >>>    4 files changed, 23 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> index a6ac37dece0a..685659f079a2 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> @@ -985,6 +985,8 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
> >>>                        GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> >>>    
> >>>                        list_move(&rq->sched.link, pl);
> >>> +                     set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>> +
> >>>                        active = rq;
> >>>                } else {
> >>>                        struct intel_engine_cs *owner = rq->context->engine;
> >>> @@ -2473,6 +2475,7 @@ static void execlists_submit_request(struct i915_request *request)
> >>>        spin_lock_irqsave(&engine->active.lock, flags);
> >>>    
> >>>        queue_request(engine, &request->sched, rq_prio(request));
> >>> +     set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> >>
> >> Move into queue_request so it is closer to priolist management, just like at other call sites?
> >>
> >> Also, these are all under the engine active lock so non-atomic set/clear could be used, no?
> > 
> > It's not the bit that is important, but if there may be any other
> > concurrent access to the dword.
> > 
> > Thread A:                     Thread B:
> > __set_bit(0, &rq->flags)      __set_bit(31, &rq->flags)
> > 
> > *does* cause an issue, speaking from sad experience. So if in doubt, and
> > here there's always doubt with preempt-to-busy and background signaling,
> > go atomic.
> > 
> >>
> >>>    
> >>>        GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> >>>        GEM_BUG_ON(list_empty(&request->sched.link));
> >>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> >>> index be185886e4fc..9ed0d3bc7249 100644
> >>> --- a/drivers/gpu/drm/i915/i915_request.c
> >>> +++ b/drivers/gpu/drm/i915/i915_request.c
> >>> @@ -408,8 +408,10 @@ bool __i915_request_submit(struct i915_request *request)
> >>>    xfer:       /* We may be recursing from the signal callback of another i915 fence */
> >>>        spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> >>>    
> >>> -     if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags))
> >>> +     if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
> >>>                list_move_tail(&request->sched.link, &engine->active.requests);
> >>> +             clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> >>> +     }
> >>>    
> >>>        if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
> >>>            !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
> >>> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> >>> index 031433691a06..f3e50ec989b8 100644
> >>> --- a/drivers/gpu/drm/i915/i915_request.h
> >>> +++ b/drivers/gpu/drm/i915/i915_request.h
> >>> @@ -70,6 +70,17 @@ enum {
> >>>         */
> >>>        I915_FENCE_FLAG_ACTIVE = DMA_FENCE_FLAG_USER_BITS,
> >>>    
> >>> +     /*
> >>> +      * I915_FENCE_FLAG_PQUEUE - this request is ready for execution
> >>> +      *
> >>> +      * Using the scheduler, when a request is ready for execution it is put
> >>> +      * into the priority queue. We want to track its membership within that
> >>> +      * queue so that we can easily check before rescheduling.
> >>> +      *
> >>> +      * See i915_request_in_priority_queue()
> >>> +      */
> >>> +     I915_FENCE_FLAG_PQUEUE,
> >>> +
> >>>        /*
> >>>         * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
> >>>         *
> >>> @@ -361,6 +372,11 @@ static inline bool i915_request_is_active(const struct i915_request *rq)
> >>>        return test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
> >>>    }
> >>>    
> >>> +static inline bool i915_request_in_priority_queue(const struct i915_request *rq)
> >>> +{
> >>> +     return test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>> +}
> >>> +
> >>>    /**
> >>>     * Returns true if seq1 is later than seq2.
> >>>     */
> >>> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> >>> index bf87c70bfdd9..4f6e4d6c590a 100644
> >>> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> >>> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> >>> @@ -338,8 +338,7 @@ static void __i915_schedule(struct i915_sched_node *node,
> >>>                        continue;
> >>>                }
> >>>    
> >>> -             if (!intel_engine_is_virtual(engine) &&
> >>> -                 !i915_request_is_active(node_to_request(node))) {
> >>> +             if (i915_request_in_priority_queue(node_to_request(node))) {
> >>
> >> Not shown in this diff before this if block we have:
> >>
> >>          if (list_empty(&node->link)) {
> >>                  /*
> >>                   * If the request is not in the priolist queue because
> >>                   * it is not yet runnable, then it doesn't contribute
> >>                   * to our preemption decisions. On the other hand,
> >>                   * if the request is on the HW, it too is not in the
> >>                   * queue; but in that case we may still need to reorder
> >>                   * the inflight requests.
> > 
> > This second sentence is obsolete, we now use node->link for active.
> 
> Which active?  I915_FENCE_FLAG_ACTIVE is set when request is not on the 
> priority queue any more, no?

In the next patch, we introduce an inbetween state, ready but not active
and not in the queue.

> 
> > 
> >>                   */
> >>                  continue;
> >>          }
> >>
> >> What is the difference between list_empty(&node->link) and !i915_request_in_priority_queue?
> > 
> > list_empty() -> prior to being ready, we will put into the plist upon
> > submit_request()
> > 
> > Once ready, we only want to fiddle with its place in the priority lists,
> > if it is in the plist.
> 
> Yes brain fart on the list_empty check.
> 
> However I need to go a step back and ask what is the whole point of this 
> block:
> 
>         if (!intel_engine_is_virtual(engine) &&
>             !i915_request_is_active(node_to_request(node))) {
> 
> For active request, they are already on the hw so no need to push them 
> up. But I forgot why are virtual ones special? VE is single context so 
> in order, or in other words no need to track prio levels for it, is that it?

Yeah, it's because the lookup_prio didn't used work for virtual as it
didn't have the tree.

> But then also commit says "Use common priotree lists for virtual 
> engine". It already uses that before the patch because of the 
> !intel_engine_is_virtual condition. So I am confused.

First iteration of this patch tweaked it so this block worked on virtual
with no hassle. Then I realised I had a problem with on-hold requests,
so took the patch a step further.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
