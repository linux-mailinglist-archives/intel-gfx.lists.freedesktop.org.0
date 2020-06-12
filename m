Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F941F75BF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 11:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6CD6E877;
	Fri, 12 Jun 2020 09:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3F86E877
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:11:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21472957-1500050 for multiple; Fri, 12 Jun 2020 10:11:44 +0100
MIME-Version: 1.0
In-Reply-To: <2d5c000f-f35d-d095-93af-0f8e0f39f745@intel.com>
References: <20200611180421.23262-1-chris@chris-wilson.co.uk>
 <2d5c000f-f35d-d095-93af-0f8e0f39f745@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <159195310296.1506.8748866161247032009@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 12 Jun 2020 10:11:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Leave vma intact as they are
 discarded
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

Quoting Matthew Auld (2020-06-12 10:04:55)
> On 11/06/2020 19:04, Chris Wilson wrote:
> > If we find ourselves trying to reuse a misplaced but active vma, we
> > currently try to discard it to avoid having to wait to unbind it
> > (upsetting the current user fo the vma). An alternative to marking it as
> > a dicarded vma and keeping it in both the obj->vma.list and
> > obj->vma.tree, is to simply remove it from the lookup rbtree.
> > 
> > While it remains in the list of vma, it will be unbound under eviction
> > pressure and freed along with the object. We will never reuse it again
> > for new instances. As before, with no pruning, the list may continually
> > grow, but eventually we will have the most constrained version of the
> > ggtt view that meets all requirements -- so the list of vma should not
> > grow without bound.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2012
> > Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> 
> Seems much simpler,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Yeah, the cost being that the rbtree is not complete (and we have to be
careful about double removals). But we only use the tree for lookup and
walk the list for everything else. My fear is that it will be an
unpleasant surprise later.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
