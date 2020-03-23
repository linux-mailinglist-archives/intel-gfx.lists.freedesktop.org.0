Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A16F18F21B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 10:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BD289EB7;
	Mon, 23 Mar 2020 09:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C4C89EB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 09:45:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20658082-1500050 for multiple; Mon, 23 Mar 2020 09:45:38 +0000
MIME-Version: 1.0
In-Reply-To: <87tv2i4qsk.fsf@riseup.net>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk> <871rpm6a9v.fsf@riseup.net>
 <87tv2i4qsk.fsf@riseup.net>
To: Francisco Jerez <currojerez@riseup.net>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158495673843.17851.11761890199116661145@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 09:45:38 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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

Quoting Francisco Jerez (2020-03-20 22:14:51)
> Francisco Jerez <currojerez@riseup.net> writes:
> 
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> >
> >> We dropped calling process_csb prior to handling direct submission in
> >> order to avoid the nesting of spinlocks and lift process_csb() and the
> >> majority of the tasklet out of irq-off. However, we do want to avoid
> >> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> >> local to direct submission if we can acquire the tasklet's lock.
> >>
> >> v2: Tweak the balance to avoid over submitting lite-restores
> >>
> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Francisco Jerez <currojerez@riseup.net>
> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++------
> >>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
> >>  2 files changed, 36 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> index f09dd87324b9..dceb65a0088f 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> @@ -2884,17 +2884,17 @@ static void queue_request(struct intel_engine_cs *engine,
> >>      set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>  }
> >>  
> >> -static void __submit_queue_imm(struct intel_engine_cs *engine)
> >> +static bool pending_csb(const struct intel_engine_execlists *el)
> >>  {
> >> -    struct intel_engine_execlists * const execlists = &engine->execlists;
> >> +    return READ_ONCE(*el->csb_write) != READ_ONCE(el->csb_head);
> >> +}
> >>  
> >> -    if (reset_in_progress(execlists))
> >> -            return; /* defer until we restart the engine following reset */
> >> +static bool skip_lite_restore(struct intel_engine_execlists *el,
> >> +                          const struct i915_request *rq)
> >> +{
> >> +    struct i915_request *inflight = execlists_active(el);
> >>  
> >> -    if (execlists->tasklet.func == execlists_submission_tasklet)
> >> -            __execlists_submission_tasklet(engine);
> >> -    else
> >> -            tasklet_hi_schedule(&execlists->tasklet);
> >> +    return inflight && inflight->context == rq->context;
> >>  }
> >>  
> >>  static void submit_queue(struct intel_engine_cs *engine,
> >> @@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engine_cs *engine,
> >>      if (rq_prio(rq) <= execlists->queue_priority_hint)
> >>              return;
> >>  
> >> +    if (reset_in_progress(execlists))
> >> +            return; /* defer until we restart the engine following reset */
> >> +
> >> +    /*
> >> +     * Suppress immediate lite-restores, leave that to the tasklet.
> >> +     *
> >> +     * However, we leave the queue_priority_hint unset so that if we do
> >> +     * submit a second context, we push that into ELSP[1] immediately.
> >> +     */
> >> +    if (skip_lite_restore(execlists, rq))
> >> +            return;
> >> +
> > Why do you need to treat lite-restore specially here?

Lite-restore have a noticeable impact on no-op loads. A part of that is
that a lite-restore is about 1us, and the other part is that the driver
has a lot more work to do. There's a balance point around here for not
needlessly interrupting ourselves and ensuring that there is no bubble.

> >
> > Anyway, trying this out now in combination with my patches now.
> >
> 
> This didn't seem to help (together with your other suggestion to move
> the overload accounting to __execlists_schedule_in/out).  And it makes
> the current -5% SynMark OglMultithread regression with my series go down
> to -10%.  My previous suggestion of moving the
> intel_gt_pm_active_begin() call to process_csb() when the submission is
> ACK'ed by the hardware does seem to help (and it roughly halves the
> OglMultithread regression), possibly because that way we're able to
> determine whether the first context was actually overlapping at the
> point that the second was received by the hardware -- I haven't tested
> it extensively yet though.

Grumble, it just seems like we are setting and clearing the flag on
completely unrelated events -- which I still think boils down to working
around latency in the driver. Or at least I hope there's an explanation
and bug to fix that improves responsiveness for all.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
