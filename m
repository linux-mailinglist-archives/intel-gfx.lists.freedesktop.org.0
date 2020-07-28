Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A3230CED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D09A6E09F;
	Tue, 28 Jul 2020 15:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64AB6E09F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:04:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21959293-1500050 for multiple; Tue, 28 Jul 2020 16:04:43 +0100
MIME-Version: 1.0
In-Reply-To: <e17b728a-2e7b-4010-47d8-f0e18024b4e5@linux.intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-16-chris@chris-wilson.co.uk>
 <e17b728a-2e7b-4010-47d8-f0e18024b4e5@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:04:44 +0100
Message-ID: <159594868410.665.9086788372860305780@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 16/66] drm/i915/gem: Remove the call for
 no-evict i915_vma_pin
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

Quoting Tvrtko Ursulin (2020-07-17 15:36:04)
> 
> On 15/07/2020 12:50, Chris Wilson wrote:
> > Remove the stub i915_vma_pin() used for incrementally pining objects for
> > execbuf (under the severe restriction that they must not wait on a
> > resource as we may have already pinned it) and replace it with a
> > i915_vma_pin_inplace() that is only allowed to reclaim the currently
> > bound location for the vma (and will never wait for a pinned resource).
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 69 +++++++++++--------
> >   drivers/gpu/drm/i915/i915_vma.c               |  6 +-
> >   drivers/gpu/drm/i915/i915_vma.h               |  2 +
> >   3 files changed, 45 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 28cf28fcf80a..0b8a26da26e5 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -452,49 +452,55 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
> >       return pin_flags;
> >   }
> >   
> > +static bool eb_pin_vma_fence_inplace(struct eb_vma *ev)
> > +{
> > +     struct i915_vma *vma = ev->vma;
> > +     struct i915_fence_reg *reg = vma->fence;
> > +
> > +     if (reg) {
> > +             if (READ_ONCE(reg->dirty))
> > +                     return false;
> > +
> > +             atomic_inc(&reg->pin_count);
> 
> Why is this safe outside the vm->mutex? It otherwise seems to be 
> protecting this pin count.

I was working on having the fence protected by the vma. It's important
that we do avoid the fallback scheme -- although not strictly as
important for gen2/gen3 as they do not need the ppGTT preallocations.

If I adapt find_fence() to operate against a concurrent atomic_inc()
that should dig myself out of the hold. (Another cmpxchg, oh my.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
