Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F9C802F71
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 10:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0857F10E2E7;
	Mon,  4 Dec 2023 09:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A236410E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 09:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701683873; x=1733219873;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rAOv64nikBd0nqfLzRppmUibBMn7gQd9jbS6bRHdgYI=;
 b=myTSpdwitkspqtPQrsPJmIUjyFD17kBRRU6Tt4ETmn48iykImLDkkKJd
 3qH7kYkRcgGQgjLXX4rPkJJX+Y/wHnBKK5QUxgyRtqnabEZS6b4y1H4t8
 UTX5pVl9JF9HSN7bvqiAFie2tWFuTVi+c2GkI9oWXS2yzzNxb/YcTzISn
 iMFWgxR/g3/HT9tXG0mWpm40a2nuoE/K9R0TH7DGnjHZVBMF1aD5eThIr
 oTcvJr1Lw/xhLe/uYyMzKO2svl08+4hHOM7IZ/R5bxdWKvUJZxUCmnvq3
 nMzECW4el9eQmunFdcbzuP65XzkI3Hrdcs9TClNrjzjYhv6cEH7jhNY7L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="772280"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="772280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 01:57:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="799531617"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="799531617"
Received: from shahmoha-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 01:57:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZWnwofolLechg_Dg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com>
Date: Mon, 04 Dec 2023 11:57:36 +0200
Message-ID: <87wmtu2str.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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

On Fri, 01 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 01, 2023 at 03:41:41PM +0200, Jani Nikula wrote:
>> The eDP 1.5 spec adds a clarification for eDP 1.4x:
>>=20
>> > For eDP v1.4x, if the Source device chooses the Main-Link rate by way
>> > of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].
>>=20
>> We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
>> DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the panel
>> to ignore the rate set method.
>
> What a terrible way to specify this :( This means the device must=20
> hav some internal state to keep track of whethe BW_SET was ever
> written.

Indeed.

Additionally, eDP 1.5 specifies LINK_CONFIGURATION_STATUS (DPCD 0020Ch)
which exposes the internal state as link rate set status, and whether
that status is valid or not.

Overall the spec looks like that's just for status, but the register is
annotated Write/Read so who knows.

>
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
>> Tested-by: Animesh Manna <animesh.manna@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++--------
>>  1 file changed, 13 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index dbc1b66c8ee4..6336a39030a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -650,19 +650,22 @@ intel_dp_update_link_bw_set(struct intel_dp *intel=
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
>> +		/* eDP 1.3 and earlier link bw set method. */
>> +		u8 link_config[] =3D { link_bw, lane_count };
>>=20=20
>> -	/* eDP 1.4 rate select method. */
>> -	if (!link_bw)
>> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> -				  &rate_select, 1);
>> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
>> +				  ARRAY_SIZE(link_config));
>> +	} else {
>> +		/* eDP 1.4 rate select method. */
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);
>
> Doesn't look there's anything in the spec that specifies when the device
> is supposed to reset its internal state to stop ignoring DP_LINK_RATE_SET.
> Do we know when this panel does it? When VDD is removed?

No idea. Animesh?

I think it's just crazy writing 0 to explicitly disable DP_LINK_BW_SET
renders DP_LINK_RATE_SET unusable. Pretty sure we've seen panels where
this works as you'd expect.

And the above depends on pre-os using the same logic as us for choosing
DP_LINK_RATE_SET. GOP seems to do that. But if it or some other pre-os
used DP_LINK_BW_SET, we'd fail. With some other panels, writing the 0
might recover from that.

No r-b, so do you have any better ideas?


BR,
Jani.


>
>> +	}
>>  }
>>=20=20
>>  /*
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
