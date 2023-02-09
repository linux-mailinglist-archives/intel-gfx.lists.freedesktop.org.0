Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD1769047E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 11:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B14E10E993;
	Thu,  9 Feb 2023 10:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA4C10E993
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 10:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675937671; x=1707473671;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0XmlVbHXq7kThWt01CW/M+kcfEcP747uTtI09NsZx6c=;
 b=NfZyYbJewTadX/STSwpnu2VHa2xb1crZQ7BWt9zT7mKnESx0wbrVZJCL
 V0GNdJ4ay1ZW0ST6yFwlJWZtRQmR70xH2oGI7HElRUjhm8GUY4mGuOaoE
 eR86vCHGwGVEAoBl+QFQ/M/Ls22eyknqnMlmH4Zx32acZckvVnK/4gKYg
 d419CcBs+lL6P+shlg9FUBpr+S2gG1Wkf3p2raKmm/Bk3Ng68n0hXGLUT
 jKF0vyhVaYgegaMXesDqukyWVBZ22jw0fjEtpiOdwiIxzEPNqkIWA1DBw
 e8oH4vkcxcqg+su/gSIRJTgLks9MT2t2tYLVYRL7Y65mhZDCyKJXGxw1M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="310423427"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="310423427"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 02:14:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="617522548"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="617522548"
Received: from grizzo-mobl.ger.corp.intel.com (HELO localhost) ([10.252.38.7])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2023 02:14:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y+PLnhNNm+X3Z8r1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-4-ville.syrjala@linux.intel.com>
 <Y+O+i1fTxy3Ii0Tn@intel.com> <Y+PLnhNNm+X3Z8r1@intel.com>
Date: Thu, 09 Feb 2023 12:14:12 +0200
Message-ID: <87357fxi17.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Pick the backlight controller
 based on VBT on ICP+
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 08, 2023 at 10:23:55AM -0500, Rodrigo Vivi wrote:
>> On Tue, Feb 07, 2023 at 08:43:37AM +0200, Ville Syrjala wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > Use the second backlight controller on ICP+ if the VBT asks
>> > us to do so.
>> >=20
>> > On pre-MTP we also check the chicken bit to make sure the
>> > pins have been correctly muxed by the firmware.
>> >=20
>>=20
>> It looks like CC: stable was added while merging this patch.
>> But it doesn't go clean. build fails due to s/dev_priv/i915
>> and also due to the lack of ICP_SECOND_PPS_IO_SELECT that
>> was added by another patch.
>>=20
>> So we need a backported version of this patch to be included
>> in the stable trees... how far we will go in the stable tree?
>>=20
>> At this point of -rc7 I even wonder it will be better to stay
>> for 6.2 to get released and then send the backported version
>> to the stable ml directly...
>
> Yeah, let's attempt the backport after 6.2 is out.

Agreed.

In any case, Cc: stable doesn't mean the commit actually backports
cleanly, but that it should be backported. Otherwise it'll just be
forgotten.


BR,
Jani.

>
>>=20
>> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++++++++--
>> >  1 file changed, 31 insertions(+), 3 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/=
gpu/drm/i915/display/intel_backlight.c
>> > index 5b7da72c95b8..a4e4b7f79e4d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> > @@ -1431,6 +1431,30 @@ bxt_setup_backlight(struct intel_connector *con=
nector, enum pipe unused)
>> >  	return 0;
>> >  }
>> >=20=20
>> > +static int cnp_num_backlight_controllers(struct drm_i915_private *i91=
5)
>> > +{
>> > +	if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1)
>> > +		return 1;
>> > +
>> > +	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
>> > +		return 2;
>> > +
>> > +	return 1;
>> > +}
>> > +
>> > +static bool cnp_backlight_controller_is_valid(struct drm_i915_private=
 *i915, int controller)
>> > +{
>> > +	if (controller < 0 || controller >=3D cnp_num_backlight_controllers(=
i915))
>> > +		return false;
>> > +
>> > +	if (controller =3D=3D 1 &&
>> > +	    INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
>> > +	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>> > +		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELE=
CT;
>> > +
>> > +	return true;
>> > +}
>> > +
>> >  static int
>> >  cnp_setup_backlight(struct intel_connector *connector, enum pipe unus=
ed)
>> >  {
>> > @@ -1440,10 +1464,14 @@ cnp_setup_backlight(struct intel_connector *co=
nnector, enum pipe unused)
>> >=20=20
>> >  	/*
>> >  	 * CNP has the BXT implementation of backlight, but with only one
>> > -	 * controller. TODO: ICP has multiple controllers but we only use
>> > -	 * controller 0 for now.
>> > +	 * controller. ICP+ can have two controllers, depending on pin muxin=
g.
>> >  	 */
>> > -	panel->backlight.controller =3D 0;
>> > +	panel->backlight.controller =3D connector->panel.vbt.backlight.contr=
oller;
>> > +	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.contro=
ller)) {
>> > +		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming =
0\n",
>> > +			    panel->backlight.controller);
>> > +		panel->backlight.controller =3D 0;
>> > +	}
>> >=20=20
>> >  	pwm_ctl =3D intel_de_read(i915,
>> >  				BXT_BLC_PWM_CTL(panel->backlight.controller));
>> > --=20
>> > 2.39.1
>> >=20

--=20
Jani Nikula, Intel Open Source Graphics Center
