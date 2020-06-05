Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE71EFC86
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7756E92E;
	Fri,  5 Jun 2020 15:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A54F6E92E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:32:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21408699-1500050 for multiple; Fri, 05 Jun 2020 16:32:29 +0100
MIME-Version: 1.0
In-Reply-To: <87wo4la69p.fsf@gaia.fi.intel.com>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
 <20200605122334.2798-2-chris@chris-wilson.co.uk>
 <87wo4la69p.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159137114732.22562.14510475315266373484@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 16:32:27 +0100
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/gt: Always check to enable
 timeslicing if not submitting
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

Quoting Mika Kuoppala (2020-06-05 16:20:34)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > We may choose not to submit for a number of reasons, yet not fill both
> > ELSP. In which case we must start timeslicing (there will be no ACK
> > event on which to hook the start) if the queue would benefit from the
> > currently active context being evicted.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 92c3368ffcbd..d55a5e0466e5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2362,10 +2362,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                               if (last->context == rq->context)
> >                                       goto done;
> >  
> > -                             if (i915_request_has_sentinel(last)) {
> > -                                     start_timeslice(engine, rq_prio(rq));
> > +                             if (i915_request_has_sentinel(last))
> >                                       goto done;
> > -                             }
> >  
> >                               /*
> >                                * If GVT overrides us we only ever submit
> > @@ -2446,6 +2444,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >               set_preempt_timeout(engine, *active);
> >               execlists_submit_ports(engine);
> >       } else {
> > +             start_timeslice(engine, execlists->queue_priority_hint);
> 
> If we ended up with same set of request, we want to skip submitting.
> But why would we want to skip timeslicing?

Because we have already submitted the exact same pair of requests
and so there will a be a set_timeslice() either pending or have taken
place. In particular, we wanted to stop timeslicing if after a timeslice
expiry we submitted exactly the same requests as before the timelice --
we know that until the arrival of a new request that there is no need
for a new timeslice, that will just result in the same pair being
submitted in order each time.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
