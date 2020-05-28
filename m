Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF36B1E67CC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 18:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ACB16E1ED;
	Thu, 28 May 2020 16:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039016E1ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 16:50:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21325275-1500050 for multiple; Thu, 28 May 2020 17:50:55 +0100
MIME-Version: 1.0
In-Reply-To: <871rn4jafd.fsf@gaia.fi.intel.com>
References: <20200528074324.5765-1-chris@chris-wilson.co.uk>
 <20200528074324.5765-2-chris@chris-wilson.co.uk>
 <871rn4jafd.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159068465505.10651.12715126559491848988@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 28 May 2020 17:50:55 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Don't declare hangs if
 engine is stalled
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

Quoting Mika Kuoppala (2020-05-28 17:23:18)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > If the ring submission is stalled on an external request, nothing can be
> > submitted, not even the heartbeat in the kernel context. Since nothing
> > is running, resetting the engine/device does not unblock the system and
> > is pointless. We can see if the heartbeat is supposed to be running
> > before declaring foul.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 19 ++++++++++++++++---
> >  1 file changed, 16 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > index 5136c8bf112d..f67ad937eefb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > @@ -48,8 +48,10 @@ static void show_heartbeat(const struct i915_request *rq,
> >       struct drm_printer p = drm_debug_printer("heartbeat");
> >  
> >       intel_engine_dump(engine, &p,
> > -                       "%s heartbeat {prio:%d} not ticking\n",
> > +                       "%s heartbeat {seqno:%llx:%lld, prio:%d} not ticking\n",
> >                         engine->name,
> > +                       rq->fence.context,
> > +                       rq->fence.seqno,
> >                         rq->sched.attr.priority);
> >  }
> >  
> > @@ -76,8 +78,19 @@ static void heartbeat(struct work_struct *wrk)
> >               goto out;
> >  
> >       if (engine->heartbeat.systole) {
> > -             if (engine->schedule &&
> > -                 rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
> > +             if (!i915_sw_fence_signaled(&rq->submit)) {
> > +                     /*
> > +                      * Not yet submitted, system is stalled.
> > +                      *
> > +                      * This more often happens for ring submission,
> > +                      * where all contexts are funnelled into a common
> > +                      * ringbuffer. If one context is blocked on an
> > +                      * external fence, not only is it not submitted,
> > +                      * but all other contexts, including the kernel
> > +                      * context are stuck waiting for the signal.
> > +                      */
> 
> The solution how to save the system evades me.
> But piling the heartbeat on top does not help with it in
> any case.

Last resort could be hangcheck again, but over a much much longer
interval, say 2 minutes with work queued to the engine, but it remains
idle, mark the device as wedged (and stop using it altogether). We have
to be really confident that the cure is worth it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
