Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E13D068D2E2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 10:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C4F10E074;
	Tue,  7 Feb 2023 09:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9998510E491
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 09:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675762418; x=1707298418;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=shxlFdbo+IQeq4jMbAy0V6h25PVc3TvINQxOt1PJoig=;
 b=ZhxDGWzRWH6I792xBtf+vttzqhP4wroBcQjArNOaWWtklABGh0frTAh1
 ZoyKgjkCUrwKdODe2QP5N49HJxmAtefq5l5h+UAnFcGN2tIeU2iGtabyW
 og2lOXQXiAjDzN2XlearAz1TD/mfZVSwCLcGqAXziYqDoGRfsOckAHu+t
 rMehjuQBhRCqz08fBUEWe5MKpI6h7pANDReLywG7QO3qqkqLqOaQhK2X1
 f0p6A34ELXm2KhJUxtP8FSwnK64p3zPzKNHTQpn8jKQIKBo8WQelgylT5
 tPgX9/AJzc61HJqiGQ6sCofEV3hzhpJkjO1zK2sLWe/nFamZJ6CvaYFyw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="327149367"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="327149367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:33:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="699194571"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="699194571"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:33:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+IUV8OBG0P2mt2b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-2-ville.syrjala@linux.intel.com>
 <877cwtzw93.fsf@intel.com> <Y+IUV8OBG0P2mt2b@intel.com>
Date: Tue, 07 Feb 2023 11:33:34 +0200
Message-ID: <87wn4tyg41.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix VBT DSI DVO port handling
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

On Tue, 07 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Feb 07, 2023 at 10:59:36AM +0200, Jani Nikula wrote:
>> On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Turns out modern (icl+) VBTs still declare their DSI ports
>> > as MIPI-A and MIPI-C despite the PHYs now being A and B.
>> > Remap appropriately to allow the panels declared as MIPI-C
>> > to work.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 33 ++++++++++++++++-------
>> >  1 file changed, 23 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index e6ca51232dcf..06a2d98d2277 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2467,6 +2467,22 @@ static enum port dvo_port_to_port(struct drm_i9=
15_private *i915,
>> >  					  dvo_port);
>> >  }
>> >=20=20
>> > +static enum port
>> > +dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
>> > +{
>> > +	switch (dvo_port) {
>> > +	case DVO_PORT_MIPIA:
>> > +		return PORT_A;
>>=20
>> I think I would add:
>>=20
>> 	case DVO_PORT_MIPIB:
>> 		if (DISPLAY_VER(i915) >=3D 11)
>> 			return PORT_B;
>> 		else
>> 			return PORT_NONE;
>>=20
>> just in case.
>
> Looks like Windows doesn't expect MIPI-B to be used ever.
> So I'm tempted to leave it out as well.

Okay then. $EXPLETIVE.

J.

>
>>=20
>> With that,
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> > +	case DVO_PORT_MIPIC:
>> > +		if (DISPLAY_VER(i915) >=3D 11)
>> > +			return PORT_B;
>> > +		else
>> > +			return PORT_C;
>> > +	default:
>> > +		return PORT_NONE;
>> > +	}
>> > +}
>> > +
>> >  static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
>> >  {
>> >  	switch (vbt_max_link_rate) {
>> > @@ -3442,19 +3458,16 @@ bool intel_bios_is_dsi_present(struct drm_i915=
_private *i915,
>> >=20=20
>> >  		dvo_port =3D child->dvo_port;
>> >=20=20
>> > -		if (dvo_port =3D=3D DVO_PORT_MIPIA ||
>> > -		    (dvo_port =3D=3D DVO_PORT_MIPIB && DISPLAY_VER(i915) >=3D 11) ||
>> > -		    (dvo_port =3D=3D DVO_PORT_MIPIC && DISPLAY_VER(i915) < 11)) {
>> > -			if (port)
>> > -				*port =3D dvo_port - DVO_PORT_MIPIA;
>> > -			return true;
>> > -		} else if (dvo_port =3D=3D DVO_PORT_MIPIB ||
>> > -			   dvo_port =3D=3D DVO_PORT_MIPIC ||
>> > -			   dvo_port =3D=3D DVO_PORT_MIPID) {
>> > +		if (dsi_dvo_port_to_port(i915, dvo_port) =3D=3D PORT_NONE) {
>>=20
>> Yeah that monstrosity should've been a separate function a long time ago!
>>=20
>> >  			drm_dbg_kms(&i915->drm,
>> >  				    "VBT has unsupported DSI port %c\n",
>> >  				    port_name(dvo_port - DVO_PORT_MIPIA));
>> > +			continue;
>> >  		}
>> > +
>> > +		if (port)
>> > +			*port =3D dsi_dvo_port_to_port(i915, dvo_port);
>> > +		return true;
>> >  	}
>> >=20=20
>> >  	return false;
>> > @@ -3539,7 +3552,7 @@ bool intel_bios_get_dsc_params(struct intel_enco=
der *encoder,
>> >  		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
>> >  			continue;
>> >=20=20
>> > -		if (child->dvo_port - DVO_PORT_MIPIA =3D=3D encoder->port) {
>> > +		if (dsi_dvo_port_to_port(i915, child->dvo_port) =3D=3D encoder->por=
t) {
>> >  			if (!devdata->dsc)
>> >  				return false;
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
