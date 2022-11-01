Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F53B614BF9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 14:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E5D10E3CB;
	Tue,  1 Nov 2022 13:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F194510E3CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 13:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667310227; x=1698846227;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=j4T0SJyzTsFPVAWjRMInBHqqQKNGwOs84BB0Gmy+kCk=;
 b=ZMLn3snQaMEMWrycC7zsmnb3xfhIfmQlhbcVBZGTv3KDAZuFAA5qKv7W
 4rMRLv8wn2P/948brfHNB2ah7g8AtAYMC2hXlXYUwhLf2Igb93h66GdE5
 jXj/1fgHEsTlY5Ie1uXkXRo3DKM4/EiS0V9mW7Sq7lFkxrFKbaJuckZO3
 BTVchzoK1vgvNLo4sYona5EZcfAnKNAMD54ys8kAWSpXHYwgTmaqcvpKL
 s+vdwZZ1/MSpejQMkF1re5ippfYn/Ije5JHwpSQYGqmvzJcL9eQSxVWE3
 ioOMdcgV09BklR/LeXTp+X3mrDJW6nKzAovT1wsuLMxlrz9sxjpYj9sn1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="292439234"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="292439234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 06:43:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="697400224"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="697400224"
Received: from rsimofi-mobl.ger.corp.intel.com (HELO localhost) ([10.252.30.2])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 06:43:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "20221024140607.25271-1-shawn.c.lee@intel.com"
 <20221024140607.25271-1-shawn.c.lee@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
 <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
Date: Tue, 01 Nov 2022 15:43:42 +0200
Message-ID: <877d0e94dt.fsf@intel.com>
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
> On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>> A panel power off cycle delay always append before turn eDP on.
>>> Driver should check last_power_on and last_backlight_off before insert=
=20
>>> this delay. If these values are the same, it means eDP was off until=20
>>> now and driver can bypass power off cycle delay to save some times to=20
>>> speed up eDP power on sequence.
>>>
>>> v2: fix commit messages
>>
>>There are more changes here than what the changelog says, but the previou=
s review comments were not answered [1].
>>
>
> I'm sorry that lose the question in [1].=20
>
> "But someone else may have turned it off just before we were handed contr=
ol, we have no idea."
> This is the situation from Ville's comment. Agree that we don't know when=
 panel will be powered off.
> In my opinion, eDP panel should not be turned off before i915 take it ove=
r. If it was turned on or off by standard contorl (ex: modeset).
> last_power_on and last_backlight_off would not be the same. So this chang=
e should be safe.

I think it's pretty much a hard requirement we respect the panel delays
at i915 probe. If we don't know, we don't know, and we can't make
assumptions.

If the goal is to speed up boot, you should ensure 1) the pre-os enables
the display, and 2) i915 can take over the display without a modeset and
a panel power cycle.


BR,
Jani.


>
> Best regards,
> Shawn
>
>>
>>BR,
>>Jani.
>>
>>
>>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>>
>>>
>>> Cc: Shankar Uma <uma.shankar@intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>>> b/drivers/gpu/drm/i915/display/intel_pps.c
>>> index 21944f5bf3a8..290473ec70d5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp=
 *intel_dp)
>>>  	ktime_t panel_power_on_time;
>>>  	s64 panel_power_off_duration;
>>>=20=20
>>> +	/* When last_power_on equal to last_backlight_off, it means driver di=
d not
>>> +	 * turn on or off eDP panel so far. So we can bypass power cycle dela=
y to
>>> +	 * save some times here.
>>> +	 */
>>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_o=
ff)
>>> +		return;
>>> +
>>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>>=20=20
>>>  	/* take the difference of current time and panel power off time @@=20
>>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp=20
>>> *intel_dp)  {
>>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>>  	intel_dp->pps.last_power_on =3D jiffies;
>>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>>  }
>>>=20=20
>>>  static void
>>
>>--
>>Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
