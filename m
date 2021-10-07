Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ACC425563
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 16:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD1A6F4A3;
	Thu,  7 Oct 2021 14:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E566F49F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 14:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213210574"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="213210574"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 07:27:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="478579409"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 07:27:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YV8BdPhTVg1rQR48@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007133908.6188-1-jani.nikula@intel.com>
 <YV8BdPhTVg1rQR48@intel.com>
Date: Thu, 07 Oct 2021 17:27:53 +0300
Message-ID: <8735pczz86.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/dp: abstract
 intel_dp_lane_max_vswing_reached()
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
> On Thu, Oct 07, 2021 at 04:39:07PM +0300, Jani Nikula wrote:
>> Add per-lane abstraction for max vswing reached to make follow-up
>> cleaner, as this one reverses the conditions.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 42 +++++++++++--------
>>  1 file changed, 25 insertions(+), 17 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 1a943ae38a6b..d239d72bfcf2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -515,29 +515,37 @@ intel_dp_update_link_train(struct intel_dp *intel_=
dp,
>>  	return ret =3D=3D crtc_state->lane_count;
>>  }
>>=20=20
>> +/*
>> + * FIXME: The DP spec is very confusing here, also the Link CTS spec se=
ems to
>> + * have self contradicting tests around this area.
>> + *
>> + * In lieu of better ideas let's just stop when we've reached the max s=
upported
>> + * vswing with its max pre-emphasis, which is either 2+1 or 3+0 dependi=
ng on
>> + * whether vswing level 3 is supported or not.
>> + */
>> +static bool intel_dp_lane_max_vswing_reached(u8 train_set_lane)
>> +{
>> +	u8 v =3D (train_set_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
>> +		DP_TRAIN_VOLTAGE_SWING_SHIFT;
>> +	u8 p =3D (train_set_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
>> +		DP_TRAIN_PRE_EMPHASIS_SHIFT;
>> +
>> +	if (train_set_lane & DP_TRAIN_MAX_SWING_REACHED)
>> +		return true;
>> +
>> +	if (v + p =3D=3D 3)
>> +		return true;
>
> We want both to be true at the same time.

D'oh! See, that's why I split it up from the other patch, but fumbled it
anyway.

Thanks.

BR,
Jani.

>
>> +
>> +	return false;
>> +}
>> +
>>  static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>>  					     const struct intel_crtc_state *crtc_state)
>>  {
>>  	int lane;
>>=20=20
>> -	/*
>> -	 * FIXME: The DP spec is very confusing here, also the Link CTS
>> -	 * spec seems to have self contradicting tests around this area.
>> -	 *
>> -	 * In lieu of better ideas let's just stop when we've reached the
>> -	 * max supported vswing with its max pre-emphasis, which is either
>> -	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
>> -	 */
>>  	for (lane =3D 0; lane < crtc_state->lane_count; lane++) {
>> -		u8 v =3D (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
>> -			DP_TRAIN_VOLTAGE_SWING_SHIFT;
>> -		u8 p =3D (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
>> -			DP_TRAIN_PRE_EMPHASIS_SHIFT;
>> -
>> -		if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) =3D=3D 0)
>> -			return false;
>> -
>> -		if (v + p !=3D 3)
>> +		if (!intel_dp_lane_max_vswing_reached(intel_dp->train_set[lane]))
>>  			return false;
>>  	}
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
