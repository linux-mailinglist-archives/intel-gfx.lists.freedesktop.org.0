Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7982212E5D1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 12:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298506E0D1;
	Thu,  2 Jan 2020 11:44:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB5E6E0D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 11:44:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19748319-1500050 for multiple; Thu, 02 Jan 2020 11:44:27 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPFgKBG5OPoRaWkG8mzFb=ztMxxR2WDxV=7h7nBELrD6A@mail.gmail.com>
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
 <20200102103757.1344827-1-chris@chris-wilson.co.uk>
 <CAM0jSHPFgKBG5OPoRaWkG8mzFb=ztMxxR2WDxV=7h7nBELrD6A@mail.gmail.com>
Message-ID: <157796546591.3681.18159145702540646394@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 02 Jan 2020 11:44:25 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support discontiguous lmem
 object maps
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

Quoting Matthew Auld (2020-01-02 11:39:41)
> On Thu, 2 Jan 2020 at 10:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Create a vmap for discontinguous lmem objects to support
> > i915_gem_object_pin_map().
> 
> Yes, please.
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> 
> [snip]
> 
> > @@ -288,12 +284,28 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
> >                 pgprot = pgprot_writecombine(PAGE_KERNEL_IO);
> >                 break;
> >         }
> > -       addr = vmap(pages, n_pages, 0, pgprot);
> >
> > -       if (pages != stack_pages)
> > -               kvfree(pages);
> > +       if (i915_gem_object_has_struct_page(obj)) {
> > +               struct sgt_iter iter;
> > +               struct page *page;
> > +               pte_t **ptes = mem;
> > +
> > +               for_each_sgt_page(page, iter, sgt)
> > +                       **ptes++ = mk_pte(page, pgprot);
> > +       } else {
> > +               const resource_size_t iomap = obj->mm.region->iomap.base;
> > +               struct sgt_iter iter;
> > +               dma_addr_t addr;
> > +               pte_t **ptes = mem;
> > +
> > +               for_each_sgt_daddr(addr, iter, sgt)
> 
> addr -= region.start; for poor old fake local-memory.

Positive? I wasn't sure since we are using the physical address and not
a mapping within the mapping?

It's hard to tell, since so long as the address exists we can read/write
to it, and only later pay the consequences of corrupting someone else's
memory.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
