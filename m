Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F5717F58C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB926E87F;
	Tue, 10 Mar 2020 11:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6066E88B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:00:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20506916-1500050 for multiple; Tue, 10 Mar 2020 11:00:35 +0000
MIME-Version: 1.0
In-Reply-To: <f93b81f1-ad00-da75-92dd-dad7b4467416@linux.intel.com>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-4-chris@chris-wilson.co.uk>
 <f93b81f1-ad00-da75-92dd-dad7b4467416@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158383803435.16414.17798608776413585801@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 11:00:34 +0000
Subject: Re: [Intel-gfx] [PATCH 04/17] drm/i915: Tweak scheduler's
 kick_submission()
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

Quoting Tvrtko Ursulin (2020-03-10 10:07:33)
> 
> On 06/03/2020 13:38, Chris Wilson wrote:
> > Skip useless priority bumping on adding a new dependency, but otherwise
> > prevent tasklet scheduling until we have completed all the potential
> > rescheduling.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/i915_scheduler.c | 7 ++++++-
> >   1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> > index 52f71e83e088..603cba36d6a4 100644
> > --- a/drivers/gpu/drm/i915/i915_scheduler.c
> > +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> > @@ -209,6 +209,8 @@ static void kick_submission(struct intel_engine_cs *engine,
> >       if (!inflight)
> >               goto unlock;
> >   
> > +     engine->execlists.queue_priority_hint = prio;
> > +
> 
> What is the significance of moving this up? I couldn't correlate it to 
> the commit message.

It's correcting the priority bumping. If we have the same context as
active, we should not be skipping the hint update and so avoid the useless
bump on a later dependency.

> >       /*
> >        * If we are already the currently executing context, don't
> >        * bother evaluating if we should preempt ourselves.
> > @@ -216,7 +218,6 @@ static void kick_submission(struct intel_engine_cs *engine,
> >       if (inflight->context == rq->context)
> >               goto unlock;
> >   
> > -     engine->execlists.queue_priority_hint = prio;
> >       if (need_preempt(prio, rq_prio(inflight)))
> >               tasklet_hi_schedule(&engine->execlists.tasklet);
> >   
> > @@ -463,11 +464,15 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
> >       if (!dep)
> >               return -ENOMEM;
> >   
> > +     local_bh_disable();
> > +
> >       if (!__i915_sched_node_add_dependency(node, signal, dep,
> >                                             I915_DEPENDENCY_EXTERNAL |
> >                                             I915_DEPENDENCY_ALLOC))
> >               i915_dependency_free(dep);
> >   
> > +     local_bh_enable(); /* kick submission tasklet */
> > +
> 
> And this presumably postpones the tasklet until __bump_priority -> 
> __i915_schedule is finished. But then why the request submission path 
> which calls __i915_sched_node_add_dependency directly does not need this 
> treatment?

Because we haven't completed the updates by that point, and upon actual
request submission the tasklet is flushed. Plus on not all request
submission paths would it be legal.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
