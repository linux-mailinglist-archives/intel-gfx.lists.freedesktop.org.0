Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996EE2DB254
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 18:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024FF89A77;
	Tue, 15 Dec 2020 17:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A7A89A77
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 17:16:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23335429-1500050 for multiple; Tue, 15 Dec 2020 17:16:30 +0000
MIME-Version: 1.0
In-Reply-To: <87h7onm1ws.fsf@gaia.fi.intel.com>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
 <20201214100949.11387-15-chris@chris-wilson.co.uk>
 <87h7onm1ws.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 17:16:30 +0000
Message-ID: <160805259096.14591.5464389352540376944@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 15/69] drm/i915/gt: Track all timelines
 created using the HWSP
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

Quoting Mika Kuoppala (2020-12-15 17:09:39)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > We assume that the contents of the HWSP are lost across suspend, and so
> > upon resume we must restore critical values such as the timeline seqno.
> > Keep track of every timeline allocated that uses the HWSP as its storage
> > and so we can then reset all seqno values by walking that list.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  9 ++++-
> >  drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  6 ++++
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
> >  .../drm/i915/gt/intel_execlists_submission.c  | 11 ++++--
> >  .../gpu/drm/i915/gt/intel_ring_submission.c   | 35 +++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_timeline.h      | 13 +++++--
> >  .../gpu/drm/i915/gt/intel_timeline_types.h    |  2 ++
> >  7 files changed, 71 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 71bd052628f4..6c08e74edcae 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -648,6 +648,8 @@ static int init_status_page(struct intel_engine_cs *engine)
> >       void *vaddr;
> >       int ret;
> >  
> > +     INIT_LIST_HEAD(&engine->status_page.timelines);
> > +
> >       /*
> >        * Though the HWS register does support 36bit addresses, historically
> >        * we have had hangs and corruption reported due to wild writes if
> > @@ -936,6 +938,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
> >               fput(engine->default_state);
> >  
> >       if (engine->kernel_context) {
> > +             list_del(&engine->kernel_context->timeline->engine_link);
> >               intel_context_unpin(engine->kernel_context);
> >               intel_context_put(engine->kernel_context);
> >       }
> > @@ -1281,8 +1284,12 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
> >       struct intel_engine_cs *engine;
> >       enum intel_engine_id id;
> >  
> > -     for_each_engine(engine, gt, id)
> > +     for_each_engine(engine, gt, id) {
> > +             if (engine->sanitize)
> > +                     engine->sanitize(engine);
> > +
> >               engine->set_default_submission(engine);
> > +     }
> >  }
> >  
> >  bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index 99574378047f..1e5bad0b9a82 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -60,6 +60,12 @@ static int __engine_unpark(struct intel_wakeref *wf)
> >  
> >               /* Scrub the context image after our loss of control */
> >               ce->ops->reset(ce);
> > +
> > +             CE_TRACE(ce, "reset { seqno:%x, *hwsp:%x, ring:%x }\n",
> > +                      ce->timeline->seqno,
> > +                      READ_ONCE(*ce->timeline->hwsp_seqno),
> > +                      ce->ring->emit);
> > +             GEM_BUG_ON(ce->timeline->seqno != *ce->timeline->hwsp_seqno);
> 
> Compiler should be satified but could still have been READ_ONCE,
> for the reader and for the fine bug on which might get delivered to console. 

Yup, I hesitated as it meant a newline :)

> But main thing is that now coherency is enforced from the get go.

> > +static void xcs_sanitize(struct intel_engine_cs *engine)
> > +{
> > +     /*
> > +      * Poison residual state on resume, in case the suspend didn't!
> > +      *
> > +      * We have to assume that across suspend/resume (or other loss
> > +      * of control) that the contents of our pinned buffers has been
> > +      * lost, replaced by garbage. Since this doesn't always happen,
> > +      * let's poison such state so that we more quickly spot when
> > +      * we falsely assume it has been preserved.
> > +      */
> > +     if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > +             memset(engine->status_page.addr, POISON_INUSE, PAGE_SIZE);
> > +
> > +     /*
> > +      * The kernel_context HWSP is stored in the status_page. As above,
> > +      * that may be lost on resume/initialisation, and so we need to
> > +      * reset the value in the HWSP.
> > +      */
> > +     sanitize_hwsp(engine);
> > +
> > +     /* And scrub the dirty cachelines for the HWSP */
> > +     clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
> 
> The flush could be part of the actual writing of the seqno with
> that range. But then you would need to track the debug so. Better
> to make sure to transfer everything to be visible.

Yes. It's also just part of the general 'sanitize' paranoia; we scrub
everything until we are convinced that we only see our own bugs
reflected back at us.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
