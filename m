Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 500A218F318
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 11:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDCA899A3;
	Mon, 23 Mar 2020 10:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA543899A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 10:46:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20658787-1500050 for multiple; Mon, 23 Mar 2020 10:46:28 +0000
MIME-Version: 1.0
In-Reply-To: <ddf2b2b0-1a81-943c-21eb-b7a8595fa3c3@linux.intel.com>
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-7-chris@chris-wilson.co.uk>
 <ddf2b2b0-1a81-943c-21eb-b7a8595fa3c3@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158496038838.17851.3759554685472513408@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 10:46:28 +0000
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Immediately execute the
 fenced work
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

Quoting Tvrtko Ursulin (2020-03-23 10:37:22)
> 
> On 23/03/2020 09:28, Chris Wilson wrote:
> > If the caller allows and we do not have to wait for any signals,
> > immediately execute the work within the caller's process. By doing so we
> > avoid the overhead of scheduling a new task, and the latency in
> > executing it, at the cost of pulling that work back into the immediate
> > context. (Sometimes we still prefer to offload the task to another cpu,
> > especially if we plan on executing many such tasks in parallel for this
> > client.)
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  2 +-
> >   drivers/gpu/drm/i915/i915_sw_fence_work.c      |  5 ++++-
> >   drivers/gpu/drm/i915/i915_sw_fence_work.h      | 12 ++++++++++++
> >   drivers/gpu/drm/i915/i915_vma.c                |  2 +-
> >   4 files changed, 18 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index c2bd5accde0c..e80c6f613feb 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1784,7 +1784,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
> >       dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
> >       dma_resv_unlock(shadow->resv);
> >   
> > -     dma_fence_work_commit(&pw->base);
> > +     dma_fence_work_commit_imm(&pw->base);
> >       return 0;
> >   
> >   err_batch_unlock:
> > diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > index 997b2998f1f2..a3a81bb8f2c3 100644
> > --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > @@ -38,7 +38,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
> >   
> >               if (!f->dma.error) {
> >                       dma_fence_get(&f->dma);
> > -                     queue_work(system_unbound_wq, &f->work);
> > +                     if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> > +                             fence_work(&f->work);
> > +                     else
> > +                             queue_work(system_unbound_wq, &f->work);
> >               } else {
> >                       fence_complete(f);
> >               }
> > diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
> > index 3a22b287e201..0719d661dc9c 100644
> > --- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
> > +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
> > @@ -32,6 +32,10 @@ struct dma_fence_work {
> >       const struct dma_fence_work_ops *ops;
> >   };
> >   
> > +enum {
> > +     DMA_FENCE_WORK_IMM = DMA_FENCE_FLAG_USER_BITS,
> > +};
> > +
> >   void dma_fence_work_init(struct dma_fence_work *f,
> >                        const struct dma_fence_work_ops *ops);
> >   int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal);
> > @@ -41,4 +45,12 @@ static inline void dma_fence_work_commit(struct dma_fence_work *f)
> >       i915_sw_fence_commit(&f->chain);
> >   }
> >   
> > +static inline void dma_fence_work_commit_imm(struct dma_fence_work *f)
> > +{
> > +     if (atomic_read(&f->chain.pending) <= 1)
> > +             __set_bit(DMA_FENCE_WORK_IMM, &f->dma.flags);
> > +
> 
> What is someone bumps pending to 2 at this point?

That's invalid. The sequence is

create a worker
... add all async waits ...
commit

Since the worker fires when pending waits hits zero, you cannot add any
more async waits after commit in a race free manner. You have to play
games, such as "is this fence already signaled? no, let's delay it
again". If you are playing such games, you know already and shouldn't be
trying to execute synchronously/immediately.

A BUG_ON(!dma_fence_signaled(&f->dma)) would suffice to catch most such
races.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
