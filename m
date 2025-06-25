Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7537AE79CE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 10:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AFE10E693;
	Wed, 25 Jun 2025 08:18:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOLPJ+SV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B9210E693;
 Wed, 25 Jun 2025 08:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750839488; x=1782375488;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=V70Y4RBzuJP0RMS1V9GIv+d3w48S3K/izsQzGxwG61U=;
 b=mOLPJ+SVT1V1d8XLgIP0H9R0M+M/5RZkiNG0IFCqxIFIQy76pmPr6eVg
 PTEpVeljbKJ2n8v8TT+X4ni7kKCtOym+5QiugoaOjOSK+GDuFyiuU4KHE
 qlyFZ8FGdhmCeVf5BP+9HIA8bGk6hGso6qtpRFxy+ABfbq2J7nB9wskdj
 u6KEHQzEwASZsQiCTg8M4FquUj2PG6SXz2s/NxaKAvUqx+A2ydxIrPNas
 UkoEWx1K4F65uJGLiNMqvfwCVgG3kdfEowmggPTc/7OqR0TmjvnFsV9Gj
 BXdwUq+jKcqUUQWuFHR+L+fkLunb7SSNhmoY85dQwYVyQYTua3VmxDbU7 A==;
X-CSE-ConnectionGUID: MqZkC3fESQi3lJcDzBjLFQ==
X-CSE-MsgGUID: KbUg9Q6OT5qwIJZpvo3J1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="63787769"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="63787769"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 01:18:08 -0700
X-CSE-ConnectionGUID: E4yhiYU/TvuDWK58driGOw==
X-CSE-MsgGUID: 98mlmNXoQ2+59M1W6hNdvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="156553242"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 01:18:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
In-Reply-To: <aFrXN20jmuP_Hc01@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
 <aFlnzzW7HhtcqWs7@intel.com>
 <5fe0cd00-291b-4e93-a93a-6f8e32db4541@intel.com>
 <aFrXN20jmuP_Hc01@intel.com>
Date: Wed, 25 Jun 2025 11:18:03 +0300
Message-ID: <3d26024d8750cb1c188da77f7d3b07fb5b2cc40b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 24 Jun 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jun 24, 2025 at 10:10:53AM +0530, Nautiyal, Ankit K wrote:
>>=20
>> On 6/23/2025 8:12 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
>> > On Fri, Jun 20, 2025 at 06:14:16PM +0530, Ankit Nautiyal wrote:
>> >> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
>> >> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't supp=
ort
>> >> TPS4") introduced a blanket rejection of HBR3 link rate when the sink=
 does
>> >> not support TPS4. While this was intended to address instability obse=
rved
>> >> on certain eDP panels [1], the TPS4 requirement is only mandated for =
DPRX
>> >> and not for eDPRX.
>> > I see no exception given for eDP regarding this rule. The only excepti=
on
>> > allowed is that eDP can say DPCD_REV=3D1.4 + TPS4_SUPPORTED=3D0. So I =
still
>> > claim that these eDP sinks are violating the spec.
>>=20
>> Hmm.. Yes the spec allows eDP sinks to report DPCD_REV=3D1.4 and=20
>> TPS4_SUPPORTED, so perhaps eDPs claiming HBR3 with DPCD rev other than=20
>> rev 1.4 and not supporting TPS4 are indeed violating the spec.
>>=20
>> Would it make sense to add a condition that checks for DPCD_REV=3D1.4.
>>=20
>> Specifically:
>>=20
>> if DPCD_REV=3D1.4 and TPS4_SUPPORTED =3D 0, then do not prune the HBR3 r=
ate?
>>=20
>> Or otherway if DPCD_REV!=3D1.4 and TPS4_SUPPORTER =3D 0, prune the HBR3 =
rate
>>=20
>> This way the patch need not be reverted, but modified to address=20
>> instability issues for eDP panels that are not aligned with the spec.
>>=20
>> That said, the gitlab issue#5969 [1] will still need another solution=20
>> since it seems to have DPCD rev 14 as per logs:
>>=20
>> DPCD: 14 1e 44 41 00 00 01 80 02 00 02 00 00 0b 80
>
> I think we do need the quirk. But the commit message should IMO be
> adjusted so that it doesn't claim that these panels are 100% legal.

Right. But are you okay with reverting 584cf613c24a ("drm/i915/dp:
Reject HBR3 when sink doesn't support TPS4") i.e. allowing HBR3
*without* TPS4 by default, and quirking the panel that can't handle
HBR3?

No matter what the spec says, this seems to be common. More regressing
systems are cropping up, e.g. [1].


BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517




--=20
Jani Nikula, Intel
