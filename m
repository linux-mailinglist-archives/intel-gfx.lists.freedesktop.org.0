Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A144230C9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 21:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF736E44F;
	Tue,  5 Oct 2021 19:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839B56E44F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 19:30:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="205957277"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="205957277"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 12:30:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="477803811"
Received: from gionascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.40.237])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 12:30:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, =?utf-8?Q?Jos=C3=A9?= Roberto de
 Souza <jose.souza@intel.com>, Uma Shankar <uma.shankar@intel.com>, Swati
 Sharma <swati2.sharma@intel.com>
In-Reply-To: <YVyULvQxOEembOvq@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211005175636.24669-1-jani.nikula@intel.com>
 <YVyULvQxOEembOvq@intel.com>
Date: Tue, 05 Oct 2021 22:30:04 +0300
Message-ID: <875yub1d8j.fsf@intel.com>
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

On Tue, 05 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Oct 05, 2021 at 08:56:36PM +0300, Jani Nikula wrote:
>> For the time being, neither the power sequencer nor the backlight code
>> properly support two eDP panels simultaneously. While the software
>> states will be independent, the same sets of registers will be used for
>> both eDP panels, clobbering the hardware state and leading to errors.
>>=20
>> Gracefully disable dual eDP until proper support has been added.
>>=20
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Swati Sharma <swati2.sharma@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 47 +++++++++++++++++++++++
>>  1 file changed, 47 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index f9776ca85de3..b99907c656bb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1930,6 +1930,50 @@ static int _intel_bios_max_tmds_clock(const struc=
t intel_bios_encoder_data *devd
>>  	}
>>  }
>>=20=20
>> +static enum port get_edp_port(struct drm_i915_private *i915)
>> +{
>> +	const struct intel_bios_encoder_data *devdata;
>> +	enum port port;
>> +
>> +	for_each_port(port) {
>> +		devdata =3D i915->vbt.ports[port];
>> +
>> +		if (devdata && intel_bios_encoder_supports_edp(devdata))
>> +			return port;
>> +	}
>> +
>> +	return PORT_NONE;
>> +}
>> +
>> +/*
>> + * FIXME: The power sequencer and backlight code currently do not suppo=
rt more
>> + * than one set registers, at least not on anything other than VLV/CHV.=
 It will
>> + * clobber the registers. As a temporary workaround, gracefully prevent=
 more
>> + * than one eDP from being registered.
>> + */
>> +static void sanitize_dual_edp(struct intel_bios_encoder_data *devdata,
>> +			      enum port port)
>> +{
>> +	struct drm_i915_private *i915 =3D devdata->i915;
>> +	struct child_device_config *child =3D &devdata->child;
>> +	enum port p;
>> +
>> +	/* CHV might not clobber PPS registers. */
>> +	if (IS_CHERRYVIEW(i915))
>
> vlv and chv should both behave identically. At least I don't remember
> any single eDP assumptions in the code for either.

This bit of code is not run on VLV, only CHV and DDI. It's subtle.

> Hmm. Quick glance suggest bxt/glk should handle this correctly
> as well? But the more recent platforms are certainly borked.
> Well, that's assuming the vbt related bits are correct for bxt/glk.

VLV/CHV figure out the PPS in a complicated manner, and use pipe
specific backlight. They might work.

BXT/GLK look at VBT for the pps/backlight index, but that's just the
*one* number. All the structures are set up nicely, but then they use
the same set of registers for all panels.

The recent failure mode was a really weird looking VDD warn, and it just
turned out to be two intel_pps instances using the same registers and
getting royally confused about the sw/hw states.

We'd need to figure out the per-panel pps/backlight to use from VBT, for
each panel, and then set that up.


BR,
Jani.


>
>> +		return;
>> +
>> +	p =3D get_edp_port(i915);
>> +	if (p =3D=3D PORT_NONE)
>> +		return;
>> +
>> +	drm_dbg_kms(&i915->drm, "both ports %c and %c configured as eDP, "
>> +		    "disabling port %c eDP\n", port_name(p), port_name(port),
>> +		    port_name(port));
>> +
>> +	child->device_type &=3D ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>> +	child->device_type &=3D ~DEVICE_TYPE_INTERNAL_CONNECTOR;
>> +}
>> +
>>  static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>>  {
>>  	/*
>> @@ -1987,6 +2031,9 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
>>  		    supports_typec_usb, supports_tbt,
>>  		    devdata->dsc !=3D NULL);
>>=20=20
>> +	if (is_edp)
>> +		sanitize_dual_edp(devdata, port);
>> +
>>  	if (is_dvi)
>>  		sanitize_ddc_pin(devdata, port);
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
