Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0FD14B46E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 13:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DC26EE24;
	Tue, 28 Jan 2020 12:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E8E6EE2B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 12:47:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20034301-1500050 for multiple; Tue, 28 Jan 2020 12:46:49 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e1bn4il.fsf@gaia.fi.intel.com>
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
 <20200127231540.3302516-6-chris@chris-wilson.co.uk>
 <877e1bn4il.fsf@gaia.fi.intel.com>
Message-ID: <158021560766.2129.15846697702640801094@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 28 Jan 2020 12:46:47 +0000
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Lift set-wedged engine
 dumping out of user paths
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-28 12:34:42)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The user (e.g. gem_eio) can manipulate the driver into wedging itself,
> > allowing the user to trigger voluminous logging of inconsequential
> > details. If we lift the dump to direct calls to intel_gt_set_wedged(),
> > out of the intel_reset failure handling, we keep the detail logging for
> > what we expect are true HW or test failures without being tricked.
> >
> > Reported-by: Tomi Sarvela <tomi.p.sarvela@intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_reset.c | 30 +++++++++++++++++++--------
> >  1 file changed, 21 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index beee0cf89bce..423a02506b2d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -800,13 +800,6 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
> >       if (test_bit(I915_WEDGED, &gt->reset.flags))
> >               return;
> >  
> > -     if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {
> > -             struct drm_printer p = drm_debug_printer(__func__);
> > -
> > -             for_each_engine(engine, gt, id)
> > -                     intel_engine_dump(engine, &p, "%s\n", engine->name);
> > -     }
> > -
> >       GT_TRACE(gt, "start\n");
> >  
> >       /*
> > @@ -845,10 +838,29 @@ void intel_gt_set_wedged(struct intel_gt *gt)
> >  {
> >       intel_wakeref_t wakeref;
> >  
> > +     if (test_bit(I915_WEDGED, &gt->reset.flags))
> > +             return;
> > +
> > +     wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> >       mutex_lock(&gt->reset.mutex);
> > -     with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> > -             __intel_gt_set_wedged(gt);
> > +
> > +     if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {
> 
> As you inspect each engine separately the precursory idle check
> seems superfluous.

Picky. We may throw some other debug in between :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
