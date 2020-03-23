Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3C190116
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 23:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7B26E3DF;
	Mon, 23 Mar 2020 22:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885D66E3DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 22:30:32 +0000 (UTC)
Received: from capuchin.riseup.net (unknown [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48mTbR0BqKzFfRV;
 Mon, 23 Mar 2020 15:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1585002632; bh=v/rDV5EP+rTZRGBNUtuthLFvgulEUiFtRc6hHGSxx/M=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=XJnQgXGi4qOL2lKw/VXlHXXs35eN8ChR9lCStdy3xOe1379pE1e286kx4FHggICn5
 Oa/HGLUpC9H6vq1dHArlVliONCus0BS6F6wkhrWqsrVc4by/5n1ppZbFdqx20Fw+bq
 l3BUE1kluVizp9oSdEez0mXWFpvgDHqZM45RBsXk=
X-Riseup-User-ID: ABDABF9C0FE364D7CDF19DAC2EB92B2F7DF8E249AB215885B59896282FEBAC24
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 48mTbQ5j0Dz8tJg;
 Mon, 23 Mar 2020 15:30:10 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: chris.p.wilson@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <158495673843.17851.11761890199116661145@build.alporthouse.com>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk> <871rpm6a9v.fsf@riseup.net>
 <87tv2i4qsk.fsf@riseup.net>
 <158495673843.17851.11761890199116661145@build.alporthouse.com>
Date: Mon, 23 Mar 2020 15:30:13 -0700
Message-ID: <87imiu4scq.fsf@riseup.net>
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
Content-Type: multipart/mixed; boundary="===============1175526955=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1175526955==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Francisco Jerez (2020-03-20 22:14:51)
>> Francisco Jerez <currojerez@riseup.net> writes:
>>=20
>> > Chris Wilson <chris@chris-wilson.co.uk> writes:
>> >
>> >> We dropped calling process_csb prior to handling direct submission in
>> >> order to avoid the nesting of spinlocks and lift process_csb() and the
>> >> majority of the tasklet out of irq-off. However, we do want to avoid
>> >> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
>> >> local to direct submission if we can acquire the tasklet's lock.
>> >>
>> >> v2: Tweak the balance to avoid over submitting lite-restores
>> >>
>> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >> Cc: Francisco Jerez <currojerez@riseup.net>
>> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++----=
--
>> >>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
>> >>  2 files changed, 36 insertions(+), 10 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i9=
15/gt/intel_lrc.c
>> >> index f09dd87324b9..dceb65a0088f 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> >> @@ -2884,17 +2884,17 @@ static void queue_request(struct intel_engine=
_cs *engine,
>> >>      set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>> >>  }
>> >>=20=20
>> >> -static void __submit_queue_imm(struct intel_engine_cs *engine)
>> >> +static bool pending_csb(const struct intel_engine_execlists *el)
>> >>  {
>> >> -    struct intel_engine_execlists * const execlists =3D &engine->exe=
clists;
>> >> +    return READ_ONCE(*el->csb_write) !=3D READ_ONCE(el->csb_head);
>> >> +}
>> >>=20=20
>> >> -    if (reset_in_progress(execlists))
>> >> -            return; /* defer until we restart the engine following r=
eset */
>> >> +static bool skip_lite_restore(struct intel_engine_execlists *el,
>> >> +                          const struct i915_request *rq)
>> >> +{
>> >> +    struct i915_request *inflight =3D execlists_active(el);
>> >>=20=20
>> >> -    if (execlists->tasklet.func =3D=3D execlists_submission_tasklet)
>> >> -            __execlists_submission_tasklet(engine);
>> >> -    else
>> >> -            tasklet_hi_schedule(&execlists->tasklet);
>> >> +    return inflight && inflight->context =3D=3D rq->context;
>> >>  }
>> >>=20=20
>> >>  static void submit_queue(struct intel_engine_cs *engine,
>> >> @@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engine_c=
s *engine,
>> >>      if (rq_prio(rq) <=3D execlists->queue_priority_hint)
>> >>              return;
>> >>=20=20
>> >> +    if (reset_in_progress(execlists))
>> >> +            return; /* defer until we restart the engine following r=
eset */
>> >> +
>> >> +    /*
>> >> +     * Suppress immediate lite-restores, leave that to the tasklet.
>> >> +     *
>> >> +     * However, we leave the queue_priority_hint unset so that if we=
 do
>> >> +     * submit a second context, we push that into ELSP[1] immediatel=
y.
>> >> +     */
>> >> +    if (skip_lite_restore(execlists, rq))
>> >> +            return;
>> >> +
>> > Why do you need to treat lite-restore specially here?
>
> Lite-restore have a noticeable impact on no-op loads. A part of that is
> that a lite-restore is about 1us, and the other part is that the driver
> has a lot more work to do. There's a balance point around here for not
> needlessly interrupting ourselves and ensuring that there is no bubble.
>

Oh, I see.  But isn't inhibiting the lite restore likely to be fairly
costly in some cases as well if it causes the GPU to go idle after the
current context completes for as long as it takes the CPU to wake up,
process the IRQ and dequeue the next request?  Would it make sense to
inhibit lite-restore in roughly the same conditions I set the overload
flag?  (since that indicates we'll get an IRQ at least one request
*before* the GPU actually goes idle, so there shouldn't be any penalty
from inhibiting lite restore).

>> >
>> > Anyway, trying this out now in combination with my patches now.
>> >
>>=20
>> This didn't seem to help (together with your other suggestion to move
>> the overload accounting to __execlists_schedule_in/out).  And it makes
>> the current -5% SynMark OglMultithread regression with my series go down
>> to -10%.  My previous suggestion of moving the
>> intel_gt_pm_active_begin() call to process_csb() when the submission is
>> ACK'ed by the hardware does seem to help (and it roughly halves the
>> OglMultithread regression), possibly because that way we're able to
>> determine whether the first context was actually overlapping at the
>> point that the second was received by the hardware -- I haven't tested
>> it extensively yet though.
>
> Grumble, it just seems like we are setting and clearing the flag on
> completely unrelated events -- which I still think boils down to working
> around latency in the driver. Or at least I hope there's an explanation
> and bug to fix that improves responsiveness for all.
> -Chris

There *might* be a performance issue somewhere introducing latency that
the instrumentation I added happens to mitigate, but isn't that a sign
that it's fulfilling its purpose of determining when the workload could
be sensitive to CPU latency?

Maybe I didn't explain the idea properly: Given that command submission
is asynchronous with the CS processing the previous context, there is no
way for us to tell whether a request we just submitted was actually
overlapping with the previous one until we read the CSB and see whether
it led to an idle-to-active transition.  Only then can we assume that
the CPU is sending commands to the GPU quickly enough to keep it busy
without interruption.

You might argue that this will introduce a delay in the signalling of
overload roughly equal to the latency it takes for the CPU to receive
the execlists IRQ with the hardware ACK.  However that seems beneficial
since the clearing of overload suffers from the same latency, so the
fraction of time that overload is signalled will otherwise be biased as
a result of the latency difference, causing overload to be overreported
on the average.  Delaying the signalling of overload to the CSB handler
means that any systematic latency in our interrupt processing is
self-correcting.

Anyway, I'm open to other suggestions if you have other ideas that at
least don't worsen the pre-existing regression from my series.

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXnk4dQAKCRCDmTidfVK/
W8QwAP9GIwZuoca2j2OAijBtLCHVgc5VsrQspNuUUV1nD8PhoQD+P0qfpfSYD6vV
dlBLj6QywhFa4RC219vCJur3vcUazTc=
=cL5b
-----END PGP SIGNATURE-----
--==-=-=--

--===============1175526955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1175526955==--
