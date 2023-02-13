Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC4694D14
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D230B10E620;
	Mon, 13 Feb 2023 16:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2260710E620
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676306500; x=1707842500;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NFq4mE62ciUhFwlGmkE1/rNBcsTQtJX2wDJ/JXALgg8=;
 b=PdhwaTg2yyHAHQnMISsqHgAdlvAWADt7U6lK5JEk1XIZ9DlBpV9l41Kk
 HBD2PsGXJo4sfHJw3L++XGJtIr9zT6SjHAi+AZO7tfa9OVVJUmuzVi/ZB
 1DwYiWwjxdsumtPfirFGUiHyVPZ8FQFVg9qua98y78WkaaiM4CuEzjq/d
 6TuCYUIAVLp8g942Qbv5ypeC22199LtoL6z1RCw9i062mbhHHCxIUaghI
 76hndKVQKgPeVJ75ra7qj9fjbtdOTE2WyHzDL5mL4hah0BRUAzJv38oCX
 KyLKPyiYqegiuEYEjGVRuXBT2+pjMbN/scxWYHjAaKQCbMFj48tP/OOCI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393331059"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393331059"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:41:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="914381854"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="914381854"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:41:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+pio0PDKZ4LFW4U@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-10-ville.syrjala@linux.intel.com>
 <87mt5hv97x.fsf@intel.com> <Y+pio0PDKZ4LFW4U@intel.com>
Date: Mon, 13 Feb 2023 18:41:18 +0200
Message-ID: <878rh1v7pt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Iterate all child devs in
 intel_bios_is_port_present()
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

On Mon, 13 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Feb 13, 2023 at 06:08:50PM +0200, Jani Nikula wrote:
>> On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Instead of consulting vbt.ports[] lets just go through the
>> > whole child device list to check whether a specific port
>> > was declared by the VBT or not.
>>=20
>> Might want to mention that this does not impact the dupe checking even
>> if we look at display_devices instead of vbt.ports[].
>
> Hmm, except for the !is_port_valid() check.

D'oh!

> Should we
> maybe do that here too, or should we just think about=20
> fully exorcising invalid ports from the child device list?

Maybe the first step that fits in this series is just including the
check here too?

Otherwise, I'm divided. I kind of always wanted the VBT parsing part to
be just that, parsing what's in the VBT, and only include checks/filters
that ensure it's internally consistent. And the consumers of the data
would cross check against platforms etc.

But I guess the VBT data itself has been filled with platform specific
details, so *shrug*. I could be persuaded either way.

I guess there could be a separate filtering step. I'd hate to add
filtering to parse_general_definitions().

BR,
Jani.


>
>>=20
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++++-
>> >  1 file changed, 10 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index efe33af2259b..1af175b48ae6 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -3398,10 +3398,19 @@ bool intel_bios_is_lvds_present(struct drm_i91=
5_private *i915, u8 *i2c_pin)
>> >   */
>> >  bool intel_bios_is_port_present(struct drm_i915_private *i915, enum p=
ort port)
>> >  {
>> > +	const struct intel_bios_encoder_data *devdata;
>> > +
>> >  	if (WARN_ON(!has_ddi_port_info(i915)))
>> >  		return true;
>> >=20=20
>> > -	return i915->display.vbt.ports[port];
>> > +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, nod=
e) {
>> > +		const struct child_device_config *child =3D &devdata->child;
>> > +
>> > +		if (dvo_port_to_port(i915, child->dvo_port) =3D=3D port)
>> > +			return true;
>> > +	}
>> > +
>> > +	return false;
>> >  }
>> >=20=20
>> >  /**
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
