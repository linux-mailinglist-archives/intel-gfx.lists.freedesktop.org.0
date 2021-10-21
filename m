Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E8C436005
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBDD6E430;
	Thu, 21 Oct 2021 11:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C046E42E
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 11:12:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228879317"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="228879317"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:12:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495088663"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:12:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Shankar\, Uma" <uma.shankar@intel.com>,
 "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>, "Sharma\,
 Swati2" <swati2.sharma@intel.com>
In-Reply-To: <4757b40e1af80c28d4456e9ed1f9dd05a177f1f0.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211019114334.24643-1-jani.nikula@intel.com>
 <4757b40e1af80c28d4456e9ed1f9dd05a177f1f0.camel@intel.com>
Date: Thu, 21 Oct 2021 14:12:12 +0300
Message-ID: <87h7damy2b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/bios: gracefully disable
 dual eDP for now"
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

On Tue, 19 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Tue, 2021-10-19 at 14:43 +0300, Jani Nikula wrote:
>> This reverts commit 05734ca2a8f76c9eb3890b3c9dfc3467f03105c1.
>>=20
>> It's not graceful, instead it leads to boot time warning splats in the
>> case it is supposed to handle gracefully. Apparently the BIOS/GOP
>> enabling the port we end up skipping leads to state readout
>> problems. Back to the drawing board.
>
> Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Thanks, pushed.

BR,
Jani.


>
>>=20
>> References: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21255/bat=
-adlp-4/boot0.txt
>> Fixes: 05734ca2a8f7 ("drm/i915/bios: gracefully disable dual eDP for now=
")
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Swati Sharma <swati2.sharma@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 47 -----------------------
>>  1 file changed, 47 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index b99907c656bb..f9776ca85de3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1930,50 +1930,6 @@ static int _intel_bios_max_tmds_clock(const struc=
t intel_bios_encoder_data *devd
>>  	}
>>  }
>>=20=20
>> -static enum port get_edp_port(struct drm_i915_private *i915)
>> -{
>> -	const struct intel_bios_encoder_data *devdata;
>> -	enum port port;
>> -
>> -	for_each_port(port) {
>> -		devdata =3D i915->vbt.ports[port];
>> -
>> -		if (devdata && intel_bios_encoder_supports_edp(devdata))
>> -			return port;
>> -	}
>> -
>> -	return PORT_NONE;
>> -}
>> -
>> -/*
>> - * FIXME: The power sequencer and backlight code currently do not suppo=
rt more
>> - * than one set registers, at least not on anything other than VLV/CHV.=
 It will
>> - * clobber the registers. As a temporary workaround, gracefully prevent=
 more
>> - * than one eDP from being registered.
>> - */
>> -static void sanitize_dual_edp(struct intel_bios_encoder_data *devdata,
>> -			      enum port port)
>> -{
>> -	struct drm_i915_private *i915 =3D devdata->i915;
>> -	struct child_device_config *child =3D &devdata->child;
>> -	enum port p;
>> -
>> -	/* CHV might not clobber PPS registers. */
>> -	if (IS_CHERRYVIEW(i915))
>> -		return;
>> -
>> -	p =3D get_edp_port(i915);
>> -	if (p =3D=3D PORT_NONE)
>> -		return;
>> -
>> -	drm_dbg_kms(&i915->drm, "both ports %c and %c configured as eDP, "
>> -		    "disabling port %c eDP\n", port_name(p), port_name(port),
>> -		    port_name(port));
>> -
>> -	child->device_type &=3D ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>> -	child->device_type &=3D ~DEVICE_TYPE_INTERNAL_CONNECTOR;
>> -}
>> -
>>  static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>>  {
>>  	/*
>> @@ -2031,9 +1987,6 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
>>  		    supports_typec_usb, supports_tbt,
>>  		    devdata->dsc !=3D NULL);
>>=20=20
>> -	if (is_edp)
>> -		sanitize_dual_edp(devdata, port);
>> -
>>  	if (is_dvi)
>>  		sanitize_ddc_pin(devdata, port);
>>=20=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
