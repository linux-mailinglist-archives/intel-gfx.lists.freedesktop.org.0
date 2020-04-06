Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D237E19F674
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7AF56E239;
	Mon,  6 Apr 2020 13:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577D16E239
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 13:09:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20816039-1500050 for multiple; Mon, 06 Apr 2020 14:09:43 +0100
MIME-Version: 1.0
In-Reply-To: <ea4ee702-3384-6978-cac4-870c85a88a21@linux.intel.com>
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
 <20200406091254.17675-2-chris@chris-wilson.co.uk>
 <ea4ee702-3384-6978-cac4-870c85a88a21@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158617858419.6356.8153787916305532205@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 06 Apr 2020 14:09:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Allow asynchronous waits on
 the i915_active barriers
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

Quoting Tvrtko Ursulin (2020-04-06 13:06:03)
> 
> On 06/04/2020 10:12, Chris Wilson wrote:
> > Allow the caller to also wait upon the barriers stored in i915_active.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/i915_active.c | 60 ++++++++++++++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_active.h |  1 +
> >   2 files changed, 61 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> > index d5e24be759f7..048ab9edd2c2 100644
> > --- a/drivers/gpu/drm/i915/i915_active.c
> > +++ b/drivers/gpu/drm/i915/i915_active.c
> > @@ -542,6 +542,55 @@ static int __await_active(struct i915_active_fence *active,
> >       return 0;
> >   }
> >   
> > +struct wait_barrier {
> > +     struct wait_queue_entry base;
> > +     struct i915_active *ref;
> > +};
> > +
> > +static int
> > +barrier_wake(wait_queue_entry_t *wq, unsigned int mode, int flags, void *key)
> > +{
> > +     struct wait_barrier *wb = container_of(wq, typeof(*wb), base);
> > +
> > +     if (i915_active_is_idle(wb->ref)) { /* shared waitqueue, must check! */
> 
> Who shares it?

__var_waitqueue(ref) => uses a one of a set of global workqueues based
off hash(ref)

Or we add a wait_queue_head_t to active, but we would still need to
recheck as it may be reused as we are signaled.

> > +     if (flags & I915_ACTIVE_AWAIT_BARRIER) {
> > +             err = flush_lazy_signals(ref);
> > +             if (err)
> > +                     return err;
> > +
> > +             err = __await_barrier(ref, arg);
> > +             if (err)
> > +                     return err;
> >
> 
> Could have a single set of active_acquire_if_busy/release over the 
> previous and this new block. Not sure if that would help with any 
> atomicity concerns, or if there are such.

It would not affect correctness, it will just depend on taste.

>   +     }
> > +
> >       return 0;
> >   }
> >   
> > @@ -582,6 +641,7 @@ int i915_request_await_active(struct i915_request *rq,
> >                             struct i915_active *ref,
> >                             unsigned int flags)
> >   {
> > +     GEM_BUG_ON(flags & I915_ACTIVE_AWAIT_BARRIER);
> 
> Why is this an error?

Because I'm being lazy and not hooking up the correct signaling path.

Instead of signaling arg == fence, we would need &request->submit. Just
messy on how to pass down the details.

Maybe 
	return await_active(ref, flags, rq_await_fence, rq, &rq->submit);
and
	return await_active(ref, flags, sw_await_fence, fence, fence);

That seems better than I was expecting.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
