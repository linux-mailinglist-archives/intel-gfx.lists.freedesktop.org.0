Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E95417663E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 22:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC8589E8C;
	Mon,  2 Mar 2020 21:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5882E89E8C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 21:44:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20419175-1500050 for multiple; Mon, 02 Mar 2020 21:43:28 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87d09u7gqy.fsf@gaia.fi.intel.com>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <87d09u7gqy.fsf@gaia.fi.intel.com>
Message-ID: <158318540669.2606.6808036946872147044@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 02 Mar 2020 21:43:26 +0000
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915/gem: Consolidate
 ctx->engines[] release
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

Quoting Mika Kuoppala (2020-03-02 18:29:09)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> > @@ -491,30 +491,104 @@ static void kill_engines(struct i915_gem_engines *engines)
> >  static void kill_stale_engines(struct i915_gem_context *ctx)
> >  {
> >       struct i915_gem_engines *pos, *next;
> > -     unsigned long flags;
> >  
> > -     spin_lock_irqsave(&ctx->stale.lock, flags);
> > +     spin_lock_irq(&ctx->stale.lock);
> 
> Reader ponders why it was with flags on the first place.

Hindsight is 20/20.

> > +     GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
> >       list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
> > -             if (!i915_sw_fence_await(&pos->fence))
> > +             if (!i915_sw_fence_await(&pos->fence)) {
> > +                     list_del_init(&pos->link);
> 
> Is this for making the bed for kill path list_empty?

It's acknowledging that if we are racing in FENCE_COMPLETE, we don't
need to kill it.

> > +static void engines_idle_release(struct i915_gem_context *ctx,
> > +                              struct i915_gem_engines *engines)
> > +{
> > +     struct i915_gem_engines_iter it;
> > +     struct intel_context *ce;
> > +
> > +     i915_sw_fence_init(&engines->fence, engines_notify);
> > +     INIT_LIST_HEAD(&engines->link);
> > +
> > +     engines->ctx = i915_gem_context_get(ctx);
> > +
> > +     for_each_gem_engine(ce, engines, it) {
> > +             struct dma_fence *fence;
> > +             int err = 0;
> > +
> > +             /* serialises with execbuf */
> > +             RCU_INIT_POINTER(ce->gem_context, NULL);
> > +             if (!intel_context_pin_if_active(ce))
> > +                     continue;
> 
> Ok so this should ensure the lifetime past the execbufs.
> 
> > +
> > +             fence = i915_active_fence_get(&ce->timeline->last_request);

Note it's this fence_get + ce->gem_context that combine to give us the
execbuf closure guard.

> > +             if (fence) {
> > +                     err = i915_sw_fence_await_dma_fence(&engines->fence,
> > +                                                         fence, 0,
> > +                                                         GFP_KERNEL);
> > +                     dma_fence_put(fence);
> > +             }
> > +             intel_context_unpin(ce);
> > +             if (err < 0)
> > +                     goto kill;
> > +     }
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
