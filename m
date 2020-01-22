Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F29C114580F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:44:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDA76F567;
	Wed, 22 Jan 2020 14:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8D36F567
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:44:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19971873-1500050 for multiple; Wed, 22 Jan 2020 14:44:08 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122124154.483444-1-chris@chris-wilson.co.uk>
 <87d0bbpnc8.fsf@gaia.fi.intel.com>
In-Reply-To: <87d0bbpnc8.fsf@gaia.fi.intel.com>
Message-ID: <157970424685.7477.694024853724149185@skylake-alporthouse-com>
Date: Wed, 22 Jan 2020 14:44:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include a tell-tale for engine
 parking
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

Quoting Mika Kuoppala (2020-01-22 14:39:19)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > We have two trace messages that rely on the function name for
> > distinction. However, if gcc inlines the function, the two traces end up
> > with the same function name and are indistinguishable. Add a different
> > message to each to clarify which one we hit, i.e. which phase of engine
> > parking we are processing.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index ea90ab3e396e..b6cf284e3a2d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -112,7 +112,7 @@ __queue_and_release_pm(struct i915_request *rq,
> >  {
> >       struct intel_gt_timelines *timelines = &engine->gt->timelines;
> >  
> > -     ENGINE_TRACE(engine, "\n");
> > +     ENGINE_TRACE(engine, "parking\n");
> >  
> >       /*
> >        * We have to serialise all potential retirement paths with our
> > @@ -249,7 +249,7 @@ static int __engine_park(struct intel_wakeref *wf)
> >       if (!switch_to_kernel_context(engine))
> >               return -EBUSY;
> >  
> > -     ENGINE_TRACE(engine, "\n");
> > +     ENGINE_TRACE(engine, "parked\n");
> 
> Reading the functions, the exact spots are a mystery for me still
> as of why in these exact lines. Like the 'parked' would mean it
> is parked already, which it seems not to.

True, but 'park' was too similar to 'parking', whereas 'parked' at least
conveyed that 'parking' was over, which was the important concept that I
wanted clarity over in the debug traces.

They are mere labels, if you have a better idea, ... :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
