Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4230BF52
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 14:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81326E1B3;
	Tue,  2 Feb 2021 13:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3CD6E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 13:26:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23772238-1500050 for multiple; Tue, 02 Feb 2021 13:26:27 +0000
MIME-Version: 1.0
In-Reply-To: <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-17-chris@chris-wilson.co.uk>
 <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 13:26:27 +0000
Message-ID: <161227238747.1150.1387305898508836921@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 17/57] drm/i915: Extract request suspension
 from the execlists
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

Quoting Tvrtko Ursulin (2021-02-02 13:15:52)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> > +void __i915_sched_resume_request(struct intel_engine_cs *engine,
> > +                              struct i915_request *rq)
> > +{
> > +     LIST_HEAD(list);
> > +
> > +     lockdep_assert_held(&engine->active.lock);
> > +
> > +     if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> > +             engine->execlists.queue_priority_hint = rq_prio(rq);
> > +             tasklet_hi_schedule(&engine->execlists.tasklet);
> > +     }
> > +
> > +     if (!i915_request_on_hold(rq))
> > +             return;
> > +
> > +     ENGINE_TRACE(engine, "resuming request %llx:%lld\n",
> > +                  rq->fence.context, rq->fence.seqno);
> > +
> > +     /*
> > +      * Move this request back to the priority queue, and all of its
> > +      * children and grandchildren that were suspended along with it.
> > +      */
> > +     do {
> > +             struct i915_dependency *p;
> > +
> > +             RQ_TRACE(rq, "hold release\n");
> > +
> > +             GEM_BUG_ON(!i915_request_on_hold(rq));
> > +             GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
> > +
> > +             i915_request_clear_hold(rq);
> > +             list_del_init(&rq->sched.link);
> > +
> > +             queue_request(engine, rq);
> > +
> > +             /* Also release any children on this engine that are ready */
> > +             for_each_waiter(p, rq) {
> > +                     struct i915_request *w =
> > +                             container_of(p->waiter, typeof(*w), sched);
> > +
> > +                     if (p->flags & I915_DEPENDENCY_WEAK)
> > +                             continue;
> > +
> > +                     /* Propagate any change in error status */
> > +                     if (rq->fence.error)
> > +                             i915_request_set_error_once(w, rq->fence.error);
> > +
> > +                     if (w->engine != engine)
> > +                             continue;
> > +
> > +                     /* We also treat the on-hold status as a visited bit */
> > +                     if (!i915_request_on_hold(w))
> > +                             continue;
> > +
> > +                     /* Check that no other parents are also on hold [BFS] */
> > +                     if (hold_request(w))
> > +                             continue;
> 
> hold_request() appears deleted in the patch so possible rebase error.

The secret is we get to de-duplicate after having duplicated
hold_request() in i915_scheduler in an earlier patch,
  drm/i915: Extract request submission from execlists
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
