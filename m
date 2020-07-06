Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C822216012
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 22:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B186E2BC;
	Mon,  6 Jul 2020 20:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311066E2BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 20:18:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21733238-1500050 for multiple; Mon, 06 Jul 2020 21:01:55 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-3-chris@chris-wilson.co.uk>
 <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 06 Jul 2020 21:01:54 +0100
Message-ID: <159406571422.15644.12191339942286879050@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: Switch to object
 allocations for page directories
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

Quoting Matthew Auld (2020-07-06 20:06:38)
> On Mon, 6 Jul 2020 at 07:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > The GEM object is grossly overweight for the practicality of tracking
> > large numbers of individual pages, yet it is currently our only
> > abstraction for tracking DMA allocations. Since those allocations need
> > to be reserved upfront before an operation, and that we need to break
> > away from simple system memory, we need to ditch using plain struct page
> > wrappers.
> >
> > In the process, we drop the WC mapping as we ended up clflushing
> > everything anyway due to various issues across a wider range of
> > platforms. Though in a future step, we need to drop the kmap_atomic
> > approach which suggests we need to pre-map all the pages and keep them
> > mapped.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> <snip>

The other thing I'm toying with is whether to keep the unused preallocs
around on the ppgtt. The cost of the conservative allocations is
decidedly high in CI [thanks to memdebug tracking and verifying], as
each PD is itself a 4KiB table of pointers (as well as the 4KiB dma
page). Outside of CI, the issue is not as pressing, and if a workload
does not reach steady state quickly, then the extra allocations are just
one of many worries. For the steady state, we benefit from not having
surplus pages trapped in the ppgtt, as that is the danger of the
caching, when should we trim it?

[Previously we only allocated on demand, but keep a *small* number of WC
pages around because converting a page to/from WC was expensive.]

If there's a good answer for when we can/should free the surplus cache,
it's probably worth pursuing. Or if we deem it worth to keep the cache
limited to 15 entries [reusing a pagevec].

Overallocation is pita for having to preallocate; since we basically
have to have at least 2 PD for each level + actual span. For every vma,
even when bundling the insertions, as we don't know which entries will
be used until much later. So we almost certainly overallocate 4 PD
[16KiB system + 16KiB dma] for every single vma. Even a 15 entry stash
will be quickly exhausted; oh well.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
