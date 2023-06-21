Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BFB737C7F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E8D10E3E9;
	Wed, 21 Jun 2023 07:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD3D10E3E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687333667; x=1718869667;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wPbFPfAgQQM+vB9emW6O3FokM4ybeOx1zoYtHMm5BV4=;
 b=JKMvXdbzL+DROByTHvU/Kw9OvXrp4tlSGi3vOXvjLjBEyzAadFAXvKQk
 6QRSx3yyWCryx9mPSZy4DLfGsiUcVamZeVF6MgscXTRl0vx/Vh2BEkmu7
 qjausfjNl5RCTGmy9S5c4+hzgEQsryHRJnmVego04oczPlgcr3BNwboCW
 iJwg4wThCbi5c9esNOIoBAL1w3S0Ep2N5d6s7RjSQBtYZ/NeaKUE0NE8O
 wD4Mg24BiyiiA8hV0I5r2vbFH4nBsK068qOln9JcgTpWhJGUZxUIwyHgZ
 skMUTBYNpRiNarwk59ophadIdbq3caBzHPR5Ta32HlLP/XTMdxOlUl68h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357595239"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="357595239"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:47:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784385318"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="784385318"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:47:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87cz1pfeah.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-3-ville.syrjala@linux.intel.com>
 <87cz1pfeah.fsf@intel.com>
Date: Wed, 21 Jun 2023 10:47:16 +0300
Message-ID: <87a5wtfe9n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Only populate aux_ch is
 really needed
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

On Wed, 21 Jun 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Mixing VBT based AUX CH with platform defaults seems like
>> a recipe for conflicts. Let's only populate AUX CH if we
>> absolutely need it, that is only if we are dealing with
>> a DP output or a TC port (which need it due to some power
>> well shenanigans).
>>
>> TODO: double check that real VBTs do in fact populate
>>       the AUX CH for HDMI TC legacy ports...
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Typo in subject s/is/if/ ?

>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c  |  1 -
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
>>  2 files changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i=
915/display/g4x_hdmi.c
>> index c1fd13bdc9d2..634b14116d9d 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> @@ -775,6 +775,5 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>>=20=20
>>  	intel_infoframe_init(dig_port);
>>=20=20
>> -	dig_port->aux_ch =3D intel_dp_aux_ch(intel_encoder);
>>  	intel_hdmi_init_connector(dig_port, intel_connector);
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 6cb24a472a9b..662b5ceef3c8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -4676,6 +4676,14 @@ static bool port_strap_detected(struct drm_i915_p=
rivate *i915, enum port port)
>>  	}
>>  }
>>=20=20
>> +static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
>> +{
>> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>> +
>> +	return init_dp || intel_phy_is_tc(i915, phy);
>> +}
>> +
>>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>>  {
>>  	struct intel_digital_port *dig_port;
>> @@ -4929,7 +4937,9 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>>=20=20
>>  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>>  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
>> -	dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
>> +
>> +	if (need_aux_ch(encoder, init_dp))
>> +		dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
>>=20=20
>>  	if (intel_phy_is_tc(dev_priv, phy)) {
>>  		bool is_legacy =3D

--=20
Jani Nikula, Intel Open Source Graphics Center
