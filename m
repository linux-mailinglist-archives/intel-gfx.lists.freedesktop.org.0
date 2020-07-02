Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0A62128B2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E870C6EB1B;
	Thu,  2 Jul 2020 15:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7336E084
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:53:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21692018-1500050 for multiple; Thu, 02 Jul 2020 16:53:37 +0100
MIME-Version: 1.0
In-Reply-To: <87a70h538x.fsf@gaia.fi.intel.com>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
 <20200701084053.6086-4-chris@chris-wilson.co.uk>
 <87a70h538x.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2020 16:53:38 +0100
Message-ID: <159370521882.22925.15420523796843660304@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 04/33] drm/i915/gt: Check for a completed
 last request once
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

Quoting Mika Kuoppala (2020-07-02 16:46:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Pull the repeated check for the last active request being completed to a
> > single spot, when deciding whether or not execlist preemption is
> > required.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 14 ++++----------
> >  1 file changed, 4 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 4eb397b0e14d..7bdbfac26d7b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2137,12 +2137,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >        */
> >  
> >       if ((last = *active)) {
> > -             if (need_preempt(engine, last, rb)) {
> > -                     if (i915_request_completed(last)) {
> > -                             tasklet_hi_schedule(&execlists->tasklet);
> > -                             return;
> > -                     }
> > +             if (i915_request_completed(last) &&
> > +                 !list_is_last(&last->sched.link, &engine->active.requests))
> 
> You return if it is not last? Also the hi schedule is gone.

The kick was just causing us to busyspin ahead of the HW CS event. On
tracing, it did not seem worth it.

If this is the last request, the GPU is now idling and we know that we
will not try and lite restore into that request/context. So instead of
waiting for the CS event, we go ahead and prepare the next pair of
contexts.

If it was not the last request, we know there is a context the GPU will
switch into, so the urgency is not an issue. However, we have to be
careful that we don't issue an ELSP into that second context in case we
catch it as it idles (thus hanging the HW).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
