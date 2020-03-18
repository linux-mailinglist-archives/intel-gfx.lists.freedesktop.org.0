Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C394A189E3D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4396E90C;
	Wed, 18 Mar 2020 14:48:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1838A6E90C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:48:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20604280-1500050 for multiple; Wed, 18 Mar 2020 14:48:06 +0000
MIME-Version: 1.0
In-Reply-To: <b1cf4682-4374-1ec6-589e-8d1e0b0acd93@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-6-tvrtko.ursulin@linux.intel.com>
 <158453975088.6873.9360235878777457602@build.alporthouse.com>
 <3565cd32-5dd8-0d45-ee55-fb4fb51aa7bd@linux.intel.com>
 <158454197252.6873.7587021909076621666@build.alporthouse.com>
 <b1cf4682-4374-1ec6-589e-8d1e0b0acd93@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158454288525.6873.7636528424864486716@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 14:48:05 +0000
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Track runtime spent in
 unreachable intel_contexts
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

Quoting Tvrtko Ursulin (2020-03-18 14:38:53)
> 
> On 18/03/2020 14:32, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-03-18 14:13:14)
> >>
> >> On 18/03/2020 13:55, Chris Wilson wrote:
> >>> Quoting Tvrtko Ursulin (2020-03-18 12:11:34)
> >>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>
> >>>> As contexts are abandoned we want to remember how much GPU time they used
> >>>> (per class) so later we can used it for smarter purposes.
> >>>>
> >>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>> ---
> >>>>    drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
> >>>>    drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
> >>>>    2 files changed, 17 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> >>>> index 7c119a3a2cbd..5edf79ed6247 100644
> >>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> >>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> >>>> @@ -257,7 +257,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
> >>>>    {
> >>>>           struct i915_gem_engines *engines =
> >>>>                   container_of(rcu, struct i915_gem_engines, rcu);
> >>>> +       struct i915_gem_context *ctx = engines->ctx;
> >>>> +       struct i915_gem_engines_iter it;
> >>>> +       struct intel_context *ce;
> >>>> +
> >>>> +       /* Transfer accumulated runtime to the parent GEM context. */
> >>>> +       for_each_gem_engine(ce, engines, it) {
> >>>> +               unsigned int class = ce->engine->uabi_class;
> >>>>    
> >>>> +               GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
> >>>> +               atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
> >>>
> >>> Hmm, there's an odd situation where the free_engines_rcu could fire
> >>> before we do the final schedule_out of the context.
> >>>
> >>> GEM_BUG_ON(intel_context_inflight(ce)) to see if that's being too
> >>> paranoid.
> >>
> >> Deja vu.. have I forgotten to move this into intel_context_free while
> >> the purpose of keeping ce->gem_context valid was exactly to enable that.
> > 
> > I would rather not have it in gt/ if possible. The delay should be
> > nominal at worst.
> 
> But I thought your concern was this can miss the accumulation of the 
> last active period due active tracker triggering the rcu cleanup before 
> last context save. What do you then recommend?

That is the concern, but it's not a huge concern for me :)

I was tempted just to put a busywait here, rather than couple up a
notification scheme. Although...

We do have a notification here for the context_retire we could listen to
instead of listening to the request idling. If we use

	i915_sw_fence_await_active(&engines->fence,
				   &ce->active,
				   I915_ACTIVE_AWAIT_ALL);

instead, then the fence will not fire until the final barrier has
executed.

Tada!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
