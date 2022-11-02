Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 913CD616554
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 15:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C77610E494;
	Wed,  2 Nov 2022 14:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F2D10E1C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 14:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667400632; x=1698936632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=b5jKQ/KO/8KsngBMj6yxps5/fUcn+uVy65QFH1rxMno=;
 b=QXomA2gPGamuWy7YcY3nB4rLnDRRI8ngT3Mo4VYXZWJ7qXwAY6sPdxwZ
 htM32R5+v6CAJ9zTTA+Cr/hXifIGEyTMtC4A3TsHz0u1/yTTkLSI00GjC
 BwI0ncCmR4p4OiOTDC6VZAgbChqVB9dNprxkFEbjSmM2pdXYsH+7KyJWn
 aLfBBDbMvEnP2uNMKJoYXZNIO9lijRWweAwOnx15eDqocHZwCCiB/TGtN
 tUIcOYOinI6Lncal7cZPJ1mra4F6BD10kxU8/Vb5pldZUBgUCAf1PtsAQ
 DGW/Az7rzmKpluRbU/LNV97U3GXq9IGHOEPxDSLv1dB45hvmiOre9muLF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395736612"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="395736612"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:50:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667605529"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="667605529"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 02 Nov 2022 07:50:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 07:50:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 07:50:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 07:50:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpTPl4A+uXVwseOWg/ukUxZ9AcWL0zcwxAMJ1rwopvcjrUYeqfHEZDgIralzv8lgePe+MiQPALyjl75Pes0jesR+hzWY7yG8U3RtMCSTyLM1XEwkBzY/VasB7zN+6fY7q2EEj+bVxnW+Usj5AsZqA1SXFBM9vcOPzPmzl+CUFL/XA7AeXoNidPzbVkrCH9XxGaV8sS1H/sCgPN5I8ytQ/5J/qDeoMpU43b/QyWHnirkqZIZ0SQ6UkpaxRbMBB7QeiLW7nOBx5m9kuH6o9Bl3e1K67d1WLU4R7oDJSkxLDSTAlUP015lfSoEEBN9B9jMFCxgFXMyUgUelbl9RS+9/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCk4YF/K22VoE8d1+S6srH1rpj/J96iosLX5bBqpJYg=;
 b=U+x8HPTWZDSSCuUCuZGPFbJE1J8ebX2kt6tOeNnGz/uZkKE8LwKrbKCCqu+oS5Hdvk4SWNv9YNsOSzzJzjP8b4uCN6DZZfJy4iHeTcHhohDiXtZo3Tl78tipg2Tf8VgYE8mwloIqUps2zeai/Px2cBRHgDA/YCzHnmvgCb24RgN4tEMvvoWmK/wxGb1VX2xtHbnIniE02znnSjRC56RwKbW0VkjR1qHTIV6A5L5OTkmSrv8wHi82MccRfPUistJqU12SFhNS12CvsK4XLsm+JzsPnXeFiXMuMKdymlZc20XWzQUgdsUM+/2YqfWIoP9xZBzDZcLwH9m3LqJpN+BL3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Wed, 2 Nov
 2022 14:50:22 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda%7]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 14:50:22 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY57HqolpnXXEub0yKH9NOK4pvt64p4CMAgAAGsxCAAEQhYIABTrKAgABKICA=
Date: Wed, 2 Nov 2022 14:50:21 +0000
Message-ID: <BYAPR11MB2710D86E0B343A4B90DCF460A3399@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
 <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
 <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
 <87mt997j6y.fsf@intel.com>
In-Reply-To: <87mt997j6y.fsf@intel.com>
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
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|CY5PR11MB6090:EE_
x-ms-office365-filtering-correlation-id: 4859b053-0158-4650-a3dd-08dabce1917a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vGlfsqm3OsMpQHXGgnHIYvP7MSqy0+/SXW6Hn4ideN25LPbT1bKSA0ew3Y+hjoPujHXo0B9GglUwndyU8PaFk0P4AF4kEo7VaqEPILXCVRmZHwV1JWXf9yFsQ1Dw0iTO1/VZnlYMXBMMj7q2XOPlBMWmw02UlW1I0Uwu56JbB2GgA7EJH8MKC3qthT967zGssR1/R3gErIm88cxi7X9J91SvwOEB2rIC2339/yoQFy7OLdJp089Nk3M0bh5vFvZYYBdaIQhLGu2fcaSjicRO1UvK+xKqLY5hGdiDGXvoN0++WN0WI+kmbsGgq2vplht/VMvYP9qEj9v7qs3/bEJZRcyxiC9sW2UfHtm0zlzMFLL/M8yW8cDPHYKEcqiLGxknmr+5az1M8reNYe595np3Tb+0JMeChlxbLTgWF24SwmwQOEcvRraiP27GRnhA5BYi6k/LZFBgmlskX8zXcwOZpup0WSiTe8pHgWtXYtLCoXGL8Y7adoWxSitbjHdaJt/Bl/NPN17xyocNSvMTlYNAw118bIsDxi9Wf9Vf2Ac5ZIHv9CPBej+5kr1D+LnaO1rURXp7/PR+pxsrqRYKDdbjXSkiEjFkjPsjnp1JMwxvLoNupx1XlrhiD59W8maU976Fr/gQeWQKSpypgs8htJQd+2lkWFyCsyVgH3jcinRLo2yU2Le3bxK5EHMOxgCL2lsFcBgxeibOk2mM/D6qqP9ujMQ2p+AWfHqCXjoiyf+YHkK6MwhokNLgxMzfxF7OrPQBozccNKv9IAQzOzcTwrFM3YKRGOQBXP7Piw/ZKA2PzAs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(39860400002)(346002)(376002)(451199015)(478600001)(41300700001)(8936002)(8796002)(5660300002)(52536014)(54906003)(316002)(110136005)(966005)(66556008)(66476007)(66446008)(64756008)(8676002)(4326008)(76116006)(66946007)(55016003)(71200400001)(33656002)(83380400001)(38070700005)(122000001)(38100700002)(82960400001)(7696005)(6506007)(86362001)(186003)(26005)(66574015)(9686003)(55236004)(53546011)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6HC00b+2pRd93u8ekpO65ldfh7JW3aDZlkk7Kqrato4/5S46b/8hYK50nh?=
 =?iso-8859-1?Q?z5t5oMyZSdwVxtWCpy0MXwgaj/iQTz5HDG1Vm3wLKwNLiWeFCdGKU/hISF?=
 =?iso-8859-1?Q?YG9YR2kHWJJjwOm1RWTNXd+waOUKAyrfwGCu8uSSIG29IYp17xdAX90F3r?=
 =?iso-8859-1?Q?+Hqq6OgRq1mpWzv4/ZAuop/IO3kiFrM7fP3jstpveUybqjZopoHrgN50KE?=
 =?iso-8859-1?Q?jiIUKUOsdxRx5Nc/nOW+MXIWfBJX+QKMiYQOo5/JcDRPaCQkC/ZyIr8ul+?=
 =?iso-8859-1?Q?HBj1pTMdMU+eLj+fU4reljsIo1CUJl3zZKseh65peYLg1pqqdp6cA6uPoe?=
 =?iso-8859-1?Q?ILgIBVp/GwDiiaGRULku3YCR5arv9f22Gmnzptobx8XTBpKCD9tCOVGgkq?=
 =?iso-8859-1?Q?4ZcwxcgXzur1hxgCA1Kth3MRS1HNtysBc8IHnFEpiEC5Xh7dxvGJj+A1fq?=
 =?iso-8859-1?Q?0rEVjiZ+bgXOOCdrMTvVUoom95dH75aH5nu7VyjTzhCFh/Fov0w/yTrcXc?=
 =?iso-8859-1?Q?RlrFZnLtvkIBDt0sAb25hwi1Sh6uAscZ5dcULY6K5kCVdV8ukciruOrpVd?=
 =?iso-8859-1?Q?7qUJ943iHMCX2xTFzyFNAHygbA6IwWej0fZtj+0YICok7bn8xBVjV137/2?=
 =?iso-8859-1?Q?2NXeIW4fykn6i0ErS7Lx0Y12NK5sMMAHmBpiaDueEIUfCqKZMX4RR1AHL0?=
 =?iso-8859-1?Q?+scrrhL3j76qktumsjDCweXJn1+D/yQ8xSB2R9DaWeqH+pLE70LbxCEe1L?=
 =?iso-8859-1?Q?Aa9Ss4UbQ8f/sBKrbX79DS3/+Z+tPnSVx0gCjxUhjggJFn6eIBk2zHz6SS?=
 =?iso-8859-1?Q?3VnseZH+AR+3h9LY+Sa0r5zkYmxtDr/9FWe9dNZId8JsgTxckL4Q5JfHor?=
 =?iso-8859-1?Q?+UFep4fZHyldS+0YabXseyxjisUBl7fZcL/HxlZiMA1xM8dVBfy2QSBNhc?=
 =?iso-8859-1?Q?zlv9oXZbcidCPqsssSffRO3EMJoWuepgyDH3ttU4f49Vlvg+FwNVX5jM37?=
 =?iso-8859-1?Q?ioagXBWzYLTp5O9CNLmxMVnT9AgWBIjQcjtuL9nKn4PAV4YnhDk8YlbcOK?=
 =?iso-8859-1?Q?Wt1tOCVDn6e5dRRiKeobMg4gw4t512TPlzkqOGZwV+bcOZ5Bh/Hem8TGkp?=
 =?iso-8859-1?Q?uvvDrZU+rQWZGN5K8rm5jD7C+1tLuZ4129wz0XX7MpS/xSLPnHVJD823dm?=
 =?iso-8859-1?Q?HzFUcPtHI6cRgIQp4svo5PE6wf1HYWYG2yxDbZXFciVslnhmdarDbl54xc?=
 =?iso-8859-1?Q?Bb5OR6eLhoAQKe8+AhFv9kGDRDUJyNaYRzNHK6buRAQNQDShwmTKqYtf7b?=
 =?iso-8859-1?Q?sBQiQDY+UhN55elwsVgKiG38XLOtwXLGHUTAbBALyPovULRPr+/cQ0+H8F?=
 =?iso-8859-1?Q?EFPHaNL5WbmfQb97KnNo7c6Ajg60qu9+6kA9Tte2c+vITY9jYYmHM4VIzB?=
 =?iso-8859-1?Q?C1mdjbwhdzGrHaM6/48nwT1jKl6nP/XFYMVcPJhrvrQTwRpYmsHoCDHpfE?=
 =?iso-8859-1?Q?D64e6AjcK9460hHy6U6vW5DUIlB/aL7jxLFH2TgCRJRj/3wa0itYNE5EyR?=
 =?iso-8859-1?Q?0B2Jm8bMoI+ICNf2pbGnI+kF7dPBC3qYkzgSo4l17sOJ7ig+77b+p3louY?=
 =?iso-8859-1?Q?y6dVVmzpLiwStlM8TuJgZ+Lnz86YxIKD00?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4859b053-0158-4650-a3dd-08dabce1917a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 14:50:22.0274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CbZeIPu5gpSdCXP9SQ36dbsDRe+Y6JcW66wJo2mHA8xX4dNJUWKOq/GbBgQV/MuqUe1BSuSV6BJh/wErZKM8Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6090
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

On Wednesday, November 2, 2022 6:19 PM, Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Tue, Nov. 1, 2022, 1:43 p.m, Jani Nikula <jani.nikula@linux.intel.com=
> wrote:
>>>On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>>> On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.i=
ntel.com> wrote:
>>>>>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>>>> A panel power off cycle delay always append before turn eDP on.
>>>>>> Driver should check last_power_on and last_backlight_off before=20
>>>>>> insert this delay. If these values are the same, it means eDP was=20
>>>>>> off until now and driver can bypass power off cycle delay to save=20
>>>>>> some times to speed up eDP power on sequence.
>>>>>>
>>>>>> v2: fix commit messages
>>>>>
>>>>>There are more changes here than what the changelog says, but the prev=
ious review comments were not answered [1].
>>>>>
>>>>
>>>> I'm sorry that lose the question in [1].=20
>>>>
>>>> "But someone else may have turned it off just before we were handed co=
ntrol, we have no idea."
>>>> This is the situation from Ville's comment. Agree that we don't know w=
hen panel will be powered off.
>>>> In my opinion, eDP panel should not be turned off before i915 take it =
over. If it was turned on or off by standard contorl (ex: modeset).
>>>> last_power_on and last_backlight_off would not be the same. So this ch=
ange should be safe.
>>>
>>>I think it's pretty much a hard requirement we respect the panel=20
>>>delays at i915 probe. If we don't know, we don't know, and we can't=20
>>>make assumptions.
>>>
>>>If the goal is to speed up boot, you should ensure 1) the pre-os=20
>>>enables the display, and 2) i915 can take over the display without a=20
>>>modeset and a panel power cycle.
>>>
>>
>> After boot into kernel. It seems there are two cases we will see.=20
>> 1) If eDP display did not enable at pre-os stage, this patch can save po=
wer cycle time.=20
>> 2) If eDP display was enabled at pre-os, because of cdclk was setting to=
 max freq always.
>>    i915 driver will trigger modeset to reduce cdclk freq and run power o=
ff/on cycle.
>>    At this case power cycle delay will not be ignored.
>
>In case 2, the effort should probably be spent on hardware take over using=
 the same cdclk as it was.
>I thought this was already the case, but maybe I'm wrong and/or there are =
corner cases.
>

When cdclk was the same, it means driver will not trigger modeset and keep =
the setting from pre-os.
If so, this behavior sound like fastboot mode enabled.

>> So this patch can only benefit at case #1 (eDP did not enable at=20
>> pre-os stage). And it is what we need. :)
>
>I understand a typical T12 min (i.e. from Vcc power down to up again) coul=
d be, say, 500 ms and it's a long time to wait. Especially if the wait happ=
ens in output init which is all serial and synchronous in probe.
>
>However, you're basically asking us to potentially violate panel timings. =
It just doesn't strike me as an obviusly good idea.
>

From my point of view, pre-os initialization already take 2~3 seconds (pane=
l power is off). Kernel log in below shows the first time driver try to ena=
ble eDP pwoer in case 1.

[    0.957991] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked] Turning [=
ENCODER:235:DDI A/PHY A] VDD on
[    0.958021] i915 0000:00:02.0: [drm:wait_panel_power_cycle] Wait for pan=
el power cycle

eDP panel power never turn on before time [0.958021]. So the panel power al=
ready off over 2 (pre-os) + 1 (kernel) seconds at least.
In my opinion, 3 seconds already over the power cycle delay setting. That's=
 why i'm thinking maybe we don't need this additional 600ms delay in this c=
ase.

>It might be a good idea to file an issue at fdo gitlab [1] and attach a dm=
esg with drm.debug=3D14 from boot to at least the first modeset so we can a=
ctually see what the delays are and where the time is spent.

Here is the gitlab issue and you can find kernel log in it. Thanks!
https://gitlab.freedesktop.org/drm/intel/-/issues/7417

Best regards,
Shawn

>
>
>BR,
>Jani.
>
>
>[1] https://gitlab.freedesktop.org/drm/intel/issues/new
>
>
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
>>>>
>>>> Best regards,
>>>> Shawn
>>>>
>>>>>
>>>>>BR,
>>>>>Jani.
>>>>>
>>>>>
>>>>>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>>>>>
>>>>>>
>>>>>> Cc: Shankar Uma <uma.shankar@intel.com>
>>>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>>>> ---
>>>>>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>>>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>>>>>> b/drivers/gpu/drm/i915/display/intel_pps.c
>>>>>> index 21944f5bf3a8..290473ec70d5 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>>>>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel=
_dp *intel_dp)
>>>>>>  	ktime_t panel_power_on_time;
>>>>>>  	s64 panel_power_off_duration;
>>>>>> =20
>>>>>> +	/* When last_power_on equal to last_backlight_off, it means driver=
 did not
>>>>>> +	 * turn on or off eDP panel so far. So we can bypass power cycle d=
elay to
>>>>>> +	 * save some times here.
>>>>>> +	 */
>>>>>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backligh=
t_off)
>>>>>> +		return;
>>>>>> +
>>>>>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>>>>> =20
>>>>>>  	/* take the difference of current time and panel power off time=20
>>>>>> @@
>>>>>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp
>>>>>> *intel_dp)  {
>>>>>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>>>>>  	intel_dp->pps.last_power_on =3D jiffies;
>>>>>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>>>>>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>>>>>  }
>>>>>> =20
>>>>>>  static void
>>>>>
>>>>>--
>>>>>Jani Nikula, Intel Open Source Graphics Center
>
>--
>Jani Nikula, Intel Open Source Graphics Center
