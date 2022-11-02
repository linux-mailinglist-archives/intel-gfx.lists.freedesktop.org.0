Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5626160B9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A268810E47D;
	Wed,  2 Nov 2022 10:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03DD710E461
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667384346; x=1698920346;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=B3BF4huhKJro1+Lkm6BRFGF6s74Zcti/p/viKCh6Vwc=;
 b=Nyj1phCPWOIP2yGZcFxc6QhHAYymGjLI1MysqQSxQgJCLPUfK58tu9P3
 e49X+hLb6ktVKAkYXdhfoG+zauaLx/ozc/dbRdr+C1iKln2gUGOXoMpZ7
 rMWeV+dEI41ZQDKkE3lCEEGGsSdjD81RH2z3yvoceoB0YV7uTNphvGdqZ
 vm5ZcJIRW3rrlatNCg9dyD9l5ppYkUCP+2xzwf/qP0bvZdBkZYkVHnq3n
 FAQYLxD/XTy3ktru8jeoJB+3S7dJpxJGVh3FI3Ugn6hvMvWPr+gPI02MX
 3h/jum8kbdTn5myaAgI/wpNOWcQ8JKcYu0hwDL3bvDfwjxNfy57SLpXYv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="309364483"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="309364483"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:19:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="585347289"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="585347289"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:19:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
 <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
 <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
Date: Wed, 02 Nov 2022 12:19:01 +0200
Message-ID: <87mt997j6y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [v2] drm/i915/pps: improve eDP power on flow
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

On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> On Tue, Nov. 1, 2022, 1:43 p.m, Jani Nikula <jani.nikula@linux.intel.com>=
 wrote:
>>On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>> On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.in=
tel.com> wrote:
>>>>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>>> A panel power off cycle delay always append before turn eDP on.
>>>>> Driver should check last_power_on and last_backlight_off before inser=
t=20
>>>>> this delay. If these values are the same, it means eDP was off until=
=20
>>>>> now and driver can bypass power off cycle delay to save some times to=
=20
>>>>> speed up eDP power on sequence.
>>>>>
>>>>> v2: fix commit messages
>>>>
>>>>There are more changes here than what the changelog says, but the previ=
ous review comments were not answered [1].
>>>>
>>>
>>> I'm sorry that lose the question in [1].=20
>>>
>>> "But someone else may have turned it off just before we were handed con=
trol, we have no idea."
>>> This is the situation from Ville's comment. Agree that we don't know wh=
en panel will be powered off.
>>> In my opinion, eDP panel should not be turned off before i915 take it o=
ver. If it was turned on or off by standard contorl (ex: modeset).
>>> last_power_on and last_backlight_off would not be the same. So this cha=
nge should be safe.
>>
>>I think it's pretty much a hard requirement we respect the panel delays
>>at i915 probe. If we don't know, we don't know, and we can't make
>>assumptions.
>>
>>If the goal is to speed up boot, you should ensure 1) the pre-os enables
>>the display, and 2) i915 can take over the display without a modeset and
>>a panel power cycle.
>>
>
> After boot into kernel. It seems there are two cases we will see.=20
> 1) If eDP display did not enable at pre-os stage, this patch can save pow=
er cycle time.=20
> 2) If eDP display was enabled at pre-os, because of cdclk was setting to =
max freq always.
>    i915 driver will trigger modeset to reduce cdclk freq and run power of=
f/on cycle.
>    At this case power cycle delay will not be ignored.

In case 2, the effort should probably be spent on hardware take over
using the same cdclk as it was. I thought this was already the case, but
maybe I'm wrong and/or there are corner cases.

> So this patch can only benefit at case #1 (eDP did not enable at pre-os s=
tage). And it is what we need. :)

I understand a typical T12 min (i.e. from Vcc power down to up again)
could be, say, 500 ms and it's a long time to wait. Especially if the
wait happens in output init which is all serial and synchronous in
probe.

However, you're basically asking us to potentially violate panel
timings. It just doesn't strike me as an obviusly good idea.

It might be a good idea to file an issue at fdo gitlab [1] and attach a
dmesg with drm.debug=3D14 from boot to at least the first modeset so we
can actually see what the delays are and where the time is spent.


BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/issues/new




>
> Best regards,
> Shawn
>
>>
>>BR,
>>Jani.
>>
>>
>>>
>>> Best regards,
>>> Shawn
>>>
>>>>
>>>>BR,
>>>>Jani.
>>>>
>>>>
>>>>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>>>>
>>>>>
>>>>> Cc: Shankar Uma <uma.shankar@intel.com>
>>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>>>>> b/drivers/gpu/drm/i915/display/intel_pps.c
>>>>> index 21944f5bf3a8..290473ec70d5 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>>>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_=
dp *intel_dp)
>>>>>  	ktime_t panel_power_on_time;
>>>>>  	s64 panel_power_off_duration;
>>>>>=20=20
>>>>> +	/* When last_power_on equal to last_backlight_off, it means driver =
did not
>>>>> +	 * turn on or off eDP panel so far. So we can bypass power cycle de=
lay to
>>>>> +	 * save some times here.
>>>>> +	 */
>>>>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight=
_off)
>>>>> +		return;
>>>>> +
>>>>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>>>>=20=20
>>>>>  	/* take the difference of current time and panel power off time @@=
=20
>>>>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp=20
>>>>> *intel_dp)  {
>>>>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>>>>  	intel_dp->pps.last_power_on =3D jiffies;
>>>>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>>>>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>>>>  }
>>>>>=20=20
>>>>>  static void
>>>>
>>>>--
>>>>Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
