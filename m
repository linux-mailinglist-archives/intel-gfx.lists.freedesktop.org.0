Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FA0455A3D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 12:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A87C6EBB7;
	Thu, 18 Nov 2021 11:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36696EBA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 11:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="257949121"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="257949121"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 03:28:37 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="736229244"
Received: from aphearty-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.10.3])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 03:28:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <bb9e5efce1a647ad9b4dd0ad4d0ce9aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211118085424.685686-1-mika.kahola@intel.com>
 <20211118085424.685686-4-mika.kahola@intel.com> <874k89lqlw.fsf@intel.com>
 <bb9e5efce1a647ad9b4dd0ad4d0ce9aa@intel.com>
Date: Thu, 18 Nov 2021 13:28:31 +0200
Message-ID: <87y25lk8io.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD clock
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

On Thu, 18 Nov 2021, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Thursday, November 18, 2021 12:12 PM
>> To: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD c=
lock
>>=20
>> On Thu, 18 Nov 2021, Mika Kahola <mika.kahola@intel.com> wrote:
>> > In case of CD clock squashing the divider is always 1. We don't need
>> > to calculate the divider in use so let's skip that for DG2.
>> >
>> > v2: Drop unnecessary local variable (Ville)
>> > v3: Avoid if-else structure (Ville)
>> > [v4: vsyrjala: Fix cd2x divider calculation (Uma),
>> >                Introduce has_cdclk_squasher()]
>> >
>> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++---
>> >  1 file changed, 12 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > index 630a53d4f882..e8c58779c2a8 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -1212,6 +1212,11 @@ static void skl_cdclk_uninit_hw(struct
>> drm_i915_private *dev_priv)
>> >  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);  }
>> >
>> > +static bool has_cdclk_squasher(struct drm_i915_private *i915) {
>> > +	return IS_DG2(i915);
>> > +}
>>=20
>> The obvious problem is that you use this function already in patch 2.
>
> I couldn't find the original cover-letter and hence the patches might hav=
e slipped in wrong order. Thanks for pointing that out!
>
>>=20
>> I'm also not sure we want to start sprinkling the has_ or HAS_ query stu=
ff all over
>> the place in .c. files. Or if we do, we should do it in a more planned m=
anner, not
>> by starting to sneak these in.
>
> Well, what would be the alternative? How we should handle the cases
> where a feature is supported by a platform and perhaps platforms in
> the future?

I mean the current approach is to add the feature check macros in
i915_drv.h instead of spreading them everywhere. It may not be the best
approach, and we may want to revisit that in the future, but at the
moment that's where we put them.

BR,
Jani.



>
> Cheers,
> Mika=20
>>=20
>> BR,
>> Jani.
>>=20
>> > +
>> >  static const struct intel_cdclk_vals bxt_cdclk_table[] =3D {
>> >  	{ .refclk =3D 19200, .cdclk =3D 144000, .divider =3D 8, .ratio =3D 6=
0 },
>> >  	{ .refclk =3D 19200, .cdclk =3D 288000, .divider =3D 4, .ratio =3D 6=
0 }, @@
>> > -1750,7 +1755,7 @@ static void bxt_set_cdclk(struct drm_i915_private
>> > *dev_priv,  static void bxt_sanitize_cdclk(struct drm_i915_private
>> > *dev_priv)  {
>> >  	u32 cdctl, expected;
>> > -	int cdclk, vco;
>> > +	int cdclk, clock, vco;
>> >
>> >  	intel_update_cdclk(dev_priv);
>> >  	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK"); @@
>> > -1786,8 +1791,12 @@ static void bxt_sanitize_cdclk(struct drm_i915_pri=
vate
>> *dev_priv)
>> >  	expected =3D skl_cdclk_decimal(cdclk);
>> >
>> >  	/* Figure out what CD2X divider we should be using for this cdclk */
>> > -	expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv,
>> > -					   dev_priv->cdclk.hw.cdclk,
>> > +	if (has_cdclk_squasher(dev_priv))
>> > +		clock =3D dev_priv->cdclk.hw.vco / 2;
>> > +	else
>> > +		clock =3D dev_priv->cdclk.hw.cdclk;
>> > +
>> > +	expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv, clock,
>> >  					   dev_priv->cdclk.hw.vco);
>> >
>> >  	/*
>>=20
>> --
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
