Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D68C23EEDA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 16:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928CF6E9EA;
	Fri,  7 Aug 2020 14:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E194E6E9EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 14:14:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22062014-1500050 for multiple; Fri, 07 Aug 2020 15:14:17 +0100
MIME-Version: 1.0
In-Reply-To: <3771a026-4aec-a532-36ff-7c96797e96e8@linux.intel.com>
References: <20200807125440.3419-1-chris@chris-wilson.co.uk>
 <20200807125440.3419-2-chris@chris-wilson.co.uk>
 <3771a026-4aec-a532-36ff-7c96797e96e8@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 15:14:15 +0100
Message-ID: <159680965598.9674.12300621626630290030@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Protect context lifetime
 with RCU
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

Quoting Tvrtko Ursulin (2020-08-07 15:10:32)
> 
> On 07/08/2020 13:54, Chris Wilson wrote:
> > Allow a brief period for continued access to a dead intel_context by
> > deferring the release of the struct until after an RCU grace period.
> > As we are using a dedicated slab cache for the contexts, we can defer
> > the release of the slab pages via RCU, with the caveat that individual
> > structs may be reused from the freelist within an RCU grace period. To
> > handle that, we have to avoid clearing members of the zombie struct.
> > 
> > This is required for a later patch to handle locking around virtual
> > requests in the signaler, as those requests may want to move between
> > engines and be destroyed while we are holding b->irq_lock on a physical
> > engine.
> > 
> > v2: Drop mutex_reinit(), if we never mark the mutex as destroyed we
> > don't need to reset the debug code, at the loss of having the mutex
> > debug code spot us attempting to destroy a locked mutex.
> > v3: As the intended use will remain strongly referenced counted, with
> > very little inflight access across reuse, drop the ctor.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_context.c       | 27 ++++++++++++++-----
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |  6 +++++
> >   2 files changed, 26 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > index 52db2bde44a3..8eebb31c6c28 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > @@ -22,7 +22,7 @@ static struct i915_global_context {
> >   
> >   static struct intel_context *intel_context_alloc(void)
> >   {
> > -     return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
> > +     return kmem_cache_alloc(global.slab_ce, GFP_KERNEL);
> >   }
> >   
> >   void intel_context_free(struct intel_context *ce)
> > @@ -158,12 +158,12 @@ void intel_context_unpin(struct intel_context *ce)
> >       /*
> >        * Once released, we may asynchronously drop the active reference.
> >        * As that may be the only reference keeping the context alive,
> > -      * take an extra now so that it is not freed before we finish
> > +      * hold onto RCU so that it is not freed before we finish
> >        * dereferencing it.
> >        */
> > -     intel_context_get(ce);
> > +     rcu_read_lock();
> >       intel_context_active_release(ce);
> > -     intel_context_put(ce);
> > +     rcu_read_unlock();
> 
> Strong reference here couldn't stay?

It really shouldn't be here in the first place...

But no, it doesn't have to change in this patch.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
