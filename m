Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF3207333
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 14:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67976EB1F;
	Wed, 24 Jun 2020 12:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8EC6EB1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 12:21:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21602377-1500050 for multiple; Wed, 24 Jun 2020 13:21:08 +0100
MIME-Version: 1.0
In-Reply-To: <20200624121053.GD6578@ziepe.ca>
References: <20200624080248.3701-1-chris@chris-wilson.co.uk>
 <20200624121053.GD6578@ziepe.ca>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <159300126338.4527.3968787379471939056@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 24 Jun 2020 13:21:03 +0100
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

Quoting Jason Gunthorpe (2020-06-24 13:10:53)
> On Wed, Jun 24, 2020 at 09:02:47AM +0100, Chris Wilson wrote:
> > When direct reclaim enters the shrinker and tries to reclaim pages, it
> > has to opportunitically unmap them [try_to_unmap_one]. For direct
> > reclaim, the calling context is unknown and may include attempts to
> > unmap one page of a dma object while attempting to allocate more pages
> > for that object. Pass the information along that we are inside an
> > opportunistic unmap that can allow that page to remain referenced and
> > mapped, and let the callback opt in to avoiding a recursive wait.
> 
> i915 should already not be holding locks shared with the notifiers
> across allocations that can trigger reclaim. This is already required
> to use notifiers correctly anyhow - why do we need something in the
> notifiers?

for (n = 0; n < num_pages; n++)
	pin_user_page()

may call try_to_unmap_page from the lru shrinker for [0, n-1].

We're in the middle of allocating the object, how are we best to untangle
that?

Or during allocation of something that is using the pages pinned by that
object, how are we best to not to shrink that object as there is a
mutual dependency?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
