Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3110360FF57
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 19:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5F710E6AF;
	Thu, 27 Oct 2022 17:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA53010E6B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666891988; x=1698427988;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=j7ZGxJaC4WLHqCzQAANm1wQNRKqS91MWqszoBYz0Gz0=;
 b=ElO3r0gBzRNcTJIVvDJwvpYvC/V//E4jMW8s3hRxsmt5T0zrvUzFPRd6
 M1by7T/DtPr5tpPTJerM03mxZ+Tt+IqTVGgh8Me0JYG9aOvUzlI4VAUZm
 HEbVefb6hPLTaoiON0J0bHQ040+FGOacq5UT+eAbymShq1y8/cAg3hfE8
 MC0dgOgiB6H/WRccM1A4imJxqT48S0ElXPDL8H7L0NOa/BPUPLXOmT8wE
 a3pOMZNLzlnVVrLSQyD4ITflfnBVErXZlOZEGBdiO/gBsMPc4kVzkinGT
 FqYzRSoRcOjLGnCLYQTcSoeNJBaCUd9vnhdD1UZoGM0iZ3DTBC07pgPR+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295702413"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="295702413"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:33:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="663703451"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="663703451"
Received: from ekalugin-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.137])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:33:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y1qbv7RUZehBt4fy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-3-ville.syrjala@linux.intel.com>
 <87pmedcp07.fsf@intel.com> <Y1qake1Ow8eOCj6n@intel.com>
 <Y1qbv7RUZehBt4fy@intel.com>
Date: Thu, 27 Oct 2022 20:33:04 +0300
Message-ID: <87a65h9nov.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/sdvo: Setup DDC fully before
 output init
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Oct 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 27, 2022 at 05:49:53PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Thu, Oct 27, 2022 at 05:36:24PM +0300, Jani Nikula wrote:
>> > On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wro=
te:
>> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >
>> > > Call intel_sdvo_select_ddc_bus() before initializing any
>> > > of the outputs. And before that is functional (assuming no VBT)
>> > > we have to set up the controlled_outputs thing. Otherwise DDC
>> > > won't be functional during the output init but LVDS really
>> > > needs it for the fixed mode setup.
>> > >
>> > > Note that the whole multi output support still looks very
>> > > bogus, and more work will be needed to make it correct.
>> > > But for now this should at least fix the LVDS EDID fixed mode
>> > > setup.
>> > >
>> > > Cc: stable@vger.kernel.org
>> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
>> > > Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuf=
f")
>> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.co=
m>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_sdvo.c | 31 +++++++++-----------=
---
>> > >  1 file changed, 12 insertions(+), 19 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu=
/drm/i915/display/intel_sdvo.c
>> > > index c6200a91a777..ccf81d616cb4 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> > > @@ -2746,13 +2746,10 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel=
_sdvo, int device)
>> > >  	if (!intel_sdvo_connector)
>> > >  		return false;
>> > >=20=20
>> > > -	if (device =3D=3D 0) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_TMDS0;
>> > > +	if (device =3D=3D 0)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS0;
>> > > -	} else if (device =3D=3D 1) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_TMDS1;
>> > > +	else if (device =3D=3D 1)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS1;
>> > > -	}
>> > >=20=20
>> > >  	intel_connector =3D &intel_sdvo_connector->base;
>> > >  	connector =3D &intel_connector->base;
>> > > @@ -2807,7 +2804,6 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sd=
vo, int type)
>> > >  	encoder->encoder_type =3D DRM_MODE_ENCODER_TVDAC;
>> > >  	connector->connector_type =3D DRM_MODE_CONNECTOR_SVIDEO;
>> > >=20=20
>> > > -	intel_sdvo->controlled_output |=3D type;
>> > >  	intel_sdvo_connector->output_flag =3D type;
>> > >=20=20
>> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < =
0) {
>> > > @@ -2848,13 +2844,10 @@ intel_sdvo_analog_init(struct intel_sdvo *in=
tel_sdvo, int device)
>> > >  	encoder->encoder_type =3D DRM_MODE_ENCODER_DAC;
>> > >  	connector->connector_type =3D DRM_MODE_CONNECTOR_VGA;
>> > >=20=20
>> > > -	if (device =3D=3D 0) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_RGB0;
>> > > +	if (device =3D=3D 0)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB0;
>> > > -	} else if (device =3D=3D 1) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_RGB1;
>> > > +	else if (device =3D=3D 1)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB1;
>> > > -	}
>> > >=20=20
>> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < =
0) {
>> > >  		kfree(intel_sdvo_connector);
>> > > @@ -2884,13 +2877,10 @@ intel_sdvo_lvds_init(struct intel_sdvo *inte=
l_sdvo, int device)
>> > >  	encoder->encoder_type =3D DRM_MODE_ENCODER_LVDS;
>> > >  	connector->connector_type =3D DRM_MODE_CONNECTOR_LVDS;
>> > >=20=20
>> > > -	if (device =3D=3D 0) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_LVDS0;
>> > > +	if (device =3D=3D 0)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS0;
>> > > -	} else if (device =3D=3D 1) {
>> > > -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_LVDS1;
>> > > +	else if (device =3D=3D 1)
>> > >  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS1;
>> > > -	}
>> > >=20=20
>> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < =
0) {
>> > >  		kfree(intel_sdvo_connector);
>> > > @@ -2945,8 +2935,14 @@ static u16 intel_sdvo_filter_output_flags(u16=
 flags)
>> > >  static bool
>> > >  intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
>> > >  {
>> > > +	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.de=
v);
>> > > +
>> > >  	flags =3D intel_sdvo_filter_output_flags(flags);
>> > >=20=20
>> > > +	intel_sdvo->controlled_output =3D flags;
>> > > +
>> > > +	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
>> >=20
>> > AFAICT the ->controlled_outputs member could now be removed and just
>> > passed by value here.
>>=20
>> Hmm. True. Though the whole thing is utter garbage anyway.
>> intel_sdvo_guess_ddc_bus() really expects controlled_outputs
>> to contain only a single bit. I guess it kinda works by luck
>> most or the time, at least for single output devices.
>> I suppose I can still include the controlled_outputs nukage
>> into this patch.
>
> On second though I think I'll do it as a followup. Less chance
> of backport conflicts that way.

That's completely fine, it was just an observation.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
