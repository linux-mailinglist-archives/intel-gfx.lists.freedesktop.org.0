Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B507821872C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863726E8BC;
	Wed,  8 Jul 2020 12:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61096E8B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 12:25:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21752245-1500050 for multiple; Wed, 08 Jul 2020 13:25:16 +0100
MIME-Version: 1.0
In-Reply-To: <a63b3ab4-eca9-f804-2313-3dfdb6c60c0a@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-9-chris@chris-wilson.co.uk>
 <a63b3ab4-eca9-f804-2313-3dfdb6c60c0a@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 08 Jul 2020 13:25:14 +0100
Message-ID: <159421111444.17526.16367323516917668502@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915: Always defer fenced work to
 the worker
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

Quoting Tvrtko Ursulin (2020-07-08 13:18:21)
> 
> On 06/07/2020 07:19, Chris Wilson wrote:
> > Currently, if an error is raised we always call the cleanup locally
> > [and skip the main work callback]. However, some future users may need
> > to take a mutex to cleanup and so we cannot immediately execute the
> > cleanup as we may still be in interrupt context.
> > 
> > With the execute-immediate flag, for most cases this should result in
> > immediate cleanup of an error.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/i915_sw_fence_work.c | 25 +++++++++++------------
> >   1 file changed, 12 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > index a3a81bb8f2c3..29f63ebc24e8 100644
> > --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> > @@ -16,11 +16,14 @@ static void fence_complete(struct dma_fence_work *f)
> >   static void fence_work(struct work_struct *work)
> >   {
> >       struct dma_fence_work *f = container_of(work, typeof(*f), work);
> > -     int err;
> >   
> > -     err = f->ops->work(f);
> > -     if (err)
> > -             dma_fence_set_error(&f->dma, err);
> > +     if (!f->dma.error) {
> > +             int err;
> > +
> > +             err = f->ops->work(f);
> > +             if (err)
> > +                     dma_fence_set_error(&f->dma, err);
> > +     }
> >   
> >       fence_complete(f);
> >       dma_fence_put(&f->dma);
> > @@ -36,15 +39,11 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
> >               if (fence->error)
> >                       dma_fence_set_error(&f->dma, fence->error);
> >   
> > -             if (!f->dma.error) {
> > -                     dma_fence_get(&f->dma);
> > -                     if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> > -                             fence_work(&f->work);
> > -                     else
> > -                             queue_work(system_unbound_wq, &f->work);
> > -             } else {
> > -                     fence_complete(f);
> > -             }
> > +             dma_fence_get(&f->dma);
> > +             if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> > +                     fence_work(&f->work);
> > +             else
> > +                     queue_work(system_unbound_wq, &f->work);
> 
> Right the commit wording really confused me since it is obviously still 
> deferring stuff to the worker. By "fenced work" I understand you 
> actually mean more like "never signal non-immediate work from the notify 
> callback" (even in the error case).

Work that had to wait for a fence should always take the worker to avoid
being run in interrupt context (from the fence signal callback), even in
the case of errors [so that the work can take its carefully considered
mutexes]. I anticipate that most errors will be generated before we
starting waiting for fences, and those will remain immediately executed
(when asked to do so by the caller).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
