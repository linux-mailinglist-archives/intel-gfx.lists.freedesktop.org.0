Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6DAA49663
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 11:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A6810E03A;
	Fri, 28 Feb 2025 10:07:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PaTfIMWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D7710E03A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 10:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740737218; x=1772273218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k7OLsk+2EwUDVs+opZD5zSdlSrGgLDRF6etXslgKq/g=;
 b=PaTfIMWbA3rVmxm4kD78+EmFFpKdI3RegXYUK3nyrAGTdpf586iMZNpF
 qEksLZi77ZvNVTmysDwdU08jtJg9zhKMzim8A9UoxoS5cYE243q/Gt0of
 81l2yEnzqx/IszQ5VEDbxZWVWDefk1Hxk1f5Ij9U3dWvqay4PzmlgK0qZ
 GF2yEZe4v4OUD9t0SYHUUmghPnFkOtNtc4HISEKktfmJ57OciKEa2gE71
 rT66z2+3sjAFH8lJMqN5Pqbq3OzZV881KLuik4eUsiMHceMqXXQ6ebyuG
 dVoq/WSvzRBCzxDFzSdIOPiXUQDpaX/zC0IQubtx+1WP5/Qj2fca5t5Oo w==;
X-CSE-ConnectionGUID: qYuzA+L9SkKFZh34bRUR1Q==
X-CSE-MsgGUID: 7yK8pzEEQBO1NQD4zRLCvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="59198441"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="59198441"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 02:06:54 -0800
X-CSE-ConnectionGUID: Wb7aV7PiS3SbhZIMPHFamA==
X-CSE-MsgGUID: rQI0q2+jQvmOe3Z+XGqwtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118219145"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.27])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 02:06:53 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Date: Fri, 28 Feb 2025 11:06:50 +0100
Message-ID: <2049735.PIDvDuAF1L@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2x5mflmsnr2uw4hpximytd6czfia4k7o2gfebyf34ovvb2mgxt@2vqna56iatm5>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <6774543.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
 <2x5mflmsnr2uw4hpximytd6czfia4k7o2gfebyf34ovvb2mgxt@2vqna56iatm5>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 28 February 2025 08:49:21 CET Mikolaj Wasiak wrote:
> Hi Janusz,
>=20
> > I agree with both Andi and Krzysztof comments.
> >=20
> > If the issue is tracked in our bug tracker then please provide a link t=
o its=20
> > record in a Link: or even Closes: tag.  Do you have call traces on hand=
? =20
> > Probably yes, so please consider adding a concise excerpt to your descr=
iption.
> >=20
> > While looking for similar cases, I've found commit 51104c19d857 ("kunit=
: test:=20
> > Add vm_mmap() allocation resource manager") that seems to have resolved=
 a=20
> > similar issue for then newly added kunit tests accessing current->mm.  =
Maybe=20
> > the approach used there is worth of reusing it for i915 selftests.
> >=20
> > Thanks,
> > Janusz
>=20
> Here is related bug
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13679
>=20
> I've seen commit you found. It sadly uses symbols that aren't exported
> outside of mm module and kunit tests=20

Well, strictly speaking, those core symbols were also not available to kuni=
t,=20
and that patch exported them to kunit namespace.  While i915 selftests are =
not=20
kunit, they are still in-kernel tests, then maybe it would be acceptable to=
=20
import the kunit namespace as needed to our selftests and use those symbols=
=20
for the same purpose as intended.  CI already runs kunit tests, then builds=
=20
the kernels with CONFIG_KUNIT=3Dy.  The code of i915 selftest that will dep=
end=20
on those symbols may then just check for CONFIG_KUNIT defined and be skippe=
d=20
if not.

Thanks,
Janusz


> and so I can't replicate it in our
> selftest.
>=20
> Miko=C5=82aj
>=20




