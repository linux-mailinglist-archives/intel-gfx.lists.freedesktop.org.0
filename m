Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD26E231FA5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 15:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705046E524;
	Wed, 29 Jul 2020 13:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F4B6E523
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 13:53:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21969626-1500050 for multiple; Wed, 29 Jul 2020 14:53:26 +0100
MIME-Version: 1.0
In-Reply-To: <159603012686.8877.9862976259674771406@build.alporthouse.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
 <54de929a-9449-8ac2-a8bd-641a61d0525e@linux.intel.com>
 <159594649917.665.6631422765642650487@build.alporthouse.com>
 <3274fa3b-7c34-1925-2cd6-145c73acb63b@linux.intel.com>
 <159603012686.8877.9862976259674771406@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 14:53:27 +0100
Message-ID: <159603080762.8877.10082484353845432499@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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

Quoting Chris Wilson (2020-07-29 14:42:06)
> Quoting Tvrtko Ursulin (2020-07-29 13:40:38)
> > 
> > On 28/07/2020 15:28, Chris Wilson wrote:
> > > Quoting Tvrtko Ursulin (2020-07-17 14:04:58)
> > >>
> > >> On 15/07/2020 12:50, Chris Wilson wrote:
> > >>> Rather than require the next timeline after idling to match the MRU
> > >>> before idling, reset the index on the node and allow it to match the
> > >>> first request. However, this requires cmpxchg(u64) and so is not trivial
> > >>> on 32b, so for compatibility we just fallback to keeping the cached node
> > >>> pointing to the MRU timeline.
> > >>>
> > >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/i915_active.c | 21 +++++++++++++++++++--
> > >>>    1 file changed, 19 insertions(+), 2 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> > >>> index 0854b1552bc1..6737b5615c0c 100644
> > >>> --- a/drivers/gpu/drm/i915/i915_active.c
> > >>> +++ b/drivers/gpu/drm/i915/i915_active.c
> > >>> @@ -157,6 +157,10 @@ __active_retire(struct i915_active *ref)
> > >>>                rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
> > >>>                rb_insert_color(&ref->cache->node, &ref->tree);
> > >>>                GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
> > >>> +
> > >>> +             /* Make the cached node available for reuse with any timeline */
> > >>> +             if (IS_ENABLED(CONFIG_64BIT))
> > >>> +                     ref->cache->timeline = 0; /* needs cmpxchg(u64) */
> > >>
> > >> Or when fence context wraps shock horror.
> > > 
> > > I more concerned about that we use timeline:0 as a special unordered
> > > timeline. It's reserved by use in the dma_fence_stub, and everything
> > > will start to break when the timelines wrap. The earliest causalities
> > > will be the kernel_context timelines which are also very special indices
> > > for the barriers.
> > > 
> > >>
> > >>>        }
> > >>>    
> > >>>        spin_unlock_irqrestore(&ref->tree_lock, flags);
> > >>> @@ -235,9 +239,22 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
> > >>>    {
> > >>>        struct active_node *it;
> > >>>    
> > >>> +     GEM_BUG_ON(idx == 0); /* 0 is the unordered timeline, rsvd for cache */
> > >>> +
> > >>>        it = READ_ONCE(ref->cache);
> > >>> -     if (it && it->timeline == idx)
> > >>> -             return it;
> > >>> +     if (it) {
> > >>> +             u64 cached = READ_ONCE(it->timeline);
> > >>> +
> > >>> +             if (cached == idx)
> > >>> +                     return it;
> > >>> +
> > >>> +#ifdef CONFIG_64BIT /* for cmpxchg(u64) */
> > >>> +             if (!cached && !cmpxchg(&it->timeline, 0, idx)) {
> > >>> +                     GEM_BUG_ON(i915_active_fence_isset(&it->base));
> > >>> +                     return it;
> > >>
> > >> cpmxchg suggests this needs to be atomic, however above the check for
> > >> equality comes from a separate read.
> > > 
> > > That's fine, and quite common to avoid cmpxchg if the current value
> > > already does not match the expected condition.
> > 
> > How? What is another thread is about to install its idx into 
> > it->timeline with cmpxchg and this thread does not see it because it 
> > just returned on the "cached == idx" condition.
> 
> Because it's nonzero.
> 
> If the idx is already non-zero, it will always remain non-zero until
> everybody idles (and there are no more threads).
> 
> If the idx is zero, it can only transition to non-zero once, atomically
> via cmpxchg. The first and only first cmpxchg will return that the
> previous value was 0, and so return with it->idx == idx.

As for the case that two threads are attempting to install 2 different
fences into the same timeline slot -- that concurrency is controlled
by the timeline mutex, or some other agreed upon serialisation for the
slot [e.g. the exclusive slot doesn't have an intel_timeline associated
with it, and some ranges uses mutexes other than intel_timeline.]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
