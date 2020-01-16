Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2234413F1E1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3485D6EE86;
	Thu, 16 Jan 2020 18:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608696EE86
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:32:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19906218-1500050 for multiple; Thu, 16 Jan 2020 18:32:33 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
 <20200115083346.2601512-3-chris@chris-wilson.co.uk>
 <e826323f-7b6f-b8ff-1008-6deaacad340b@linux.intel.com>
 <157919690377.2795.10878471609767844216@skylake-alporthouse-com>
 <e9be510e-fb47-a615-cb77-0507fe7ff04d@linux.intel.com>
In-Reply-To: <e9be510e-fb47-a615-cb77-0507fe7ff04d@linux.intel.com>
Message-ID: <157919955113.2795.11657063397337910037@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 18:32:31 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Offline error
 capture
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

Quoting Tvrtko Ursulin (2020-01-16 18:14:24)
> 
> On 16/01/2020 17:48, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-01-16 17:22:10)
> >>
> >> On 15/01/2020 08:33, Chris Wilson wrote:
> >>> +     /*
> >>> +      * We need to _quickly_ capture the engine state before we reset.
> >>> +      * We are inside an atomic section (softirq) here and we are delaying
> >>> +      * the forced preemption event.
> >>> +      */
> >>> +     cap->error = capture_regs(engine);
> >>> +     if (!cap->error)
> >>> +             goto err_free;
> >>> +
> >>> +     if (i915_request_completed(cap->rq)) /* oops, not so guilty! */
> >>> +             goto err_store;
> >>
> >> Should this be a bug on? Doesn't look active_request() can return a
> >> non-completed request. Hm I guess we can make a wrong decision to reset
> >> the engine.
> > 
> > Aye. Until we actually invoke the reset, the engine is still active and
> > so may have advanced. We call ring_set_paused() so it doesn't get too
> > far ahead, but that still lets the breadcrumb tick over, so it is still
> > possible for the active_request() to complete (but no more).
> 
> ...
> 
> >> But in any case, if request has completed in the meantime, why go to
> >> i915_error_state_store which will log a hang in dmesg?
> > 
> > Because we are about to call intel_reset_engine(), so want some debug
> > clue as to why we got into a situation where we invoked the forced
> > preemption. I thought it might be useful to see the engine state, and to
> > drop the "oops, please file a bug request" because of the reset.
> 
> ... so we could still decide to bail out if request completed in the 
> meantime and give up on the whole reset business. Why not if not? I 
> guess it is of little practical difference, micro-second here or there 
> before a potential false positive.

(When I first added the check here, it was following a hacky
__intel_gt_reset() to ensure the engine had stopped, so I needed to
always do a real reset to cleanup the mess.)

Hmm. I was about to say "but the preemption window expired and we need
to reset". However, if we have completed this request and having done
since our earlier inspection, it must also hit an arbitration point
where the preemption will take place.

So yes, we can bail out here quietly if we find ourselves with a
completed request at the last moment.

For simplicity, I'm just going to ignore the troublemaker and put it on
the hold list.

         * Note that because we have not yet reset the engine at this point,
         * it is possible for the request that we have identified as being
         * guilty, did in fact complete and we will then hit an arbitration
         * point allowing the preemption to succeed. The likelihood of that
         * is very low (as the capturing of the engine registers should be
         * fast enough to run inside an irq-off atomic section!), so we will
         * simply hold that request accountable for being non-preemptible
         * long enough to force the reset.

We will then skip the completed request when it comes time to dequeue.
Business as usual in the land of preempt-to-busy.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
