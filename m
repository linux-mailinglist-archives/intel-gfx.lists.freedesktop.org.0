Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CA1614CFE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 15:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4262010E3E0;
	Tue,  1 Nov 2022 14:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C5410E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 14:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667314001; x=1698850001;
 h=from:to:subject:date:message-id:references:in-reply-to:
 reply-to:content-transfer-encoding:mime-version;
 bh=M+c3fHAi8vf/Y1ZnadlSrJEyVSCMOeYzWbnYwCypRaU=;
 b=TcwxX9ExID4SbN2LXO6OQ5FDf/NV8uvLoGfwl+BhUwtrM+kNlw4vzRde
 Qt5B6kOEo2qFXwdH3BFp7xzQYWjSxXtOUAFrFMCUvPKRRfq8KSiRKgja5
 QB43gWl7sZk0lEIdPYjt+pZp3d/1ViuIZtHFFv9qj0jBp9wYPFPya04cI
 hwmo7q7XFqo2n3gLufUgQojIjNHfJ810n74JtTNr+cNANa9ZquYuOX60e
 1/yjWJMsPfKhPQgTavYY0O1DjCSGNapP/N07+1ICHf6eNZU7O+ivFYBK7
 fLbbLWI24nxpgl7bc8q8d7Uiqw/QqwW6TDjezLTBN0hbrNL/FkEbzbiLE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="288861506"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="288861506"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 07:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="585023070"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="585023070"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Nov 2022 07:42:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 07:42:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 07:42:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 07:42:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 07:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KLitaoGfMi5MtgAMY+laFnZw74nHg4M1bf1IF4J+sUhc/+y17qb92Ok9y6SEn2vsyJ7UOw40ddOSi1UwXWJ1LasS300DWKxQOWRGLz2EDPpSqzNGwKywWjuSIWswNRZQ7IvpGFKmttYXYVWch1B6DAHMf9b9BnHhIc+PzcQpBTzHKhVae9+Giy2G+mfNDAASZjCpht+ktvGEEETUJQzby/PgMPYUARhElzh/ilGt3I6Bw2K1/Iss5j0jf7SDnXxoSOdKlrkQw1iMzmHkSXcwXx53e9sOhMmVzZmXgnVdaO0dUXvuseIEofLaBl63FH4bQdCOr+ZCMCEFbVwGX97O+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MRSV6sezhNjm52p/L4YWVtxtI/8i2mNHbHGx836FCtM=;
 b=fNhpFvrMNfD/VNcO91l02aqaLFNt85KSA2HZ/RkTcADDHA3BLCdXHEQgyhebku6lWy9x5gvNKHEXnk46894I34mGOiKG7yZNw4cyz/QJT0fWWoa3e7vWgxdpPJwvm3lzjWSKvr5rJwoVKHHKmfZYrxElRwACfrKUl7im/T5X6n+MpDQErPGXX7gSHPZAiMp++jLF+E67BPIRRvwJSuuFLLG3HKAo7KW3mXo3qUjFcdDYvJS6tsgGwX5x2cXPUhEFS42waRujs3rJYWUcq6kiUYv/C0yig+x9iwK/BQxnN6gsvIcX9wBJUAyqevnODRNY94QMzFMajNoyTaNFA/245w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DM4PR11MB6095.namprd11.prod.outlook.com (2603:10b6:8:aa::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Tue, 1 Nov
 2022 14:42:38 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda%7]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 14:42:38 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY57HqolpnXXEub0yKH9NOK4pvt64p4CMAgAAGsxCAAEQhYIAABacA
Date: Tue, 1 Nov 2022 14:42:37 +0000
Message-ID: <BYAPR11MB27100D0AFB9D23E926332901A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
 <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
 <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|DM4PR11MB6095:EE_
x-ms-office365-filtering-correlation-id: 16711ca7-f93d-45fc-c043-08dabc17526f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2mkDSDu7A3Zu3mcM5AvpnRfiMYBu8O4nH01jleY9GnRQSj3VP4x0ZpnDsOUuZKVIclFqNX1q/vBz/ElLtWsx08Tmq9ySgRVbCr34kmn/i1JGj50dR2qtXJLEj5pOmg42IOBUZAHQTOZoAXB9QReGean7A54AAa3hN0o0f7G7SX8lubbd0zD1fJaddCElw8jBQnDepm5zCM8Y+H/TRMyjjjJQJnrh4prxJdxrGxxbVrRQsclG2GQ0NY2biDp4+B0/Zbcc4L9CCQzj35sTppIgV/KayS8mlqBIbSWvIz1hCjjhiewwEiPyg0XgBx63xy0ksUQHWw9KIlf5eUMxoKuBfgqwyPht7FdqAdgI1b/GtDAB640HZP5ehlTHH2k0a8oP/ZZnj0uUi3FQ0cTFv9m4059H08j2cY1wlSPTYpt1/B0wD1Qa3xHtcdT5lHncSosEgS8VOaHVp3274+iS8wwEMuQS4pEPqIfScDYCJGtNSJiQw+mFFHjSh3P3EFrJTr9x6q2eUVmuL19AsmxQEW1gPktNFKt1Erbbpx0Mcw4xQ4/rT/H0YzQyzF/jQNp62U6QQdMTOWKi275f2lZFLTx7cS3AMBXs2nDxcYrzujAUjZCY/l0pFBfIaofn1Y5z6L2nZG+lNAYiglxU8PwhZEWBHoVGwTeEvmF7c/UN0ouvBMefZ/JBZ5dHxsuNoZ74jpasZK8kVmOh6I9sBv1/CtT65eTuX/AnKdPtsZtrVOaTRLs0UlXhwEcXtVwrisnK8GODNFJrxRI8MXS0K5OUeWDPdwAHWRbr81RJfUEuHBi3of0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(346002)(376002)(451199015)(8936002)(8796002)(83380400001)(41300700001)(5660300002)(52536014)(38100700002)(122000001)(186003)(66476007)(66556008)(66946007)(76116006)(38070700005)(478600001)(66446008)(66574015)(64756008)(6506007)(7696005)(55236004)(53546011)(8676002)(26005)(55016003)(82960400001)(966005)(6916009)(86362001)(71200400001)(33656002)(316002)(9686003)(2940100002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IYlx4iwL6Bc/yeqgxiSdzTT3hD3+zMH72AWDe0SM4MTKkLUg89u6BTRNDf?=
 =?iso-8859-1?Q?j1mwRdGphK41GAfoV1f1ZJ+UREFFzKGD/IlCTOYlyXriDbpBtKqvtlmRh0?=
 =?iso-8859-1?Q?gOXAdMz298ZFVDiphCvNAU9MaVrq4G8xlIUd5gDyt+dE4lBQ3k8C+Gk0g4?=
 =?iso-8859-1?Q?yP2oW01vS1Y+8HTLg8fH5jLcMEzO/09ZVCALXXmkbCydpLAvIuPpZtQMp7?=
 =?iso-8859-1?Q?ZQukxrs1F3CFMvn8Uv2aF0E4pkVpMw31ABLIkkS0UhFRf6ui4YZa3WQp3/?=
 =?iso-8859-1?Q?tjDYjBGc+lkOfpYtJ4d+LEb09XYZBmx6a/PUPbYUKPjc4fnT+6lhysEudC?=
 =?iso-8859-1?Q?I2YgeRWk/5EFppWTYcWjK4YLCHN5Sh/Yyvuj7e0aWQ5YXmoMsbJFg1S+hf?=
 =?iso-8859-1?Q?i3CJLO2Nx8uHeUtDqdpEaTcAqhSj6r4fheADKd79URbeme3cny6vu4OEPB?=
 =?iso-8859-1?Q?ho5iNSzoqoEEjza8wv4TOVrJRDCxWbWjJkoaP5XXBY19ktSDQJXRR6JVWW?=
 =?iso-8859-1?Q?OOuBsGJbkLDAEDLnhJZnFpBeA5AxQCGq6fbIpiFwpMJjXM6G8CykjcQGPd?=
 =?iso-8859-1?Q?Eh8YjjED0qCCeZ5OMgyEmk0ZYM1okNE11x4O8CAwoc61XwOE3R8S6lumBt?=
 =?iso-8859-1?Q?G3OKnZMcckd8lqMjF7wJMeOYLqQ85zbnErFYnoGjUSzETXs17+qmoEZtqJ?=
 =?iso-8859-1?Q?hmeUevvzamlKxsZjw64VuvSxZP0UvSo4Zci7l6ZETjpQHdgaSzn9N/72dS?=
 =?iso-8859-1?Q?VnI2oDHpE8TJNFAZBAA/0W3qq/LWxDa0HuZIIAwuHWU8+IheQLawfpTvIz?=
 =?iso-8859-1?Q?x7GLJ4iHoeygODtMpFfeNLVVQ1IRpMSHvlB0dAiWaYl+e5NgYj6wbkVCNG?=
 =?iso-8859-1?Q?RVH9qZIv3P6WNehvJ+rl/zJ8IbSVV4mi1443/M0pNtqBEzugDGNCsA8zLO?=
 =?iso-8859-1?Q?7U8M6L68iHNZHDnwfqO0UHnpuvlT49i+p3gvFQ8lagNnoDJe9Kk6+N5MkS?=
 =?iso-8859-1?Q?sfOtKPQBjx+8mi1CMdeRpbJDdhL5WdYCKIO3SftM62yvhPDSRBYVQ7M/PG?=
 =?iso-8859-1?Q?1j83KIjKPqkSTSZrxpvj9k4QfRprspXqbJi4lCG8LrA5UKO1pcfLkgSB3f?=
 =?iso-8859-1?Q?cVbCRm4urYFDjqXATl9qBfLKW2Xvr4UMEUp4lDjOK4JyoNH79hCsR1W6Tr?=
 =?iso-8859-1?Q?ITQVPymtV8K29K4zzkBbEhNkhrEI5GI8qXZW7kst54PwbzLqOZBNI/X0uF?=
 =?iso-8859-1?Q?nD8m5Mp+8ydk+QX86HzBj6gRaOdW3npyTLAzURUdguOVlBzD2Qx//QUvUb?=
 =?iso-8859-1?Q?aPmq+Vj+WkOHEQUuMGJXG0K7THkY8P35T+q3S/BADUSHkFhSMVhe3FtqNv?=
 =?iso-8859-1?Q?9ZqNnen88G4Qv0s/ZMgcyfLWilllafR3+VDBgDvEC4clLKw/StoDvgVOQ4?=
 =?iso-8859-1?Q?Ma6OFR8FM3pgg/QJMMWbLNW+xlz9QYF5IhenJROS3nUlBkDPtq7H5NsYp3?=
 =?iso-8859-1?Q?+FWo+Uaq9KpkslGjUYt4RSN5F/YAa29VqQlBpQ3PVdBhv4dpJxJsQtlt0U?=
 =?iso-8859-1?Q?UBpzUTdbxSYyMOBRTAA4tGkevmA4nBr4Ep+bf0OZd+OVqRfEYaIXPnLeX0?=
 =?iso-8859-1?Q?+1iDggmvJvTh6VC81JfJtydrN4A0XDRar2?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16711ca7-f93d-45fc-c043-08dabc17526f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 14:42:37.9515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lsGeUkQjr1F/g1Q7tu7bgUq897ettZZLAIn8Va8RbR4QQiIPFANwH3NkP1Jx/7GyiAMZzW01Kloa00kLSGkH+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6095
X-OriginatorOrg: intel.com
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
Reply-To: "20221024140607.25271-1-shawn.c.lee@intel.com"
 <20221024140607.25271-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov. 1, 2022, 1:43 p.m, Jani Nikula <jani.nikula@linux.intel.com> w=
rote:
>On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.int=
el.com> wrote:
>>>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>> A panel power off cycle delay always append before turn eDP on.
>>>> Driver should check last_power_on and last_backlight_off before=20
>>>> insert this delay. If these values are the same, it means eDP was=20
>>>> off until now and driver can bypass power off cycle delay to save=20
>>>> some times to speed up eDP power on sequence.
>>>>
>>>> v2: fix commit messages
>>>
>>>There are more changes here than what the changelog says, but the previo=
us review comments were not answered [1].
>>>
>>
>> I'm sorry that lose the question in [1].=20
>>
>> "But someone else may have turned it off just before we were handed cont=
rol, we have no idea."
>> This is the situation from Ville's comment. Agree that we don't know whe=
n panel will be powered off.
>> In my opinion, eDP panel should not be turned off before i915 take it ov=
er. If it was turned on or off by standard contorl (ex: modeset).
>> last_power_on and last_backlight_off would not be the same. So this chan=
ge should be safe.
>
>I think it's pretty much a hard requirement we respect the panel delays=20
>at i915 probe. If we don't know, we don't know, and we can't make=20
>assumptions.
>
>If the goal is to speed up boot, you should ensure 1) the pre-os=20
>enables the display, and 2) i915 can take over the display without a=20
>modeset and a panel power cycle.
>

After boot into kernel. It seems there are two cases we will see.=20
1) If eDP display did not enable at pre-os stage, this patch can save power=
 cycle time.=20
2) If eDP display was enabled at pre-os, because of cdclk was setting to ma=
x freq always.
   i915 driver will trigger modeset to reduce cdclk freq and run power off/=
on cycle.
   At this case power cycle delay will not be ignored.

So this patch can only benefit at case #1 (eDP did not enable at pre-os sta=
ge). And it is what we need. :)

Best regards,
Shawn

>
>BR,
>Jani.
>
>
>>
>> Best regards,
>> Shawn
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>
>>>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>>>
>>>>
>>>> Cc: Shankar Uma <uma.shankar@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>>>> b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> index 21944f5bf3a8..290473ec70d5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_d=
p *intel_dp)
>>>>  	ktime_t panel_power_on_time;
>>>>  	s64 panel_power_off_duration;
>>>> =20
>>>> +	/* When last_power_on equal to last_backlight_off, it means driver d=
id not
>>>> +	 * turn on or off eDP panel so far. So we can bypass power cycle del=
ay to
>>>> +	 * save some times here.
>>>> +	 */
>>>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_=
off)
>>>> +		return;
>>>> +
>>>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>>> =20
>>>>  	/* take the difference of current time and panel power off time=20
>>>> @@
>>>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp
>>>> *intel_dp)  {
>>>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>>>  	intel_dp->pps.last_power_on =3D jiffies;
>>>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>>>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>>>  }
>>>> =20
>>>>  static void
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center
