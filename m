Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3164B1A0C4D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0626E826;
	Tue,  7 Apr 2020 10:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1C46E826
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:55:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20826280-1500050 for multiple; Tue, 07 Apr 2020 11:55:04 +0100
MIME-Version: 1.0
In-Reply-To: <ccf7f6e5-0295-a179-bf1f-eb4de8570b58@linux.intel.com>
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-10-chris@chris-wilson.co.uk>
 <ccf7f6e5-0295-a179-bf1f-eb4de8570b58@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158625690563.8918.10030260069115914165@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 11:55:05 +0100
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/gt: Declare when we enabled
 timeslicing
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-04-07 11:50:31)
> 
> On 03/04/2020 10:13, Chris Wilson wrote:
> > Let userspace know if they can trust timeslicing by including it as part
> > of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> > 
> > v2: Only declare timeslicing if we can safely preempt userspace.
> > 
> > Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine.h      | 3 ++-
> >   drivers/gpu/drm/i915/gt/intel_engine_user.c | 5 +++++
> >   include/uapi/drm/i915_drm.h                 | 1 +
> >   3 files changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index b469de0dd9b6..424672ee7874 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -339,7 +339,8 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> >       if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> >               return false;
> >   
> > -     return intel_engine_has_semaphores(engine);
> > +     return (intel_engine_has_semaphores(engine) &&
> > +             intel_engine_has_preemption(engine));
> 
> This is turning off timeslicing on Gen8? Well it wouldn't have worked 
> anyway, outside the batch boundaries.. so it does sound technically correct.

...
 
> Split uapi from Gen8 fix?

I don't regard gen8 as broken per se, for the kernel could preempt
between batches -- but under the spotlight of "can userspace use this",
it clearly cannot. Hence why I put them both together, it is not until
userspace needs to control itself, that it becomes a problem.

The igt that test this purposefully do not run on gen8 because I was
aware of the limitations. That should have been a big clue, but it
wasn't until I looked at it from an actual user's perspective did I
realise how important that little detail was. :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
