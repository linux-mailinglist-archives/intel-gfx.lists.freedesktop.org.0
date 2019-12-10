Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 797CD118AD3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF696E0EF;
	Tue, 10 Dec 2019 14:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2CF6E0EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:29:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19527827-1500050 for multiple; Tue, 10 Dec 2019 14:29:09 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
 <96a8b2f2-c93c-07b9-285d-5503b5aad128@linux.intel.com>
 <157598316862.15362.4737947399484296954@skylake-alporthouse-com>
 <9f260ea1-cbdb-dcec-5d9d-3c0fe5bcb8b9@linux.intel.com>
In-Reply-To: <9f260ea1-cbdb-dcec-5d9d-3c0fe5bcb8b9@linux.intel.com>
Message-ID: <157598814877.15362.9225366099148093860@skylake-alporthouse-com>
Date: Tue, 10 Dec 2019 14:29:08 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Copy across scheduler
 behaviour flags across submit fences
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

Quoting Tvrtko Ursulin (2019-12-10 14:12:31)
> 
> On 10/12/2019 13:06, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2019-12-10 12:41:36)
> >>
> >> On 04/12/2019 21:17, Chris Wilson wrote:
> >>> +static int
> >>> +__i915_request_await_execution(struct i915_request *to,
> >>> +                            struct i915_request *from,
> >>> +                            void (*hook)(struct i915_request *rq,
> >>> +                                         struct dma_fence *signal))
> >>> +{
> >>> +     int err;
> >>> +
> >>> +     /* Submit both requests at the same time */
> >>> +     err = __await_execution(to, from, hook, I915_FENCE_GFP);
> >>> +     if (err)
> >>> +             return err;
> >>> +
> >>> +     if (!to->engine->schedule)
> >>> +             return 0;
> >>
> >> Hm is this about scheduler or preemption?
> > 
> > It's about dependency tracking, and the lack of it.
> >   
> >>> +
> >>> +     /* Squash repeated depenendices to the same timelines */
> >>
> >> typo in dependencies
> >>
> >>> +     if (intel_timeline_sync_has_start(i915_request_timeline(to),
> >>> +                                       &from->fence))
> >>> +             return 0;
> >>> +
> >>> +     /* Ensure both start together [after all semaphores in signal] */
> >>> +     if (intel_engine_has_semaphores(to->engine))
> >>> +             err =__emit_semaphore_wait(to, from, from->fence.seqno - 1);
> >>
> >> So the only thing preventing B' getting onto the same engine as A, as
> >> soon as B enters a different engine, is the priority order?
> > 
> > No. Now B' has a dependency on A, so B' is always after A.
> 
> Yes, true.
> 
> >> And if I am reading this correctly, change relative to current state is
> >> to let B' in, but spin on a semaphore, where currently we let it execute
> >> the actual payload.
> >>
> >> It's possible that we do need this if we said we would guarantee bonded
> >> request would not execute before it's master. Have we made this
> >> guarantee when discussing the uAPI? We must had..
> > 
> > We did not make that guarantee as the assumption was that all fences for
> > B would be passed to B'. However, the since fence slot for IN/SUBMIT
> 
> I think we must have made a guarantee B' won't start executing before B. 
> That is kind of the central point. Only thing we did not do is 
> guarantee/made effort to start B' together with B. But guarantee got 
> defeated by ELSP and later timeslicing/preemption.

According to the implementation, we did not ;)

I agree that the stronger coordination makes more sense for the API, and
the inheritance of dependencies I think is crucial for exported fences.
 
> Previously, miss was if B was in ELSP[1] B' could be put in ELSP[0] 
> (different engines). Which is wrong. And with timeslicing/preemption 
> even more so.

It wasn't actually an oversight :) My understanding was that B' payload
would not start before B payload via user semaphores, so I wrote it off
as a bad bubble.

The oversight, imo, is that we shouldn't rely on userspace for this and
with the current implementation it is easy to lose PI.
 
> So having await_started or semaphore looks correct in that respect. And 
> scheduler deps cover the A in chain. So I think it's good with this patch.

Agreed.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
