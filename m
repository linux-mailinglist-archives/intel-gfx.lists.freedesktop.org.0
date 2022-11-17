Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283A962D978
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 12:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71AE10E546;
	Thu, 17 Nov 2022 11:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAC710E546
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 11:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668684951; x=1700220951;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KDLywhMH18sdhsTEYTZ22RLZIB30q4dLE8mNEDcSqNU=;
 b=g9BGgXoEtuhJNnyyq7/qcdva9AXtSLbV+9+i1IzuWkvKCmXOFzjn/FjW
 nvPcphFdSMnJQYz+logzvCyi+JjxT6z+xZwtqL3tRynV5DfUeSszSD+47
 Zar325gHlZGdbJK6/mDEWNExqc9NaHYUFcOmeHFEn2fBfUdeqK1HhI80H
 2uEVrY6APefsVRwUlBSr84Io6gEZHu3e2+PWFt8r2dnsMCfAzbEELViHF
 Yk1+6Nv40fQmF7yvSo6cE19ahZiGKvIVgWmApCIlN9MZtHARf3dqcMoba
 PTwOz5m9aZr/VzGgG90rVDvj7ZT8B8EDi8FaEINQ3f2kAhq+oa+n7yGIS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339653259"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339653259"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670893593"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="670893593"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:35:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y3Uqowmo36DpDjym@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221116150657.1347504-1-jani.nikula@intel.com>
 <Y3Uqowmo36DpDjym@intel.com>
Date: Thu, 17 Nov 2022 13:35:45 +0200
Message-ID: <87leo924q6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: wait power off delay at
 driver remove to optimize probe
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

On Wed, 16 Nov 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 16, 2022 at 05:06:57PM +0200, Jani Nikula wrote:
>> Panel power off delay is the time the panel power needs to remain off
>> after being switched off, before it can be switched on again.
>>=20
>> For the purpose of respecting panel power off delay at driver probe,
>> assuming the panel was last switched off at driver probe is overly
>> pessimistic. If the panel was never on, we'd end up waiting for no
>> reason.
>>=20
>> We don't know what has happened before kernel boot, but we can make some
>> assumptions:
>>=20
>> - The panel may have been switched off right before kernel boot by some
>>   pre-os environment.
>>=20
>> - After kernel boot, the panel may only be switched off by i915.
>>=20
>> - At i915 driver probe, only a previously loaded and removed i915 may
>>   have switched the panel power off.
>>=20
>> With these assumptions, we can initialize the last power off time to
>> kernel boot time, if we also ensure i915 driver remove waits for the
>> panel power off delay after switching panel power off.
>>=20
>> This shaves off the time it takes from kernel boot to i915 probe from
>> the first panel enable, if (and only if) the panel was not already
>> enabled at boot.
>>=20
>> The encoder destroy hook is pretty much the last place where we can
>> wait, right after we've ensured the panel power has been switched off,
>> and before the whole encode is destroyed.
>
> Yeah, the fact that we have the vdd_off_sync() in there at least
> theoretically means the vdd might be on at any point before that.
>
> I was also pondering about doing this for all encoder types.
> Though the benefits are slightly less pronounced I guess:
> a) we don't need to power the panel for the output probe on those,
>    so a bit more time will have elapsed anyway before we have to
>    power the panel on during the first modeset
> b) for LVDS we rely 100% on the pps state machine so the initial
>    boot case is already as optimal as possible. Adding the explicit
>    wait into the unload path could thus only help the speed of
>    of the first modeset during module reload
>
> But maybe we'd stil want to do that, for consistency if nothing else?
>
> Either way, this patch is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review and testing, pushed to drm-intel-next.

BR,
Jani.

>
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7417
>> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++++++
>>  drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
>>  2 files changed, 13 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 914161d7d122..67089711d9e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4877,6 +4877,12 @@ void intel_dp_encoder_flush_work(struct drm_encod=
er *encoder)
>>=20=20
>>  	intel_pps_vdd_off_sync(intel_dp);
>>=20=20
>> +	/*
>> +	 * Ensure power off delay is respected on module remove, so that we can
>> +	 * reduce delays at driver probe. See pps_init_timestamps().
>> +	 */
>> +	intel_pps_wait_power_cycle(intel_dp);
>> +
>>  	intel_dp_aux_fini(intel_dp);
>>  }
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/=
i915/display/intel_pps.c
>> index 81ee7f3aadf6..9bbf41a076f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1100,7 +1100,13 @@ bool intel_pps_have_panel_power_or_vdd(struct int=
el_dp *intel_dp)
>>=20=20
>>  static void pps_init_timestamps(struct intel_dp *intel_dp)
>>  {
>> -	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>> +	/*
>> +	 * Initialize panel power off time to 0, assuming panel power could ha=
ve
>> +	 * been toggled between kernel boot and now only by a previously loaded
>> +	 * and removed i915, which has already ensured sufficient power off
>> +	 * delay at module remove.
>> +	 */
>> +	intel_dp->pps.panel_power_off_time =3D 0;
>>  	intel_dp->pps.last_power_on =3D jiffies;
>>  	intel_dp->pps.last_backlight_off =3D jiffies;
>>  }
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
