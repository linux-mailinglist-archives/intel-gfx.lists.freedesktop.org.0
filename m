Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D49B3051
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:33:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A827810E13D;
	Mon, 28 Oct 2024 12:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mbNy6zr6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DA810E13D;
 Mon, 28 Oct 2024 12:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730118810; x=1761654810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zxFCuRRPBAhC32Qe4vRyHYuHmbgnq1du5vUjYanCd3c=;
 b=mbNy6zr6NfVzsiKwddDylaHxwcAehbzuuuZkU1oskjvP7W/349wE9tqi
 xY4zAo9Sod33tkx7RMJhVBBuhclwA1hP8xMZJmuv1MjA5NPHE8X2VdNtW
 F9xX77BUxpFi/4cpiib/hMixRVEA/r+AINNUkWha4zHaWD4lbUFHhPNdx
 +9uC9IKG2g47uSBQxtqcGxVkJ6MEFIbihah9BtaGvp68XU4seRKOxDBuB
 wX7UsmXD3oYDMVF/Bhew1YDfgB08HJekAZWW+xUxzwCcjS2FR5J1XiXed
 /EmMWuJsbhOjof1NgsGlhKiUhN6MULZGXbBgiTd73e2OudDPdWhdf8FoV Q==;
X-CSE-ConnectionGUID: yJ5IR52AQtWrlIi5/urpZA==
X-CSE-MsgGUID: oaXaK9uWTjOb3SWje6TX/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="40287727"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="40287727"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:33:30 -0700
X-CSE-ConnectionGUID: xMGnDJ16TCKlqxVg5IgRzg==
X-CSE-MsgGUID: sjVW00iuRIGdbCtUD7swAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112437436"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:33:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
In-Reply-To: <87o734pg90.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241028074642.804895-1-jouni.hogander@intel.com>
 <87o734pg90.fsf@intel.com>
Date: Mon, 28 Oct 2024 14:33:25 +0200
Message-ID: <87ldy8pfu2.fsf@intel.com>
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

On Mon, 28 Oct 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 28 Oct 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> We are currently seeing unexpected link trainings with several different
>> eDP panels. These are caused by these panels stating bad link status in
>> their dpcd registers. This can be observed by doing following test:
>>
>> 1. Boot up without Xe module loaded
>>
>> 2. Load Xe module with PSR disabled:
>>     $ modprobe xe  enable_psr=3D0
>>
>> 3. Read panel link status register
>>     $ dpcd_reg read --offset 0x200e --count=3D1
>>     0x200e:  00
>>
>> 4. Enable PSR, sleep for 2 seconds and disable PSR again:
>>
>>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>>     $ echo "-1" > /sys/kernel/debug/dri/0000:00:02.0/xe_params/enable_psr
>>     $ echo 0x0 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>>     $ sleep 2
>>     $ cat /sys/kernel/debug/dri/0/i915_edp_psr_status | grep status
>>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>>     Source PSR/PanelReplay status: DEEP_SLEEP [0x80310030]
>>
>> 5. Now read panel link status registers again:
>>     $ dpcd_reg read --offset 0x200e --count=3D1
>>     0x200e:  80
>>
>> Workaround this by not trusting link status registers after PSR is enabl=
ed
>> until first short pulse interrupt is received.
>
> Which eDP/DPCD version are we talking about?
>
> Could this be related to AUX-less ALPM?

And what I'm after here, are we satisfied with saying several panels
exhibit unexpected behaviour, so work around them? It just somehow
doesn't smell like the root cause to me...

>
> Some nitpicks below, less important.
>
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_types.h    |  2 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>>  drivers/gpu/drm/i915/display/intel_psr.c      | 39 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
>>  4 files changed, 44 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 2bb1fa64da2f..f0b7d7262961 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1618,6 +1618,8 @@ struct intel_psr {
>>  	u32 dc3co_exit_delay;
>>  	struct delayed_work dc3co_work;
>>  	u8 entry_setup_frames;
>> +
>> +	bool link_ok;
>>  };
>>=20=20
>>  struct intel_dp {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index b036c6521659..efaaadfb12ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5007,7 +5007,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel=
_dp)
>>  		return true;
>>=20=20
>>  	/* Retrain if link not ok */
>> -	return !intel_dp_link_ok(intel_dp, link_status);
>> +	return !(intel_dp_link_ok(intel_dp, link_status) ||
>> +		 intel_psr_link_ok(intel_dp));
>
> Nitpick, in general I think "not A and not B" reads better than "not (A
> or B)" because saying the parens aloud is kind of clumsy. Reading code
> aloud (well, in my head anyway) is one of my main tests for readability.
>
>>  }
>>=20=20
>>  bool intel_dp_has_connector(struct intel_dp *intel_dp,
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index 992543f508c1..0cd7388389e0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2009,6 +2009,15 @@ static void intel_psr_enable_locked(struct intel_=
dp *intel_dp,
>>  	intel_dp->psr.enabled =3D true;
>>  	intel_dp->psr.paused =3D false;
>>=20=20
>> +	/*
>> +	 * Link_ok is sticky and set here on PSR enable. We can assume link
>> +	 * training is complete as we never continue to PSR enable with
>> +	 * untrained link. Link_ok is kept as set until first short pulse
>> +	 * interrupt. This is targeted to workaround panels stating bad link
>> +	 * after PSR is enabled.
>> +	 */
>> +	intel_dp->psr.link_ok =3D true;
>> +
>>  	intel_psr_activate(intel_dp);
>>  }
>>=20=20
>> @@ -3458,6 +3467,9 @@ void intel_psr_short_pulse(struct intel_dp *intel_=
dp)
>>=20=20
>>  	mutex_lock(&psr->lock);
>>=20=20
>> +	/* Let's clear possibly set link_ok flag here */
>
> That's kind of a translation of C into English. If you need the comment,
> then maybe state the why instead of the what?
>
>> +	psr->link_ok =3D false;
>> +
>>  	if (!psr->enabled)
>>  		goto exit;
>>=20=20
>> @@ -3517,6 +3529,33 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
>>  	return ret;
>>  }
>>=20=20
>> +/**
>> + * intel_psr_link_ok - return psr->link_ok
>> + * @intel_dp: struct intel_dp
>> + *
>> + * We are seeing unexpected link re-trainings with some panels. This is=
 caused
>> + * by panel stating bad link status after PSR is enabled. Code checking=
 link
>> + * status can call this to ensure it can ignore bad link status stated =
by the
>> + * panel I.e. if panel is stating bad link and intel_psr_link_ok is sta=
ting link
>> + * is ok caller should rely on latter.
>> + *
>> + * Return value of link_ok
>> + */
>> +bool intel_psr_link_ok(struct intel_dp *intel_dp)
>> +{
>> +	bool ret;
>> +
>> +	if ((!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp)) ||
>> +	    !intel_dp_is_edp(intel_dp))
>> +		return false;
>> +
>> +	mutex_lock(&intel_dp->psr.lock);
>> +	ret =3D intel_dp->psr.link_ok;
>> +	mutex_unlock(&intel_dp->psr.lock);
>> +
>> +	return ret;
>> +}
>> +
>>  /**
>>   * intel_psr_lock - grab PSR lock
>>   * @crtc_state: the crtc state
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/=
i915/display/intel_psr.h
>> index 5f26f61f82aa..956be263c09e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -59,6 +59,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct=
 intel_crtc_state *crtc_st
>>  void intel_psr_pause(struct intel_dp *intel_dp);
>>  void intel_psr_resume(struct intel_dp *intel_dp);
>>  bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crt=
c_state);
>> +bool intel_psr_link_ok(struct intel_dp *intel_dp);
>>=20=20
>>  void intel_psr_lock(const struct intel_crtc_state *crtc_state);
>>  void intel_psr_unlock(const struct intel_crtc_state *crtc_state);

--=20
Jani Nikula, Intel
