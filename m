Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF20A9FEFDB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 14:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC9510E06B;
	Tue, 31 Dec 2024 13:54:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhDD9XRx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2F710E06B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2024 13:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735653296; x=1767189296;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xn6nzFe407lgSU+9URl0DY39GvFT7kcP1ae7WFLctiY=;
 b=BhDD9XRxO+lGWVEsoM0iNbH0X93gwFxXF7wnoW7BkBOm+H6SA0mWrKkW
 MHSLepre5zzEVsOp4Fh311bVLvastoyZNEWGRfhxHYvUM78UuFBxnpDUD
 5QCfbKuNymmLESZYH7i3OnO24FyScFjHXSDok9KhzYQNTOcDRhO8c/kCc
 P4fOsYMyMp7i8FfXUJIr/SRQIABmLlBcjRumX1YdI6Io8XNIHQ2CiWMCB
 XET/i6nadKeUPNm2XdTgAaeEIjsrMTPrRhe2xRskqIDjogPapzNHDKFhs
 NwTUOUL2zM3FXA7AypHkPWAgqdm3pPOS8mSrZ3Cl2937HKUKFAEoJ7wwF A==;
X-CSE-ConnectionGUID: Ng1YT8sbTxWwsOTEysCOhA==
X-CSE-MsgGUID: JLJHJIZ+ScGwIXVS1CAZSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="47295307"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="47295307"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 05:54:56 -0800
X-CSE-ConnectionGUID: jg0GdNd0QpSuKbW38O5ALg==
X-CSE-MsgGUID: y2SuIAqOTYeU8pDvfwZhJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="101561500"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 05:54:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/lttpr: Enable Extended Wake Timeout
In-Reply-To: <caa1695e-211a-4643-b31a-fedd22b314e2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241213060317.2674290-1-suraj.kandpal@intel.com>
 <20241213060317.2674290-3-suraj.kandpal@intel.com>
 <caa1695e-211a-4643-b31a-fedd22b314e2@intel.com>
Date: Tue, 31 Dec 2024 15:54:51 +0200
Message-ID: <87ikr0nej8.fsf@intel.com>
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

On Tue, 31 Dec 2024, "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.co=
m> wrote:
> On 12/13/2024 11:33 AM, Suraj Kandpal wrote:
>> Usually retimers take around 30 to 40ms to exit all devices from
>> sleep state. Extended wake timeout request helps to give additional
>> time by reading the DPCD register through which sink requests the
>> minimal amount of time required to wake the sink up and giving the
>> same amount of wait requested by sink device.
>> Spec: DP v2.1 Section 3.6.12.3
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +
>>   .../drm/i915/display/intel_dp_link_training.c | 46 +++++++++++++++++++
>>   .../drm/i915/display/intel_dp_link_training.h |  1 +
>>   3 files changed, 49 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 4f9c50996446..d092c3ba0ccf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2624,6 +2624,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_ato=
mic_state *state,
>>   	if (!is_mst)
>>   		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>>=20=20=20
>> +	intel_dp_lttpr_wake_timeout_setup(intel_dp);
>> +
>>   	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>>   	if (!is_mst)
>>   		intel_dp_sink_enable_decompression(state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index ea9b4730a176..d0f0da78794e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -134,6 +134,52 @@ static bool intel_dp_lttpr_transparent_mode_enabled=
(struct intel_dp *intel_dp)
>>   		DP_PHY_REPEATER_MODE_TRANSPARENT;
>>   }
>>=20=20=20
>> +void intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display =3D to_intel_display(intel_dp);
>> +	u8 val =3D 1;
>> +	int ret;
>> +
>> +	if (intel_dp_lttpr_transparent_mode_enabled(intel_dp)) {
>> +		static const u8 timeout_mapping[] =3D {
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_1_MS] =3D 1,
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] =3D 20,
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_40_MS] =3D 40,
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] =3D 20,
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS] =3D 80,
>> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS] =3D 100,
>> +		};

Btw this kind of stuff totally belongs in generic DP helpers instead of
our driver.

>> +
>> +		ret =3D drm_dp_dpcd_readb(&intel_dp->aux,
>> +					DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_REQUEST, &val);
>> +		if (ret !=3D 1) {
>> +			drm_dbg_kms(display->drm,
>> +				    "Failed to read Extended sleep wake timeout request\n");
>> +			return;
>
> Returning from function without return type, better to declare int in=20
> place of void and return the error=C2=A0 value.

That depends on what you're going to do with that error value. We're not
going to check it anyway, are we?

>
> int intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp)
>
>
> Regards,
> Ravi Kumar V
>> +		}
>> +
>> +		val =3D (val < sizeof(timeout_mapping) && timeout_mapping[val]) ?
>> +			timeout_mapping[val] : 1;

What's the point with this? We don't do anything with val?

BR,
Jani.

>> +
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOU=
T_GRANT,
>> +				   DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_GRANTED);
>> +	} else {
>> +		ret =3D drm_dp_dpcd_readb(&intel_dp->aux,
>> +					DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT, &val);
>> +		if (ret !=3D 1) {
>> +			drm_dbg_kms(display->drm,
>> +				    "Failed to read Extended sleep wake timeout request\n");
>> +			return;
>> +		}
>> +
>> +		val =3D (val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK) ?
>> +			(val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK) * 10 : 1;
>> +
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PHY_REPEATER_EXTENDED_WAIT_TIME=
OUT,
>> +				   DP_EXTENDED_WAKE_TIMEOUT_GRANT);
>> +	}
>> +}
>> +
>>   /*
>>    * Read the LTTPR common capabilities and switch the LTTPR PHYs to
>>    * non-transparent mode if this is supported. Preserve the
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.h
>> index 2066b9146762..cd4e0d6db6ed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> @@ -15,6 +15,7 @@ struct intel_dp;
>>=20=20=20
>>   int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECE=
IVER_CAP_SIZE]);
>>   int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>> +void intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp);
>>=20=20=20
>>   void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
>>   				     int link_rate, bool is_vrr);
>

--=20
Jani Nikula, Intel
