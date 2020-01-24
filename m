Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB32147A61
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:30:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896AA6E264;
	Fri, 24 Jan 2020 09:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1382E6E264
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:30:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19991530-1500050 for multiple; Fri, 24 Jan 2020 09:30:15 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200123224459.38128-1-chris@chris-wilson.co.uk>
 <51d86897-7c11-b7f8-b9b9-f49490c62d7a@linux.intel.com>
In-Reply-To: <51d86897-7c11-b7f8-b9b9-f49490c62d7a@linux.intel.com>
Message-ID: <157985821394.6050.1226658095306678166@skylake-alporthouse-com>
Date: Fri, 24 Jan 2020 09:30:13 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check activity on i915_vma
 after confirming pin_count==0
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

Quoting Tvrtko Ursulin (2020-01-24 09:12:36)
> 
> On 23/01/2020 22:44, Chris Wilson wrote:
> > Only assert that the i915_vma is now idle if and only if no other pins
> > are present. If another user has the i915_vma pinned, they may submit
> > more work to the i915_vma skipping the vm->mutex used to serialise the
> > unbind. We need to wait again, if we want to continue and unbind this
> > vma.
> > 
> > However, if we own the i915_vma (we hold the vm->mutex for the unbind
> > and the pin_count is 0), we can assert that the vma remains idle as we
> > unbind.
> > 
> > Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/530
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_vma.c | 14 ++++++++++++--
> >   1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 306b951831fe..4999882fbceb 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -1202,16 +1202,26 @@ int __i915_vma_unbind(struct i915_vma *vma)
> >       if (ret)
> >               return ret;
> >   
> > -     GEM_BUG_ON(i915_vma_is_active(vma));
> >       if (i915_vma_is_pinned(vma)) {
> >               vma_print_allocator(vma, "is pinned");
> >               return -EAGAIN;
> >       }
> >   
> > -     GEM_BUG_ON(i915_vma_is_active(vma));
> > +     /*
> > +      * After confirming that no one else is pinning this vma, wait for
> > +      * any laggards who may have crept in during the wait (through
> > +      * a residual pin skipping the vm->mutex) to complete.
> > +      */
> > +     ret = i915_vma_sync(vma);
> > +     if (ret)
> > +             return ret;
> > +
> >       if (!drm_mm_node_allocated(&vma->node))
> >               return 0;
> >   
> > +     GEM_BUG_ON(i915_vma_is_pinned(vma));
> > +     GEM_BUG_ON(i915_vma_is_active(vma));
> > +
> >       if (i915_vma_is_map_and_fenceable(vma)) {
> >               /*
> >                * Check that we have flushed all writes through the GGTT
> > 
> 
> GEM_BUG_ON in a sandwich of two syncs, which is similar to the while 
> loop from an earlier version. Are you sure there are no races with this 
> one?

I'm confident that there are no races here with execbuf, but not so
confident that I'd remove the asserts!

> If pinned check is the main gate then wouldn't one sync after the 
> pinned check be enough?

Yes, considered it -- but the sync before the unpin is required to flush
other users so that the pin_count is stable. And then once stable, we
need to chase away the latecomers.

> Especially since in 2/2 you add another sync 
> before taking the mutex.

Yeah, but we don't always take that path, and we need to hold the mutex
to stabilise. So before the mutex, it's just an optimistic wait with no
guarantees for forward progress.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
