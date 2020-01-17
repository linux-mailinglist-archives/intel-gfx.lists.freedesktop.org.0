Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6C11408DF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037876F513;
	Fri, 17 Jan 2020 11:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41796F513
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:28:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19914846-1500050 for multiple; Fri, 17 Jan 2020 11:28:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200117101314.2897102-1-chris@chris-wilson.co.uk>
 <874kwuqqcq.fsf@gaia.fi.intel.com>
In-Reply-To: <874kwuqqcq.fsf@gaia.fi.intel.com>
Message-ID: <157926048005.2389.12774641458439490219@skylake-alporthouse-com>
Date: Fri, 17 Jan 2020 11:28:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Report the currently active
 execlists request
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

Quoting Mika Kuoppala (2020-01-17 11:23:01)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Since commit 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy"), we
> > prune the engine->active.requests list prior to preemption, thus
> > removing the trace of the currently executing request. If that request
> > hangs rather than be preempted, we conclude that no active request was
> > on the GPU. Fortunately, this only impacts our debugging, and not our
> > means of hang detection or recovery.
> >
> > References: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 29 ++++++++++++++++++-----
> >  1 file changed, 23 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 06ff7695fa29..93878fd42a7a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1643,7 +1643,7 @@ static bool match_ring(struct i915_request *rq)
> >  struct i915_request *
> >  intel_engine_find_active_request(struct intel_engine_cs *engine)
> >  {
> > -     struct i915_request *request, *active = NULL;
> > +     struct i915_request *rq, *active = NULL;
> >  
> >       /*
> >        * We are called by the error capture, reset and to dump engine
> > @@ -1657,18 +1657,35 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
> >        * we only care about the snapshot of this moment.
> >        */
> >       lockdep_assert_held(&engine->active.lock);
> > -     list_for_each_entry(request, &engine->active.requests, sched.link) {
> > -             if (i915_request_completed(request))
> > +
> > +     rcu_read_lock();
> > +     rq = execlists_active(&engine->execlists);
> > +     if (rq) {
> > +             struct intel_timeline *tl = rq->context->timeline;
> > +
> > +             list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
> > +                     if (i915_request_completed(rq))
> > +                             break;
> 
> This will be active - 1. So it makes me think that
> we should first check that the real active has not completed.

Hmm, you want from_reverse in this case.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
