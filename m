Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF777E0192
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 11:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3654010E081;
	Fri,  3 Nov 2023 10:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF7A210E081
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 10:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699007592; x=1730543592;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IKndwvm7/682j3PwyWtgF93WB7gJ5lXlZxHRE6T5HuE=;
 b=e52v6WFUoZYXhmgCBr7a6dl3oOqLUQGyF7C+1jagvHu87bJO+f8LekJa
 N5Py0GweCV7OfmGKiWJ2HsiqoyDYJCdOkR9CdQsH4xWvbAFojIWp+DFBQ
 gUGd+mA0jTsOMLUlCXgflaMdzDeNSNrqbwkH/60efEH0PTw1gmVeowxeP
 cJ/ffgtu8hp59wu3y/iq7oqyvasbF1faM2kqeB43ybTetKaQzqO8a9PRF
 I1cp/nPmvyoIIRK54tDO9GA0fidDguHvIFO9wbPFs0gOD+R2tSf9o8sAr
 WalcRxqtTcEXNtkdsn1j3VMUFl9oruxBcXpsiY5zwRHejvXgt2ch/AcPz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1856904"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1856904"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 03:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="852236375"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="852236375"
Received: from senglet-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.109])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 03:33:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <012689430a23b635e409bbc6b65eed0b985e90fb.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231102222941.144583-1-vinod.govindapillai@intel.com>
 <20231102222941.144583-2-vinod.govindapillai@intel.com>
 <87msvv19ag.fsf@intel.com>
 <012689430a23b635e409bbc6b65eed0b985e90fb.camel@intel.com>
Date: Fri, 03 Nov 2023 12:33:06 +0200
Message-ID: <87h6m315zx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Nov 2023, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> Hi,
>
>
> On Fri, 2023-11-03 at 11:21 +0200, Jani Nikula wrote:
>> On Fri, 03 Nov 2023, Vinod Govindapillai <vinod.govindapillai@intel.com>=
 wrote:
>> > Implement the alternate WA for the underruns when both PSR2
>> > and FBC is enabled.
>>=20
>> But we don't enable FBC when PSR2 is enabled, for display 12+.
>>=20
>> See intel_fbc.c line 1200 or so.
>
> Yes. I had another series to enable FBC + PSR for xe2lpd.
> https://patchwork.freedesktop.org/series/125932/
> I should mention that here.

Well, this depends on that stuff, so maybe these should all be part of
the same series?

BR,
Jani.

>
>
> Thanks
> Vinod
>
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c | 12 +++++++++++-
>> > =C2=A01 file changed, 11 insertions(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
>> > index bde12fe62275..b9cd92a997cd 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>> > =C2=A0static void ivb_fbc_activate(struct intel_fbc *fbc)
>> > =C2=A0{
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_privat=
e *i915 =3D fbc->i915;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 dpfc_ctl;
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) =
>=3D 10)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0glk_fbc_program_cfb_stride(fbc);
>> > @@ -617,8 +618,17 @@ static void ivb_fbc_activate(struct intel_fbc *fb=
c)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (intel_gt_support_l=
egacy_fencing(to_gt(i915)))
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0snb_fbc_program_fence(fbc);
>> > =C2=A0
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Alternate WA for HW bug =
with PSR2 + FBC.
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 1.Write FBC_CTL with Pla=
ne binding set correctly with FBC enable =3D 0
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * 2.Write FBC_CTL with Pla=
ne binding set correctly with FBC enable =3D 1
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dpfc_ctl =3D ivb_dpfc_ctl(f=
bc);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D =
20)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_c=
tl);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_de_write(i915, I=
LK_DPFC_CONTROL(fbc->id),
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DPFC_CTL_EN | ivb=
_dpfc_ctl(fbc));
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DPFC_CTL_EN | dpf=
c_ctl);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
>>=20
>

--=20
Jani Nikula, Intel
