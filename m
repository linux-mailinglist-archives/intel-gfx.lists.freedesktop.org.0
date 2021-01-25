Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC4430243B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E866E06D;
	Mon, 25 Jan 2021 11:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16306E06D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:28:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23691972-1500050 for multiple; Mon, 25 Jan 2021 11:28:06 +0000
MIME-Version: 1.0
In-Reply-To: <161157386286.27462.13615100015195592952@build.alporthouse.com>
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
 <20210124135726.1795-1-chris@chris-wilson.co.uk>
 <CAM0jSHMc8F4tS6SsZtSLUMs3XOUS4puW3XBq1nUHJp1o=3=1sg@mail.gmail.com>
 <161157386286.27462.13615100015195592952@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 25 Jan 2021 11:28:07 +0000
Message-ID: <161157408735.27462.6891739735261623194@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove guard page insertion
 around unevictable nodes
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

Quoting Chris Wilson (2021-01-25 11:24:22)
> Quoting Matthew Auld (2021-01-25 11:16:13)
> > On Sun, 24 Jan 2021 at 13:57, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Assume that unevictable nodes are not in the GTT and so we can ignore
> > > page boundary concerns, and so allow regular nodes to abutt against
> > > irregular unevictable nodes.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h       |  2 --
> > >  drivers/gpu/drm/i915/i915_gem_evict.c |  6 ++++--
> > >  drivers/gpu/drm/i915/i915_vma.h       | 10 +++++++++-
> > >  drivers/gpu/drm/i915/i915_vma_types.h |  2 ++
> > >  4 files changed, 15 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 99cf861df92d..69c5a185ecff 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -357,8 +357,6 @@ enum i915_cache_level {
> > >         I915_CACHE_WT, /* hsw:gt3e WriteThrough for scanouts */
> > >  };
> > >
> > > -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> > > -
> > >  struct intel_fbc {
> > >         /* This is always the inner lock when overlapping with struct_mutex and
> > >          * it's the outer lock when overlapping with stolen_lock. */
> > > diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> > > index 4d2d59a9942b..aef88fdb9f66 100644
> > > --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> > > +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> > > @@ -313,11 +313,13 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
> > >                  */
> > >                 if (i915_vm_has_cache_coloring(vm)) {
> > >                         if (node->start + node->size == target->start) {
> > > -                               if (node->color == target->color)
> > > +                               if (i915_node_color_matches(node,
> > > +                                                           target->color))
> > >                                         continue;
> > >                         }
> > >                         if (node->start == target->start + target->size) {
> > > -                               if (node->color == target->color)
> > > +                               if (i915_node_color_matches(node,
> > > +                                                           target->color))
> > >                                         continue;
> > >                         }
> > >                 }
> > 
> > Since we bail early on seeing COLOR_UNEVICTABLE, and since we have to
> > enlarge our search space by a page on both ends, do we need something
> > like:
> 
> Are we not doing the opposite here, and skipping the evict if either
> node/target is unevictable?

Oh, you mean the earlier abort if we try to evict an unevictable node
inside the target range.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
