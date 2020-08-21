Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CC524D1D1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 11:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98E46E11B;
	Fri, 21 Aug 2020 09:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BDF6E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 09:54:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22195973-1500050 for multiple; Fri, 21 Aug 2020 10:54:23 +0100
MIME-Version: 1.0
In-Reply-To: <20200821095129.GF3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821095129.GF3354@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joerg Roedel <jroedel@suse.de>
Date: Fri, 21 Aug 2020 10:54:22 +0100
Message-ID: <159800366215.29194.8455636122843151159@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/4] mm: Export flush_vm_area() to sync the
 PTEs upon construction
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Joerg Roedel (2020-08-21 10:51:29)
> On Fri, Aug 21, 2020 at 09:50:08AM +0100, Chris Wilson wrote:
> > The alloc_vm_area() is another method for drivers to
> > vmap/map_kernel_range that uses apply_to_page_range() rather than the
> > direct vmalloc walkers. This is missing the page table modification
> > tracking, and the ability to synchronize the PTE updates afterwards.
> > Provide flush_vm_area() for the users of alloc_vm_area() that assumes
> > the worst and ensures that the page directories are correctly flushed
> > upon construction.
> > 
> > The impact is most pronounced on x86_32 due to the delayed set_pmd().
> > 
> > Reported-by: Pavel Machek <pavel@ucw.cz>
> > References: 2ba3e6947aed ("mm/vmalloc: track which page-table levels were modified")
> > References: 86cf69f1d893 ("x86/mm/32: implement arch_sync_kernel_mappings()")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Joerg Roedel <jroedel@suse.de>
> > Cc: Linus Torvalds <torvalds@linux-foundation.org>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Pavel Machek <pavel@ucw.cz>
> > Cc: David Vrabel <david.vrabel@citrix.com>
> > Cc: <stable@vger.kernel.org> # v5.8+
> > ---
> >  include/linux/vmalloc.h |  1 +
> >  mm/vmalloc.c            | 16 ++++++++++++++++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
> > index 0221f852a7e1..a253b27df0ac 100644
> > --- a/include/linux/vmalloc.h
> > +++ b/include/linux/vmalloc.h
> > @@ -204,6 +204,7 @@ static inline void set_vm_flush_reset_perms(void *addr)
> >  
> >  /* Allocate/destroy a 'vmalloc' VM area. */
> >  extern struct vm_struct *alloc_vm_area(size_t size, pte_t **ptes);
> > +extern void flush_vm_area(struct vm_struct *area);
> >  extern void free_vm_area(struct vm_struct *area);
> >  
> >  /* for /dev/kmem */
> > diff --git a/mm/vmalloc.c b/mm/vmalloc.c
> > index b482d240f9a2..c41934486031 100644
> > --- a/mm/vmalloc.c
> > +++ b/mm/vmalloc.c
> > @@ -3078,6 +3078,22 @@ struct vm_struct *alloc_vm_area(size_t size, pte_t **ptes)
> >  }
> >  EXPORT_SYMBOL_GPL(alloc_vm_area);
> >  
> > +void flush_vm_area(struct vm_struct *area)
> > +{
> > +     unsigned long addr = (unsigned long)area->addr;
> > +
> > +     /* apply_to_page_range() doesn't track the damage, assume the worst */
> > +     if (ARCH_PAGE_TABLE_SYNC_MASK & (PGTBL_PTE_MODIFIED |
> > +                                      PGTBL_PMD_MODIFIED |
> > +                                      PGTBL_PUD_MODIFIED |
> > +                                      PGTBL_P4D_MODIFIED |
> > +                                      PGTBL_PGD_MODIFIED))
> > +             arch_sync_kernel_mappings(addr, addr + area->size);
> 
> This should happen in __apply_to_page_range() directly and look like
> this:

Ok. I thought it had to be after assigning the *ptep. If we apply the
sync first, do not have to worry about PGTBL_PTE_MODIFIED from the
*ptep?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
