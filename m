Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6056087EA4C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF1610F762;
	Mon, 18 Mar 2024 13:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JW/EW996";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C440610F762
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 13:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769524; x=1742305524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2u/8rVPRhORtN2Tx5We8C241DjImBaSChc9/pu/oZAA=;
 b=JW/EW996+EKojU7B6pWpMt+9eO97QAneYRj2vTKc+qeJcoKltliG3X2o
 Jo2U4ym8xI9RAa8fs3GQ/vlPEOZ8vTgC+Mr4q54QeZPNgoDd4HkxtN+Yc
 R4gEMw4vRK86g8Ju0w+UC/VL3jdCWetFTkf/0qJtOgoRR70fJG3UI8VT9
 LoTIP/J7lpiI8fL4fT1IhY/ulbmUzgI/2WMOZyZA8NuqazH+GwFn4lPUz
 tWReSc1g9HM7cMFpTDyyxVeYl2FR8RZWbYJurE1c7I9Eg6iWw2FMsb/9x
 dDfDlcsyVzpggFSGsoTemgpjyQm5PM4WNuIzds1C7NbZ3RCIIxI2rMmN2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="28061295"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="28061295"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="44528204"
Received: from ahmedess-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.133])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:45:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dolan Liu <liuyong5@huaqin.corp-partner.google.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when
 turning on display from off
In-Reply-To: <004a0b4f-a619-4989-901f-251de3de4af1@huaqin.corp-partner.google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <87il1zzmpt.fsf@intel.com> <ZfQqyLJBAAuNLKZ2@intel.com>
 <004a0b4f-a619-4989-901f-251de3de4af1@huaqin.corp-partner.google.com>
Date: Mon, 18 Mar 2024 15:45:18 +0200
Message-ID: <87il1jpsb5.fsf@intel.com>
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

On Mon, 18 Mar 2024, Dolan Liu <liuyong5@huaqin.corp-partner.google.com> wr=
ote:
> this case have been there so many years, it's time to fix it if=20
> possible. And user-space software may improved by themselves in we=20
> didn't realize place.
>
> even if not,=C2=A0 for the proof user-space setting=C2=A0 0, it's better =
to change to
>
>
>  =C2=A0=C2=A0 if (level < min || level =3D=3D 0 )
>
>  =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 level =3Dmax;
>
>
> Intel default FSP will set the default min is 2% (6/255). if someone=20
> missed the setting, it will be keep the default and level.min will be=20
> larger than 0.
>
> if someone changed the default min in VBT or coreboot, the user-space=20
> lowest level set as 0, still can go though to this logic.
>
>
> whatever, we think this one should correct back, otherwise it will keep=20
> occurring in each new kernel release on all Intel device, this is not=20
> very friendly to all developers.
>
> and the only fix way is=C2=A0 hack patch to remove "level=3Dmax".

As far as the change goes, the original patch is pretty much the only
one we should consider. I only ever asked for 1) an issue to be reported
at fdo gitlab, and 2) a commit message properly detailing the issue.

I never asked for functional changes in the patch. Frankly, all the
alternative versions are nonsense.

I think we can try to go with the patch, but please understand that if
it regresses some silly userspace, the change will be reverted instead
of fixing that silly userspace, because that's the rule in kernel
development.


BR,
Jani.


PS. Please try to reply inline instead of top-posting in public mailing
lists.



>
>
> On 3/15/24 19:02, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Wed, Mar 06, 2024 at 12:19:42PM +0200, Jani Nikula wrote:
>>> On Wed, 06 Mar 2024, gareth.yu@intel.com wrote:
>>>> From: Gareth Yu <gareth.yu@intel.com>
>>>>
>>>> Turn on the panel from zero brightness of the last state, the panel wa=
s set
>>>> a maximum PWM in the flow. Once the panel initialization is completed,=
 the
>>>> backlight is restored to zero brightness. There is a flckering generat=
ed.
>>> Please be more precise in describing what exactly happens and
>>> when. Driver probe? Modeset? What restores backlight to zero brightness?
>>>
>>> Better yet, please file a bug at fdo gitlab, attach full dmesg with
>>> debugs, etc.
>>>
>>> Before we had the concept of minimum brightness, the minimum was always
>>> 0. And the check was:
>>>
>>> 	if (level =3D=3D 0)
>>> 		level =3D max;
>>>
>>> Historically, the point was, if you're enabling the display and
>>> backlight, you don't want it to be at 0 brightness, because for most
>>> displays that means a black screen.
>> I think that hack was originally added becaue some silly
>> userspace thingy was setting the backlight level to 0 on
>> suspend/etc. and then forgetting to restore it back to a
>> sane value afterwards. Dunno if that nonsense behaviour
>> still persists to this day.
>>

--=20
Jani Nikula, Intel
