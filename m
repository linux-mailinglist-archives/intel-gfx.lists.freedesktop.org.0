Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 648FD180ECB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 04:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0846E413;
	Wed, 11 Mar 2020 03:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48CB6E413
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 03:55:25 +0000 (UTC)
Received: from capuchin.riseup.net (unknown [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cdQj3s2yzFdkR;
 Tue, 10 Mar 2020 20:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583898925; bh=Vd8ynTqGkO7zn+1w3D/vFfIX4SLKM0rZ+1nK/8EbJHQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=HmbkcEK1DXAfNjcAGqGGJH5228y3F2k08oJxkSRl7let0BV10OaDM1odrAYjJSJGL
 rBk4bZcatltgUA+ENqecnurpwBgt3i0KGQjz34lbaqBaTgdhNumXkRVWFL933+R/qG
 2k0jE92T0wAERH9L7kg3S41uskar3wo8YH8E5epA=
X-Riseup-User-ID: C934A8A71355FA8D1E2446A4D002ED00385A4F3F25861A30A461B1BF5D8ED8A1
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 48cdQh6S7xz8tjR;
 Tue, 10 Mar 2020 20:55:24 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>,
 "linux-pm\@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <b8a09ef0c52dd02954b43b441dc3d1612837138c.camel@intel.com>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <b8a09ef0c52dd02954b43b441dc3d1612837138c.camel@intel.com>
Date: Tue, 10 Mar 2020 20:55:24 -0700
Message-ID: <87imjba6kz.fsf@riseup.net>
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
Content-Type: multipart/mixed; boundary="===============1834963677=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1834963677==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"Pandruvada, Srinivas" <srinivas.pandruvada@intel.com> writes:

> On Tue, 2020-03-10 at 14:41 -0700, Francisco Jerez wrote:
>>=20
>
> [...]
>
>> Thanks in advance for any review feed-back and test reports.
>>=20
>> [PATCH 01/10] PM: QoS: Add CPU_RESPONSE_FREQUENCY global PM QoS
>> limit.
>> [PATCH 02/10] drm/i915: Adjust PM QoS response frequency based on GPU
>> load.
>> [PATCH 03/10] OPTIONAL: drm/i915: Expose PM QoS control parameters
>> via debugfs.
>> [PATCH 04/10] Revert "cpufreq: intel_pstate: Drop ->update_util from
>> pstate_funcs"
>> [PATCH 05/10] cpufreq: intel_pstate: Implement VLP controller
>> statistics and status calculation.
>> [PATCH 06/10] cpufreq: intel_pstate: Implement VLP controller target
>> P-state range estimation.
>> [PATCH 07/10] cpufreq: intel_pstate: Implement VLP controller for HWP
>> parts.
>> [PATCH 08/10] cpufreq: intel_pstate: Enable VLP controller based on
>> ACPI FADT profile and CPUID.
>> [PATCH 09/10] OPTIONAL: cpufreq: intel_pstate: Add tracing of VLP
>> controller status.
>> [PATCH 10/10] OPTIONAL: cpufreq: intel_pstate: Expose VLP controller
>> parameters via debugfs.
>>=20
> Do you have debug patch (You don't to submit as a patch), which will
> allow me to dynamically disable/enable all these changes? I want to
> compare and do some measurements.
>

Something like this (fully untested) patch?  It should prevent the VLP
controller from running if you do:

echo 16 > /sys/kernel/debug/pstate_snb/lp_debug

> Thanks,
> Srinivas=20
>
>>[...]


--=-=-=
Content-Type: text/x-patch
Content-Disposition: inline; filename=0001-DEBUG.patch
Content-Transfer-Encoding: quoted-printable

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index ab893a211746..8749b4a14447 100644
=2D-- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -2411,6 +2411,9 @@ static void intel_pstate_update_util(struct update_ut=
il_data *data, u64 time,
 static void intel_pstate_update_util_hwp_vlp(struct update_util_data *data,
 					     u64 time, unsigned int flags)
 {
+	if ((vlp_params.debug & 16))
+		return;
+
 	struct cpudata *cpu =3D container_of(data, struct cpudata, update_util);
=20
 	if (update_vlp_sample(cpu, time, flags)) {

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXmhhLAAKCRCDmTidfVK/
W1UqAP9n4Er2AUWSyYt9uHJEFfyHoFxRMy051/UzUeI0HMdVKwD/arovB95PUmru
7PfUKIofPB5+hacyyY/8WDYafVTqCZI=
=3QE1
-----END PGP SIGNATURE-----
--==-=-=--

--===============1834963677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1834963677==--
