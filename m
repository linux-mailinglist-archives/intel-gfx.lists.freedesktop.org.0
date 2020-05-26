Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31211E268C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 18:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB656E21A;
	Tue, 26 May 2020 16:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F37B36E21A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 16:10:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21299591-1500050 for multiple; Tue, 26 May 2020 17:09:56 +0100
MIME-Version: 1.0
In-Reply-To: <6016e5c6-cd09-dd3f-b102-49e76fa28518@linux.intel.com>
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
 <20200526090753.11329-2-chris@chris-wilson.co.uk>
 <6016e5c6-cd09-dd3f-b102-49e76fa28518@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159050939489.30979.11486479918711171319@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 26 May 2020 17:09:54 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Do not schedule normal
 requests immediately along virtual
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-05-26 17:00:06)
> 
> On 26/05/2020 10:07, Chris Wilson wrote:
> > When we push a virtual request onto the HW, we update the rq->engine to
> > point to the physical engine. A request that is then submitted by the
> > user that waits upon the virtual engine, but along the physical engine
> > in use, will then see that it is due to be submitted to the same engine
> > and take a shortcut (and be queued without waiting for the completion
> > fence). However, the virtual request may be preempted (either by higher
> > priority users, or by timeslicing) and removed from the physical engine
> > to be migrated over to one of its siblings. The dependent normal request
> > however is oblivious to the removal of the virtual request and remains
> > queued to execute on HW, believing that once it reaches the head of its
> > queue all of its predecessors will have completed executing!
> > 
> > v2: Beware restriction of signal->execution_mask prior to submission.
> > 
> > Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
> > Testcase: igt/gem_exec_balancer/sliced
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.3+
> > ---
> >   drivers/gpu/drm/i915/i915_request.c | 25 +++++++++++++++++++++----
> >   1 file changed, 21 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 33bbad623e02..0b07ccc7e9bc 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -1237,6 +1237,25 @@ i915_request_await_execution(struct i915_request *rq,
> >       return 0;
> >   }
> >   
> > +static int
> > +await_request_submit(struct i915_request *to, struct i915_request *from)
> > +{
> > +     /*
> > +      * If we are waiting on a virtual engine, then it may be
> > +      * constrained to execute on a single engine *prior* to submission.
> > +      * When it is submitted, it will be first submitted to the virtual
> > +      * engine and then passed to the physical engine. We cannot allow
> > +      * the waiter to be submitted immediately to the physical engine
> > +      * as it may then bypass the virtual request.
> > +      */
> > +     if (to->engine == READ_ONCE(from->engine))
> > +             return i915_sw_fence_await_sw_fence_gfp(&to->submit,
> > +                                                     &from->submit,
> > +                                                     I915_FENCE_GFP);
> > +     else
> 
> When can engines be different and the mask test below brought us here?

We change the mask during evaluation of the bond, which is from the
signaler's signaler's execute_cb before the signaler is submitted. So
there will be a period where the from->execution_mask is constrained to
a single engine, but it is still waiting to be queued. Once it is
executed on HW, it will remain on that engine.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
