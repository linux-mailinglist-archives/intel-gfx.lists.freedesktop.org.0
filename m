Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99231C98B9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 20:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1706EA4A;
	Thu,  7 May 2020 18:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C2D56EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 18:05:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21142701-1500050 for multiple; Thu, 07 May 2020 19:05:09 +0100
MIME-Version: 1.0
In-Reply-To: <d76cc84c-354a-c985-d7f0-42760542f681@linux.intel.com>
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
 <f5d72c82-7a9e-3142-f297-b2231f2e9b9f@linux.intel.com>
 <158886364344.20858.57212288691515302@build.alporthouse.com>
 <2ea266b4-64a7-e494-65e9-6435d4455a71@linux.intel.com>
 <158886567396.20858.16515551637133920867@build.alporthouse.com>
 <d76cc84c-354a-c985-d7f0-42760542f681@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158887470673.11903.1801026217412101663@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 19:05:06 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Mark concurrent submissions
 with a weak-dependency
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-05-07 18:55:17)
> 
> On 07/05/2020 16:34, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-05-07 16:23:59)
> >> On 07/05/2020 16:00, Chris Wilson wrote:
> >>> Quoting Tvrtko Ursulin (2020-05-07 15:53:08)
> >>>> On 07/05/2020 09:21, Chris Wilson wrote:
> >>>>> We recorded the dependencies for WAIT_FOR_SUBMIT in order that we could
> >>>>> correctly perform priority inheritance from the parallel branches to the
> >>>>> common trunk. However, for the purpose of timeslicing and reset
> >>>>> handling, the dependency is weak -- as we the pair of requests are
> >>>>> allowed to run in parallel and not in strict succession. So for example
> >>>>> we do need to suspend one if the other hangs.
> >>>>>
> >>>>> The real significance though is that this allows us to rearrange
> >>>>> groups of WAIT_FOR_SUBMIT linked requests along the single engine, and
> >>>>> so can resolve user level inter-batch scheduling dependencies from user
> >>>>> semaphores.
> >>>>>
> >>>>> Fixes: c81471f5e95c ("drm/i915: Copy across scheduler behaviour flags across submit fences")
> >>>>> Testcase: igt/gem_exec_fence/submit
> >>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>> Cc: <stable@vger.kernel.org> # v5.6+
> >>>>> ---
> >>>>>     drivers/gpu/drm/i915/gt/intel_lrc.c         | 9 +++++++++
> >>>>>     drivers/gpu/drm/i915/i915_request.c         | 8 ++++++--
> >>>>>     drivers/gpu/drm/i915/i915_scheduler.c       | 6 +++---
> >>>>>     drivers/gpu/drm/i915/i915_scheduler.h       | 3 ++-
> >>>>>     drivers/gpu/drm/i915/i915_scheduler_types.h | 1 +
> >>>>>     5 files changed, 21 insertions(+), 6 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> index dc3f2ee7136d..10109f661bcb 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>>> @@ -1880,6 +1880,9 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
> >>>>>                         struct i915_request *w =
> >>>>>                                 container_of(p->waiter, typeof(*w), sched);
> >>>>>     
> >>>>> +                     if (p->flags & I915_DEPENDENCY_WEAK)
> >>>>> +                             continue;
> >>>>> +
> >>>>
> >>>> I did not quite get it - submit fence dependency would mean different
> >>>> engines, so the below check (w->engine != rq->engine) would effectively
> >>>> have the same effect. What am I missing?
> >>>
> >>> That submit fences can be between different contexts on the same engine.
> >>> The example (from mesa) is where we have two interdependent clients
> >>> which are using their own userlevel scheduling inside each batch, i.e.
> >>> waiting on semaphores.
> >>
> >> But if submit fence was used that means the waiter should never be
> >> submitted ahead of the signaler. And with this change it could get ahead
> >> in the priolist, no?
> > 
> > You do recall the starting point for this series was future fences :)
> > 
> > The test case for this is:
> > 
> >       execbuf.flags = engine | I915_EXEC_FENCE_OUT;
> >       execbuf.batch_start_offset = 0;
> >               gem_execbuf_wr(i915, &execbuf);
> > 
> >               execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
> >               execbuf.rsvd2 >>= 32;
> >               execbuf.flags = e->flags;
> >               execbuf.flags |= I915_EXEC_FENCE_SUBMIT | I915_EXEC_FENCE_OUT;
> >               execbuf.batch_start_offset = offset;
> >               gem_execbuf_wr(i915, &execbuf);
> >               gem_context_destroy(i915, execbuf.rsvd1);
> > 
> >               gem_sync(i915, obj.handle);
> > 
> >       /* no hangs! */
> >       out = execbuf.rsvd2;
> >               igt_assert_eq(sync_fence_status(out), 1);
> >               close(out);
> > 
> >               out = execbuf.rsvd2 >> 32;
> >               igt_assert_eq(sync_fence_status(out), 1);
> >               close(out);
> > 
> > Where the batches are a couple of semaphore waits, which is the essence
> > of a bonded request but being run on a single engine.
> > 
> > Unless we treat the submit fence as a weak dependency here, we can't
> > timeslice between the two.
> 
> Yes it is fine, once the initial submit was controlled by a fence it is 
> okay to re-order.

Right. That we can't submit the second batch before the master, even if
the master is blocked is covered in gem_exec_fence/parallel. Hmm, but
that only covers submit fences on other engines (simply because it wants
to check the submit fences complete before the master, and didn't assume
timeslicing). So there's room for another test here, where we have both
requests on the same engine, and block the master.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
