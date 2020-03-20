Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFF018CB27
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 11:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817F76EAFB;
	Fri, 20 Mar 2020 10:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168816EAFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 10:06:36 +0000 (UTC)
IronPort-SDR: w8cDK8tZqHGNsvuvLSDC0xzJyrzgWtaY4/GHC+VYzJZKuKBQIEScN1DFkWSqwQmR8e/KEtJTCz
 Jda3P60bC1tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 03:06:35 -0700
IronPort-SDR: v1EouaEqwbMfLXLBatkVjylKPTe3ZxjjL+DSe9uhJC+5qpz0cUk84+B/+gp+ChOZwVCjAWMYW2
 Xv0cnVQs8zQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="356367058"
Received: from acaspy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.33])
 by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2020 03:06:33 -0700
MIME-Version: 1.0
In-Reply-To: <874kuj68w4.fsf@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-3-currojerez@riseup.net>
 <158387916218.28297.4489489879582782488@build.alporthouse.com>
 <87r1xzafwn.fsf@riseup.net> <87k13h78mk.fsf@riseup.net>
 <874kuj68w4.fsf@riseup.net>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Francisco Jerez <currojerez@riseup.net>, intel-gfx@lists.freedesktop.org,
 linux-pm@vger.kernel.org
Message-ID: <158469879271.7928.1031646785964233366@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 20 Mar 2020 10:06:32 +0000
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Adjust PM QoS response
 frequency based on GPU load.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Francisco Jerez (2020-03-20 02:46:19)
> Francisco Jerez <currojerez@riseup.net> writes:
> 
> > Francisco Jerez <currojerez@riseup.net> writes:
> >
> >> Chris Wilson <chris@chris-wilson.co.uk> writes:
> >>
> >>> Quoting Francisco Jerez (2020-03-10 21:41:55)
> >>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>> index b9b3f78f1324..a5d7a80b826d 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>>> @@ -1577,6 +1577,11 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
> >>>>         /* we need to manually load the submit queue */
> >>>>         if (execlists->ctrl_reg)
> >>>>                 writel(EL_CTRL_LOAD, execlists->ctrl_reg);
> >>>> +
> >>>> +       if (execlists_num_ports(execlists) > 1 &&
> >>> pending[1] is always defined, the minimum submission is one slot, with
> >>> pending[1] as the sentinel NULL.
> >>>
> >>>> +           execlists->pending[1] &&
> >>>> +           !atomic_xchg(&execlists->overload, 1))
> >>>> +               intel_gt_pm_active_begin(&engine->i915->gt);
> >>>
> >>> engine->gt
> >>>
> >>
> >> Applied your suggestions above locally, will probably wait to have a few
> >> more changes batched up before sending a v2.
> >>
> >>>>  }
> >>>>  
> >>>>  static bool ctx_single_port_submission(const struct intel_context *ce)
> >>>> @@ -2213,6 +2218,12 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
> >>>>         clear_ports(execlists->inflight, ARRAY_SIZE(execlists->inflight));
> >>>>  
> >>>>         WRITE_ONCE(execlists->active, execlists->inflight);
> >>>> +
> >>>> +       if (atomic_xchg(&execlists->overload, 0)) {
> >>>> +               struct intel_engine_cs *engine =
> >>>> +                       container_of(execlists, typeof(*engine), execlists);
> >>>> +               intel_gt_pm_active_end(&engine->i915->gt);
> >>>> +       }
> >>>>  }
> >>>>  
> >>>>  static inline void
> >>>> @@ -2386,6 +2397,9 @@ static void process_csb(struct intel_engine_cs *engine)
> >>>>                         /* port0 completed, advanced to port1 */
> >>>>                         trace_ports(execlists, "completed", execlists->active);
> >>>>  
> >>>> +                       if (atomic_xchg(&execlists->overload, 0))
> >>>> +                               intel_gt_pm_active_end(&engine->i915->gt);
> >>>
> >>> So this looses track if we preempt a dual-ELSP submission with a
> >>> single-ELSP submission (and never go back to dual).
> >>>
> >>
> >> Yes, good point.  You're right that if a dual-ELSP submission gets
> >> preempted by a single-ELSP submission "overload" will remain signaled
> >> until the first completion interrupt arrives (e.g. from the preempting
> >> submission).
> >>
> >>> If you move this to the end of the loop and check
> >>>
> >>> if (!execlists->active[1] && atomic_xchg(&execlists->overload, 0))
> >>>     intel_gt_pm_active_end(engine->gt);
> >>>
> >>> so that it covers both preemption/promotion and completion.
> >>>
> >>
> >> That sounds reasonable.
> >>
> >>> However, that will fluctuate quite rapidly. (And runs the risk of
> >>> exceeding the sentinel.)
> >>>
> >>> An alternative approach would be to couple along
> >>> schedule_in/schedule_out
> >>>
> >>> atomic_set(overload, -1);
> >>>
> >>> __execlists_schedule_in:
> >>>     if (!atomic_fetch_inc(overload)
> >>>             intel_gt_pm_active_begin(engine->gt);
> >>> __execlists_schedule_out:
> >>>     if (!atomic_dec_return(overload)
> >>>             intel_gt_pm_active_end(engine->gt);
> >>>
> >>> which would mean we are overloaded as soon as we try to submit an
> >>> overlapping ELSP.
> >>>
> >>
> >> That sounds good to me too, and AFAICT would have roughly the same
> >> behavior as this metric except for the preemption corner case you
> >> mention above.  I'll try this and verify that I get approximately the
> >> same performance numbers.
> >>
> >
> > This suggestion seems to lead to some minor regressions, I'm
> > investigating the issue.  Will send a v2 as soon as I have something
> > along the lines of what you suggested running with equivalent
> > performance to v1.
> 
> I think I've figured out why both of the alternatives we were talking
> about above lead to a couple percent regressions in latency-sensitive
> workloads: In some scenarios it's possible for execlist_dequeue() to
> execute after the GPU has gone idle, but before we've processed the
> corresponding CSB entries, particularly when called from the
> submit_queue() path.  In that case __execlists_schedule_in() will think
> that the next request is overlapping, and tell CPU power management to
> relax, even though the GPU is starving intermittently.
> 
> How about we do the same:
> 
> |       if (atomic_xchg(&execlists->overload, 0))
> |               intel_gt_pm_active_end(engine->gt);
> 
> as in this patch from process_csb() in response to each completion CSB
> entry, which ensures that the system is considered non-GPU-bound as soon
> as the first context completes.  Subsequently if another CSB entry
> signals a dual-ELSP active-to-idle transition or a dual-ELSP preemption
> we call intel_gt_pm_active_begin() directly from process_csb().  If we
> hit a single-ELSP preemption CSB entry we call intel_gt_pm_active_end()
> instead, in order to avoid the problem you pointed out in your previous
> email.
> 
> How does that sound to you?  [Still need to verify that it has
> comparable performance to this patch overall.]

Sounds like we're trying to compensate for ksoftirqd latency, which is a
killer overall. How about something as simple as

execlists_submit_ports:
	tasklet_hi_schedule(&execlists->tasklet);

which will then be run immediately from local context at the end of the
direct submission... Unless it's already queued on another CPU. Instead
of waiting for that, we may manually try to kick it locally.

As your latency governor is kicked from a worker, iirc, we should still
be executing before it has a chance to process a partial update. I hope.

Anyway if it is the ksoftirqd latency hurting here, it's not a problem
uniquely to the governor and I would like to improve it :)
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
