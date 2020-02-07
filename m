Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6844E155C39
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAC86EAD1;
	Fri,  7 Feb 2020 16:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3DC6EAD1
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:55:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20151311-1500050 for multiple; Fri, 07 Feb 2020 16:55:37 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <aa563e99-fc8a-8f1c-12b7-2f867a3eb49a@linux.intel.com>
References: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
 <aa563e99-fc8a-8f1c-12b7-2f867a3eb49a@linux.intel.com>
Message-ID: <158109453546.16098.11614856083663256712@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 07 Feb 2020 16:55:35 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Don't leak non-persistent
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-02-07 16:46:55)
> 
> If you want quick&dirty feedback read below, if you want something 
> smarter wait some more. :)
> 
> On 07/02/2020 11:11, Chris Wilson wrote:
> > +static void kill_stale_engines(struct i915_gem_context *ctx)
> > +{
> > +     struct i915_gem_engines *pos, *next;
> > +     unsigned long flags;
> > +
> > +     spin_lock_irqsave(&ctx->stale.lock, flags);
> > +     list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
> > +             if (!i915_sw_fence_await(&pos->fence))
> > +                     continue;
> 
> When is this path hit?

Race with the interrupt callback.

> > +
> > +             spin_unlock_irqrestore(&ctx->stale.lock, flags);
> > +
> > +             kill_engines(pos);
> > +
> > +             spin_lock_irqsave(&ctx->stale.lock, flags);
> > +             list_safe_reset_next(pos, next, link);
> > +             list_del_init(&pos->link);
> > +
> > +             i915_sw_fence_complete(&pos->fence);
> 
> This will trigger FENCE_FREE below?

Yes, the final completion sends both notifications.

> > +static int engines_notify(struct i915_sw_fence *fence,
> > +                       enum i915_sw_fence_notify state)
> > +{
> > +     struct i915_gem_engines *engines =
> > +             container_of(fence, typeof(*engines), fence);
> > +
> > +     switch (state) {
> > +     case FENCE_COMPLETE:
> > +             if (!list_empty(&engines->link)) {
> 
> Why it is safe to look at the state of engines->link outside the lock? 
> We can have a race between context close and completion event on a stale 
> engine, right?

There is no race :)

It's just coordination with kill_stale_engines().

> > +static void engines_idle_release(struct i915_gem_engines *engines)
> > +{
> > +     struct i915_gem_engines_iter it;
> > +     struct intel_context *ce;
> > +     unsigned long flags;
> > +
> > +     GEM_BUG_ON(!engines);
> > +     i915_sw_fence_init(&engines->fence, engines_notify);
> > +
> > +     spin_lock_irqsave(&engines->ctx->stale.lock, flags);
> > +     list_add(&engines->link, &engines->ctx->stale.engines);
> > +     spin_unlock_irqrestore(&engines->ctx->stale.lock, flags);
> > +
> > +     for_each_gem_engine(ce, engines, it) {
> > +             struct dma_fence *fence;
> > +             int err;
> > +
> > +             if (!ce->timeline)
> > +                     continue;
> 
> When does this happen?

Replacing the default engines before use. Or any engine set prior to
use.

> > +
> > +             fence = i915_active_fence_get(&ce->timeline->last_request);
> > +             if (!fence)
> > +                     continue;
> > +
> > +             err = i915_sw_fence_await_dma_fence(&engines->fence,
> > +                                                 fence, 0,
> > +                                                 GFP_KERNEL);
> > +
> > +             dma_fence_put(fence);
> > +             if (err < 0) {
> > +                     kill_engines(engines);
> > +                     break;
> 
> Okay to leave already setup awaits active in this case?

Yes. They will be signaled. It may seem a bit harsh, but we fell into an
unlikely error path and have to do so something.

> > -void i915_sw_fence_await(struct i915_sw_fence *fence)
> > +bool i915_sw_fence_await(struct i915_sw_fence *fence)
> >   {
> > -     debug_fence_assert(fence);
> > -     WARN_ON(atomic_inc_return(&fence->pending) <= 1);
> > +     int old, new;
> > +
> > +     new = atomic_read(&fence->pending);
> > +     do {
> > +             if (new < 1)
> > +                     return false;
> > +
> > +             old = new++;
> > +     } while ((new = atomic_cmpxchg(&fence->pending, old, new)) != old);
> > +
> > +     return true;
> 
> No idea what's happening here. Why was the existing code inadequate and 
> what are you changing?

I needed an await_if_busy to handle the race with the interrupts.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
