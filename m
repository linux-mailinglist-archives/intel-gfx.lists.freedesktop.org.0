Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 981F6215E32
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 20:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF0B89FEA;
	Mon,  6 Jul 2020 18:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C938B89FEA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 18:20:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21732566-1500050 for multiple; Mon, 06 Jul 2020 19:20:38 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOHvMxtJWCzwkSc2egyL87pBnstyht302uFm=3s0_3xRg@mail.gmail.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-2-chris@chris-wilson.co.uk>
 <CAM0jSHOHvMxtJWCzwkSc2egyL87pBnstyht302uFm=3s0_3xRg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 06 Jul 2020 19:20:37 +0100
Message-ID: <159405963719.24180.7334853847982075377@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Preallocate stashes for vma
 page-directories
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-07-06 19:15:27)
> On Mon, 6 Jul 2020 at 07:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > We need to make the DMA allocations used for page directories to be
> > performed up front so that we can include those allocations in our
> > memory reservation pass. The downside is that we have to assume the
> > worst case, even before we know the final layout, and always allocate
> > enough page directories for this object, even when there will be overlap.
> >
> > It should be noted that the lifetime for the page directories DMA is
> > more or less decoupled from individual fences as they will be shared
> > across objects across timelines.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> <snip>
> 
> > @@ -874,11 +873,21 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> >                 return err;
> >
> >         if (flags & vma->vm->bind_async_flags) {
> > +               u64 max_size;
> > +
> >                 work = i915_vma_work();
> >                 if (!work) {
> >                         err = -ENOMEM;
> >                         goto err_pages;
> >                 }
> > +
> > +               work->vm = i915_vm_get(vma->vm);
> > +
> > +               /* Allocate enough page directories to cover worst case */
> > +               max_size = max(size, vma->size);
> > +               if (flags & PIN_MAPPABLE)
> > +                       max_size = max_t(u64, max_size, vma->fence_size);
> > +               i915_vm_alloc_pt_stash(vma->vm, &work->stash, max_size);
> 
> Why do we need to take into account size when allocating the page
> directories, and not just vma->size/fence_size, since the difference
> is only really padding? It could be gigantic thanks to pad_to_size.

We need to cover the PT entries we actually insert, which is indeed
vma->size. So yes, this is overkill, I was trying to match the size of
the node we create, but as you say we don't populate all of that node
and leave the unused portion/tail pointing to scratch.

That gets rid of some clumsy code!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
