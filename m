Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6D21CE63C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 23:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76F86E598;
	Mon, 11 May 2020 21:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8927E6E595
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 21:01:33 +0000 (UTC)
Received: from capuchin.riseup.net (capuchin-pn.riseup.net [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49LYJY0kRvzDrsX;
 Mon, 11 May 2020 14:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1589230893; bh=c5aC42a68kHuYAj8kNftIl6FVukXobLt1cvk0SKJmLw=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=eUY1yvnS8GqdUo8gPVqnV8hvC4V8iULvC4mQ6QWY97ne3/GU5jjcKBVfP2tzUSCZx
 QC3upSmxSIFCvS1sf6cRhQMv0KSQZ2dkqm4h0FIipjr5gdEo/BulGRdzIrj5GLI9V2
 B1/AISZ+vl52cA4Qt2DWAokSQqx9fWvHVE0IAglw=
X-Riseup-User-ID: 7E94995CD430B3A5D7E7269DF40EA2343D572B2CF5E4BE196C34136F3412586D
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 49LYJX3Ts8z8t1k;
 Mon, 11 May 2020 14:01:32 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Peter Zijlstra <peterz@infradead.org>
In-Reply-To: <20200511105701.GA2940@hirez.programming.kicks-ass.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
 <20200511105701.GA2940@hirez.programming.kicks-ass.net>
Date: Mon, 11 May 2020 14:01:41 -0700
Message-ID: <874ksmuqx6.fsf@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] GPU-bound energy efficiency improvements for
 the intel_pstate driver (v2.99)
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
Cc: amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, daniel.lezcano@linaro.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, chris.p.wilson@intel.com, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>, rui.zhang@intel.com
Content-Type: multipart/mixed; boundary="===============0553181674=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0553181674==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Peter Zijlstra <peterz@infradead.org> writes:

> On Mon, Apr 27, 2020 at 08:22:47PM -0700, Francisco Jerez wrote:
>> This addresses the technical concerns people brought up about my
>> previous v2 revision of this series.  Other than a few bug fixes, the
>> only major change relative to v2 is that the controller is now exposed
>> as a new CPUFREQ generic governor as requested by Rafael (named
>> "adaptive" in this RFC though other naming suggestions are welcome).
>> Main reason for calling this v2.99 rather than v3 is that I haven't
>> yet addressed all the documentation requests from the v2 thread --
>> Will spend some time doing that as soon as I have an ACK (ideally from
>> Rafael) that things are moving in the right direction.
>>=20
>> You can also find this series along with the WIP code for non-HWP
>> platforms in this branch:
>>=20
>> https://github.com/curro/linux/tree/intel_pstate-vlp-v2.99
>>=20
>> Thanks!
>>=20
>> [PATCHv2.99 01/11] PM: QoS: Add CPU_SCALING_RESPONSE global PM QoS limit.
>> [PATCHv2.99 02/11] drm/i915: Adjust PM QoS scaling response frequency ba=
sed on GPU load.
>> [PATCHv2.99 03/11] OPTIONAL: drm/i915: Expose PM QoS control parameters =
via debugfs.
>> [PATCHv2.99 04/11] cpufreq: Define ADAPTIVE frequency governor policy.
>> [PATCHv2.99 05/11] cpufreq: intel_pstate: Reorder intel_pstate_clear_upd=
ate_util_hook() and intel_pstate_set_update_util_hook().
>> [PATCHv2.99 06/11] cpufreq: intel_pstate: Call intel_pstate_set_update_u=
til_hook() once from the setpolicy hook.
>> [PATCHv2.99 07/11] cpufreq: intel_pstate: Implement VLP controller stati=
stics and target range calculation.
>> [PATCHv2.99 08/11] cpufreq: intel_pstate: Implement VLP controller for H=
WP parts.
>> [PATCHv2.99 09/11] cpufreq: intel_pstate: Enable VLP controller based on=
 ACPI FADT profile and CPUID.
>> [PATCHv2.99 10/11] OPTIONAL: cpufreq: intel_pstate: Add tracing of VLP c=
ontroller status.
>> [PATCHv2.99 11/11] OPTIONAL: cpufreq: intel_pstate: Expose VLP controlle=
r parameters via debugfs.
>
> What I'm missing is an explanation for why this isn't using the
> infrastructure that was build for these kinds of things? The thermal
> framework, was AFAIU, supposed to help with these things, and the IPA
> thing in particular is used by ARM to do exactly this GPU/CPU power
> budget thing.
>
> If thermal/IPA is found wanting, why aren't we improving that?

The GPU/CPU power budget "thing" is only a positive side effect of this
series on some TDP-bound systems.  Its ultimate purpose is improving the
energy efficiency of workloads which have a bottleneck on a device other
than the CPU, by giving the bottlenecking device driver some influence
over the response latency of CPUFREQ governors via a PM QoS interface.
This seems to be completely outside the scope of the thermal framework
and IPA AFAIU.

>
> How much of that ADAPTIVE crud is actually intel_pstate specific? On a
> (really) quick read it appears to me that much of the controller bits
> there can be applied more generic, and thus should not be part of any
> one governor.
>

The implementation of that is intel_pstate-specific right now, but the
basic algorithm could be made to work on any other governor in
principle, which is why it is exposed as a generic CPUFREQ governor.  I
don't care about taking out the generic CPUFREQ governor changes if you
don't like them, and going back to some driver-specific means of turning
it on and off (though Rafael might disagree with that).

> Specifically, I want to use sched_util as cpufreq governor and use the
> intel_pstate as a passive driver.

Yeah, getting a similar optimization into the schedutil governor has
been on my wish list for a while, but I haven't had the time to get very
far on that except for a handful of hacks.  The intel_pstate handling is
going to be necessary anyway in order to handle HWP systems gracefully,
at least in the near future until schedutil becomes a viable alternative
to intel_pstate in active mode on HWP systems.

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXrm9NQAKCRCDmTidfVK/
W/3kAP40BljIZi0Y1Roy8ZmjBZhASVttP2m77/ZDRADJNIprrwD+KeE0rfn+2Uvg
+tAjGhrf8/x3p8/DI9zqibhLF2uQGyQ=
=KeYB
-----END PGP SIGNATURE-----
--==-=-=--

--===============0553181674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0553181674==--
