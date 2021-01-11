Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2762F2243
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 22:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4558A89C5E;
	Mon, 11 Jan 2021 21:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2749E89C52
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 21:54:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23564717-1500050 for multiple; Mon, 11 Jan 2021 21:54:38 +0000
MIME-Version: 1.0
In-Reply-To: <c8a89bfa-f5df-5f41-f5d9-a5042226e5ba@linux.intel.com>
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <20210111105735.21515-3-chris@chris-wilson.co.uk>
 <24903f8e-4f53-c0bd-4ced-7161b505f06d@linux.intel.com>
 <161038246850.28181.16757116420949491976@build.alporthouse.com>
 <c8a89bfa-f5df-5f41-f5d9-a5042226e5ba@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 21:54:36 +0000
Message-ID: <161040207613.28181.5503270808079806649@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Perform an arbitration
 check before busywaiting
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

Quoting Tvrtko Ursulin (2021-01-11 17:12:57)
> 
> On 11/01/2021 16:27, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-11 16:19:40)
> >>
> >> On 11/01/2021 10:57, Chris Wilson wrote:
> >>> During igt_reset_nop_engine, it was observed that an unexpected failed
> >>> engine reset lead to us busywaiting on the stop-ring semaphore (set
> >>> during the reset preparations) on the first request afterwards. There was
> >>> no explicit MI_ARB_CHECK in this sequence as the presumption was that
> >>> the failed MI_SEMAPHORE_WAIT would itself act as an arbitration point.
> >>> It did not in this circumstance, so force it.
> >>
> >> In other words MI_SEMAPHORE_POLL is not a preemption point? Can't
> >> remember if I knew that or not..
> > 
> > MI_SEMAPHORE_WAIT | POLL is most definitely a preemption point on a
> > miss.
> > 
> >> 1)
> >> Why not the same handling in !gen12 version?
> > 
> > Because I think it's a bug in tgl [a0 at least]. I think I've seen the
> > same symptoms on tgl before, but not earlier. This is the first time the
> > sequence clicked as to why it was busy spinning. Random engine reset
> > failures are rare enough -- I was meant to also write a test case to
> > inject failure.
> 
> Random engine reset failure you think is a TGL issue?

The MI_SEMAPHORE_WAIT | POLL miss not generating an arbitration point.
We have quite a few selftests and IGT that use this feature.

So I was wondering if this was similar to one of those tgl issues with
semaphores and CS events.

The random engine reset failure here is also decidedly odd. The engine
was idle!

> >> 2)
> >> Failed reset leads to busy-hang in following request _tail_? But there
> >> is an arb check at the start of following request as well. Or in cases
> >> where we context switch into the middle of a previously executing request?
> > 
> > It was the first request submitted after the failed reset. We expect to
> > clear the ring-stop flag on the CS IDLE->ACTIVE event.
> > 
> >> But why would that busy hang? Hasn't the failed request unpaused the ring?
> > 
> > The engine was idle at the time of the failed reset. We left the
> > ring-stop set, and submitted the next batch of requests. We hit the
> > MI_SEMAPHORE_WAIT(ring-stop) at the end of the first request, but
> > without hitting an arbitration point (first request, no init-breadcrumb
> > in this case), the semaphore was stuck.
> 
> So a kernel context request?

Ish. The selftest is using empty requests, and not emitting the
initial breadcrumb. (So acting like a kernel context.)

> Why hasn't IDLE->ACTIVE cleared ring stop? 

There hasn't been an idle->active event, not a single CS event after
writing to ELSP and timing out while still spinning on the semaphore.

> Presumably this CSB must come after the first request has been submitted 
> so apparently I am still not getting how it hangs.

It was never sent. The context is still in pending[0] (not active[0])
and there's no sign in the trace of any interrupts/tasklet handing other
than the semaphore-wait interrupt.
 
> Just because igt_reset_nop_engine does things "quickly"? It prevents the 
> CSB from arriving?

More that the since we do very little we hit the semaphore before the CS
has recovered from the shock of being asked to do something.

> So ARB_CHECK pickups up on the fact ELSP has been 
> rewritten before the IDLE->ACTIVE even received and/or engine reset 
> prevented it from arriving?

The ARB_CHECK should trigger the CS to generate the IDLE->ACTIVE event.
(Of course assuming that the bug is in the semaphore not triggering the
event due to strange circumstances and not a bug in the event generator
itself.) I'm suspicious of the semaphore due to the earlier CS bugs with
lite-restores + semaphores, and am expecting that since the MI_ARB_CHECK
is explicit, it actually works.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
