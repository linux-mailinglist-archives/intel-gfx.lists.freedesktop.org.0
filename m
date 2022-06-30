Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CE8561FBF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C587A1120D3;
	Thu, 30 Jun 2022 15:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10EC91120D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656604561; x=1688140561;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HWMCeaH4lrJRyXy1HmVwRKwJUyVrWw+DJgf4oVdhfAE=;
 b=LM1NSdXC/4rcLwjTQQerF4yfPSm5uo2oJfm0p+HWoLrQN1c+UKJAqLLT
 2X6S84fao0UxWp+/3lTbfrA+gJTsDhDzE2zhO61y26dRqlxdxtCLkwd/a
 +8ENXmAvmqQBnnV04I3IPIIJqqKb3c2ZjpX0jDuydXqtfhiPHwyMNxCmX
 rbda8+M3/OJAUIOHlJnC7EDY99EWoQWsTBaSRFie4Qh77tG4TRdlPbtp2
 9vkzTkTP+jH0lIcgGRwgNDPx2MAG0Ps90MHNpttk7b4fh+cefefrDtycX
 FXKeVwhdn3Aj06AGA7QRp/8zyNeMLkLTItA1NPUns5ViVaLlLcfZ4ig1X g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="346376760"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="346376760"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="595831250"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jun 2022 08:55:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 08:55:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 08:55:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 08:55:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=obAhRIHLa8RcSfzyo5g1qC52kuf8/+GYWebiqO8luy4xpaeH0nEN5q7RmKJV+VqnKwdm1ribP88dPLN4B+7RByE69vPDQ2/pfURSdn8LRTD4z9/EVUAaOziE3Mpfjgl/3rSKs7Xg2g50jLucy31s9FQ2cy49rAJQecuEBU7Bg0mNmbIgy3dWkWt1GaM1cNa81W0AMYunELLMkYSd0TiTP4oBxtjrunrbOa18zlkX6U9XXPcShnXO0Kj2ZXcZxa/FzZEN7UNHXazfcmiHLv/cUhCo+Odk9abl+HNQWt7p4CB1JUEuhf2iP3jr/CYhV5Odep0MYzDDOZuEZFr9Cnsxog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HWMCeaH4lrJRyXy1HmVwRKwJUyVrWw+DJgf4oVdhfAE=;
 b=Dpw03S7zIPQdkRj8j+m+SM302aoEIh5ZIt80EaQ0KKAf6iNlbbeKd/srMtpFZ1SkTawCKDpznFsw2Y3vmt4VrSjFXiUf9XpmmlksJvJrSIcAqgtc99Jcjtvd57afqQHMQP0/4uWLkuCNmxeJFDjFZMKS92d52f01UUc8QcaljKvpUxFo4LlKTC+PAdAlrx5J7YJwks2mv8YgnNZoyHg+hcOwJ48QHCoxJ6nR1SDXXcG7kxO5MdmsjvAMlxCajcl/3uNO/S6MUusc1e3PjAF99/dP5Yo0DOHUUm2Qsyj5HH36XYgrvoBmT1wjbMtbdZo/yIEljkn4efO8+OKSS9+dpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN6PR11MB3088.namprd11.prod.outlook.com (2603:10b6:805:ce::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Thu, 30 Jun 2022 15:55:57 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 15:55:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
Thread-Index: AQHYjJMpsoIgoJLh9UWkCMc8akHKmK1oGdew
Date: Thu, 30 Jun 2022 15:55:57 +0000
Message-ID: <DM6PR11MB31778640DFA620D2E283AE5BBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20220630150600.24611-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2d17d24-db4c-428e-c354-08da5ab10553
x-ms-traffictypediagnostic: SN6PR11MB3088:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pT5kIDsINpjHqx3+3muRRJyxtxRCyskCMzjmp4BbxoLctcB1GNXkcAchLNBmmnUBOj4Fp9xIE56VZ3+wrCzHUCJ9s3cdJVWXWoDj/5V2JAtmv9pN5ZC1bA/c+R3MKvzYULNCNNdC50GBp1tpAXDJod+yonGVb4v3kgBwh4pZifOf0OnRJmfZxkrq+k3tulVPIXhTpnMb+59WdJ6jIuIPNgSbUeHvVa5WVv5wr6oH1/AU1K8La5u/RvlQf9TlKlQmw2Gl1AP7XKfaeNwW8MhMfo6Ydt7USvshq9rEaBDEqEkQASiQCA663dvnH/hDY4VKOvAVQkwzZcXy9lMuBr8loulhNNlWAGmN3ynFthYJPDsuZBtauo2uEjjIZv10fXtxEgRydK9HspizcUKBVsY89K0UaUwbZNkqgbrwHklawpRxzsD5PWnQ7G1Z046fqz4pfhqV7dnY/gGTNBJjq2Pzt+16ucVTq4KGMxK/TVCHssxv/Gf+2dBS+7xg/vVkwy9cbLgXdcUg0TtQhMy5PcccUdK9nisA+C0cIhJVP36G0N1QlWbFpCbF/FtvZh7og5DRit6nfz1ezyOw7SQG2QUuwj96jjGOCGnc7zjWJoBoLO3kZImu+FgsANxz5luvk9R0xH34sk+dBFuGXMET2yFA9y6DBVaeVxerJ2pIiTpghjTxq2n6xYOmsjehV2S+7yy9QLhjqQurexwMYRM5mOWswmO8YBrX1meyI3Djtw8cGHqn6b+/rlnGEE4tL5GDeEiaLzYY8ii50fICaRLt4EiwaidrHT013Tc7rKVLsP80+sWpVEUgeqI6Gon8YAj3lQzKdj7tL7pNwnTHRH2QCC10QMyLVVIDCbpT4FsRnIEarlM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(39860400002)(376002)(366004)(41300700001)(9686003)(82960400001)(66574015)(186003)(110136005)(55016003)(26005)(38070700005)(122000001)(478600001)(83380400001)(6506007)(7696005)(53546011)(55236004)(66446008)(66556008)(33656002)(66946007)(66476007)(2906002)(64756008)(76116006)(71200400001)(8676002)(86362001)(5660300002)(52536014)(316002)(8936002)(38100700002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enFxMmx0Ky9nMTYvQ0RvWjlTdzkxVDVtVW1IRWtDYy9aNkFDbS9vbm80SDdP?=
 =?utf-8?B?T0p2d1phSFJ4clErVkZvWnBHNUFxbVNLUGJvdWdNY1cxZE4xTEhYWlFDeDY2?=
 =?utf-8?B?RG9XNDJMVkl3OEZUeW1sQnExQ0w5VXk5NDcvQXQzTTlpVGhHdnBjRGtvdWd5?=
 =?utf-8?B?QlBRNVdKdFFpT0dkaHJHckEwdmRvT2RPbWM0dmFMazh3cisvT1lVbXBRNWRN?=
 =?utf-8?B?Umt2K212OXB6ZXNsNEVmWEJ2NEx4WXZkNkd3ZEtHbDcwWlh3NTYrd1RwS3FU?=
 =?utf-8?B?UGlSZXNqSGVaSnp1b1FYUmVHR0lTbXBheWFDOERaSUhjcmV2eU9zOW1qWDRR?=
 =?utf-8?B?YkhGOXM3REFJb0FRTEs4Zmlad21RendRVG43cEhVNmJIc1hZbGkxRTB0T1o3?=
 =?utf-8?B?Z1B1KzVlTHgzSkN4ZndxL25rT1NiR1RISzJ2MHVYUCtDQzdRSkFUZlNKdUJn?=
 =?utf-8?B?SURyMWRaVG5XN2FUZWhEK2EzMGxDTGIzSmRGdHY5T0JLeDd1Z0kvcTllY29s?=
 =?utf-8?B?MzlHYlhMQVVMZ2ppVHpvNHUvTHJkQjU2aGprdGUyb0o3ZVhFVTlmRlBmTlZJ?=
 =?utf-8?B?ZGZQTGg5YmtLbnRRdmVCZ0pORjRyeFBMOW5aVGRzV1A2dUxzU0NCWTNwdm5D?=
 =?utf-8?B?cjZ5VXNTTFdYVVJaZG5DM2F6SmFBelZoUEJ2b3hNTDNrSkVjMTJIbGk4NUdh?=
 =?utf-8?B?dDQxSU1waUE5UUtZZEpidlFFbTExWXluWS9lZ2ZxTGtCVitLM0psTnd0cmg3?=
 =?utf-8?B?Sm5VOGVkQk9CTzZzaktvbXBHOGNRVTF3eGdONDNYSVlSbTlqdldsWHAzd3Vj?=
 =?utf-8?B?dHBNc0habGd4K0JjdFdRN3FNVFBIVkkvSERqTnZ5NmVKVnU4aW96MktDRXVF?=
 =?utf-8?B?ZWVKNFZKa1pZc05hZjR6VFVRSzJwbnpBR3N1MXp3TDY0dWZFTUNITmZhWSsx?=
 =?utf-8?B?WDNVcTFPZ3EzTUxid0V5ZTJiQ2gxYlBvTUpiL2dBK3B1R21aU25xVzIyTVNM?=
 =?utf-8?B?b2JWZkgyTnBkcENndTE1SmtlNkdnRDhVRVhWWHdBK3F6TVdrUG9SOVNra25o?=
 =?utf-8?B?SUs1dGtkd2phOXNIN1JZRWZ1cm1EL3dzeGlZNmVJWFZGd3JXeXFDOU1NcE0v?=
 =?utf-8?B?TWdsYlFtUU00bDhRdXFzbWs4Z3g0aldxLzJ6amQ2Vk1OSi9CS2dqZE5QbnE3?=
 =?utf-8?B?Y3E0R1puMTFVL3RxQ0hteDdIUjRVQk9acUVxSVI3YTlGS0F6d2tvYlpoRkZu?=
 =?utf-8?B?Y1RYU0ZDVGZnWkREMjFIOTJNOUZBWEZLLytQa0dTcm0yVWR6bUhwSmdxcHhS?=
 =?utf-8?B?c0toUTVWUnNTK0VCQXdMYjV6V2MvS1N0YXhoa2RFUWxVa1pXRGR0aDJtd01a?=
 =?utf-8?B?dWZTVWZTYXJ1WFd6bXBmcVdzVEM1TVM0RmN2ckNnaG5SVVNTWWl1c0RKeURy?=
 =?utf-8?B?UEEwZEg2SGdSSDJqMEVFY1RtRkRVa3diRWt1VWJZVVJyT3ZqbFRaQVhlN3Iw?=
 =?utf-8?B?blc5UUlWYStaOVNGMnovelkwNDlRNjM1MWZYUml6cnBsNGlFR215cTNtZGlX?=
 =?utf-8?B?UFpFMlVmelpXT3p3UWVENkxjNGVQT3RsZVA5ZHh4V0EzNlhQRzh6K0EwdEZr?=
 =?utf-8?B?THlQUjNlR3hPQ0wzZUloZmRmc3RwMHJlY094alZVMDVwQUZjTGgxTFF2TjdM?=
 =?utf-8?B?SXE5T2NmVmQyMkc5VjcwL3lkUGtFZFlPY21EeWRVdmY3OFAvNkNUb3A0aUNx?=
 =?utf-8?B?NHZISzVFUkk1dWtyVktqb2UvVWVDYnJzWFBjNnFScGJtNW9FNy9FbFFuNHhR?=
 =?utf-8?B?NnlyeFg5ME1NT0g2STdBaTJtK3ljSEg2a05xRVptY1NyUlo5a2lDZmQ4U2pF?=
 =?utf-8?B?QXc3RUg2Uk9hUDd4dVQ0Z0wxZjcwVThrdEU5UlhoVngvZEtWcHM2OU5uRFkz?=
 =?utf-8?B?NUdaNjF2ZmJjUUptRXV6WUZYM3VJU3EyenhCWWp6SmRwK2dCeXlsT2Vlcjlj?=
 =?utf-8?B?c3dJSytTem9Fejd2Nkd3TXlOckFUZ0RsRmQvempKenFQRnljdGlDWnBlOEJJ?=
 =?utf-8?B?aWZRRkMvcnRPdUNxQlRRcjJuUjg5WWlROU1zQmdOU3lYc09DNjVCVmsyQ0hJ?=
 =?utf-8?Q?WsaweMtE3GuGmm9iNoGfnuynl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2d17d24-db4c-428e-c354-08da5ab10553
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 15:55:57.1120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7j1TW6P4RrQxfU/pMp0sTUtEThxpiX+56ajclFCdFt9Y6STc0WelkUnyhu6g5sJ0nlI9WRDyKi/2P/2hs8FHDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3088
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDMwLCAyMDIyIDg6MzYgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDMvM10gZHJtL2k5MTU6IE51a2UgUENIX0pTUA0KPiANCj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEpTUCBpcyBiYXNl
ZCBvbiBJQ1AgYW5kIHdlIGRvbid0IHJlYWxseSBuZWVkIHRvIGRpZmZlcmVudGlhdGUgYmV0d2Vl
biB0aGUNCj4gdHdvLiBTbyBsZXQncyBqdXN0IGRlbGNhcmUgSlNQIHRvIGJlIElDUC4NCj4gDQo+
IFRoZSBvbmx5IHNsaWdodCBjaGFuZ2UgaGVyZSBpcyBmb3IgV2FfMTQwMTEyOTQxODggd2hpY2gg
d2UgdXNlZCB0byBhcHBseQ0KPiBmb3IgSlNQIGJ1dCBub3cgd2UnbGwgb25seSBhcHBseSB0byBN
Q0MuIFRoaXMgc2hvdWxkIGJlIGZpbmUgc2luY2UgdGhlIGlzc3VlDQo+IGJlaW5nIGRlYWx0IHdp
dGggd2FzIGludHJvZHVjZWQgaW4gVEdQIGFuZCBpbmhlcml0ZWQgaW50byBNQ0MuIEpTUCBiZWlu
Zw0KPiBkZXJpdmVkIGZyb20gSUNQIHNob3VsZCBub3QgbmVlZCB0aGlzIHdvcmthcm91bmQuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNo
LmMgICAgICAgICAgICAgICAgICAgfCAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcGNoLmggICAgICAgICAgICAgICAgICAgfCA0ICstLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gaW5kZXggYTlj
YjI3ZjFjOTY0Li41ODlhZjI1N2VkZWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBAIC0xNjA4LDcgKzE2MDgs
NyBAQCBzdGF0aWMgdm9pZCBpY2xfZGlzcGxheV9jb3JlX2luaXQoc3RydWN0DQo+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCWdlbjlfc2V0X2RjX3N0YXRlKGRldl9wcml2LCBEQ19T
VEFURV9ESVNBQkxFKTsNCj4gDQo+ICAJLyogV2FfMTQwMTEyOTQxODg6ZWhsLGpzbCx0Z2wscmts
LGFkbC1zICovDQo+IC0JaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfSlNQICYm
DQo+ICsJaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfVEdQICYmDQo+ICAJICAg
IElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA8IFBDSF9ERzEpDQo+ICAJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgU09VVEhfRFNQQ0xLX0dBVEVfRCwgMCwNCj4gIAkJCSAgICAgUENIX0RQTUdVTklU
X0NMT0NLX0dBVEVfRElTQUJMRSk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wY2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jDQo+IGluZGV4
IGI0NWM1MDRjNmYwMy4uMGZlYzI1YmUxNDZhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wY2guYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
Y2guYw0KPiBAQCAtMTI4LDcgKzEyOCw4IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpDQo+ICAJY2Fz
ZSBJTlRFTF9QQ0hfSlNQX0RFVklDRV9JRF9UWVBFOg0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwgIkZvdW5kIEphc3BlciBMYWtlIFBDSFxuIik7DQo+ICAJCWRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCAhSVNfSlNMX0VITChkZXZfcHJpdikpOw0KPiAtCQlyZXR1cm4gUENIX0pT
UDsNCj4gKwkJLyogSlNQIGlzIElDUCBjb21wYXRpYmxlICovDQo+ICsJCXJldHVybiBQQ0hfSUNQ
Ow0KPiAgCWNhc2UgSU5URUxfUENIX0FEUF9ERVZJQ0VfSURfVFlQRToNCj4gIAljYXNlIElOVEVM
X1BDSF9BRFAyX0RFVklDRV9JRF9UWVBFOg0KPiAgCWNhc2UgSU5URUxfUENIX0FEUDNfREVWSUNF
X0lEX1RZUEU6DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2gu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+IGluZGV4IDA3ZjZmNTUx
Nzk2OC4uN2M4Y2U5NzgxZDFhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiBA
QCAtMjIsOCArMjIsNyBAQCBlbnVtIGludGVsX3BjaCB7DQo+ICAJUENIX0xQVCwJLyogTHlueHBv
aW50L1dpbGRjYXRwb2ludCBQQ0ggKi8NCj4gIAlQQ0hfU1BULCAgICAgICAgLyogU3VucmlzZXBv
aW50L0thYnkgTGFrZSBQQ0ggKi8NCj4gIAlQQ0hfQ05QLCAgICAgICAgLyogQ2Fubm9uL0NvbWV0
IExha2UgUENIICovDQo+IC0JUENIX0lDUCwJLyogSWNlIExha2UgUENIICovDQo+IC0JUENIX0pT
UCwJLyogSmFzcGVyIExha2UgUENIICovDQo+ICsJUENIX0lDUCwJLyogSWNlIExha2UvSmFzcGVy
IExha2UgUENIICovDQoNCk9ubHkgaW4gaTkxNV9pcnEgaWNwIGlzIHVzZWQgYW5kIGluIHRoZSBy
ZXN0IG9mIHRoZSBpOTE1IGNvZGUgaWNsIGlzIHVzZWQgbGVhZGluZyB0byBjb25mdXNpb24uDQpJ
IHdvdWxkIHJhdGhlciBzdWdnZXN0IHRvIHVzZSBJQ0wgc2luY2UgbW9zdCBvZiB0aGUgZHJpdmVy
IHJlZmVyZW5jZXMgaXQgYXMgaWNsIGFuZCBhbHNvIGNoYW5nZSBpY3AgaW4gaTkxNV9pcnEgdG8g
aWNsLg0KVGhpcyBpcyBqdXN0IG15IG9waW5pb24sIG90aGVyIGNhbiBjb21tZW50IG92ZXIgaGVy
ZS4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCg==
