Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AC81A8D09
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364176E58A;
	Tue, 14 Apr 2020 21:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B151C6E58A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:00:33 +0000 (UTC)
Received: from capuchin.riseup.net (unknown [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 491yYY13d1zFg51;
 Tue, 14 Apr 2020 14:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1586898032; bh=ZEOB9W6Z4LL6CWZYueeT7KlvOkyoesqxMV+xhznkmkQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=iGwaZan1vIG/ALUYJ0jg0QVfbMCveZB6UHS6Y/4M9Lpry0rSnnTdBgXs4dhyaEO7b
 DFEqNxg2utJMJHsFweK4WFeDRkDqi8uDdBmZ+UHPlLxL+TzivdUihUvS1E69M+p6Ay
 6pC71ekrdcBHB8vz2zZEo+GY0pGdT9D8sg+aR0iU=
X-Riseup-User-ID: 67D54B954DC4DD4B60AD02AAAEE5CEEBB138A57D2C8DBBCE02E320F96DD597D2
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 491yYX3yDkz8v7w;
 Tue, 14 Apr 2020 14:00:16 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158689519187.24667.5193852715594735657@build.alporthouse.com>
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
 <20200414161423.23830-2-chris@chris-wilson.co.uk>
 <158688212611.24667.7132327074792389398@build.alporthouse.com>
 <87pnc9zwjf.fsf@riseup.net>
 <158689519187.24667.5193852715594735657@build.alporthouse.com>
Date: Tue, 14 Apr 2020 14:00:25 -0700
Message-ID: <87lfmxzst2.fsf@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Shrink the RPS evalution
 intervals
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
Cc: "Wilson, Chris P" <chris.p.wilson@intel.com>, stable@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1056799869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1056799869==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Francisco Jerez (2020-04-14 20:39:48)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>>=20
>> > Quoting Chris Wilson (2020-04-14 17:14:23)
>> >> Try to make RPS dramatically more responsive by shrinking the evaluat=
ion
>> >> intervales by a factor of 100! The issue is as we now park the GPU
>> >> rapidly upon idling, a short or bursty workload such as the composited
>> >> desktop never sustains enough work to fill and complete an evaluation
>> >> window. As such, the frequency we program remains stuck. This was fir=
st
>> >> reported as once boosted, we never relinquished the boost [see commit
>> >> 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")] =
but
>> >> it equally applies in the order direction for bursty workloads that
>> >> *need* low latency, like desktop animations.
>> >>=20
>> >> What we could try is preserve the incomplete EI history across idling,
>> >> it is not clear whether that would be effective, nor whether the
>> >> presumption of continuous workloads is accurate. A clearer path seems=
 to
>> >> treat it as symptomatic that we fail to handle bursty workload with t=
he
>> >> current EI, and seek to address that by shrinking the EI so the
>> >> evaluations are run much more often.
>> >>=20
>> >> This will likely entail more frequent interrupts, and by the time we
>> >> process the interrupt in the bottom half [from inside a worker], the
>> >> workload on the GPU has changed. To address the changeable nature, in
>> >> the previous patch we compared the previous complete EI with the
>> >> interrupt request and only up/down clock if both agree. The impact of
>> >> asking for, and presumably, receiving more interrupts is still to be
>> >> determined and mitigations sought. The first idea is to differentiate
>> >> between up/down responsivity and make upclocking more responsive than
>> >> downlocking. This should both help thwart jitter on bursty workloads =
by
>> >> making it easier to increase than it is to decrease frequencies, and
>> >> reduce the number of interrupts we would need to process.
>> >
>> > Another worry I'd like to raise, is that by reducing the EI we risk
>> > unstable evaluations. I'm not sure how accurate the HW is, and I worry
>> > about borderline workloads (if that is possible) but mainly the worry =
is
>> > how the HW is sampling.
>> >
>> > The other unmentioned unknown is the latency in reprogramming the
>> > frequency. At what point does it start to become a significant factor?
>> > I'm presuming the RPS evaluation itself is free, until it has to talk
>> > across the chip to send an interrupt.
>> > -Chris
>>=20
>> At least on ICL the problem which this patch and 21abf0bf168d were
>> working around seems to have to do with RPS interrupt delivery being
>> inadvertently blocked for extended periods of time.  Looking at the GPU
>> utilization and RPS events on a graph I could see the GPU being stuck at
>> low frequency without any RPS interrupts firing, for a time interval
>> orders of magnitude greater than the EI we're theoretically programming
>> today.  IOW it seems like the real problem isn't that our EIs are too
>> long, but that we're missing a bunch of them.
>>=20
>> The solution I was suggesting for this on IRC during the last couple of
>> days wouldn't have any of the drawbacks you mention above, I'll send it
>> to this list in a moment if the general approach seems okay to you:
>>=20
>> https://github.com/curro/linux/commit/f7bc31402aa727a52d957e62d985c6dae6=
be4b86
>
> We were explicitly told to mask the interrupt generation at source
> to conserve power. So I would hope for a statement as to whether that is
> still a requirement from the HW architects; but I can't see why we would
> not apply the mask and that this is just paper. If the observation about
> forcewake tallies, would this not suggest that it is still conserving
> power on icl?
>

Yeah, it's hard to see how disabling interrupt generation could save any
additional power in a unit which is powered off -- At least on ICL where
even the interrupt masking register is powered off...

> I haven't looked at whether I see the same phenomenon as you [missing
> interrupts on icl] locally, but I was expecting something like the bug
> report since the observation that render times are less than EI was
> causing the clocks to stay high. And I noticed your problem statement
> and was hopeful for a link.
>

Right.  In the workloads I was looking at last week the GPU would often
be active for periods of time several times greater than the EI, and we
would still fail to clock up.

> They sound like two different problems. (Underclocking for animations is
> not icl specific.)
>

Sure.  But it seems like the underclocking problem has been greatly
exacerbated by 21abf0bf168d, which may have been mitigating the same ICL
problem I was looking at leading to RPS interrupt loss.  Maybe
21abf0bf168d wouldn't be necessary with working RPS interrupt delivery?
And without 21abf0bf168d platforms earlier than ICL wouldn't have as
much of an underclocking problem either.

>> That said it *might* be helpful to reduce the EIs we use right now in
>> addition, but a factor of 100 seems over the top since that will cause
>> the evaluation interval to be roughly two orders of magnitude shorter
>> than the rendering time of a typical frame, which can lead to massive
>> oscillations even in workloads that use a small fraction of the GPU time
>> to render a single frame.  Maybe we want something in between?
>
> Probably; as you can guess these were pulled out of nowhere based on the
> observation that the frame lengths are much shorter than the current EI
> and that in order for us to ramp up to maxclocks in a single frame of
> animation would take about 4 samples per frame. Based on the reporter's
> observations, we do have to ramp up very quickly for single frame of
> rendering in order to hit the vblank, as we are ramping down afterwards.
>
> With a target of 4 samples within say 1ms, 160us isn't too far of the
> mark. (We have to allow some extra time to catch up rendering.)


How about we stop ramping down after the rendering of a single frame?
It's not like we save any power by doing that, since the GPU seems to be
forced to the minimum frequency for as long as it remains parked anyway.
If the GPU remains idle long enough for the RPS utilization counters to
drop below the threshold and qualify for a ramp-down the RPS should send
us an interrupt, at which point we will ramp down the frequency.

Unconditionally ramping down on parking seems to disturb the accuracy of
that RPS feedback loop, which then needs to be worked around by reducing
the averaging window of the RPS to a tiny fraction of the oscillation
period of any typical GPU workload, which is going to prevent the RPS
from seeing a whole oscillation period before it reacts, which is almost
guaranteed to have a serious energy-efficiency cost.

>
> As for steady state workloads, I'm optimistic the smoothing helps. (It's
> harder to find steady state, unthrottled workloads!)

I'm curious, how is that smoothing you do in PATCH 1 better than simply
setting 2x the EIs? (Which would also mean half the interrupt processing
overhead as in this series)

> -Chris

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXpYkaQAKCRCDmTidfVK/
W0xIAP0WttSfHO/26gqHGJjULj7NIyHzq5RX14x9R8nCMygthgD+MPWflfx2vIpg
7ew5yQGfMZqshKU0B6Y45VBFOp+KU9Q=
=3kin
-----END PGP SIGNATURE-----
--==-=-=--

--===============1056799869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1056799869==--
