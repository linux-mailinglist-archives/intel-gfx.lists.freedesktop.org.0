Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02DB2ECDC0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 11:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225F06E432;
	Thu,  7 Jan 2021 10:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 204D96E43F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 10:27:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23525897-1500050 for multiple; Thu, 07 Jan 2021 10:27:53 +0000
MIME-Version: 1.0
In-Reply-To: <cf61d2c2-c0c0-5eca-94b5-33cbd8e4ab26@linux.intel.com>
References: <20210106123939.18435-1-chris@chris-wilson.co.uk>
 <20210106123939.18435-4-chris@chris-wilson.co.uk>
 <0ed63aeb-d58e-5ec6-2072-65d17be612dc@linux.intel.com>
 <160994932055.14894.15675793524963876311@build.alporthouse.com>
 <cf61d2c2-c0c0-5eca-94b5-33cbd8e4ab26@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 07 Jan 2021 10:27:52 +0000
Message-ID: <161001527216.839.6103658487962243749@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Remove timeslice
 suppression
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

Quoting Tvrtko Ursulin (2021-01-07 10:16:57)
> 
> On 06/01/2021 16:08, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-06 15:57:49)
> 
> [snip]
> 
> >>> @@ -1363,16 +1336,16 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >>>                        __unwind_incomplete_requests(engine);
> >>>    
> >>>                        last = NULL;
> >>> -             } else if (need_timeslice(engine, last) &&
> >>> -                        timeslice_expired(execlists, last)) {
> >>> +             } else if (timeslice_expired(engine, last)) {
> >>>                        ENGINE_TRACE(engine,
> >>> -                                  "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
> >>> -                                  last->fence.context,
> >>> -                                  last->fence.seqno,
> >>> -                                  last->sched.attr.priority,
> >>> +                                  "expired:%s last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
> >>> +                                  yesno(timer_expired(&execlists->timer)),
> >>> +                                  last->fence.context, last->fence.seqno,
> >>> +                                  rq_prio(last),
> >>>                                     execlists->queue_priority_hint,
> >>>                                     yesno(timeslice_yield(execlists, last)));
> >>>    
> >>> +                     cancel_timer(&execlists->timer);
> >>
> >> What is this cancel for?
> > 
> > This branch is taken upon yielding the timeslice, but we may not submit
> > a new pair of contexts, leaving the timer active (and marked as
> > expired). Since the timer remains expired, we will continuously looped
> > until a context switch, or some other preemption event.
> 
> Sorry I was looking at the cancel_timer in process_csb and ended up 
> replying at the wrong spot. The situation there seems to be removing the 
> single timeslice related call (set_timeslice) and adding a cancel_timer 
> which is also not obvious to me what it is about.

Yes, there the cancel_timer() is equivalent to the old set_timeslice().

After processing an event, we assume it is a change in context meriting
a new timeslice. To start a new timeslice rather than continue the old
one, we remove an existing timer and readd it for the end of the
timeslice.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
