Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBC05AB3E1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3729910E86F;
	Fri,  2 Sep 2022 14:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F189810E86F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662129778; x=1693665778;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=O+42Rls4nbLvHoYZz8GLqwOdQRqgtFgpASLYYEJ2Zlk=;
 b=eugYdEsfi9+VxCq4ZTPQm1rpBy/fE+O6BA+In+ffG4TT6V/aH1V3tgOe
 i8SRWdfU5m7IFBipjm4at/8nGwhepG6NujrrrV4SrcJVIv9USGukMd4jg
 cCMunhAUbq0jiXjQ3Vz3OxfqoEtPewzryXy4RCqw801yGDt/6w6jqh8kV
 J0KBwWL6YB/aJ9CGHJps5oj4Ewe6zpWhjeXkWonbROVnq7xy3MxmKw171
 ZbvzxY+kDamoS0tdCZytP3xDfd+Sjjc6jFQFcmG74RS9mPLabtY7x/han
 f2j8kmT24IkM4thywc+20zQa/F052pdqlJu4SrEmWTYWgHBh/Xb8qxtR2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="294733662"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="294733662"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:42:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674375528"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:42:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <YxB6kH7Tlq2nrpL0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-13-ville.syrjala@linux.intel.com>
 <YtaJ4ThPAKPzBc1a@intel.com> <YxB6kH7Tlq2nrpL0@intel.com>
Date: Fri, 02 Sep 2022 17:42:44 +0300
Message-ID: <87r10tdehn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Parse DP/eDP max lane count
 from VBT
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

On Thu, 01 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jul 19, 2022 at 06:39:29AM -0400, Rodrigo Vivi wrote:
>> On Fri, Jul 15, 2022 at 11:20:44PM +0300, Ville Syrjala wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > Limit the DP lane count based on the new VBT DP/eDP max
>> > lane count field.
>> >=20
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
>> >  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
>> >  drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++++++++++++-
>> >  3 files changed, 29 insertions(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index cd86b65055ef..d8063c329b3a 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2489,6 +2489,14 @@ static int _intel_bios_dp_max_link_rate(const s=
truct intel_bios_encoder_data *de
>> >  		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_ra=
te);
>> >  }
>> >=20=20
>> > +static int _intel_bios_dp_max_lane_count(const struct intel_bios_enco=
der_data *devdata)
>> > +{
>> > +	if (!devdata || devdata->i915->vbt.version < 244)
>> > +		return 0;
>> > +
>> > +	return devdata->child.dp_max_lane_count + 1;

They just won't learn that non-zero is a really crappy "default" to
set. *sigh*

>> > +}
>> > +
>> >  static void sanitize_device_type(struct intel_bios_encoder_data *devd=
ata,
>> >  				 enum port port)
>> >  {
>> > @@ -3674,6 +3682,14 @@ int intel_bios_dp_max_link_rate(struct intel_en=
coder *encoder)
>> >  	return _intel_bios_dp_max_link_rate(devdata);
>> >  }
>> >=20=20
>> > +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
>> > +{
>> > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> > +	const struct intel_bios_encoder_data *devdata =3D i915->vbt.ports[en=
coder->port];
>> > +
>> > +	return _intel_bios_dp_max_lane_count(devdata);
>> > +}
>>=20
>> do we really need 2 functions here since this one is small and we don't =
have any
>> bit switches and all?!
>> or do you plan to reuse this anywhere else later?
>
> This is modelled after the other similar functions. I think Jani had
> some plans for cleaning up a lot of this stuff, but dunno how far we
> are on that path.

A bit stalled. Eventually I'd like all encoders to have encoder->devdata
and callers would pass that instead of encoder, and we wouldn't have
this i915->vbt.ports[encoder->port]; lookup.

But the first function could be used in print_ddi_port() for printing
the info while the latter couldn't. So I kinda prefer the split.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
>>=20
>> > +
>> >  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
>> >  {
>> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/d=
rm/i915/display/intel_bios.h
>> > index e47582b0de0a..e375405a7828 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> > @@ -258,6 +258,7 @@ bool intel_bios_get_dsc_params(struct intel_encode=
r *encoder,
>> >  int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
>> >  int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
>> >  int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
>> > +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
>> >  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
>> >  bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915=
, enum port port);
>> >  bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum=
 port port);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c
>> > index 32292c0be2bd..0370c4c105dc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -286,11 +286,22 @@ static int intel_dp_max_common_rate(struct intel=
_dp *intel_dp)
>> >  	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1=
);
>> >  }
>> >=20=20
>> > +static int intel_dp_max_source_lane_count(struct intel_digital_port *=
dig_port)
>> > +{
>> > +	int vbt_max_lanes =3D intel_bios_dp_max_lane_count(&dig_port->base);
>> > +	int max_lanes =3D dig_port->max_lanes;
>> > +
>> > +	if (vbt_max_lanes)
>> > +		max_lanes =3D min(max_lanes, vbt_max_lanes);
>> > +
>> > +	return max_lanes;
>> > +}
>> > +
>> >  /* Theoretical max between source and sink */
>> >  static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
>> >  {
>> >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>> > -	int source_max =3D dig_port->max_lanes;
>> > +	int source_max =3D intel_dp_max_source_lane_count(dig_port);
>> >  	int sink_max =3D intel_dp->max_sink_lane_count;
>> >  	int fia_max =3D intel_tc_port_fia_max_lane_count(dig_port);
>> >  	int lttpr_max =3D drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common=
_caps);
>> > --=20
>> > 2.35.1
>> >=20

--=20
Jani Nikula, Intel Open Source Graphics Center
