Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C734017057D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 18:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B936EB15;
	Wed, 26 Feb 2020 17:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70286EB15
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 17:06:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20360244-1500050 for multiple; Wed, 26 Feb 2020 17:06:38 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
 <20200225082233.274530-9-chris@chris-wilson.co.uk>
 <d29def7f-7be2-2415-3c09-b3bacd6035ce@linux.intel.com>
In-Reply-To: <d29def7f-7be2-2415-3c09-b3bacd6035ce@linux.intel.com>
Message-ID: <158273679788.4613.6366893168115680815@skylake-alporthouse-com>
Date: Wed, 26 Feb 2020 17:06:37 +0000
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915/gem: Consolidate
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

Quoting Tvrtko Ursulin (2020-02-26 16:41:03)
> 
> On 25/02/2020 08:22, Chris Wilson wrote:
> > Use the same engine_idle_release() routine for cleaning all old
> > ctx->engine[] state, closing any potential races with concurrent execbuf
> > submission.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1241
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> > Reorder set-closed/engine_idle_release to avoid premature killing
> > Take a reference to prevent racing context free with engine cleanup
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 199 +++++++++++---------
> >   drivers/gpu/drm/i915/gem/i915_gem_context.h |   1 -
> >   2 files changed, 108 insertions(+), 92 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index adcebf22a3d3..0862a77d81ed 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -243,7 +243,6 @@ static void __free_engines(struct i915_gem_engines *e, unsigned int count)
> >               if (!e->engines[count])
> >                       continue;
> >   
> > -             RCU_INIT_POINTER(e->engines[count]->gem_context, NULL);
> >               intel_context_put(e->engines[count]);
> >       }
> >       kfree(e);
> > @@ -256,7 +255,11 @@ static void free_engines(struct i915_gem_engines *e)
> >   
> >   static void free_engines_rcu(struct rcu_head *rcu)
> >   {
> > -     free_engines(container_of(rcu, struct i915_gem_engines, rcu));
> > +     struct i915_gem_engines *engines =
> > +             container_of(rcu, struct i915_gem_engines, rcu);
> > +
> > +     i915_sw_fence_fini(&engines->fence);
> 
> This was missing so far?

Yes. Completely missed it until throwing it in a loop long enough for
kmalloc recycling to catch up. And having ODEBUG enabled helps!

> > +static int engines_notify(struct i915_sw_fence *fence,
> > +                       enum i915_sw_fence_notify state)
> > +{
> > +     struct i915_gem_engines *engines =
> > +             container_of(fence, typeof(*engines), fence);
> > +
> > +     switch (state) {
> > +     case FENCE_COMPLETE:
> > +             if (!list_empty(&engines->link)) {
> > +                     struct i915_gem_context *ctx = engines->ctx;
> > +                     unsigned long flags;
> > +
> > +                     spin_lock_irqsave(&ctx->stale.lock, flags);
> > +                     list_del(&engines->link);
> > +                     spin_unlock_irqrestore(&ctx->stale.lock, flags);
> > +             }
> > +             break;
> > +
> > +     case FENCE_FREE:
> > +             i915_gem_context_put(engines->ctx);
> 
> This put can go under FENCE_COMPLETE?

Yes. Either works, I thought it was more of a release operation. But if
you would rather FENCE_FREE == just call_rcu(free_engines_rcu), I can see
the elegance in that.

> > +             init_rcu_head(&engines->rcu);
> > +             call_rcu(&engines->rcu, free_engines_rcu);
> > +             break;
> > +     }
> > +
> > +     return NOTIFY_DONE;
> > +}
> > +
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
> > +             int err = 0;
> > +
> > +             RCU_INIT_POINTER(ce->gem_context, NULL);
> > +
> > +             if (!ce->timeline) { /* XXX serialisation with execbuf? */
> > +                     intel_context_set_banned(ce);
> 
> What is banned for?

Banned is how we prevent further execution. The problem here is making
sure we catch concurrent execbuf allocating/pinning the context. This
does not and leaves a window in which between the !ce->timline and
set_banned the other thread could see in with the hanging batch :|

On the other hand, we don't want to mark the context as banned too
early. So we unfortunately can't mark it unconditionally.

> > +                     continue;
> > +             }
> > +
> > +             mutex_lock(&ce->timeline->mutex);
> > +             if (!list_empty(&ce->timeline->requests)) {
> > +                     struct i915_request *rq;
> > +
> > +                     rq = list_last_entry(&ce->timeline->requests,
> > +                                          typeof(*rq),
> > +                                          link);
> 
> Why no more i915_active_fence_get?

I was looking for something concrete with which we can serialise with
execbuf, the timeline mutex is one and we can check for a late ban
inside execbuf.

But there's still the tiny window above.

Hmm. Actually the ce->pin_mutex might work^Whelp for execbuf serialisation.
Not by itself it won't though. But it should be able to close the
!ce->timeline hole...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
