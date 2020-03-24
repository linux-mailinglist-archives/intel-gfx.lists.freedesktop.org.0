Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF71919BE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 20:16:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889EC6E51A;
	Tue, 24 Mar 2020 19:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B636E51A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 19:16:44 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48n1Fl5ryjzFfJf;
 Tue, 24 Mar 2020 12:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1585077404; bh=g3kIl6pV90GoCrAsYa8/+kBWs8oZ+ZNQMAO3G1dZwd0=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=IMDStLEOriytYwPOwLojqGheQi8QXBv1go1pYuQ6Sg0CA8H/7NM2duT5FAOShq8am
 dJfshGUV6nEAr7cUsvWDtLp+5LFR4YT5tRpaiGyHX3vyeAqkYa2gPc5k9RJn8QJ8yx
 p+Kgt+jyxpdH6wh+qhGhVc7zWKe5bdWzJqN1TIPY=
X-Riseup-User-ID: A41F06ACBABA9B817E1C19E462B2E3474F3409E958953E16CD4BD0833036F2A8
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48n1Fl1z34zJrq2;
 Tue, 24 Mar 2020 12:16:43 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>, "Brown\,
 Len" <len.brown@intel.com>,
 "linux-pm\@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87blom4n3c.fsf@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <5a7aa1cef880ee5ac3ffe2055745c26f8d124b68.camel@intel.com>
 <87blom4n3c.fsf@riseup.net>
Date: Tue, 24 Mar 2020 12:16:45 -0700
Message-ID: <87369x4l7m.fsf@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] GPU-bound energy efficiency improvements for
 the intel_pstate driver (v2).
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
Cc: "peterz@infradead.org" <peterz@infradead.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>
Content-Type: multipart/mixed; boundary="===============0669988272=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0669988272==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Francisco Jerez <currojerez@riseup.net> writes:

> "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com> writes:
>
>> Hi Francisco,
>>
>> On Tue, 2020-03-10 at 14:41 -0700, Francisco Jerez wrote:
>>> This is my second take on improving the energy efficiency of the
>>> intel_pstate driver under IO-bound conditions.  The problem and
>>> approach to solve it are roughly the same as in my previous series
>>> [1]
>>> at a high level:
>>>=20
>>> In IO-bound scenarios (by definition) the throughput of the system
>>> doesn't improve with increasing CPU frequency beyond the threshold
>>> value at which the IO device becomes the bottleneck, however with the
>>> current governors (whether HWP is in use or not) the CPU frequency
>>> tends to oscillate with the load, often with an amplitude far into
>>> the
>>> turbo range, leading to severely reduced energy efficiency, which is
>>> particularly problematic when a limited TDP budget is shared among a
>>> number of cores running some multithreaded workload, or among a CPU
>>> core and an integrated GPU.
>>>=20
>>> Improving the energy efficiency of the CPU improves the throughput of
>>> the system in such TDP-limited conditions.  See [4] for some
>>> preliminary benchmark results from a Razer Blade Stealth 13 Late
>>> 2019/LY320 laptop with an Intel ICL processor and integrated
>>> graphics,
>>> including throughput results that range up to a ~15% improvement and
>>> performance-per-watt results up to a ~43% improvement (estimated via
>>> RAPL).  Particularly the throughput results may vary substantially
>>> from one platform to another depending on the TDP budget and the
>>> balance of load between CPU and GPU.
>>>=20
>>
>> You changed the EPP to 0 intentionally or unintentionally. We know that
>> all energy optimization will be disabled with this change.=20
>> This test was done on an ICL system.
>>
>
> Hmm, that's bad, and fully unintentional.  It's probably a side effect
> of intel_pstate_reset_vlp() running before intel_pstate_hwp_set(), which
> could cause it to use an uninitialized value of hwp_req_cached (zero?).
> I'll fix it in v3.  Thanks a lot for pointing this out.
>

Sigh.  That means that the performance results I got were inadvertently
obtained while using an EPP setting of "performance" (!).  That's
unlikely to be the case in most systems but still kind of meaningful.
Need to get updated performance numbers with EPP=3D0x80 -- The larger up
to ~40% energy efficiency improvements still seem to be visible
regardless, but the throughput benefit is likely to be lower than with
EPP=3D0.

>>
>> Basically without your patches on top of linux-next: EPP =3D 0x80
>> $sudo rdmsr -a 0x774
>> 80002704
>> 80002704
>> 80002704
>> 80002704
>> 80002704
>> 80002704
>> 80002704
>> 80002704
>>
>>
>> After your patches
>>
>> $sudo rdmsr -a 0x774
>> 2704
>> 2704
>> 2704
>> 2704
>> 2704
>> 2704
>> 2704
>> 2704
>>
>> I added some prints, basically you change the EPP at startup before
>> regular HWP request update path and update on top. So boot up EPP is
>> overwritten.
>>
>>
>> [    5.867476] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.872426] intel_pstate_reset_vlp hwp_req:404
>> [    5.881645] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.886634] intel_pstate_reset_vlp hwp_req:404
>> [    5.895819] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.900958] intel_pstate_reset_vlp hwp_req:404
>> [    5.910321] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.915406] intel_pstate_reset_vlp hwp_req:404
>> [    5.924623] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.929564] intel_pstate_reset_vlp hwp_req:404
>> [    5.944039] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.951672] intel_pstate_reset_vlp hwp_req:404
>> [    5.966157] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.973808] intel_pstate_reset_vlp hwp_req:404
>> [    5.988223] intel_pstate_reset_vlp hwp_req cached:0
>> [    5.995823] intel_pstate_reset_vlp hwp_req:404
>> [    6.010062] intel_pstate: HWP enabled
>>
>> Thanks,
>> Srinivas
>>
>>
>>
>>> One of the main differences relative to my previous version is that
>>> the trade-off between energy efficiency and frequency ramp-up latency
>>> is now exposed to device drivers through a new PM QoS class [It would
>>> make sense to expose it to userspace too eventually but that's beyond
>>> the purpose of this series].  The new PM QoS class provides a latency
>>> target to CPUFREQ governors which gives them permission to filter out
>>> CPU frequency oscillations with a period significantly shorter than
>>> the specified target, whenever doing so leads to improved energy
>>> efficiency.
>>>=20
>>> This series takes advantage of the new PM QoS class from the i915
>>> driver whenever the driver determines that the GPU has become a
>>> bottleneck for an extended period of time.  At that point it places a
>>> PM QoS ramp-up latency target which causes CPUFREQ to limit the CPU
>>> to
>>> a reasonably energy-efficient frequency able to at least achieve the
>>> required amount of work in a time window approximately equal to the
>>> ramp-up latency target (since any longer-term energy efficiency
>>> optimization would potentially violate the latency target).  This
>>> seems more effective than clamping the CPU frequency to a fixed value
>>> directly from various subsystems, since the CPU is a shared resource,
>>> so the frequency bound needs to consider the load and latency
>>> requirements of all independent workloads running on the same CPU
>>> core
>>> in order to avoid performance degradation in a multitasking, possibly
>>> virtualized environment.
>>>=20
>>> The main limitation of this PM QoS approach is that whenever multiple
>>> clients request different ramp-up latency targets, only the strictest
>>> (lowest latency) one will apply system-wide, potentially leading to
>>> suboptimal energy efficiency for the less latency-sensitive clients,
>>> (though it won't artificially limit the CPU throughput of the most
>>> latency-sensitive clients as a result of the PM QoS requests placed
>>> by
>>> less latency-sensitive ones).  In order to address this limitation
>>> I'm
>>> working on a more complicated solution which integrates with the task
>>> scheduler in order to provide response latency control with process
>>> granularity (pretty much in the spirit of PELT).  One of the
>>> alternatives Rafael and I were discussing was to expose that through
>>> a
>>> third cgroup clamp on top of the MIN and MAX utilization clamps, but
>>> I'm open to any other possibilities regarding what the interface
>>> should look like.  Either way the current (scheduling-unaware) PM
>>> QoS-based interface should provide most of the benefit except in
>>> heavily multitasking environments.
>>>=20
>>> A branch with this series in testable form can be found here [2],
>>> based on linux-next from a few days ago.  Another important
>>> difference
>>> with respect to my previous revision is that the present one targets
>>> HWP systems (though for the moment it's only enabled by default on
>>> ICL, even though that can be overridden through the kernel command
>>> line).  I have WIP code that uses the same governor in order to
>>> provide a similar benefit on non-HWP systems (like my previous
>>> revision), which can be found in this branch for reference [3] -- I'm
>>> planning to finish that up and send it as follow-up to this series
>>> assuming people are happy with the overall approach.
>>>=20
>>> Thanks in advance for any review feed-back and test reports.
>>>=20
>>> [PATCH 01/10] PM: QoS: Add CPU_RESPONSE_FREQUENCY global PM QoS
>>> limit.
>>> [PATCH 02/10] drm/i915: Adjust PM QoS response frequency based on GPU
>>> load.
>>> [PATCH 03/10] OPTIONAL: drm/i915: Expose PM QoS control parameters
>>> via debugfs.
>>> [PATCH 04/10] Revert "cpufreq: intel_pstate: Drop ->update_util from
>>> pstate_funcs"
>>> [PATCH 05/10] cpufreq: intel_pstate: Implement VLP controller
>>> statistics and status calculation.
>>> [PATCH 06/10] cpufreq: intel_pstate: Implement VLP controller target
>>> P-state range estimation.
>>> [PATCH 07/10] cpufreq: intel_pstate: Implement VLP controller for HWP
>>> parts.
>>> [PATCH 08/10] cpufreq: intel_pstate: Enable VLP controller based on
>>> ACPI FADT profile and CPUID.
>>> [PATCH 09/10] OPTIONAL: cpufreq: intel_pstate: Add tracing of VLP
>>> controller status.
>>> [PATCH 10/10] OPTIONAL: cpufreq: intel_pstate: Expose VLP controller
>>> parameters via debugfs.
>>>=20
>>> [1] https://marc.info/?l=3Dlinux-pm&m=3D152221943320908&w=3D2
>>> [2]=20
>>> https://github.com/curro/linux/commits/intel_pstate-vlp-v2-hwp-only
>>> [3] https://github.com/curro/linux/commits/intel_pstate-vlp-v2
>>> [4]=20
>>> http://people.freedesktop.org/~currojerez/intel_pstate-vlp-v2/benchmark=
-comparison-ICL.log
>>>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXnpcnQAKCRCDmTidfVK/
W6CuAP9fs9cfyvsTH9Qbd1WgUBULrg6ZByHiSA0+e9zOHW8tzgD+NAtdJuUYmMiE
I54Pgaslenf0uyw8wSXCBTQrYRwkeZ0=
=kwmB
-----END PGP SIGNATURE-----
--==-=-=--

--===============0669988272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0669988272==--
