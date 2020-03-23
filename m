Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D9A19023D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 00:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE206E430;
	Mon, 23 Mar 2020 23:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B4B6E430
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 23:50:16 +0000 (UTC)
IronPort-SDR: BGoN3kM/zPY6FZ8obc4dKThWf8AEsi4kEUSsN2xkwtazDrs3FWta2YhBJZiqsEtll8CdpqF9w8
 ogZVzECA2CqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 16:50:14 -0700
IronPort-SDR: F4b6SCldzvVg3avTz/vKbUuOsUfWMQtPxtOM6ZWzpH1591AdlL3Lqu9/O7pMAiTH7Ncrn8r+2A
 GEW4qqi3VglA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; d="scan'208";a="357248391"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.46.109])
 by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2020 16:50:13 -0700
MIME-Version: 1.0
In-Reply-To: <87imiu4scq.fsf@riseup.net>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk> <871rpm6a9v.fsf@riseup.net>
 <87tv2i4qsk.fsf@riseup.net>
 <158495673843.17851.11761890199116661145@build.alporthouse.com>
 <87imiu4scq.fsf@riseup.net>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Francisco Jerez <currojerez@riseup.net>, intel-gfx@lists.freedesktop.org
Message-ID: <158500741217.13839.16404244724951422520@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 23:50:12 +0000
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

Quoting Francisco Jerez (2020-03-23 22:30:13)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Francisco Jerez (2020-03-20 22:14:51)
> >> Francisco Jerez <currojerez@riseup.net> writes:
> >> 
> >> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> >> >
> >> >> We dropped calling process_csb prior to handling direct submission in
> >> >> order to avoid the nesting of spinlocks and lift process_csb() and the
> >> >> majority of the tasklet out of irq-off. However, we do want to avoid
> >> >> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> >> >> local to direct submission if we can acquire the tasklet's lock.
> >> >>
> >> >> v2: Tweak the balance to avoid over submitting lite-restores
> >> >>
> >> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> >> Cc: Francisco Jerez <currojerez@riseup.net>
> >> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++------
> >> >>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
> >> >>  2 files changed, 36 insertions(+), 10 deletions(-)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> >> index f09dd87324b9..dceb65a0088f 100644
> >> >> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> >> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> >> @@ -2884,17 +2884,17 @@ static void queue_request(struct intel_engine_cs *engine,
> >> >>      set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >> >>  }
> >> >>  
> >> >> -static void __submit_queue_imm(struct intel_engine_cs *engine)
> >> >> +static bool pending_csb(const struct intel_engine_execlists *el)
> >> >>  {
> >> >> -    struct intel_engine_execlists * const execlists = &engine->execlists;
> >> >> +    return READ_ONCE(*el->csb_write) != READ_ONCE(el->csb_head);
> >> >> +}
> >> >>  
> >> >> -    if (reset_in_progress(execlists))
> >> >> -            return; /* defer until we restart the engine following reset */
> >> >> +static bool skip_lite_restore(struct intel_engine_execlists *el,
> >> >> +                          const struct i915_request *rq)
> >> >> +{
> >> >> +    struct i915_request *inflight = execlists_active(el);
> >> >>  
> >> >> -    if (execlists->tasklet.func == execlists_submission_tasklet)
> >> >> -            __execlists_submission_tasklet(engine);
> >> >> -    else
> >> >> -            tasklet_hi_schedule(&execlists->tasklet);
> >> >> +    return inflight && inflight->context == rq->context;
> >> >>  }
> >> >>  
> >> >>  static void submit_queue(struct intel_engine_cs *engine,
> >> >> @@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engine_cs *engine,
> >> >>      if (rq_prio(rq) <= execlists->queue_priority_hint)
> >> >>              return;
> >> >>  
> >> >> +    if (reset_in_progress(execlists))
> >> >> +            return; /* defer until we restart the engine following reset */
> >> >> +
> >> >> +    /*
> >> >> +     * Suppress immediate lite-restores, leave that to the tasklet.
> >> >> +     *
> >> >> +     * However, we leave the queue_priority_hint unset so that if we do
> >> >> +     * submit a second context, we push that into ELSP[1] immediately.
> >> >> +     */
> >> >> +    if (skip_lite_restore(execlists, rq))
> >> >> +            return;
> >> >> +
> >> > Why do you need to treat lite-restore specially here?
> >
> > Lite-restore have a noticeable impact on no-op loads. A part of that is
> > that a lite-restore is about 1us, and the other part is that the driver
> > has a lot more work to do. There's a balance point around here for not
> > needlessly interrupting ourselves and ensuring that there is no bubble.
> >
> 
> Oh, I see.  But isn't inhibiting the lite restore likely to be fairly
> costly in some cases as well if it causes the GPU to go idle after the
> current context completes for as long as it takes the CPU to wake up,
> process the IRQ and dequeue the next request?

Yes. It's an amusing diversion to try and think how can we do a single
context submission (well 2) for a sequence of requests, for those
clients that like to submit N batches at once. From an idle GPU,
assuming each batch is non-trivial, we want to do something like submit
batch 1, accumulate, then submit batches 1-N, i.e. skip the intervening
lite-restores but complete the submission with all the work queued.

> Would it make sense to
> inhibit lite-restore in roughly the same conditions I set the overload
> flag?  (since that indicates we'll get an IRQ at least one request
> *before* the GPU actually goes idle, so there shouldn't be any penalty
> from inhibiting lite restore).

Yes/no. Once we have multiple contexts scheduled, we won't be doing lite
restores.

The key problem is that the irq/tasklet-bh latency is unpredictable. Only
submitting one context at a time costs about 1% in [multi-context]
transcode throughput. And the cost of lite-restore on that scale is
barely noticeable.

So it annoys me that we can measure the impact of lite-restore on
nop-throughput, but in reality we have a self-inflicted regression on
top of the lite-restore that caught my eye.

Since we don't resubmit more contexts until we receive an ack from the
HW, the latency in processing that ack actually allowed us to accumulate
more nops into a single submission. Process that ack earlier and we
start submitting each nop individually. But we do want to process that
ack earlier as we know we are handling a request that should be pushed
to the GPU immediately.

[The age old adage, batching submissions is good for throughput, bad for
latency. And I have to pinch myself that throughput is easier to
measure, but latency is the crucial metric.]

> >> > Anyway, trying this out now in combination with my patches now.
> >> >
> >> 
> >> This didn't seem to help (together with your other suggestion to move
> >> the overload accounting to __execlists_schedule_in/out).  And it makes
> >> the current -5% SynMark OglMultithread regression with my series go down
> >> to -10%.  My previous suggestion of moving the
> >> intel_gt_pm_active_begin() call to process_csb() when the submission is
> >> ACK'ed by the hardware does seem to help (and it roughly halves the
> >> OglMultithread regression), possibly because that way we're able to
> >> determine whether the first context was actually overlapping at the
> >> point that the second was received by the hardware -- I haven't tested
> >> it extensively yet though.
> >
> > Grumble, it just seems like we are setting and clearing the flag on
> > completely unrelated events -- which I still think boils down to working
> > around latency in the driver. Or at least I hope there's an explanation
> > and bug to fix that improves responsiveness for all.
> > -Chris
> 
> There *might* be a performance issue somewhere introducing latency that
> the instrumentation I added happens to mitigate, but isn't that a sign
> that it's fulfilling its purpose of determining when the workload could
> be sensitive to CPU latency?

We have latency issues in the tasklet submission. The irq-off lock
contention along the submission path [execlists_dequeue] is perhaps the
biggest issue in the driver (at least from lockstats perspective). My
expectation is that the delay in processing the CSB is affecting the
'overload' heuristic.
 
> Maybe I didn't explain the idea properly: Given that command submission
> is asynchronous with the CS processing the previous context, there is no
> way for us to tell whether a request we just submitted was actually
> overlapping with the previous one until we read the CSB and see whether
> it led to an idle-to-active transition.  Only then can we assume that
> the CPU is sending commands to the GPU quickly enough to keep it busy
> without interruption.

That sounds like you just want to use the C0 counters.

But if you want to use the active/idle state as your heuristic, then you
want something like

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3102159d2b3b..3e08ecd53ecb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2443,6 +2443,8 @@ static void process_csb(struct intel_engine_cs *engine)

                        GEM_BUG_ON(execlists->active - execlists->inflight >
                                   execlists_num_ports(execlists));
+
+                       WRITE_ONCE(execlists->overload, !!*execlists->active);
                }
        } while (head != tail);


That will be set to true when we have enough work to keep the GPU busy
into the second context, and only be set to false when the GPU idles.

However, just because we switched contexts does not necessarily imply
that the previous context did substantial work. And there may be lots of
fun with timeslicing preemptions that do not let a single context run to
completion. So perhaps,

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3102159d2b3b..05bb533d556c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2340,6 +2340,7 @@ static void process_csb(struct intel_engine_cs *engine)
        rmb();

        ENGINE_TRACE(engine, "cs-irq head=%d, tail=%d\n", head, tail);
+       bool overload = *execlists->active;
        do {
                bool promote;

@@ -2443,8 +2444,11 @@ static void process_csb(struct intel_engine_cs *engine)

                        GEM_BUG_ON(execlists->active - execlists->inflight >
                                   execlists_num_ports(execlists));
+
+                       overload = *execlists->overload; /* active->idle? */
                }
        } while (head != tail);
+       WRITE_ONCE(execlists->overload, overload && *execlists->overload);


which sets the overload flag if we enter with an active context and
leave with another active context, without going through an idle state.
But that will set overload for timeslicing and for high priority
preemption.

(Now I have to ask whether that's what you had before :)
 
> You might argue that this will introduce a delay in the signalling of
> overload roughly equal to the latency it takes for the CPU to receive
> the execlists IRQ with the hardware ACK.  However that seems beneficial
> since the clearing of overload suffers from the same latency, so the
> fraction of time that overload is signalled will otherwise be biased as
> a result of the latency difference, causing overload to be overreported
> on the average.  Delaying the signalling of overload to the CSB handler
> means that any systematic latency in our interrupt processing is
> self-correcting.

That only worries me if we are trying to balance decisions made on
submission with the async ack. If we can solely use the CSB events that
worry is moot.
 
> Anyway, I'm open to other suggestions if you have other ideas that at
> least don't worsen the pre-existing regression from my series.

Likewise, if the best is the current overload semantics then so be it.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
