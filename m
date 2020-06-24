Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE640207CDE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 22:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D266E81B;
	Wed, 24 Jun 2020 20:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5236E81B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 20:24:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21606985-1500050 for multiple; Wed, 24 Jun 2020 21:23:58 +0100
MIME-Version: 1.0
In-Reply-To: <20200624192116.GO6578@ziepe.ca>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200624192116.GO6578@ziepe.ca>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <159303023309.4527.5420769464370063531@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 24 Jun 2020 21:23:53 +0100
Subject: Re: [Intel-gfx] [PATCH] mm: Skip opportunistic reclaim for dma
 pinned pages
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
Cc: Jan Kara <jack@suse.cz>, John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Jérôme Glisse <jglisse@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>, "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jason Gunthorpe (2020-06-24 20:21:16)
> On Wed, Jun 24, 2020 at 08:14:17PM +0100, Chris Wilson wrote:
> > A general rule of thumb is that shrinkers should be fast and effective.
> > They are called from direct reclaim at the most incovenient of times when
> > the caller is waiting for a page. If we attempt to reclaim a page being
> > pinned for active dma [pin_user_pages()], we will incur far greater
> > latency than a normal anonymous page mapped multiple times. Worse the
> > page may be in use indefinitely by the HW and unable to be reclaimed
> > in a timely manner.
> 
> A pinned page can't be migrated, discarded or swapped by definition -
> it would cause data corruption.
> 
> So, how do things even get here and/or work today at all? I think the
> explanation is missing something important.

[<0>] userptr_mn_invalidate_range_start+0xa7/0x170 [i915]
[<0>] __mmu_notifier_invalidate_range_start+0x110/0x150
[<0>] try_to_unmap_one+0x790/0x870
[<0>] rmap_walk_file+0xe9/0x230
[<0>] rmap_walk+0x27/0x30
[<0>] try_to_unmap+0x89/0xc0
[<0>] shrink_page_list+0x88a/0xf50
[<0>] shrink_inactive_list+0x137/0x2f0
[<0>] shrink_lruvec+0x4ec/0x5f0
[<0>] shrink_node+0x15d/0x410
[<0>] try_to_free_pages+0x17f/0x430
[<0>] __alloc_pages_slowpath+0x2ab/0xcc0
[<0>] __alloc_pages_nodemask+0x1ad/0x1e0
[<0>] new_slab+0x2d8/0x310
[<0>] ___slab_alloc.constprop.0+0x288/0x520
[<0>] __slab_alloc.constprop.0+0xd/0x20
[<0>] kmem_cache_alloc_trace+0x1ad/0x1c0

and that hits an active pin_user_pages object.

Is there some information that would help in particular?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
