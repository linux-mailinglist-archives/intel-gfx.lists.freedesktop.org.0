Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F5C425422
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 15:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021226F495;
	Thu,  7 Oct 2021 13:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4142E6F495
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 13:32:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="289749849"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="289749849"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 06:32:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488990193"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 06:32:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YV7yDndPDHlrgPM7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007105727.18439-1-jani.nikula@intel.com>
 <YV7yDndPDHlrgPM7@intel.com>
Date: Thu, 07 Oct 2021 16:31:59 +0300
Message-ID: <877depyn8w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: take LTTPR into account in
 128b/132b rates
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

On Thu, 07 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 07, 2021 at 01:57:27PM +0300, Jani Nikula wrote:
>> Limit the supported UHBR rates based on the repeater support, if there
>> are repeaters.
>>=20
>> This should be done in DP helper level, but that requires an overhaul of
>> the LTTPR handling, as the max rate is not enough to represent how
>> 128b/132b rates may be masked along the way.
>>=20
>> Curiously, the spec says:
>>=20
>> * Shall be cleared to 00h when operating in 8b/10b Link Layer.
>>=20
>> * Each LTTPR on the way back to the DPTX shall clear the bits that do
>>   not correspond to the LTTPR's current bit rate.
>>=20
>> It's rather vague if we can reliably use the field at this time due to
>> the wording "operating" and "current". But it would seem bizarre to have
>> to wait until trying to operate a 128b/132b link layer at a certain bit
>> rate to figure this out.
>
> The DP spec does kind of have that silly idea that you can
> just arbitraily reduce you link params during link training.
> Doesn't work like that of course for us since we alreday told
> userspace "Sure, I'll light up your display at this resolution".
>
> Hopefully this doesn't depend on that. Although I suppose
> we could sort of deal with it with the normal "link training
> failed -> reduce max params and signal userspace to do something"=20
> approach.

*sigh*

>
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 74a657ae131a..5824b7d9f4a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -140,6 +140,9 @@ static void intel_dp_set_sink_rates(struct intel_dp =
*intel_dp)
>>  		return;
>>  	}
>>=20=20
>> +	/*
>> +	 * Sink rates for 8b/10b.
>> +	 */
>>  	max_rate =3D drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RA=
TE]);
>>  	max_lttpr_rate =3D drm_dp_lttpr_max_link_rate(intel_dp->lttpr_common_c=
aps);
>>  	if (max_lttpr_rate)
>> @@ -163,6 +166,20 @@ static void intel_dp_set_sink_rates(struct intel_dp=
 *intel_dp)
>>  		drm_dp_dpcd_readb(&intel_dp->aux,
>>  				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
>>=20=20
>> +		if (drm_dp_lttpr_count(intel_dp->lttpr_common_caps)) {
>> +			/* We have a repeater */
>> +			if (intel_dp->lttpr_common_caps[0] >=3D 0x20 &&
>> +			    intel_dp->lttpr_common_caps[DP_MAIN_LINK_CHANNEL_CODING_PHY_REPE=
ATER -
>> +							DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] &
>> +			    DP_PHY_REPEATER_128B132B_SUPPORTED) {
>> +				/* Repeater supports 128b/132b, valid UHBR rates */
>> +				uhbr_rates &=3D intel_dp->lttpr_common_caps[DP_PHY_REPEATER_128B132=
B_RATES - DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV];
>
> Didn't we have something to hide that
> -DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV stuff?

We have but it's hidden as dp_lttpr_common_cap() in
drm_dp_helper.c. Long term I'd rather figure out a way to move this from
the driver to helpers instead of exposing that function. But I guess we
should first see how this fares in the real world.

>
> Looks more or less correct to me. I guess we'll find out eeventually how
> the spec has been interpreted.

Fingers crossed!

>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>
>> +			} else {
>> +				/* Does not support 128b/132b */
>> +				uhbr_rates =3D 0;
>> +			}
>> +		}
>> +
>>  		if (uhbr_rates & DP_UHBR10)
>>  			intel_dp->sink_rates[i++] =3D 1000000;
>>  		if (uhbr_rates & DP_UHBR13_5)
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
