Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E079D7F4E17
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 18:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE71310E09D;
	Wed, 22 Nov 2023 17:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A2710E09D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 17:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700673504; x=1732209504;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UQn4gSGSJqJ/iMHm9EcJO7IZEu6Mefjhx5zTEafnOZg=;
 b=eE4hDpg8zaWgjwzoxJNmKQ+2Hi1R9BvqGCVsFT2S5qIN6ArfJXeHAWVD
 juEM7pHjrGJD90l9wzBZ3dqR0VnE0EEjIXrRXhvSHq+0uACG3Jhf+QffU
 mWHBjYyyA3EV/qQ71PgMlkdIbQUfz3pCSVZlVOfnHfvdaOh77xV8jBUb/
 jk2vIFoFckcuDssSsPcnD4UFCcQO1bhawKIB3PXT0Zp+43LzGM66POAAA
 DyMqXMKgdq3fVwIi9wN7ceSbpXQIi7I0mUeVNCM/LmrSh/VTQQfFMPc9J
 eOLozvlc+AVC7tKghDHcc+DX8GQsABMevi8Y0sL8XDCrBtlTEUVtnIJnI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5246896"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; 
   d="scan'208";a="5246896"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 09:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="770697746"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="770697746"
Received: from tjquresh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.76])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 09:17:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Musial, Ewelina"
 <ewelina.musial@intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
In-Reply-To: <DM8PR11MB5655EE430B1F635C70201328E0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655EE430B1F635C70201328E0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
Date: Wed, 22 Nov 2023 19:17:48 +0200
Message-ID: <874jhdn1vn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 22 Nov 2023, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
> Hi,=20
>> -----Original Message-----
>> From: Musial, Ewelina <ewelina.musial@intel.com>
>> Sent: Wednesday, November 22, 2023 4:25 PM
>> To: Saarinen, Jani <jani.saarinen@intel.com>; Jani Nikula
>> <jani.nikula@linux.intel.com>; Illipilli, TejasreeX <tejasreex.illipilli=
@intel.com>;
>> LGCI Bug Filing <lgci.bug.filing@intel.com>; Andy Shevchenko
>> <andriy.shevchenko@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: RE: [Intel-gfx] =E2=9C=97 Fi.CI.BAT: failure for drm/i915/dsi: =
4th attempt to get rid
>> of IOSF GPIO (rev2)
>>=20
>> But this list had only series which were in queue here https://intel-gfx-
>> ci.01.org/queue/index.html and today I was checking exactly how queue for
>> shards is created and there are jobs which are not displayed there. Dire=
ctly in
>> Jenkins we do have multiple more jobs than in this queue only and I also=
 killed
>> them. I was discussing exactly this case today with Micha=C5=82 and he p=
ointed out that
>> in explanation below queues we do have highlighted:
>> Due to technical limitation this is just an approximation of the queue. =
It is good
>> for assessing the length of the queue, but should not be considered as
>> completely accurate.
> OK. So could have been in the list but not sure.=20

Okay, timeout.

I just pushed the series. I trust Hans' testing here, considering the
likely platform impact of the series and CI coverage of said platforms.

Thanks for the patches and review.

BR,
Jani.



>>=20
>> Regards,
>> Ewelina
>>=20
>> -----Original Message-----
>> From: Saarinen, Jani <jani.saarinen@intel.com>
>> Sent: Wednesday, November 22, 2023 3:04 PM
>> To: Musial, Ewelina <ewelina.musial@intel.com>; Jani Nikula
>> <jani.nikula@linux.intel.com>; Illipilli, TejasreeX <tejasreex.illipilli=
@intel.com>;
>> LGCI Bug Filing <lgci.bug.filing@intel.com>; Andy Shevchenko
>> <andriy.shevchenko@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: RE: [Intel-gfx] =E2=9C=97 Fi.CI.BAT: failure for drm/i915/dsi: =
4th attempt to get rid
>> of IOSF GPIO (rev2)
>>=20
>> HI,
>> > -----Original Message-----
>> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> > Musial, Ewelina
>> > Sent: Wednesday, November 22, 2023 3:39 PM
>> > To: Jani Nikula <jani.nikula@linux.intel.com>; Illipilli, TejasreeX
>> > <tejasreex.illipilli@intel.com>; LGCI Bug Filing
>> > <lgci.bug.filing@intel.com>; Andy Shevchenko
>> > <andriy.shevchenko@linux.intel.com>
>> > Cc: intel-gfx@lists.freedesktop.org
>> > Subject: Re: [Intel-gfx] =E2=9C=97 Fi.CI.BAT: failure for drm/i915/dsi=
: 4th
>> > attempt to get rid of IOSF GPIO (rev2)
>> >
>> > Hi, I reviewed what I could, and my conclusion is that CI.FULL for
>> > this series was killed due to my work around 126526v6 - yesterday I
>> > was asked to do whatever I can to speed up shards testing for
>> > mentioned series and I killed multiple sessions which were higher in
>> > queue. We do not have option to simply bump priority for premerge
>> > series and the only way (not recommended but sometimes needed) is to
>> > drop everything what is higher. I've added this series back to queue.
>> > Sorry for inconvenience
>> Nope. It was not part of that list. We checked that with Jani too. See t=
hose
>> pictures we discussed.
>> >
>> > Regards,
>> > Ewelina
>>=20
>> Br,
>> Jani S

--=20
Jani Nikula, Intel
