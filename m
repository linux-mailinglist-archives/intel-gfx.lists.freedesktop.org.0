Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C475F21BCA3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 19:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616896EC11;
	Fri, 10 Jul 2020 17:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50ACE6EC11
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 17:56:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21781967-1500050 for multiple; Fri, 10 Jul 2020 18:56:32 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMVVEgW1OeuDWhaVSMq-hZ0qrfS-cr_5C0eKdDBiai9qA@mail.gmail.com>
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-5-chris@chris-wilson.co.uk>
 <CAM0jSHMVVEgW1OeuDWhaVSMq-hZ0qrfS-cr_5C0eKdDBiai9qA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jul 2020 18:56:29 +0100
Message-ID: <159440378956.23667.7409971550928963945@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Preallocate stashes for vma
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-07-10 18:48:31)
> On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > We need to make the DMA allocations used for page directories to be
> > performed up front so that we can include those allocations in our
> > memory reservation pass. The downside is that we have to assume the
> > worst case, even before we know the final layout, and always allocate
> > enough page directories for this object, even when there will be overlap.
> > This unfortunately can be quite expensive, especially as we have to
> > clear/reset the page directories and DMA pages, but it should only be
> > required during early phases of a workload when new objects are being
> > discovered, or after memory/eviction pressure when we need to rebind.
> > Once we reach steady state, the objects should not be moved and we no
> > longer need to preallocating the pages tables.
> >
> > It should be noted that the lifetime for the page directories DMA is
> > more or less decoupled from individual fences as they will be shared
> > across objects across timelines.
> >
> > v2: Only allocate enough PD space for the PTE we may use, we do not need
> > to allocate PD that will be left as scratch.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> 
> <snip>
> 
> >
> > +static unsigned long pd_count(u64 size, int shift)
> > +{
> > +       /* Beware later misalignment */
> > +       return (size + 2 * (BIT_ULL(shift) - 1)) >> shift;
> > +}
> > +
> > +int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
> > +                          struct i915_vm_pt_stash *stash,
> > +                          u64 size)
> > +{
> > +       unsigned long count;
> > +       int shift = 21;
> > +       int n;
> 
> if (gen >= 8)
>     shift = 21;
> else
>     shift = 22;
> 
> ?
> 
> Since pt=4M, pd=2G with the weird legacy ppgtt stuff?

I thought about it, but it just means we overallocate, and promptly free
again. That's not a huge issue for the single setup we do with the
aliasing-ppgtt, so I was waiting to see if there would be anything else to
spoil the simplicity of the levels. 128b address spaces anytime soon?

When the dust settled I was thinking more along the lines of
vm->pte_count? pte_width, maxptes, pte_shift?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
