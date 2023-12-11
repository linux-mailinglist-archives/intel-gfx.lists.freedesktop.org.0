Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA1C80CA02
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 13:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F96710E3C1;
	Mon, 11 Dec 2023 12:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7D310E3C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 12:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702298529; x=1733834529;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=i3MMV2JPGI+adK1Tv6Vt0JEgBNLmxl/Yx7ExToqV4a0=;
 b=AhzuIYJGzKey25Nux9QoiBeoraiv0LlaMaRZWDEeMFLxd4kllOzQBWkn
 nAtMlE0G8tzMYT3AqSGfb16fbK6ouYLPcbQjPOvjg/aeo3grMnR8INS3Q
 BbfRAYa04UvE/d8zEYdbpzBv9pXTScIRtNUy3EsQBaCpuYjH4YCaENZ7a
 ZGJQoD+Pdd9iy10VsvQ2rjGhs9y9E/1vb857gUkXHs68UuqBYQNhNEcPp
 BFgzhA2gi5PVMw7Ok1VA3c55tM0gS5Q3po17vwHWv0nj0MilBcNOGLzm8
 rk4ihhSKyhgRUuEkvjr7T3i/R7NcSLPstzYR6HGVZ6JsMWUset5xbkAjZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="425768831"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="425768831"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:42:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="14431906"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:42:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/edp: don't write to DP_LINK_BW_SET when
 using rate select
In-Reply-To: <87r0jtxbr6.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205180551.2476228-1-jani.nikula@intel.com>
 <87r0jtxbr6.fsf@intel.com>
Date: Mon, 11 Dec 2023 14:42:05 +0200
Message-ID: <87jzpkykpu.fsf@intel.com>
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

On Mon, 11 Dec 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 05 Dec 2023, Jani Nikula <jani.nikula@intel.com> wrote:
>> The eDP 1.5 spec adds a clarification for eDP 1.4x:
>>
>>> For eDP v1.4x, if the Source device chooses the Main-Link rate by way
>>> of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].
>>
>> We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
>> DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the panel
>> to ignore the rate set method.
>>
>> Moreover, 0 is a reserved value for DP_LINK_BW_SET, and should not be
>> used.
>>
>> v2: Improve the comments (Ville)
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
>> Tested-by: Animesh Manna <animesh.manna@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Pushed to drm-intel-next, thanks for the review and testing.

Also picked up to drm-intel-fixes with cc: stable that I forgot to add.

BR,
Jani.


>
> BR,
> Jani.
>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 31 +++++++++++++------
>>  1 file changed, 21 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index dbc1b66c8ee4..1abfafbbfa75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -650,19 +650,30 @@ intel_dp_update_link_bw_set(struct intel_dp *intel=
_dp,
>>  			    const struct intel_crtc_state *crtc_state,
>>  			    u8 link_bw, u8 rate_select)
>>  {
>> -	u8 link_config[2];
>> +	u8 lane_count =3D crtc_state->lane_count;
>>=20=20
>> -	/* Write the link configuration data */
>> -	link_config[0] =3D link_bw;
>> -	link_config[1] =3D crtc_state->lane_count;
>>  	if (crtc_state->enhanced_framing)
>> -		link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
>> +		lane_count |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> +
>> +	if (link_bw) {
>> +		/* DP and eDP v1.3 and earlier link bw set method. */
>> +		u8 link_config[] =3D { link_bw, lane_count };
>>=20=20
>> -	/* eDP 1.4 rate select method. */
>> -	if (!link_bw)
>> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> -				  &rate_select, 1);
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
>> +				  ARRAY_SIZE(link_config));
>> +	} else {
>> +		/*
>> +		 * eDP v1.4 and later link rate set method.
>> +		 *
>> +		 * eDP v1.4x sinks shall ignore DP_LINK_RATE_SET if
>> +		 * DP_LINK_BW_SET is set. Avoid writing DP_LINK_BW_SET.
>> +		 *
>> +		 * eDP v1.5 sinks allow choosing either, and the last choice
>> +		 * shall be active.
>> +		 */
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);
>> +	}
>>  }
>>=20=20
>>  /*

--=20
Jani Nikula, Intel
