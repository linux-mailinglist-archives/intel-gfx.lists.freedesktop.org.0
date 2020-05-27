Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027D1E49A2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 18:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0EA6E34A;
	Wed, 27 May 2020 16:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1866E348
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 16:17:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21311980-1500050 for multiple; Wed, 27 May 2020 17:17:31 +0100
MIME-Version: 1.0
In-Reply-To: <7da38982-32f3-d4fe-bdcc-58b5016448a1@linux.intel.com>
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
 <20200527140719.10842-1-chris@chris-wilson.co.uk>
 <7da38982-32f3-d4fe-bdcc-58b5016448a1@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159059625035.30979.10658950537347759137@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 27 May 2020 17:17:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent timeslicing into
 unpreemptible requests
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

Quoting Tvrtko Ursulin (2020-05-27 17:13:50)
> 
> On 27/05/2020 15:07, Chris Wilson wrote:
> > We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
> > the HW from preempting during the course of this request. We need to
> > honour this flag and protect the HW even if we have a heartbeat request,
> > or other maximum priority barrier, pending. As such, restrict the
> > timeslicing check to avoid preempting into the topmost priority band,
> > leaving the unpreemptable requests in blissful peace running
> > uninterrupted on the HW.
> > 
> > Fixes: 2a98f4e65bba ("drm/i915: add infrastructure to hold off preemption on a request")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c    |  11 +++
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c | 116 +++++++++++++++++++++++++
> >   2 files changed, 127 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 3214a4ecc31a..012afb9e0324 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1896,6 +1896,15 @@ static void defer_active(struct intel_engine_cs *engine)
> >       defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
> >   }
> >   
> > +static inline int never_timeslice(int prio)
> > +{
> > +     /* Don't allow timeslicing of the 'unpreemptible' requests */
> > +     if (prio == I915_PRIORITY_UNPREEMPTABLE)
> > +             prio--;
> > +
> > +     return prio;
> > +}
> > +
> >   static bool
> >   need_timeslice(const struct intel_engine_cs *engine,
> >              const struct i915_request *rq,
> > @@ -1927,6 +1936,7 @@ need_timeslice(const struct intel_engine_cs *engine,
> >   
> >       if (!list_is_last(&rq->sched.link, &engine->active.requests))
> >               hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
> > +     hint = never_timeslice(hint);
> >   
> >       return hint >= effective_prio(rq);
> 
> Can INT_MAX ever end up in the queue? I am thinking if we limit it to 
> effective_prio it may be more obvious what's happening. Or is it 
> heartbeats? Should they be INT_MAX - 1 then?

Yes, we insert barriers into the queue with INT_MAX.

I liked #define I915_PRIORITY_BARRIER INT_MAX! But yes, that would be a
cleaner way to solve it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
