Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5A4191D22
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 23:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A60C89261;
	Tue, 24 Mar 2020 22:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B829689261
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 22:55:31 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48n66C2487zFf8c;
 Tue, 24 Mar 2020 15:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1585090531; bh=8DTxTOUQQbyAucFkdTmv+KqtvTXQYRq4ng6D6Iisf6E=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=exlRPaUQCrC/X7P54OApr+Ip5c/0HEDAPSMHIVTCmhSOmUJefmpCu1Yb+xvr85q1B
 VpWZLAB8CcslI0+BxlWaRcSUROdShDZ7BZIU/dVS0K+ZaRuZ1BRpVn5AestPf55eLp
 KPY9b+QEcaZhht2ZD6Xnls/tx8jq5fEkM3iDq3js=
X-Riseup-User-ID: FE020A80C04998F84981DE0C4B0447325A96198EF180D30702DA9298313150F9
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48n66C0Ml8zJtth;
 Tue, 24 Mar 2020 15:55:30 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris.p.wilson@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158500741217.13839.16404244724951422520@build.alporthouse.com>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk> <871rpm6a9v.fsf@riseup.net>
 <87tv2i4qsk.fsf@riseup.net>
 <158495673843.17851.11761890199116661145@build.alporthouse.com>
 <87imiu4scq.fsf@riseup.net>
 <158500741217.13839.16404244724951422520@build.alporthouse.com>
Date: Tue, 24 Mar 2020 15:55:33 -0700
Message-ID: <87sghx2wii.fsf@riseup.net>
MIME-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============1646521477=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1646521477==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris.p.wilson@intel.com> writes:

> Quoting Francisco Jerez (2020-03-23 22:30:13)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>>=20
>> > Quoting Francisco Jerez (2020-03-20 22:14:51)
>> >> Francisco Jerez <currojerez@riseup.net> writes:
>> >>=20
>> >> > Chris Wilson <chris@chris-wilson.co.uk> writes:
>> >> >
>> >> >> We dropped calling process_csb prior to handling direct submission=
 in
>> >> >> order to avoid the nesting of spinlocks and lift process_csb() and=
 the
>> >> >> majority of the tasklet out of irq-off. However, we do want to avo=
id
>> >> >> ksoftirqd latency in the fast path, so try and pull the interrupt-=
bh
>> >> >> local to direct submission if we can acquire the tasklet's lock.
>> >> >>
>> >> >> v2: Tweak the balance to avoid over submitting lite-restores
>> >> >>
>> >> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >> >> Cc: Francisco Jerez <currojerez@riseup.net>
>> >> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> >> >> ---
>> >> >>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++-=
-----
>> >> >>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
>> >> >>  2 files changed, 36 insertions(+), 10 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm=
/i915/gt/intel_lrc.c
>> >> >> index f09dd87324b9..dceb65a0088f 100644
>> >> >> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> >> >> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> >> >> @@ -2884,17 +2884,17 @@ static void queue_request(struct intel_eng=
ine_cs *engine,
>> >> >>      set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>> >> >>  }
>> >> >>=20=20
>> >> >> -static void __submit_queue_imm(struct intel_engine_cs *engine)
>> >> >> +static bool pending_csb(const struct intel_engine_execlists *el)
>> >> >>  {
>> >> >> -    struct intel_engine_execlists * const execlists =3D &engine->=
execlists;
>> >> >> +    return READ_ONCE(*el->csb_write) !=3D READ_ONCE(el->csb_head);
>> >> >> +}
>> >> >>=20=20
>> >> >> -    if (reset_in_progress(execlists))
>> >> >> -            return; /* defer until we restart the engine followin=
g reset */
>> >> >> +static bool skip_lite_restore(struct intel_engine_execlists *el,
>> >> >> +                          const struct i915_request *rq)
>> >> >> +{
>> >> >> +    struct i915_request *inflight =3D execlists_active(el);
>> >> >>=20=20
>> >> >> -    if (execlists->tasklet.func =3D=3D execlists_submission_taskl=
et)
>> >> >> -            __execlists_submission_tasklet(engine);
>> >> >> -    else
>> >> >> -            tasklet_hi_schedule(&execlists->tasklet);
>> >> >> +    return inflight && inflight->context =3D=3D rq->context;
>> >> >>  }
>> >> >>=20=20
>> >> >>  static void submit_queue(struct intel_engine_cs *engine,
>> >> >> @@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engin=
e_cs *engine,
>> >> >>      if (rq_prio(rq) <=3D execlists->queue_priority_hint)
>> >> >>              return;
>> >> >>=20=20
>> >> >> +    if (reset_in_progress(execlists))
>> >> >> +            return; /* defer until we restart the engine followin=
g reset */
>> >> >> +
>> >> >> +    /*
>> >> >> +     * Suppress immediate lite-restores, leave that to the taskle=
t.
>> >> >> +     *
>> >> >> +     * However, we leave the queue_priority_hint unset so that if=
 we do
>> >> >> +     * submit a second context, we push that into ELSP[1] immedia=
tely.
>> >> >> +     */
>> >> >> +    if (skip_lite_restore(execlists, rq))
>> >> >> +            return;
>> >> >> +
>> >> > Why do you need to treat lite-restore specially here?
>> >
>> > Lite-restore have a noticeable impact on no-op loads. A part of that is
>> > that a lite-restore is about 1us, and the other part is that the driver
>> > has a lot more work to do. There's a balance point around here for not
>> > needlessly interrupting ourselves and ensuring that there is no bubble.
>> >
>>=20
>> Oh, I see.  But isn't inhibiting the lite restore likely to be fairly
>> costly in some cases as well if it causes the GPU to go idle after the
>> current context completes for as long as it takes the CPU to wake up,
>> process the IRQ and dequeue the next request?
>
> Yes. It's an amusing diversion to try and think how can we do a single
> context submission (well 2) for a sequence of requests, for those
> clients that like to submit N batches at once. From an idle GPU,
> assuming each batch is non-trivial, we want to do something like submit
> batch 1, accumulate, then submit batches 1-N, i.e. skip the intervening
> lite-restores but complete the submission with all the work queued.
>

I guess ideally you would submit batch 1, then batch 2 (so you don't
have to rush to feed the GPU once batch 1 terminates), then accumulate
any further requests until batch 1 completes.  That would reduce the
number of lite-restores to the minimum you need to keep the GPU at least
one request ahead.  Though I'm guessing that this would involve using
the breadcrumbs IRQ to aid command submission so we can tell when batch
1 terminated, since AFAIUI we won't get any execlists interrupt at that
point if batch 1 and 2 happened to belong to the same context.

Sigh.  Submitting commands efficiently would be easier if the hardware
didn't have this annoying restriction of the contexts from different
ELSP ports having to be different -- Or has the restriction been lifted
in recent hardware?  At least they gave us 8 ELSP ports on ICL, if only
we could take advantage of them without having 8 contexts running in
parallel...

>> Would it make sense to
>> inhibit lite-restore in roughly the same conditions I set the overload
>> flag?  (since that indicates we'll get an IRQ at least one request
>> *before* the GPU actually goes idle, so there shouldn't be any penalty
>> from inhibiting lite restore).
>
> Yes/no. Once we have multiple contexts scheduled, we won't be doing lite
> restores.
>
> The key problem is that the irq/tasklet-bh latency is unpredictable. Only
> submitting one context at a time costs about 1% in [multi-context]
> transcode throughput. And the cost of lite-restore on that scale is
> barely noticeable.
>
> So it annoys me that we can measure the impact of lite-restore on
> nop-throughput, but in reality we have a self-inflicted regression on
> top of the lite-restore that caught my eye.
>
> Since we don't resubmit more contexts until we receive an ack from the
> HW, the latency in processing that ack actually allowed us to accumulate
> more nops into a single submission. Process that ack earlier and we
> start submitting each nop individually. But we do want to process that
> ack earlier as we know we are handling a request that should be pushed
> to the GPU immediately.
>

Uhm, that's awful.

> [The age old adage, batching submissions is good for throughput, bad for
> latency. And I have to pinch myself that throughput is easier to
> measure, but latency is the crucial metric.]
>
>> >> > Anyway, trying this out now in combination with my patches now.
>> >> >
>> >>=20
>> >> This didn't seem to help (together with your other suggestion to move
>> >> the overload accounting to __execlists_schedule_in/out).  And it makes
>> >> the current -5% SynMark OglMultithread regression with my series go d=
own
>> >> to -10%.  My previous suggestion of moving the
>> >> intel_gt_pm_active_begin() call to process_csb() when the submission =
is
>> >> ACK'ed by the hardware does seem to help (and it roughly halves the
>> >> OglMultithread regression), possibly because that way we're able to
>> >> determine whether the first context was actually overlapping at the
>> >> point that the second was received by the hardware -- I haven't tested
>> >> it extensively yet though.
>> >
>> > Grumble, it just seems like we are setting and clearing the flag on
>> > completely unrelated events -- which I still think boils down to worki=
ng
>> > around latency in the driver. Or at least I hope there's an explanation
>> > and bug to fix that improves responsiveness for all.
>> > -Chris
>>=20
>> There *might* be a performance issue somewhere introducing latency that
>> the instrumentation I added happens to mitigate, but isn't that a sign
>> that it's fulfilling its purpose of determining when the workload could
>> be sensitive to CPU latency?
>
> We have latency issues in the tasklet submission. The irq-off lock
> contention along the submission path [execlists_dequeue] is perhaps the
> biggest issue in the driver (at least from lockstats perspective). My
> expectation is that the delay in processing the CSB is affecting the
> 'overload' heuristic.
>=20=20
>> Maybe I didn't explain the idea properly: Given that command submission
>> is asynchronous with the CS processing the previous context, there is no
>> way for us to tell whether a request we just submitted was actually
>> overlapping with the previous one until we read the CSB and see whether
>> it led to an idle-to-active transition.  Only then can we assume that
>> the CPU is sending commands to the GPU quickly enough to keep it busy
>> without interruption.
>
> That sounds like you just want to use the C0 counters.
>

I tried to do something like that at some point and got mixed results.
It would have different behavior from the patch I submitted since it
would count all the GPU time any engine is active (rather than the time
there are at least two contexts queued for execution), so it would have
greater potential for regressions when the GPU is only one request ahead
of the CPU, though the performance regression would be limited by the
residency threshold in the steady state (e.g. if you allow the heuristic
to kick in while you have at least 99% GPU utilization you may still
have to pay up to a 1% regression in some pessimal cases).  But the
greatest downside I noticed from using any sort of residency counters is
that is that there is substantial delay between the GPU going idle and
it entering a sleep state, so the metric can be fairly biased upwards
for intermittent workloads (which are frequently latency-sensitive too).

> But if you want to use the active/idle state as your heuristic, then you
> want something like
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index 3102159d2b3b..3e08ecd53ecb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2443,6 +2443,8 @@ static void process_csb(struct intel_engine_cs *eng=
ine)
>
>                         GEM_BUG_ON(execlists->active - execlists->infligh=
t >
>                                    execlists_num_ports(execlists));
> +
> +                       WRITE_ONCE(execlists->overload, !!*execlists->act=
ive);
>                 }
>         } while (head !=3D tail);
>
>
> That will be set to true when we have enough work to keep the GPU busy
> into the second context, and only be set to false when the GPU idles.
>
> However, just because we switched contexts does not necessarily imply
> that the previous context did substantial work. And there may be lots of
> fun with timeslicing preemptions that do not let a single context run to
> completion. So perhaps,
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index 3102159d2b3b..05bb533d556c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2340,6 +2340,7 @@ static void process_csb(struct intel_engine_cs *eng=
ine)
>         rmb();
>
>         ENGINE_TRACE(engine, "cs-irq head=3D%d, tail=3D%d\n", head, tail);
> +       bool overload =3D *execlists->active;
>         do {
>                 bool promote;
>
> @@ -2443,8 +2444,11 @@ static void process_csb(struct intel_engine_cs *en=
gine)
>
>                         GEM_BUG_ON(execlists->active - execlists->infligh=
t >
>                                    execlists_num_ports(execlists));
> +
> +                       overload =3D *execlists->overload; /* active->idl=
e? */
>                 }
>         } while (head !=3D tail);
> +       WRITE_ONCE(execlists->overload, overload && *execlists->overload);
>
>
> which sets the overload flag if we enter with an active context and
> leave with another active context, without going through an idle state.
> But that will set overload for timeslicing and for high priority
> preemption.
>
> (Now I have to ask whether that's what you had before :)

Not exactly.  I'm clearing the overload flag unconditionally on any
completion event since that indicates that we're back to single port
submission best-case.  If we then go back to dual-ELSP, overload will
get signalled by a subsequent iteration of process_csb() (rather than
doing it from execlists_dequeue()).  In addition I got the preemption
handler to clear the overload flag in cases where that causes us to go
back to single-ELSP submission, in order to fix the bug you pointed out
earlier.

>=20=20
>> You might argue that this will introduce a delay in the signalling of
>> overload roughly equal to the latency it takes for the CPU to receive
>> the execlists IRQ with the hardware ACK.  However that seems beneficial
>> since the clearing of overload suffers from the same latency, so the
>> fraction of time that overload is signalled will otherwise be biased as
>> a result of the latency difference, causing overload to be overreported
>> on the average.  Delaying the signalling of overload to the CSB handler
>> means that any systematic latency in our interrupt processing is
>> self-correcting.
>
> That only worries me if we are trying to balance decisions made on
> submission with the async ack. If we can solely use the CSB events that
> worry is moot.
>=20=20
>> Anyway, I'm open to other suggestions if you have other ideas that at
>> least don't worsen the pre-existing regression from my series.
>
> Likewise, if the best is the current overload semantics then so be it.

Thanks!

> -Chris
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXnqP5QAKCRCDmTidfVK/
W8FeAP9g2eQBwQiSjo9DmHUhRQuX65CkVZ97gUVkn/ZkAvVPUQD+JHhzGGoI+kge
cct3qfF83KK/xkvNij5EwGD1e8YbUtQ=
=wrGz
-----END PGP SIGNATURE-----
--==-=-=--

--===============1646521477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1646521477==--
