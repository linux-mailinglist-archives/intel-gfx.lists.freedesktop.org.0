Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F7D1591AA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA626EE62;
	Tue, 11 Feb 2020 14:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC8A6EE60
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:16:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20187887-1500050 for multiple; Tue, 11 Feb 2020 14:15:59 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-4-chris@chris-wilson.co.uk>
 <5e404774-1e4b-1c8a-f5ca-45826d7bda86@linux.intel.com>
In-Reply-To: <5e404774-1e4b-1c8a-f5ca-45826d7bda86@linux.intel.com>
Message-ID: <158143055793.2303.1572726675050076513@skylake-alporthouse-com>
Date: Tue, 11 Feb 2020 14:15:57 +0000
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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

Quoting Tvrtko Ursulin (2020-02-11 13:41:22)
> 
> On 10/02/2020 20:57, Chris Wilson wrote:
> > +static void kill_context(struct i915_gem_context *ctx)
> > +{
> > +     if (!list_empty(&ctx->stale.engines))
> > +             kill_stale_engines(ctx);
> 
> Lets see.. set_engines can freely race with context_close. The former is 
> adding entries to the list under the lock, the latter is here inspecting 
> list state unlocked. But then proceeds to lock it and all is good if 
> false negative are not an issue. But looks like it could happen and then 
> it fails to clean up. All that is needed is for this thread to not see 
> the addition to the list. And since this is not a hot path how about you 
> just always call kill_state_engines?

Hmm. I didn't consider the race between close context and set-engines.

We would also need to reject the late addition of engines to a closed
context under the spinlock.

Ta.

> >   #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
> > diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> > index 51ba97daf2a0..bc6d4f8b78f0 100644
> > --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> > +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> > @@ -211,10 +211,23 @@ void i915_sw_fence_complete(struct i915_sw_fence *fence)
> >       __i915_sw_fence_complete(fence, NULL);
> >   }
> >   
> > -void i915_sw_fence_await(struct i915_sw_fence *fence)
> > +bool i915_sw_fence_await(struct i915_sw_fence *fence)
> >   {
> > -     debug_fence_assert(fence);
> > -     WARN_ON(atomic_inc_return(&fence->pending) <= 1);
> > +     int old, new;
> > +
> > +     /*
> > +      * It is only safe to add a new await to the fence while it has
> > +      * not yet been signaled.
> > +      */
> > +     new = atomic_read(&fence->pending);
> > +     do {
> > +             if (new < 1)
> > +                     return false;
> > +
> > +             old = new++;
> > +     } while ((new = atomic_cmpxchg(&fence->pending, old, new)) != old);
> 
> Simplify with atomic_try_cmpxchg?

I was under the mistaken impression we didn't have atomic_try_cmpxchg.

> I need a refresher on sw_fence->pending. (See your new comments and 
> raise you lack of old! ;)
> 
> -1 = completed
> 0 = ??

-1 = completed (all listeners awoken)
0 = signaled
1+ = pending waits (and yes we always start with 1 pending wait on behalf
of the caller)

> 1 = new, not waited upon
> 2 = waited upon

Maybe we don't really need -1? That was originally to avoid passing
FENCE_COMPLETE, FENCE_FREE but since we have the state, we don't need to
encode it? That would lead to a few small simplifications.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
