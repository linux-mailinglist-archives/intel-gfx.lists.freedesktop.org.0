Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9DA207B0E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 19:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15816E314;
	Wed, 24 Jun 2020 17:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7066E314
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 17:58:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21606053-1500050 for multiple; Wed, 24 Jun 2020 18:58:53 +0100
MIME-Version: 1.0
In-Reply-To: <20200624165057.GJ6578@ziepe.ca>
References: <20200624080248.3701-1-chris@chris-wilson.co.uk>
 <20200624121053.GD6578@ziepe.ca>
 <159300126338.4527.3968787379471939056@build.alporthouse.com>
 <20200624123910.GA3178169@ziepe.ca>
 <159300796224.4527.2014771396582759689@build.alporthouse.com>
 <20200624141604.GH6578@ziepe.ca>
 <159300850942.4527.8335506003268197914@build.alporthouse.com>
 <20200624142544.GI6578@ziepe.ca>
 <159300945202.4527.4366416413140642633@build.alporthouse.com>
 <20200624165057.GJ6578@ziepe.ca>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <159302152915.4527.9099070806700792078@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 24 Jun 2020 18:58:49 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] mm/mmu_notifier: Mark up direct reclaim
 paths with MAYFAIL
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
Cc: linux-mm@kvack.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jason Gunthorpe (2020-06-24 17:50:57)
> On Wed, Jun 24, 2020 at 03:37:32PM +0100, Chris Wilson wrote:
> > Quoting Jason Gunthorpe (2020-06-24 15:25:44)
> > > On Wed, Jun 24, 2020 at 03:21:49PM +0100, Chris Wilson wrote:
> > > > Quoting Jason Gunthorpe (2020-06-24 15:16:04)
> > > > > On Wed, Jun 24, 2020 at 03:12:42PM +0100, Chris Wilson wrote:
> > > > > > Quoting Jason Gunthorpe (2020-06-24 13:39:10)
> > > > > > > On Wed, Jun 24, 2020 at 01:21:03PM +0100, Chris Wilson wrote:
> > > > > > > > Quoting Jason Gunthorpe (2020-06-24 13:10:53)
> > > > > > > > > On Wed, Jun 24, 2020 at 09:02:47AM +0100, Chris Wilson wrote:
> > > > > > > > > > When direct reclaim enters the shrinker and tries to reclaim pages, it
> > > > > > > > > > has to opportunitically unmap them [try_to_unmap_one]. For direct
> > > > > > > > > > reclaim, the calling context is unknown and may include attempts to
> > > > > > > > > > unmap one page of a dma object while attempting to allocate more pages
> > > > > > > > > > for that object. Pass the information along that we are inside an
> > > > > > > > > > opportunistic unmap that can allow that page to remain referenced and
> > > > > > > > > > mapped, and let the callback opt in to avoiding a recursive wait.
> > > > > > > > > 
> > > > > > > > > i915 should already not be holding locks shared with the notifiers
> > > > > > > > > across allocations that can trigger reclaim. This is already required
> > > > > > > > > to use notifiers correctly anyhow - why do we need something in the
> > > > > > > > > notifiers?
> > > > > > > > 
> > > > > > > > for (n = 0; n < num_pages; n++)
> > > > > > > >       pin_user_page()
> > > > > > > > 
> > > > > > > > may call try_to_unmap_page from the lru shrinker for [0, n-1].
> > > > > > > 
> > > > > > > Yes, of course you can't hold any locks that intersect with notifiers
> > > > > > > across pin_user_page()/get_user_page()
> > > > > > 
> > > > > > What lock though? It's just the page refcount, shrinker asks us to drop
> > > > > > it [via mmu], we reply we would like to keep using that page as freeing
> > > > > > it for the current allocation is "robbing Peter to pay Paul".
> > > > > 
> > > > > Maybe I'm unclear what this series is actually trying to fix? 
> > > > > 
> > > > > You said "avoiding a recursive wait" which sounds like some locking
> > > > > deadlock to me.
> > > > 
> > > > It's the shrinker being called while we are allocating for/on behalf of
> > > > the object. As we are actively using the object, we don't want to free
> > > > it -- the partial object allocation being the clearest, if the object
> > > > consists of 2 pages, trying to free page 0 in order to allocate page 1
> > > > has to fail (and the shrinker should find another candidate to reclaim,
> > > > or fail the allocation).
> > > 
> > > mmu notifiers are not for influencing policy of the mm.
> > 
> > It's policy is "this may fail" regardless of the mmu notifier at this
> > point. That is not changed.
> 
> MMU notifiers are for tracking updates, they are not allowed to fail.
> The one slightly weird case of non-blocking is the only exception.
> 
> > Your suggestion is that we move the pages to the unevictable mapping so
> > that the shrinker LRU is never invoked on pages we have grabbed with
> > pin_user_page. Does that work with the rest of the mmu notifiers?
> 
> That is beyond what I'm familiar with - but generally - if you want to
> influence decisions the MM is making then it needs to be at the
> front of the process and not inside notifiers. 
> 
> So what you describe seems broadly appropriate to me.

Sadly, it's a mlock_vma_page problem all over again.
 
> I'm still a little unclear on what you are trying to fix - pinned
> pages are definitely not freed, do you have some case where pages
> which are pinned are being cleaned out from the MM despite being
> pinned? Sounds a bit strange, maybe that is worth adressing directly?

It suffices to say that pin_user_pages does not prevent try_to_unmap_one
from trying to revoke the page. But we could perhaps slip a
page_maybe_dma_pinned() in around there and see what happens.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
