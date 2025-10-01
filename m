Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE3DBB06E4
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 15:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653A310E6E0;
	Wed,  1 Oct 2025 13:10:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDux3VMG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4881D10E6E0;
 Wed,  1 Oct 2025 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759324222; x=1790860222;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZUWwHp7ruE+8pQtgjNEoijo3sZ5HjcCit8M17juR4Zo=;
 b=gDux3VMG+96Ck9GVEUzk5hUo4qy+J15yRGTnfLJyQSJPyFBFsou7KfGP
 KisqRphxV0S/NlP4kNEAftu6CA2gXAgvclX5sIAcufvfSgbd8AY2rCBXg
 3hh8ErteLnK8VXhBhAMuBooNepYOyFf04q0viwA3LkDedP62OC8ArUiB8
 CODtqSW+HKtKqd2PhjnOMK/vOfCmFVZMuPSij+s7v4Tfp+kfuxjU4mipH
 7RjUatomtv79bnxcTscNUHHfR/GY6pYrko4Vl3cmqNx1LeH8aBHsxPEjx
 tLTi09RIDxzkZP/krABqDkK5qzccfrFoMVf/hD/R/Ynlc8cm1REXPKQV7 A==;
X-CSE-ConnectionGUID: IrLChOZmT1q3x92ysUzuIA==
X-CSE-MsgGUID: 1e6i9/vzSjig8wC56WlAMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="49151827"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="49151827"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:10:22 -0700
X-CSE-ConnectionGUID: hw3oR3yGQCOxibO7xN/FXw==
X-CSE-MsgGUID: tYrhhXSDQp2W/AqPesi/kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178387726"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:10:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Saarinen, Jani" <jani.saarinen@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "ucas.demarchi@intel.com"
 <ucas.demarchi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
In-Reply-To: <d0acfa805671edd1132ee01e6663e1fa17179623.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001081209.272607-1-vinod.govindapillai@intel.com>
 <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
 <d0acfa805671edd1132ee01e6663e1fa17179623.camel@intel.com>
Date: Wed, 01 Oct 2025 16:10:16 +0300
Message-ID: <df8fdcbbc78e969de74af14ae6f28aa0ef42015a@intel.com>
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

On Wed, 01 Oct 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Wed, 2025-10-01 at 13:03 +0300, Jani Nikula wrote:
>> On Wed, 01 Oct 2025, Vinod Govindapillai <vinod.govindapillai@intel.com>=
 wrote:
>> > wa_22014263786 is not applicable to the BMG and hence exclude it
>> > from the wa.
>> >=20
>> > v2: Limit this wa to display verion 11 to 14, drop DG2 from the
>> > =C2=A0=C2=A0=C2=A0 exclusion list, use intel_display_wa (Lucas)
>> >=20
>> > Bspec: 74212, 66624
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_wa.c | 12 ++++++++++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display_wa.h |=C2=A0 1 +
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 3 +--
>> > =C2=A03 files changed, 14 insertions(+), 2 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > index 31cd2c9cd488..7ca238725e30 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > @@ -52,6 +52,16 @@ static bool intel_display_needs_wa_16025573575(stru=
ct intel_display *display)
>> > =C2=A0	return DISPLAY_VERx100(display) =3D=3D 3000 || DISPLAY_VERx100(=
display) =3D=3D 3002;
>> > =C2=A0}
>> > =C2=A0
>> > +/*
>> > + * Wa_22014263786:
>> > + * Fixes: Screen flicker with FBC and Package C state enabled
>> > + * Workaround: Forced SLB invalidation before start of new frame.
>> > + */
>> > +static bool intel_display_needs_wa_22014263786(struct intel_display *=
display)
>> > +{
>> > +	return DISPLAY_VERx100(display) >=3D 1100 && DISPLAY_VERx100(display=
) < 1401;
>>=20
>> IS_DISPLAY_VERx100(display, 1100, 1400)
>>=20
>> Also I'm not sure if we really need separate functions for one-liners
>> like this. The documentation could be in the switch case too? *shrug*.
>
> Thanks. I will update that. I will get rid of the comments. I dont think =
it adds any extra
> information other than what it can be found from wa details.

But I did not say we should get rid of the comments! We don't want to
make people look up the wa details, because it's not publicly available
information.

I'm just wondering if we need the separate *function*.

CC: Ville who's had pretty strong opinions on this whole thing.


BR,
Jani.


>
> BR
> Vinod
>>=20
>> BR,
>> Jani.
>>=20
>> > +}
>> > +
>> > =C2=A0/*
>> > =C2=A0 * Wa_14011503117:
>> > =C2=A0 * Fixes: Before enabling the scaler DE fatal error is masked
>> > @@ -67,6 +77,8 @@ bool __intel_display_wa(struct intel_display *displa=
y, enum intel_display_wa
>> > wa,
>> > =C2=A0		return intel_display_needs_wa_16025573575(display);
>> > =C2=A0	case INTEL_DISPLAY_WA_14011503117:
>> > =C2=A0		return DISPLAY_VER(display) =3D=3D 13;
>> > +	case INTEL_DISPLAY_WA_22014263786:
>> > +		return intel_display_needs_wa_22014263786(display);
>> > =C2=A0	default:
>> > =C2=A0		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>> > =C2=A0		break;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > index abc1df83f066..3644e8e2b724 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > @@ -25,6 +25,7 @@ enum intel_display_wa {
>> > =C2=A0	INTEL_DISPLAY_WA_16023588340,
>> > =C2=A0	INTEL_DISPLAY_WA_16025573575,
>> > =C2=A0	INTEL_DISPLAY_WA_14011503117,
>> > +	INTEL_DISPLAY_WA_22014263786,
>> > =C2=A0};
>> > =C2=A0
>> > =C2=A0bool __intel_display_wa(struct intel_display *display, enum inte=
l_display_wa wa, const char
>> > *name);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
>> > index 0d380c825791..9607fdcb0cc0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -933,8 +933,7 @@ static void intel_fbc_program_workarounds(struct i=
ntel_fbc *fbc)
>> > =C2=A0		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>> > =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> > =C2=A0
>> > -	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>> > -	if (DISPLAY_VER(display) >=3D 11 && !display->platform.dg2)
>> > +	if (intel_display_wa(display, 22014263786))
>> > =C2=A0		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>> > =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 0, DPFC_CHICKEN_FORCE_SLB_INVALIDATI=
ON);
>>=20
>

--=20
Jani Nikula, Intel
