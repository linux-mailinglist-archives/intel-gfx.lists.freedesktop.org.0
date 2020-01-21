Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CDA143C17
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:33:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265F86EC79;
	Tue, 21 Jan 2020 11:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E22E6EC79
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:33:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19956918-1500050 for multiple; Tue, 21 Jan 2020 11:33:38 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
 <df451345-5332-7e2f-be9b-76b37006dfe6@linux.intel.com>
In-Reply-To: <df451345-5332-7e2f-be9b-76b37006dfe6@linux.intel.com>
Message-ID: <157960641676.3096.902833858100417667@skylake-alporthouse-com>
Date: Tue, 21 Jan 2020 11:33:36 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Reclaim hanging virtual
 request
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

Quoting Tvrtko Ursulin (2020-01-21 11:20:36)
> 
> On 21/01/2020 10:09, Chris Wilson wrote:
> > If we encounter a hang on a virtual engine, as we process the hang the
> > request may already have been moved back to the virtual engine (we are
> > processing the hang on the physical engine). We need to reclaim the
> > request from the virtual engine so that the locking is consistent and
> > local to the real engine on which we will hold the request for error
> > state capturing.
> > 
> > Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
> > Testcase: igt/gem_exec_balancer/hang
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 20 ++++++++++++++++++++
> >   1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 3a30767ff0c4..a0acf1898c1e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2582,6 +2582,26 @@ static void execlists_capture(struct intel_engine_cs *engine)
> >       cap->rq = active_request(cap->rq->context->timeline, cap->rq);
> >       GEM_BUG_ON(!cap->rq);
> >   
> > +     if (cap->rq->engine != engine) { /* preempted virtual engine */
> > +             struct virtual_engine *ve = to_virtual_engine(cap->rq->engine);
> > +             unsigned long flags;
> > +
> > +             /*
> > +              * An unsubmitted request along a virtual engine will
> > +              * remain on the active (this) engine until we are able
> > +              * to process the context switch away (and so mark the
> > +              * context as no longer in flight). That cannot have happened
> > +              * yet, otherwise we would not be hanging!
> > +              */
> > +             spin_lock_irqsave(&ve->base.active.lock, flags);
> > +             GEM_BUG_ON(intel_context_inflight(cap->rq->context) != engine);
> > +             GEM_BUG_ON(ve->request != cap->rq);
> > +             ve->request = NULL;
> > +             spin_unlock_irqrestore(&ve->base.active.lock, flags);
> > +
> > +             cap->rq->engine = engine;
> > +     }
> 
> Conceptually this I think belongs in execlists_hold, not capture. Since 
> hold has the responsibility to hold correctly.

Yeah, I didn't put it into execlists_hold() as thought that would be
clearer without it, and that this was more a side-effect of
process_csb() vs __unwind_incomplete_requests(), and didn't want to mix
up with the question of engine->active.lock

Agreed that execlists_capture() does not describe it well, so probably
shouldn't be called directly from here.

> Then also, this is all about a race with __unwind_incomplete_requests, 
> yes? If so would need to be done under the engine->active.lock or this 
> can still happen between now and execlists_hold.

The serialisation here is on process_csb(), since we have prevented the
tasklet being called and own the reset on the engine, we know that
execlists_schedule_out() can't be called on this engine, and so we own
the virtual request. It's not protected by the engine->active.lock.

So happy with moving it to before the lock in execlists_hold()?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
