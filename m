Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E3512D20D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7279F6E03D;
	Mon, 30 Dec 2019 16:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A930C6E03D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:36:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19728077-1500050 for multiple; Mon, 30 Dec 2019 16:36:05 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e2drd2a.fsf@gaia.fi.intel.com>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
 <20191230160112.3838434-5-chris@chris-wilson.co.uk>
 <877e2drd2a.fsf@gaia.fi.intel.com>
Message-ID: <157772376273.3861.13731394019599159856@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 16:36:02 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Discard stale context
 state from across idling
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2019-12-30 16:30:21)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Before we idle, on parking, we switch to the kernel context such that we
> > have a scratch context loaded while the GPU idle, protecting any
> > precious user state. Be paranoid and assume that the idle state may have
> > been trashed, and reset the kernel_context image after idling.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 6 ++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 8 --------
> >  drivers/gpu/drm/i915/gt/mock_engine.c     | 5 +++++
> >  3 files changed, 11 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index cd82f0baef49..1b9f73948f22 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -20,6 +20,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
> >  {
> >       struct intel_engine_cs *engine =
> >               container_of(wf, typeof(*engine), wakeref);
> > +     struct intel_context *ce;
> >       void *map;
> >  
> >       ENGINE_TRACE(engine, "\n");
> > @@ -34,6 +35,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
> >       if (!IS_ERR_OR_NULL(map))
> >               engine->pinned_default_state = map;
> >  
> > +     /* Discard stale context state from across idling */
> > +     ce = engine->kernel_context;
> > +     if (ce)
> > +             ce->ops->reset(ce);
> > +
> 
> Expect the worst, sure.
> Checksum would get us datapoints tho.

Inject yet-another request to the kernel_context on parking to force a
context switch [to itself] and so ensure the image is saved to HW. Wait
for parking, compute the CRC. Then on unpark compute the CRC again...

The design is all based around that we don't trust the HW and try to
avoid caring about what's in the scratch kernel_context, so other than
validating HW... Not a terrible idea, but we can probably cook up
something more targeted if we thought about it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
