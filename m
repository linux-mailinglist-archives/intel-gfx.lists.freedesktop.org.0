Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 076B13EBC83
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 21:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE5D6E8C7;
	Fri, 13 Aug 2021 19:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1936E8C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 19:28:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="215646526"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="215646526"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:28:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="518301695"
Received: from cgearing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.226])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:27:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma\, Swati2" <swati2.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <a6442433-dce8-3524-5d90-5c605e815c20@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210812132354.10885-1-jani.nikula@intel.com>
 <a6442433-dce8-3524-5d90-5c605e815c20@intel.com>
Date: Fri, 13 Aug 2021 22:27:55 +0300
Message-ID: <87im09kuv8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: fix eDP MSO pipe sanity
 checks for ADL-P
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

On Fri, 13 Aug 2021, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
> Please check CI results once; if regressions are unrelated please report.
> With those fixed.
>
> Reviewed-by:
> Swati Sharma <swati2.sharma@intel.com>
> Tested-by:
> Swati Sharma <swati2.sharma@intel.com>

Thanks, pushed. The CI failures are unrelated.

BR,
Jani.

>
> On 12-Aug-21 6:53 PM, Jani Nikula wrote:
>> ADL-P supports stream splitter on pipe B in addition to pipe A. Update
>> the sanity check in intel_ddi_mso_get_config() to reflect this, and
>> remove the check in intel_ddi_mso_configure() as redundant with
>> encoder->pipe_mask. Abstract the splitter pipe mask to a single point of
>> truth while at it to avoid similar mistakes in the future.
>>=20
>> Fixes: 7bc188cc2c8c ("drm/i915/adl_p: enable MSO on pipe B")
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Swati Sharma <swati2.sharma@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c | 24 ++++++++++++------------
>>   1 file changed, 12 insertions(+), 12 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index e932fd0fe7e2..eb9aa871f87b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2251,6 +2251,15 @@ static void intel_ddi_power_up_lanes(struct intel=
_encoder *encoder,
>>   	}
>>   }
>>=20=20=20
>> +/* Splitter enable for eDP MSO is limited to certain pipes. */
>> +static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
>> +{
>> +	if (IS_ALDERLAKE_P(i915))
>> +		return BIT(PIPE_A) | BIT(PIPE_B);
>> +	else
>> +		return BIT(PIPE_A);
>> +}
>> +
>>   static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
>>   				     struct intel_crtc_state *pipe_config)
>>   {
>> @@ -2268,8 +2277,7 @@ static void intel_ddi_mso_get_config(struct intel_=
encoder *encoder,
>>   	if (!pipe_config->splitter.enable)
>>   		return;
>>=20=20=20
>> -	/* Splitter enable is supported for pipe A only. */
>> -	if (drm_WARN_ON(&i915->drm, pipe !=3D PIPE_A)) {
>> +	if (drm_WARN_ON(&i915->drm, !(intel_ddi_splitter_pipe_mask(i915) & BIT=
(pipe)))) {
>>   		pipe_config->splitter.enable =3D false;
>>   		return;
>>   	}
>> @@ -2301,10 +2309,6 @@ static void intel_ddi_mso_configure(const struct =
intel_crtc_state *crtc_state)
>>   		return;
>>=20=20=20
>>   	if (crtc_state->splitter.enable) {
>> -		/* Splitter enable is supported for pipe A only. */
>> -		if (drm_WARN_ON(&i915->drm, pipe !=3D PIPE_A))
>> -			return;
>> -
>>   		dss1 |=3D SPLITTER_ENABLE;
>>   		dss1 |=3D OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
>>   		if (crtc_state->splitter.link_count =3D=3D 2)
>> @@ -4666,12 +4670,8 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv, enum port port)
>>=20=20=20
>>   		dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
>>=20=20=20
>> -		/* Splitter enable for eDP MSO is limited to certain pipes. */
>> -		if (dig_port->dp.mso_link_count) {
>> -			encoder->pipe_mask =3D BIT(PIPE_A);
>> -			if (IS_ALDERLAKE_P(dev_priv))
>> -				encoder->pipe_mask |=3D BIT(PIPE_B);
>> -		}
>> +		if (dig_port->dp.mso_link_count)
>> +			encoder->pipe_mask =3D intel_ddi_splitter_pipe_mask(dev_priv);
>>   	}
>>=20=20=20
>>   	/* In theory we don't need the encoder->type check, but leave it just=
 in
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
