Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CEF8CD79C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4874710E8CA;
	Thu, 23 May 2024 15:48:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KU2Spw9h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2934710E8CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716479309; x=1748015309;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HxPqVmjxhC5tnNTBv0WB8nrn6b0U9W3lctPSP27/fzc=;
 b=KU2Spw9hX+ZdAtM2WIl0+h+ShCJ+X8lipPRL34DvyUdUsp6bXWydGUcq
 7cChb11xsvIk5+ZKh3oUm8pFI9v9zTZjr5eGTQyXLBKC65J0qwJD/FlEs
 3luwZWrd/i8hp4nKVu1bLnxpBcADsmdCS5CYoo98ZQ/04moI5F7diosbZ
 UYMINnAdoauOmFIBD622nYLPLcxgO4hlmuZtOYJUKyPaCuuOmG3pk4Z+V
 M5qdNhC5DJuuuppPsG2LPmuS+EenIFyobyr5x5D7kFemG8WzD3HE8gA3b
 5Mhix/ewOGVv0Hd0YKU2dRAO1KlXLqmWebVltwD+C2AqTmS6PzRPH3HTh Q==;
X-CSE-ConnectionGUID: L8ManD1oTReQunyPpjXdRw==
X-CSE-MsgGUID: 2xLzHaGISPWRjxTyvCQ8jw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16595261"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="16595261"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:48:28 -0700
X-CSE-ConnectionGUID: LQRUE9DxTyqWKbzceltLQA==
X-CSE-MsgGUID: 4AwzQ4NYSM6JnwVBeZiXdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="56945704"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:48:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Imre Deak
 <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 04/21] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
In-Reply-To: <Zk44GKykmIQ_fpWi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-5-imre.deak@intel.com>
 <Zk44GKykmIQ_fpWi@intel.com>
Date: Thu, 23 May 2024 18:48:23 +0300
Message-ID: <8734q8pm0o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 22 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 20, 2024 at 09:58:02PM +0300, Imre Deak wrote:
>> Reduce the indentation in intel_dp_get_link_train_fallback_values() by
>> adding separate helpers to reduce the link rate and lane count. Also
>> simplify things by passing crtc_state to the function.
>>=20
>> This also prepares for later patches in the patchset adding a limitation
>> on how the link params are reduced.
>>=20
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 82 ++++++++++++-------
>>  1 file changed, 51 insertions(+), 31 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 4db293f256896..edc970036866a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -1109,11 +1109,37 @@ static bool intel_dp_can_link_train_fallback_for=
_edp(struct intel_dp *intel_dp,
>>  	return true;
>>  }
>>=20=20
>> +static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
>> +{
>> +	int rate_index;
>> +	int new_rate;
>> +
>> +	rate_index =3D intel_dp_rate_index(intel_dp->common_rates,
>> +					 intel_dp->num_common_rates,
>> +					 current_rate);
>> +
>> +	if (rate_index <=3D 0)
>> +		return -1;
>> +
>> +	new_rate =3D intel_dp_common_rate(intel_dp, rate_index - 1);
>> +
>> +	return new_rate;
>
> This is structured as
>
> if (bad)
> 	fail;
> success;
>
>> +}
>> +
>> +static int reduce_lane_count(struct intel_dp *intel_dp, int current_lan=
e_count)
>> +{
>> +	if (current_lane_count > 1)
>> +		return current_lane_count >> 1;
>> +
>> +	return -1;
>
> whereas this is
>
> if (ok)
> 	success;
> fail;
>
> I'd rearrange one of them so the logic is the same way around in both.

Usually failures in if branches with early returns and happy day
scenario with the least indentation.

BR,
Jani.



>
> Otherwise lgtm
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> +}
>> +
>>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *int=
el_dp,
>> -						   int link_rate, u8 lane_count)
>> +						   const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> -	int index;
>> +	int new_link_rate;
>> +	int new_lane_count;
>>=20=20
>>  	/*
>>  	 * TODO: Enable fallback on MST links once MST link compute can handle
>> @@ -1131,36 +1157,32 @@ static int intel_dp_get_link_train_fallback_valu=
es(struct intel_dp *intel_dp,
>>  		return 0;
>>  	}
>>=20=20
>> -	index =3D intel_dp_rate_index(intel_dp->common_rates,
>> -				    intel_dp->num_common_rates,
>> -				    link_rate);
>> -	if (index > 0) {
>> -		if (intel_dp_is_edp(intel_dp) &&
>> -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
>> -							      intel_dp_common_rate(intel_dp, index - 1),
>> -							      lane_count)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "Retrying Link training for eDP with same parameters\n");
>> -			return 0;
>> -		}
>> -		intel_dp->link.max_rate =3D intel_dp_common_rate(intel_dp, index - 1);
>> -		intel_dp->link.max_lane_count =3D lane_count;
>> -	} else if (lane_count > 1) {
>> -		if (intel_dp_is_edp(intel_dp) &&
>> -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
>> -							      intel_dp_max_common_rate(intel_dp),
>> -							      lane_count >> 1)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "Retrying Link training for eDP with same parameters\n");
>> -			return 0;
>> -		}
>> -		intel_dp->link.max_rate =3D intel_dp_max_common_rate(intel_dp);
>> -		intel_dp->link.max_lane_count =3D lane_count >> 1;
>> -	} else {
>> +	new_lane_count =3D crtc_state->lane_count;
>> +	new_link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
>> +	if (new_link_rate < 0) {
>> +		new_lane_count =3D reduce_lane_count(intel_dp, crtc_state->lane_count=
);
>> +		new_link_rate =3D intel_dp_max_common_rate(intel_dp);
>> +	}
>> +
>> +	if (new_lane_count < 0) {
>>  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>>  		return -1;
>>  	}
>>=20=20
>> +	if (intel_dp_is_edp(intel_dp) &&
>> +	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate,=
 new_lane_count)) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Retrying Link training for eDP with same parameters\n");
>> +		return 0;
>> +	}
>> +
>> +	drm_dbg_kms(&i915->drm, "Reducing link parameters from %dx%d to %dx%d\=
n",
>> +		    crtc_state->lane_count, crtc_state->port_clock,
>> +		    new_lane_count, new_link_rate);
>> +
>> +	intel_dp->link.max_rate =3D new_link_rate;
>> +	intel_dp->link.max_lane_count =3D new_lane_count;
>> +
>>  	return 0;
>>  }
>>=20=20
>> @@ -1178,9 +1200,7 @@ static void intel_dp_schedule_fallback_link_traini=
ng(struct intel_dp *intel_dp,
>>  		lt_dbg(intel_dp, DP_PHY_DPRX,
>>  		       "Link Training failed with HOBL active, not enabling it from n=
ow on\n");
>>  		intel_dp->hobl_failed =3D true;
>> -	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
>> -							   crtc_state->port_clock,
>> -							   crtc_state->lane_count)) {
>> +	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_stat=
e)) {
>>  		return;
>>  	}
>>=20=20
>> --=20
>> 2.43.3

--=20
Jani Nikula, Intel
