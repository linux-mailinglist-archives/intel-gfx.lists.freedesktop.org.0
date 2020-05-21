Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBA51DCAD9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 12:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57F46E929;
	Thu, 21 May 2020 10:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58F16E929
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 10:17:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21245767-1500050 for multiple; Thu, 21 May 2020 11:17:43 +0100
MIME-Version: 1.0
In-Reply-To: <159005414614.32320.874522293139874706@build.alporthouse.com>
References: <20200521085320.906-1-chris@chris-wilson.co.uk>
 <5afb5457-733b-b057-dd6b-5040f5f9b5e8@linux.intel.com>
 <159005414614.32320.874522293139874706@build.alporthouse.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159005626119.32320.8655442357429635205@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 21 May 2020 11:17:41 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Disable semaphore
 inter-engine sync without timeslicing
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

Quoting Chris Wilson (2020-05-21 10:42:26)
> Quoting Tvrtko Ursulin (2020-05-21 10:10:10)
> > 
> > On 21/05/2020 09:53, Chris Wilson wrote:
> > > Since the remove of the no-semaphore boosting, we rely on timeslicing to
> > > reorder past inter-dependency hogs across the engines. However, we
> > > require preemption to support timeslicing into user payloads, and not all
> > > machine support preemption so we do not universally enable timeslicing
> > > even when it would preempt our own inter-engine semaphores.
> > > 
> > > Testcase: igt/gem_exec_schedule/semaphore-codependency # bdw/bsw
> > > Fixes: 18e4af04d218 ("drm/i915: Drop no-semaphore boosting")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > index 900ea8b7fc8f..f5d59d18cd5b 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > @@ -230,7 +230,7 @@ static void intel_context_set_gem(struct intel_context *ce,
> > >               ce->timeline = intel_timeline_get(ctx->timeline);
> > >   
> > >       if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
> > > -         intel_engine_has_semaphores(ce->engine))
> > > +         intel_engine_has_timeslices(ce->engine))
> > >               __set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
> > >   }
> > >   
> > > @@ -1969,7 +1969,7 @@ static int __apply_priority(struct intel_context *ce, void *arg)
> > >   {
> > >       struct i915_gem_context *ctx = arg;
> > >   
> > > -     if (!intel_engine_has_semaphores(ce->engine))
> > > +     if (!intel_engine_has_timeslices(ce->engine))
> > >               return 0;
> > >   
> > >       if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
> > > 
> > 
> > __i915_request_await_execution is okay to keep using semaphores?
> 
> I think so. Using semaphores there still benefits from synchronising
> with a master in ELSP[1]. The danger is that it does increase the
> hangcheck possibility for the bond request, such that a slow request
> before the master would result in us declaring the bond hung. The
> question is whether that is worse than executing the bond before the
> master.
> 
> I should be able to write a test to demonstrate the hang in the bond.
> For example, if we do something like:
> 
> on master engine:
>         submit spin
>         submit master -> submit fence -> submit bond
>         for(;;)
>                 submit high priority spin
>                 terminate previous spin
>         
> Hmm. But without preemption... master will execute before we get a
> chance to submit the high priority spinners. So this will not actually
> hang.
> 
> Ok, so this is safer than it seems :)

Even more so, since we do preempt the semaphore for the hangcheck.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
