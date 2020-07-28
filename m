Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0D8230C84
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 16:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8551189BAE;
	Tue, 28 Jul 2020 14:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6AE89BAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 14:35:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21958974-1500050 for multiple; Tue, 28 Jul 2020 15:35:20 +0100
MIME-Version: 1.0
In-Reply-To: <fd62e818-2f60-3c34-afed-27d9226e3c65@linux.intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-9-chris@chris-wilson.co.uk>
 <fd62e818-2f60-3c34-afed-27d9226e3c65@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 15:35:20 +0100
Message-ID: <159594692059.665.12392782242451456198@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 09/66] drm/i915: Provide a fastpath for
 waiting on vma bindings
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

Quoting Tvrtko Ursulin (2020-07-17 14:23:22)
> 
> On 15/07/2020 12:50, Chris Wilson wrote:
> > Before we can execute a request, we must wait for all of its vma to be
> > bound. This is a frequent operation for which we can optimise away a
> > few atomic operations (notably a cmpxchg) in lieu of the RCU protection.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/i915_active.h | 15 +++++++++++++++
> >   drivers/gpu/drm/i915/i915_vma.c    |  9 +++++++--
> >   2 files changed, 22 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> > index b9e0394e2975..fb165d3f01cf 100644
> > --- a/drivers/gpu/drm/i915/i915_active.h
> > +++ b/drivers/gpu/drm/i915/i915_active.h
> > @@ -231,4 +231,19 @@ struct i915_active *i915_active_create(void);
> >   struct i915_active *i915_active_get(struct i915_active *ref);
> >   void i915_active_put(struct i915_active *ref);
> >   
> > +static inline int __i915_request_await_exclusive(struct i915_request *rq,
> > +                                              struct i915_active *active)
> > +{
> > +     struct dma_fence *fence;
> > +     int err = 0;
> > +
> > +     fence = i915_active_fence_get(&active->excl);
> > +     if (fence) {
> > +             err = i915_request_await_dma_fence(rq, fence);
> > +             dma_fence_put(fence);
> > +     }
> > +
> > +     return err;
> > +}
> > +
> >   #endif /* _I915_ACTIVE_H_ */
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index bc64f773dcdb..cd12047c7791 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -1167,6 +1167,12 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
> >               list_del(&vma->obj->userfault_link);
> >   }
> >   
> > +static int
> > +__i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
> > +{
> > +     return __i915_request_await_exclusive(rq, &vma->active);
> > +}
> > +
> >   int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
> >   {
> >       int err;
> > @@ -1174,8 +1180,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
> >       GEM_BUG_ON(!i915_vma_is_pinned(vma));
> >   
> >       /* Wait for the vma to be bound before we start! */
> > -     err = i915_request_await_active(rq, &vma->active,
> > -                                     I915_ACTIVE_AWAIT_EXCL);
> > +     err = __i915_request_await_bind(rq, vma);
> >       if (err)
> >               return err;
> >   
> > 
> 
> Looks like for like, apart from missing i915_active_acquire_if_busy 
> across the operation. Remind me please what is acquire/release 
> protecting against? :)

To protect the rbtree walk. So, this is the function we started with for
active_await, but when we added the option to walk the entire rbtree as
well, we pulled it all under a single acquire/release. perf suggests
that was a mistake if all we frequently want to do is grab the exclusive
fence for an await.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
