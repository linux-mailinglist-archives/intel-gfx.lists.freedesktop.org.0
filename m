Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9E618DAED
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 23:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190516EB78;
	Fri, 20 Mar 2020 22:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59B16EB78
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 22:14:47 +0000 (UTC)
Received: from capuchin.riseup.net (unknown [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48kdP33WHxzFdT8;
 Fri, 20 Mar 2020 15:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1584742487; bh=Ug2ZgBIjOL57hRuaVvcZWFd3PN491qVsHOIit4b2cTA=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=epk9aTeBAhp7peBJnc0eJBGxmkzy9Rg+DQW8/Y5hNFos5R0RMlXoqiK/ewF43/iJG
 0CpshclnVccjKf4TCDxLAP4sIRlp5I/JfnXkrqSWh87mevEt4m5YGWqfuJ13kWWcC1
 DWM9OlE3Kaz8+iwno8pb4T8QtMm77uyIfHlrTces=
X-Riseup-User-ID: E09C043288D6CD3A56252EE7CEE174B2016F5B6061FC31A97CC7F43D19EAB1F1
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 48kdP31dR1z8tJW;
 Fri, 20 Mar 2020 15:14:47 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris.p.wilson@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <871rpm6a9v.fsf@riseup.net>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk> <871rpm6a9v.fsf@riseup.net>
Date: Fri, 20 Mar 2020 15:14:51 -0700
Message-ID: <87tv2i4qsk.fsf@riseup.net>
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
Content-Type: multipart/mixed; boundary="===============2086421324=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2086421324==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Francisco Jerez <currojerez@riseup.net> writes:

> Chris Wilson <chris@chris-wilson.co.uk> writes:
>
>> We dropped calling process_csb prior to handling direct submission in
>> order to avoid the nesting of spinlocks and lift process_csb() and the
>> majority of the tasklet out of irq-off. However, we do want to avoid
>> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
>> local to direct submission if we can acquire the tasklet's lock.
>>
>> v2: Tweak the balance to avoid over submitting lite-restores
>>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Francisco Jerez <currojerez@riseup.net>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++------
>>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
>>  2 files changed, 36 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/=
gt/intel_lrc.c
>> index f09dd87324b9..dceb65a0088f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -2884,17 +2884,17 @@ static void queue_request(struct intel_engine_cs=
 *engine,
>>  	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>>  }
>>=20=20
>> -static void __submit_queue_imm(struct intel_engine_cs *engine)
>> +static bool pending_csb(const struct intel_engine_execlists *el)
>>  {
>> -	struct intel_engine_execlists * const execlists =3D &engine->execlists;
>> +	return READ_ONCE(*el->csb_write) !=3D READ_ONCE(el->csb_head);
>> +}
>>=20=20
>> -	if (reset_in_progress(execlists))
>> -		return; /* defer until we restart the engine following reset */
>> +static bool skip_lite_restore(struct intel_engine_execlists *el,
>> +			      const struct i915_request *rq)
>> +{
>> +	struct i915_request *inflight =3D execlists_active(el);
>>=20=20
>> -	if (execlists->tasklet.func =3D=3D execlists_submission_tasklet)
>> -		__execlists_submission_tasklet(engine);
>> -	else
>> -		tasklet_hi_schedule(&execlists->tasklet);
>> +	return inflight && inflight->context =3D=3D rq->context;
>>  }
>>=20=20
>>  static void submit_queue(struct intel_engine_cs *engine,
>> @@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engine_cs *=
engine,
>>  	if (rq_prio(rq) <=3D execlists->queue_priority_hint)
>>  		return;
>>=20=20
>> +	if (reset_in_progress(execlists))
>> +		return; /* defer until we restart the engine following reset */
>> +
>> +	/*
>> +	 * Suppress immediate lite-restores, leave that to the tasklet.
>> +	 *
>> +	 * However, we leave the queue_priority_hint unset so that if we do
>> +	 * submit a second context, we push that into ELSP[1] immediately.
>> +	 */
>> +	if (skip_lite_restore(execlists, rq))
>> +		return;
>> +
> Why do you need to treat lite-restore specially here?
>
> Anyway, trying this out now in combination with my patches now.
>

This didn't seem to help (together with your other suggestion to move
the overload accounting to __execlists_schedule_in/out).  And it makes
the current -5% SynMark OglMultithread regression with my series go down
to -10%.  My previous suggestion of moving the
intel_gt_pm_active_begin() call to process_csb() when the submission is
ACK'ed by the hardware does seem to help (and it roughly halves the
OglMultithread regression), possibly because that way we're able to
determine whether the first context was actually overlapping at the
point that the second was received by the hardware -- I haven't tested
it extensively yet though.

>> +	/* Hopefully we clear execlists->pending[] to let us through */
>> +	if (execlists->pending[0] && tasklet_trylock(&execlists->tasklet)) {
>> +		process_csb(engine);
>> +		tasklet_unlock(&execlists->tasklet);
>> +		if (skip_lite_restore(execlists, rq))
>> +			return;
>> +	}
>> +
>>  	execlists->queue_priority_hint =3D rq_prio(rq);
>> -	__submit_queue_imm(engine);
>> +	__execlists_submission_tasklet(engine);
>> +
>> +	/* Try and pull an interrupt-bh queued on another CPU to here */
>> +	if (pending_csb(execlists) && tasklet_trylock(&execlists->tasklet)) {
>> +		process_csb(engine);
>> +		tasklet_unlock(&execlists->tasklet);
>> +	}
>>  }
>>=20=20
>>  static bool ancestor_on_hold(const struct intel_engine_cs *engine,
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i9=
15/gt/selftest_lrc.c
>> index 6f06ba750a0a..c5c4b07a7d5f 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> @@ -1028,7 +1028,7 @@ static int live_timeslice_rewind(void *arg)
>>  		if (IS_ERR(rq[1]))
>>  			goto err;
>>=20=20
>> -		err =3D wait_for_submit(engine, rq[1], HZ / 2);
>> +		err =3D wait_for_submit(engine, rq[0], HZ / 2);
>>  		if (err) {
>>  			pr_err("%s: failed to submit first context\n",
>>  			       engine->name);
>> --=20
>> 2.20.1
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXnVAWwAKCRCDmTidfVK/
W31sAP9NHLWMhgY9YkaO1mvUK2vUIeO9p5Rm/huyY2p9UqpgGAD8DkZnvuQO2oui
zriRm8/A7Jumu0KoHdZ+PgAgreyVQV0=
=KRtZ
-----END PGP SIGNATURE-----
--==-=-=--

--===============2086421324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2086421324==--
