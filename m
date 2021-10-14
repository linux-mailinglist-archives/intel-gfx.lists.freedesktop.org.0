Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FCC42DA6E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 15:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C9D6EAD4;
	Thu, 14 Oct 2021 13:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A442A6EAD4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 13:31:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="208478427"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="208478427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 06:31:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491994964"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 06:31:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Shankar\, Uma" <uma.shankar@intel.com>,
 "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>, "Sharma\,
 Swati2" <swati2.sharma@intel.com>
In-Reply-To: <28fd302c6dd79caf88cfde6c9bd45ae2c7c8312b.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211005175636.24669-1-jani.nikula@intel.com>
 <995bbd7b0d68a8c22d6192c92ec5a8bedbfcd18f.camel@intel.com>
 <8735pf1a2p.fsf@intel.com>
 <28fd302c6dd79caf88cfde6c9bd45ae2c7c8312b.camel@intel.com>
Date: Thu, 14 Oct 2021 16:31:23 +0300
Message-ID: <87bl3rwx5g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: gracefully disable dual eDP
 for now
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

On Tue, 05 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Tue, 2021-10-05 at 23:38 +0300, Jani Nikula wrote:
>> On Tue, 05 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
>> > On Tue, 2021-10-05 at 20:56 +0300, Jani Nikula wrote:
>> > > For the time being, neither the power sequencer nor the backlight co=
de
>> > > properly support two eDP panels simultaneously. While the software
>> > > states will be independent, the same sets of registers will be used =
for
>> > > both eDP panels, clobbering the hardware state and leading to errors.
>> > >=20
>> > > Gracefully disable dual eDP until proper support has been added.
>> > >=20
>> > > Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> > > Cc: Uma Shankar <uma.shankar@intel.com>
>> > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > > Cc: Swati Sharma <swati2.sharma@intel.com>
>> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_bios.c | 47 ++++++++++++++++++++=
+++
>> > >  1 file changed, 47 insertions(+)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu=
/drm/i915/display/intel_bios.c
>> > > index f9776ca85de3..b99907c656bb 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > > @@ -1930,6 +1930,50 @@ static int _intel_bios_max_tmds_clock(const s=
truct intel_bios_encoder_data *devd
>> > >  	}
>> > >  }
>> > >=20=20
>> > > +static enum port get_edp_port(struct drm_i915_private *i915)
>> > > +{
>> > > +	const struct intel_bios_encoder_data *devdata;
>> > > +	enum port port;
>> > > +
>> > > +	for_each_port(port) {
>> > > +		devdata =3D i915->vbt.ports[port];
>> > > +
>> > > +		if (devdata && intel_bios_encoder_supports_edp(devdata))
>> > > +			return port;
>> > > +	}
>> > > +
>> > > +	return PORT_NONE;
>> > > +}
>> > > +
>> > > +/*
>> > > + * FIXME: The power sequencer and backlight code currently do not s=
upport more
>> > > + * than one set registers, at least not on anything other than VLV/=
CHV. It will
>> > > + * clobber the registers. As a temporary workaround, gracefully pre=
vent more
>> > > + * than one eDP from being registered.
>> > > + */
>> > > +static void sanitize_dual_edp(struct intel_bios_encoder_data *devda=
ta,
>> > > +			      enum port port)
>> > > +{
>> > > +	struct drm_i915_private *i915 =3D devdata->i915;
>> > > +	struct child_device_config *child =3D &devdata->child;
>> > > +	enum port p;
>> > > +
>> > > +	/* CHV might not clobber PPS registers. */
>> > > +	if (IS_CHERRYVIEW(i915))
>> > > +		return;
>> > > +
>> > > +	p =3D get_edp_port(i915);
>> > > +	if (p =3D=3D PORT_NONE)
>> > > +		return;
>> > > +
>> > > +	drm_dbg_kms(&i915->drm, "both ports %c and %c configured as eDP, "
>> > > +		    "disabling port %c eDP\n", port_name(p), port_name(port),
>> > > +		    port_name(port));
>> > > +
>> > > +	child->device_type &=3D ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>> >=20
>> > Why also cleaning the DEVICE_TYPE_DISPLAYPORT_OUTPUT bit? The rest lgt=
m.
>>=20
>> Could've leaned one way or the other, but do we really want to
>> initialize a regular DP on the port?
>
> Yeah, lets go without.
>
> Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Thanks, pushed with Swati's Tested-by.

BR,
Jani.


>
>>=20
>> BR,
>> Jani.
>>=20
>> >=20
>> > > +	child->device_type &=3D ~DEVICE_TYPE_INTERNAL_CONNECTOR;
>> > > +}
>> > > +
>> > >  static bool is_port_valid(struct drm_i915_private *i915, enum port =
port)
>> > >  {
>> > >  	/*
>> > > @@ -1987,6 +2031,9 @@ static void parse_ddi_port(struct drm_i915_pri=
vate *i915,
>> > >  		    supports_typec_usb, supports_tbt,
>> > >  		    devdata->dsc !=3D NULL);
>> > >=20=20
>> > > +	if (is_edp)
>> > > +		sanitize_dual_edp(devdata, port);
>> > > +
>> > >  	if (is_dvi)
>> > >  		sanitize_ddc_pin(devdata, port);
>> > >=20=20
>> >=20
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
