Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8CCBF0ACA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 12:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F370810E416;
	Mon, 20 Oct 2025 10:51:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyCDIbTB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BA310E413;
 Mon, 20 Oct 2025 10:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760957490; x=1792493490;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nRLBHNFzaN0+VD23GN/iDS8njxRIE5DGCa8iay8g1e8=;
 b=FyCDIbTBygTSSDxwPPPFfVowWZRNwxVb/FvevBER/B9Jpc2b+eXNEV0E
 /ak0j6S85rC5/YEiL/KpuwSqWm/DnyHnG8183CaT8KvJEGB65FiO8v0S6
 EM4NQA1DdI/HxN5+KKXX2Lw+0wiKTMOtQT/7wzo4rI/fcpKekQ/LbsHhK
 KdGK9/Mjnko9ZLft2pPZhZVwQmOEaAiBgEovdM8NEuT1QNdTboRH/UbXs
 vz9lmIEjlwI+SGakdi8SUMNBgcEIMKMm0z2ndGc5ZuARicOcFDGhCKlVM
 jMJ+Y65EyWfeax2q+Oc4OpceloRHEAYHgAm4ElpgS+KWBPkP3SxJ6PGaF w==;
X-CSE-ConnectionGUID: kcg2IBXdQ9GXRmLyJWSgyA==
X-CSE-MsgGUID: YVwSwft1TzSAUaJCHpXGHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62772739"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="62772739"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:51:30 -0700
X-CSE-ConnectionGUID: Rf88mz6BTuWLYQji3/4QTg==
X-CSE-MsgGUID: EOJtB1moTz6cU4kkC4VQzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="187316113"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:51:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>
Subject: Re: [RFC PATCH 18/39] drm/i915/display: Determine Cx0 PLL DP mode
 from PLL state
In-Reply-To: <aPEzkHAVpYKl-GcC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-19-mika.kahola@intel.com>
 <6e0a3d761178ff4901ad81e3c2fa84b75a0d7dfe@intel.com>
 <aPEzkHAVpYKl-GcC@intel.com>
Date: Mon, 20 Oct 2025 13:51:24 +0300
Message-ID: <c13d2c12759bb25e7a70dd803c3511fb38feca4f@intel.com>
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

On Thu, 16 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 01, 2025 at 12:16:57PM +0300, Jani Nikula wrote:
>> On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
>> > From: Imre Deak <imre.deak@intel.com>
>> >
>> > The Cx0 PLL enable programming needs to know if the PLL is in DP or HD=
MI
>> > mode. The PLL manager framework doesn't pass the CRTC state to the PLL=
's
>> > enable hook, so prepare here for the conversion to use the PLL manager
>> > for Cx0 PHY PLLs by determining the DP/HDMI mode from the PLL state.
>> >
>> > For C10 PHYs use the fact that the HDMI divider value in the PLL
>> > registers are set if and only if the PLL is in HDMI mode.
>> >
>> > For C20 PHYs use the DP mode flag programmed to the VDR SERDES registe=
r,
>> > which is set if and only if the PLL is in DP mode.
>> >
>> > Assert that the above PLL/VDR SERDES register values match the DP/HDMI
>> > mode being configured already during state computation.
>> >
>> > This also allows dropping the is_dp param from the
>> > __intel_cx0pll_enable() function, since it can retrieve this now from
>> > the PLL state.
>> >
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 43 ++++++++++++++++----
>> >  1 file changed, 36 insertions(+), 7 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gp=
u/drm/i915/display/intel_cx0_phy.c
>> > index 93e37b7ac3d9..f2fd766343d5 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > @@ -2090,6 +2090,24 @@ static void intel_c10pll_update_pll(struct inte=
l_encoder *encoder,
>> >  		pll_state->c10.pll[i] =3D 0;
>> >  }
>> >=20=20
>> > +static bool c10pll_state_is_dp(const struct intel_c10pll_state *pll_s=
tate)
>> > +{
>> > +	return !REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
>> > +}
>> > +
>> > +static bool c20pll_state_is_dp(const struct intel_c20pll_state *pll_s=
tate)
>> > +{
>> > +	return pll_state->vdr.serdes_rate & PHY_C20_IS_DP;
>>=20
>> Wouldn't need this if software state was the logical state instead of
>> hardware state that you need to mask. It could be just
>> pll_state->vdr.is_dp, and no function needed.
>
> I think for now we want the PLL states to be raw registers. That's how
> it all worked so far, except that snps/cx0 screwed that up by adding
> some non-register stuff in there. It looks to me like one of the reasons
> why the cx0 code is a bit of a mess is exactly because it hasn't fully
> committed to either representation.
>
> I think for now we should generally nuke that abstract stuff from
> cx0/snps and go for pure register values to keep the design consistent.=20
>
> In the future we might want to change things to track the PLL state
> in some common abstract form in high level code, and just convert
> to/from the register based representation inside the specific PLL
> implementation.
>
> For that we would need to come up with some abstract PLL state
> that covers all the important aspects across all the platforms,
> but doesn't delve into the super low level hw details because
> there's just far too much of that in PLLs.

Okay, yuck, but acceptable for consistency in the *PLL* state. As long
as we're careful to not let that leak to crtc state.

BR,
Jani.



--=20
Jani Nikula, Intel
