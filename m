Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A72121017
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 17:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607DB6E82D;
	Mon, 16 Dec 2019 16:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB2C6E82F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 16:52:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19597936-1500050 for multiple; Mon, 16 Dec 2019 16:52:08 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
 <20191212014629.854076-3-chris@chris-wilson.co.uk>
 <51acf694-2cb2-1044-e761-8ed0c43d4cc4@linux.intel.com>
In-Reply-To: <51acf694-2cb2-1044-e761-8ed0c43d4cc4@linux.intel.com>
Message-ID: <157651512745.2428.15264335764010300099@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 16:52:07 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Eliminate the trylock for
 reading a timeline's hwsp
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

Quoting Tvrtko Ursulin (2019-12-16 16:40:15)
> 
> On 12/12/2019 01:46, Chris Wilson wrote:
> > As we stash a pointer to the HWSP cacheline on the request, when reading
> > it we only need confirm that the cacheline is still valid by checking
> > that the request and timeline are still intact.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_timeline.c | 38 ++++++++----------------
> >   1 file changed, 13 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> > index 728da39e8ace..566ce19bb0ea 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> > @@ -515,6 +515,7 @@ int intel_timeline_read_hwsp(struct i915_request *from,
> >                            struct i915_request *to,
> >                            u32 *hwsp)
> >   {
> > +     struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
> >       struct intel_timeline *tl;
> >       int err;
> >   
> > @@ -527,33 +528,20 @@ int intel_timeline_read_hwsp(struct i915_request *from,
> >               return 1;
> >   
> >       GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
> > -
> > -     err = -EAGAIN;
> > -     if (mutex_trylock(&tl->mutex)) {
> > -             struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
> > -
> > -             if (i915_request_completed(from)) {
> > -                     err = 1;
> > -                     goto unlock;
> > -             }
> > -
> > -             err = cacheline_ref(cl, to);
> > -             if (err)
> > -                     goto unlock;
> > -
> > -             if (likely(cl == tl->hwsp_cacheline)) {
> > -                     *hwsp = tl->hwsp_offset;
> > -             } else { /* across a seqno wrap, recover the original offset */
> > -                     *hwsp = i915_ggtt_offset(cl->hwsp->vma) +
> > -                             ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
> > -                             CACHELINE_BYTES;
> > -             }
> > -
> > -unlock:
> > -             mutex_unlock(&tl->mutex);
> > +     err = cacheline_ref(cl, to);
> > +     if (err)
> > +             goto out;
> > +
> > +     *hwsp = tl->hwsp_offset;
> > +     if (unlikely(cl != READ_ONCE(tl->hwsp_cacheline))) {
> > +             /* across a seqno wrap, recover the original offset */
> > +             *hwsp = i915_ggtt_offset(cl->hwsp->vma) +
> > +                     ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
> > +                     CACHELINE_BYTES;
> 
> There is some confusion here (for me) which timeline is which. "From" 
> timeline is which is unlocked now and cl and tl come from it. And that 
> is the signaling request.
> 
> It is just RCU which guarantees it is safe to dereference the timeline 
> on this request?

from->timeline looks reasonable. It's cacheline_ref(cl) that is hairy. I
was thinking that cacheline_ref() was actually a
i915_active_acquire_if_busy(), but it is not. And even if it were, we
need RCU protection on the cl.

Hmm. 
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
