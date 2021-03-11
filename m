Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C3E336A2F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 03:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E566E438;
	Thu, 11 Mar 2021 02:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D24E6E438
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 02:36:39 +0000 (UTC)
IronPort-SDR: FfsGTGqVX98oK5GkBygsyS7k+ifn79X0xN+EduQH3HhJxMgK7B5wLs2ixe+dfqJaK1/EXs2mCq
 RLyokrIE4+5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252619910"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252619910"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 18:36:38 -0800
IronPort-SDR: oMsBLjDmqCJWbmJTn4YtfO/XR+wfq+Q/SOP+U/s2/PXJbCoh2DMx4lYIquiP/CHED/AKxjcOOb
 LYju+cVAkk8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="448135143"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 10 Mar 2021 18:36:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 18:36:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 18:36:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 18:36:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ag6wf8dRl1IJFgjvrpz37ZnXtMQezSudKyplAVeBUgl0xP/ZFOtGkTSUOvFf4ms0E/e8izDUseO75vIv9Wp5lPTBNXYDLfU+sQco+X6DoCSnJr/64Fmp8Rvep7S9lDOhj9U5m/Tv/0GZParMGYFPwn8meMZvq83RMljxIQKqj99eTmeX+lvEsrKfY19YkI1cjoxQ1GTKVKaqP0iHsRafgjg+lPmp5Xbkuw5cWYe51ba7BE0q14MDxDeYoNOTstZ5FD6Lc5J3DbjKLCrzGECAj8jPyKd77414Ol/grQs3M6vkSN7uqodkOqWz9SSi31XtGw05oFOXDpE64D/b0pG9Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brOdOVHL0nZleNgiCsQ1dxgfXKLyVin3gJlYLeDI9RM=;
 b=KVgtwYNhZ7O9ft7wkSg9DjK34DbLo7Yf8QrwVvAHlNaMf2ZLfF6uzLkAubLPUJxscQjCaepUbGaWfoRP5u8YQWYOiyvhwizboIMBoWFWMy7FzENgx8RviWTHfCX9It5k1RM8hUoCM/D+HHmOfCuieIs4E020C0dzogFCQsy71na4YOYQRcKJQpasSNmZ6BVayg6J/zgHZoVqTRHembafI2O+zCvl804rnxaKxlvQjJCC6peaFQJXKzPGT+m5yxaBcTveEoNU8HogdCjViTd4pNq1XpmVpaeJyc110nUC3yFKhyDJJ2I55M2cDVnwLgbqUzvuxK3hv+aEV7YrgvliiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brOdOVHL0nZleNgiCsQ1dxgfXKLyVin3gJlYLeDI9RM=;
 b=UiRNZrfMNFVgWT8Dsu7K0Qe+CrFuuP7uNvKvcSOYmoFWpP5FfL2RafFpm823nkq/TlAtlv88qrilnPCAKHU8LkS2daNNX4JBIdaobQL95m+q25wMqAJ3RZDTKlB7pzmNFaI/Pdrw1MiRTvv0RNfbGEOKbBMkt24ZCr749uatqgg=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB3503.namprd11.prod.outlook.com (2603:10b6:805:ce::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Thu, 11 Mar
 2021 02:36:36 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3912.030; Thu, 11 Mar 2021
 02:36:36 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3wgAAM94CABMGLcIACupMAgAAJ+4CAAQT8kA==
Date: Thu, 11 Mar 2021 02:36:35 +0000
Message-ID: <SA2PR11MB4969F7C55749C5C1F76E90589D909@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
 <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
 <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
 <161537369562.31101.16331696744154267554@build.alporthouse.com>
In-Reply-To: <161537369562.31101.16331696744154267554@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83dc3912-c3fe-4b3a-35a2-08d8e4367da9
x-ms-traffictypediagnostic: SN6PR11MB3503:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3503283A446CC30B0CD389C99D909@SN6PR11MB3503.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O6GL+SceIwTn0ncDQf9TJJtLjJM1pBQABFat0QMMy1I8QXzXzOnVKsUTX+qr55Fl8/638ybMzKYCi7QpLAH88k67RZ6dN4J5FocTVx3EWLvDp88trvorEyTSqg/PQokVS2Cov+ccJQupiLHF/y5iwf7jGsnNaMcT7jL+KCs45E6cRwJcK1jGmZt8EdQG4fOPu2KjyUsgv56x7H++mOaw/qMjsaB+bbLyllmezOzXolm60mqSc+wHfl9FVax4xfl8Zb4KrG3zPREnWz0bpj8ztsqvQar/ik/AKQGK0bxI6q7APjkIPl2Sr5r7bYSNICo7xzP3SdRtgF5MLQMP5QEbKRyegixZ43UiinS/1r73McrHuYXqDVjA4OW67OqQZa3zaB6vIWequM5A05ozJXESVY8SDYFv10cltVgzw5kgWVcOVQPxuoGx4YziKizbijZuahmcv9vA2IaoDif2QyYvyESZzXQ4BOHmbJy7v0p2lq72QSzpX7hPBPhk3RXPXX7zDto3HE7C+r2XOdIeS3hoPCkv0xLaSM2R2lzVLjZ9avImSy8FN5irz7fgI8bo4yQGjwW/GPRdXsTrh3/vnn+A7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(396003)(366004)(376002)(346002)(136003)(39860400002)(478600001)(6506007)(83380400001)(76116006)(8936002)(66556008)(5660300002)(9686003)(55016002)(71200400001)(4326008)(110136005)(2906002)(52536014)(33656002)(186003)(26005)(316002)(8676002)(7696005)(66946007)(86362001)(66446008)(66476007)(64756008)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?d0paVVpZcFRwT0JPdnY1UHVaL3U0ZVJvb0xTbWtmcEFPSW9GRlJFWFNaZHB5?=
 =?utf-8?B?UkJjK1BkbzlML0dlUFczZDAyejRiMHMyQmhuMHByZnlDTmRWeHh5QlhOT2VI?=
 =?utf-8?B?anArblhYQXhic0RPbTVyd1JyaGI5S2VJM3pLMEQ0WENqWkx1QW94bG54VVpq?=
 =?utf-8?B?MjlhUmNuLzFxNk4rcnYyREpwbXF1Vk9wMWs2VzdJN2Zja25MR3kzc3lmczI0?=
 =?utf-8?B?Rk03Qkx4UzhxY2NLTnl6bFJPR2dSTHZYRlIwbSs0L055MUM0UllOUUxEZk1K?=
 =?utf-8?B?QWpobzhqbnFUVFcwVlduT3NsQUltNldFZHlNaFpLL0RkYk9nVGkwQWxYdThp?=
 =?utf-8?B?Mng1K25Wc3ZEcEoxQklGNDltWk5NUE4vTGFBY01GRE5zUCtiRFR4THl2T0kw?=
 =?utf-8?B?cWNIUjl5aEN3TUNkaG1mSk5EVEdqeGpybFBQYWJqVnh2Q0l5MURZbWlodEhr?=
 =?utf-8?B?ck1ZcERvaHhxWUMrQlJXdHhPZ3VWZXVGaG16cnByek9sdG1aOVBFcW5GaVFp?=
 =?utf-8?B?YWxpR2J2c0c2YTNRSGgzTWRwNVUwMXExZGdZUGNOdWZrYUNpL3B1Uk9uek5C?=
 =?utf-8?B?L1RBRERLMWJ1L0o2WUpudVJEWjJJY0g3TlRPZW1TOHZ1eVE4dHdhemFmb3F3?=
 =?utf-8?B?bTRIbldGaGFRTVFSRlQ5WUcxbDRtdVdrMEQyMHUybnlIaDhhdnZQOGQwajF2?=
 =?utf-8?B?SWovclM0YXl5VzJ1WVdOMEk5dkI4YlNKV1F2ZHRuakxiZDZsMEkzbTBxRVM3?=
 =?utf-8?B?NE5HektKR1FDbitoUDhsV2o1cjgvM0wxZ3dhSmtNTFpwcGk5dWVpdlBzTHp6?=
 =?utf-8?B?bkVEUm5YQVlFV0xvZDdQNmduQUdEV0tldU1GY0NkY0NQK3dieUlVNVlVa1Ja?=
 =?utf-8?B?ZElhakg3VVhqWHV5aG53K1kyWXZKNDVNdEYrZFREUjI5SEJVRGhBb3pYNHRX?=
 =?utf-8?B?cHgxZDErVmc1SmVvbnZ1bUs1VEdRYTBYeG83eGNLRkJUbHNCK29tR0thLzhw?=
 =?utf-8?B?aTZHeVFpeEVYeHFqZ1RZRlV2YUkvMGdPVDlUOGJoUUd5UHZic25pUlRMOVRy?=
 =?utf-8?B?azQ0WFZyQTZEQmZYTWE1WU12NHF6bnU4TzBFdlpiSDdlWS9aWCtWL1JMbkFk?=
 =?utf-8?B?eWxTcWtWWjd2SFhvUE9vQkVTVkVUaTdjdlNXb2pYNVJnQmMzTXk3NHV0MXRX?=
 =?utf-8?B?aHpucHdrT2JHeVhLREEwTFp6bEpodUhhMXVZYmdubHJyTjlHZjg3UWdwcU1M?=
 =?utf-8?B?blhFMEh3Yk04UE91RXBvVlhkTjZXaVRJZjFpWG1PN3lyTEY0bXZ0bHFuL3hV?=
 =?utf-8?B?eEVlSHhzWnJieDRYdVhYMEk0U2pJdE5QVk14OVl4VWZxRzVJaDN6UXpOYkY2?=
 =?utf-8?B?b01sUURnbllKR0tTdVB5UG1uKy9uYXpFa1F6VjZaa285WlpoVHFQSDlaaUN5?=
 =?utf-8?B?MTJpTmJTSDRpaHBvdytqT3hYRTFYN0lXaXcyT2pzTVA1aWVlZmlBMnZEeWZS?=
 =?utf-8?B?RFFzdGJRQWVkZXlvckNma1NSU09jK3ovb05EbVJkdC9Hb1ZsaE1zdUFpd245?=
 =?utf-8?B?bEdxYTBFaXFZOXJuOVdhL1o4QXZpK2dNYnl1NTkzeXJ5S0NRcG5yVU5KU2l4?=
 =?utf-8?B?c0ZZbmlrRmhDZytGNHRyV2JiR2d3R3loRlQ1bnkzanhTTE5QaWtVWnAwak0y?=
 =?utf-8?B?eVo3cnFPcll2Uk9LejhJL0k2cStBSFdiN2NUYTN5ZHdHQitMT1FNbU03dXA2?=
 =?utf-8?Q?S9bKllba6DDRE6DWhhfSOHdMNlXKdif/o86lEur?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83dc3912-c3fe-4b3a-35a2-08d8e4367da9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 02:36:35.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ImoZDOAlblhJUxHkjyPBmEVslsHfSrvFMTp2P7bJ9Wdu49pJFkRim+XOYumnBCZ14ZLxEiZqe4g6g9G3pUU+gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> The issue is that if the regression is reproducible it means that the broadcast
> mask is no longer correct (or never was, one or the other ;) And another w/a
> is going astray because it depends on the previous undefined value of the
> mcr.

[Chiou, Cooper] I think we might focus on this w/a WaProgramMgsrForCorrectSliceSpecificMmioReads,
this w/a is not only for CNL/ICL/TGL, but need to be applied in Gen9 as well.

I'm ok to add wa_init_mcr() in gen9_gt_workarounds_init() as patch v1 to make it simple, and this patch can resolve Chrome VP8 hw encoding issue and no performance regression as well.

> 
> Which raises the question as to whether the hang prevention seen here is
> also because some other w/a (or other mmio) is not being applied to the
> relevant units. Or vice versa.
> 
> Either way there remains an underlying issue in that some register writes for
> gen9 require mcr being set that were are not handling correctly. Changing the
> mask here changing results elsewhere indicate that the issues are fully
> addressed, and the fear that undoing some other mmio is going to introduce
> other subtle hangs. And we are all blindly poking at the issue as no one has
> access to the affected skus.
> 
> What would be useful is if we print the value before changing it so that we
> can see if we have any machines in CI where we are making significant
> changes to the broadcast mask.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
