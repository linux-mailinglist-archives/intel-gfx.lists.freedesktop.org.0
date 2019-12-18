Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A483124766
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 13:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E8A6E442;
	Wed, 18 Dec 2019 12:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5EA6E442
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 12:57:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19621317-1500050 for multiple; Wed, 18 Dec 2019 12:57:01 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191218094057.3510459-1-chris@chris-wilson.co.uk>
 <41041b2a-c7e6-def8-655d-8478a9dac39e@linux.intel.com>
In-Reply-To: <41041b2a-c7e6-def8-655d-8478a9dac39e@linux.intel.com>
Message-ID: <157667382004.4565.13641502273868075357@skylake-alporthouse-com>
Date: Wed, 18 Dec 2019 12:57:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ratelimit i915_globals_park
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

Quoting Tvrtko Ursulin (2019-12-18 12:49:26)
> 
> On 18/12/2019 09:40, Chris Wilson wrote:
> > When doing our global park, we like to be a good citizen and shrink our
> > slab caches (of which we have quite a few now), but each
> > kmem_cache_shrink() incurs a stop_machine() and so ends up being quite
> > expensive, causing machine-wide stalls. While ideally we would like to
> > throw away unused pages in our slab caches whenever it appears that we
> > are idling, doing so will require a much cheaper mechanism. In the
> > meantime use a delayed worked to impose a rate-limit that means we have
> > to have been idle for more than 2 seconds before we start shrinking.
> 
> I was thinking about this yesterday, while looking at rapid park-unpark 
> cycles!
> 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/848
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_globals.c | 53 ++++++++++++++++++++++++-----
> >   1 file changed, 44 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> > index be127cd28931..3aa213684293 100644
> > --- a/drivers/gpu/drm/i915/i915_globals.c
> > +++ b/drivers/gpu/drm/i915/i915_globals.c
> > @@ -20,7 +20,10 @@ static LIST_HEAD(globals);
> >   static atomic_t active;
> >   static atomic_t epoch;
> >   static struct park_work {
> > -     struct rcu_work work;
> > +     struct delayed_work work;
> > +     struct rcu_head rcu;
> > +     unsigned long flags;
> > +#define PENDING 0
> >       int epoch;
> >   } park;
> >   
> > @@ -37,11 +40,33 @@ static void i915_globals_shrink(void)
> >               global->shrink();
> >   }
> >   
> > +static void __i915_globals_grace(struct rcu_head *rcu)
> > +{
> > +     /* Ratelimit parking as shrinking is quite slow */
> > +     schedule_delayed_work(&park.work, round_jiffies_up_relative(2 * HZ));
> > +}
> > +
> > +static void __i915_globals_queue_rcu(void)
> > +{
> > +     park.epoch = atomic_inc_return(&epoch);
> > +     if (!atomic_read(&active)) {
> > +             init_rcu_head(&park.rcu);
> 
> Do we need to do init/destroy more than once? I think once on driver 
> load/exit would be more correct since the head is statically allocated.

I did on each fresh invocation to have a better chance of detecting
wrong lifetimes. Because the first patch did call call_rcu() while
still active, I thought by having the debugobject init it would give us
the early warning that it was still alive. Similarly by calling
destroy_rcu as we transition to the delayed_work should catch if we
happen to be still active on rcu lists.

That was all I was thinking, it would give us better debug information.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
