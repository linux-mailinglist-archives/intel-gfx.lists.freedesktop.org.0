Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CE954C1E0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 08:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE5410E121;
	Wed, 15 Jun 2022 06:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C96010E121
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 06:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655274635; x=1686810635;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gMYbgADp8KhQWSQ5rliQyozRabVG0Ude1ons9aRAcwY=;
 b=AK0ciJJ0ZV/SGH46AN30FEprY29GEbN9yeAm7qTH6LTI22x1fuLY6m4k
 YyITE5tG/wR6C8R0LhgXY9d9ES+F9zl82xrsfY8K0risgjHWIQtfKr4YW
 R4YFSvTt2dWdUobwYFfbHaTS7AwiYLu+jjz4cA3Jb03gEBVQwzJjzxCIl
 +YDkYKbpEDV3HnE127PmtEL1V3LVEA/uqEyDnkGQdiM6l1bHJ/0TOyAYQ
 6a8rCYNM1Z9j/SYvmGMQGUKy4NxOzgv7753+5FQEHbTXRH+uKzO2ezyDe
 Z7kPLO7BxiSqHA+/z3Zz61RZG9ocPWMdgX/UyrxZQ4rRr9To2/saZYV+j w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276427647"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="276427647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 23:30:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640817473"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 23:30:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YqOK6nSJQsrElNy2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1654870175.git.jani.nikula@intel.com>
 <34e0dd92b7f7e9076df1f01b542347e599ec6653.1654870175.git.jani.nikula@intel.com>
 <YqOK6nSJQsrElNy2@intel.com>
Date: Wed, 15 Jun 2022 09:30:31 +0300
Message-ID: <87h74mxwu0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: split ddi port parsing
 and debug printing
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

On Fri, 10 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 10, 2022 at 05:10:27PM +0300, Jani Nikula wrote:
>> Split ddi port parsing and debug printing to clarify the functional
>> parts of parse_ddi_port(), which are quite small nowadays.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 65 +++++++++++++----------
>>  1 file changed, 37 insertions(+), 28 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 59d55a99bc2e..fb5f8a9f5ab5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2561,33 +2561,13 @@ static bool is_port_valid(struct drm_i915_privat=
e *i915, enum port port)
>>  	return true;
>>  }
>>=20=20
>> -static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>> +static void print_ddi_port(const struct intel_bios_encoder_data *devdat=
a,
>> +			   enum port port)
>>  {
>>  	struct drm_i915_private *i915 =3D devdata->i915;
>>  	const struct child_device_config *child =3D &devdata->child;
>>  	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, suppo=
rts_tbt;
>>  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shi=
ft, max_tmds_clock;
>> -	enum port port;
>> -
>> -	port =3D dvo_port_to_port(i915, child->dvo_port);
>> -	if (port =3D=3D PORT_NONE)
>> -		return;
>> -
>> -	if (!is_port_valid(i915, port)) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "VBT reports port %c as supported, but that can't be true: skipp=
ing\n",
>> -			    port_name(port));
>> -		return;
>> -	}
>> -
>> -	if (i915->vbt.ports[port]) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "More than one child device for port %c in VBT, using the first.=
\n",
>> -			    port_name(port));
>> -		return;
>> -	}
>> -
>> -	sanitize_device_type(devdata, port);
>>=20=20
>>  	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
>>  	is_dp =3D intel_bios_encoder_supports_dp(devdata);
>> @@ -2605,12 +2585,6 @@ static void parse_ddi_port(struct intel_bios_enco=
der_data *devdata)
>>  		    supports_typec_usb, supports_tbt,
>>  		    devdata->dsc !=3D NULL);
>>=20=20
>> -	if (is_dvi)
>> -		sanitize_ddc_pin(devdata, port);
>> -
>> -	if (is_dp)
>> -		sanitize_aux_ch(devdata, port);
>> -
>>  	hdmi_level_shift =3D _intel_bios_hdmi_level_shift(devdata);
>>  	if (hdmi_level_shift >=3D 0) {
>>  		drm_dbg_kms(&i915->drm,
>> @@ -2642,6 +2616,41 @@ static void parse_ddi_port(struct intel_bios_enco=
der_data *devdata)
>>  		drm_dbg_kms(&i915->drm,
>>  			    "Port %c VBT DP max link rate: %d\n",
>>  			    port_name(port), dp_max_link_rate);
>> +}
>> +
>> +static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>> +{
>> +	struct drm_i915_private *i915 =3D devdata->i915;
>> +	const struct child_device_config *child =3D &devdata->child;
>> +	enum port port;
>> +
>> +	port =3D dvo_port_to_port(i915, child->dvo_port);
>> +	if (port =3D=3D PORT_NONE)
>> +		return;
>> +
>> +	if (!is_port_valid(i915, port)) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "VBT reports port %c as supported, but that can't be true: skipp=
ing\n",
>> +			    port_name(port));
>> +		return;
>> +	}
>> +
>> +	if (i915->vbt.ports[port]) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "More than one child device for port %c in VBT, using the first.=
\n",
>> +			    port_name(port));
>> +		return;
>> +	}
>> +
>> +	sanitize_device_type(devdata, port);
>> +
>> +	print_ddi_port(devdata, port);
>
> Maybe put the print to the end, in case we want to start printing
> something about the ddc/aux stuff?

At least in this patch I wanted to keep the order the same.

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> +
>> +	if (intel_bios_encoder_supports_dvi(devdata))
>> +		sanitize_ddc_pin(devdata, port);
>> +
>> +	if (intel_bios_encoder_supports_dp(devdata))
>> +		sanitize_aux_ch(devdata, port);
>>=20=20
>>  	i915->vbt.ports[port] =3D devdata;
>>  }
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
