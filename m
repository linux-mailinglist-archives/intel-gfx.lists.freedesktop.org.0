Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057381736D2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619446F437;
	Fri, 28 Feb 2020 12:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA13F6F437
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:08:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20384285-1500050 for multiple; Fri, 28 Feb 2020 12:08:27 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <aec3d15f-e094-20d7-9aa3-40d532b2af5b@linux.intel.com>
In-Reply-To: <aec3d15f-e094-20d7-9aa3-40d532b2af5b@linux.intel.com>
Message-ID: <158289170472.24106.8727659172237455357@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 12:08:24 +0000
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Skip barriers inside waits
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

Quoting Tvrtko Ursulin (2020-02-28 11:53:19)
> 
> On 27/02/2020 08:57, Chris Wilson wrote:
> > Attaching to the i915_active barrier is a two stage process, and a flush
> > is only effective when the barrier is activation. Thus it is possible
> > for us to see a barrier, and attempt to flush, only for our flush to
> > have no effect. As such, before attempting to activate signaling on the
> > fence we need to double check it is a fence!
> > 
> > Fixes: d13a31770077 ("drm/i915: Flush idle barriers when waiting")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_active.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> > index 0b12d5023800..7b3d6c12ad61 100644
> > --- a/drivers/gpu/drm/i915/i915_active.c
> > +++ b/drivers/gpu/drm/i915/i915_active.c
> > @@ -453,6 +453,9 @@ static void enable_signaling(struct i915_active_fence *active)
> >   {
> >       struct dma_fence *fence;
> >   
> > +     if (unlikely(is_barrier(active)))
> > +             return;
> > +
> >       fence = i915_active_fence_get(active);
> >       if (!fence)
> >               return;
> > 
> 
> So that smp_rmb() is not really effective, I mean the race is wider than 
> that. I was worried about that.. now I need to figure out where it 
> starts and where it ends (the race).

That smp_rmb matches the update when we actually replace the barrier
with the fence. But, yes, the reuse_idle_barrier() has interesting
implications. There's no use after free and the iterator is technically
safe, but the flush isn't quite the flush I had hoped for.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
