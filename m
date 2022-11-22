Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A0633A73
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 11:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A45710E3BE;
	Tue, 22 Nov 2022 10:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB0710E3C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669114053; x=1700650053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AewRBcugT5P+qOsto25iH4isuYXlF0N9h5zk1MGEJQk=;
 b=Kl3Pb09ZmI1Pf2v2FSVlbdSkcfv92TF7w25dp40uK+2u6k5Z1umIRe9R
 9DSUKhxNShVjhACk8CHK3EJRn6GgisCW06M3pBu0tvaWT0e8nP1KtpKkl
 2rwb5n2FsY9z4kPzjU9l71vhzevN28ZU6uI8iSgHvJAjNRw+ho0LUM9xr
 7juuB/J4pC3zgNWs6iMc39Ip01/Mv/UgK76Ue7HMuM7txqd6CqtIyBpCC
 KaM29tMwwSjHzRpg+mTeglP+s9AeMj3UUU9vlGM7NoWsk3+v5bFYN7oUr
 oADTnzSbK46Kx7kgGl2wyYGO9+VUtIc8DchE2tBd75fV/oL2J2w9S7mgK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="315606639"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="315606639"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 02:47:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="635501605"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="635501605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 22 Nov 2022 02:47:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 02:47:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 02:47:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 02:47:23 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 02:47:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+5o/Elyh5u0hTX23GFI0xwOCFtLZoDbRt5SZQZuIC192QEsw0aS9D0RQzZnYGQixtv42wLtp7+ahehIJY95Vn6gGSVGJIm+YJXuMFvHyVgF3ajvDrEqhdAZHenO7Lzy2nNqwI9BwWEfaqobb7wacLFqd63iblu6sXBJauyJsdprCq+ptOonPyLUyAkdpHXfVK6oMOqsV6a5NlI0Tiw0/MytwCxq5apAGJy85QIIvkO/vOPsOaeoT2HJH5kkNP4VJrsAXqvHrW4N7aS62nXBFwo1nFmngFLuXw46O59Cj0DZ7O//2tQRSvUPgSzXQs3bfmOH4/HogmvbbzdkadHlcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AewRBcugT5P+qOsto25iH4isuYXlF0N9h5zk1MGEJQk=;
 b=jmSgogCCjmsa6gtiN8hQFusazsPvUcJfWJN9sXip7mA7BoCR3RgkCsI7/647Ioel2YIuucBI5MmvAnR02AyHHE8AajPELMEFOGquHopaFDnNZbbEjhgMeVFeWc0GYwm/9EOCmo1I2GigLF+FjClkavtGev+6IsyBVW1wFVZd9ciFaFeOnozuadBmOj7HlnJbDcMUVpnTb8JTwb1butNmZ2K1JQTI0K47ipr0JqcTiz5XRQ/6WgllFs7aGmCIDzUNA1nR2vrZtYuC3Vx/yc1E3w5KZ0l1+qqOCHma0U1ZEwtIEXn39ma76fwXb6DWJ2StWyGQYA8bsHiok7pF+uo3PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Tue, 22 Nov
 2022 10:47:21 +0000
Received: from MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::54fc:2e3c:ac29:58d]) by MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::54fc:2e3c:ac29:58d%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 10:47:21 +0000
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, David Airlie <airlied@redhat.com>, Daniel Vetter
 <daniel@ffwll.ch>
Thread-Topic: [PATCH v2] drm/i915/gsc: Only initialize GSC in tile 0
Thread-Index: AQHY/YtEzwOYQV+ApECwt/E+HggPN65JHfMwgAAnVoCAAX8TUA==
Date: Tue, 22 Nov 2022 10:47:21 +0000
Message-ID: <MN2PR11MB40936EB1317018D1DF5B7DF3E50D9@MN2PR11MB4093.namprd11.prod.outlook.com>
References: <20221121092449.328674-1-alexander.usyskin@intel.com>
 <MN2PR11MB4093DB849B8945C9618C4E88E50A9@MN2PR11MB4093.namprd11.prod.outlook.com>
 <e33f417d-ae27-95df-d1dd-40e487efc674@linux.intel.com>
In-Reply-To: <e33f417d-ae27-95df-d1dd-40e487efc674@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4093:EE_|MN0PR11MB6160:EE_
x-ms-office365-filtering-correlation-id: 5620b21e-886c-4e86-2184-08dacc76eed5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /9rn3cMJn6CSSOOCmOZLVqGeTLtSObzQJpTKHcH5Ra4krBb/OTIHZisit/GiogBDcIsGXY98V2n/kRhMncWNEEuhx7ZV0HZV5GGkU1Fd9jA05qQG/60riM8tDshVQ2XhFFo/HIdiZrYoUfBKm5lRULoRrIVTQTdkZKzA0WFoi6SIiXg/TDWMO6QXQSZab36VJIt4hrBCyGDRU5SnTYpF7u6gE8+mPOZLTZ9hNPy458JfUGk/n3172VxCDBRuogSTumXaVxAZcjDGI5AeR91yrNDXpKrwZacVFdOdmtMQcD02ky8brzrhpehXEewFQKEB8P/P5hTfJBqJ2kjimR8o9sbqZSPSHlZArXEKnPlwiLh84DM52YWIOxO6FYtPy9trujHhT0fMduFURYIW6rietqbIQN3FVhSUuOXgvUdBf39HM8gw9onn1FUiw3+m6HSCqVFUGMADpUL9x33oiksMU0zVpcqpHepJ3VPTahvh4vme/XJ09QiMeTvVofqIg8eaev8N39Y1wDhefhiDKBamcPcxZuc26Qwv7gqelUFPOd/+r7SmRO83gvrLu9BTDvOd8yrquslj4Tgzdbd7Aj9UkZFCUIHj34iryko+3mjgrAZEcYpZe2W6IlbcyTPbEurMiiNOv1Y4imNNyDCclFaHF44F3RHVSv9tthpxZw37A4l0lsyqT1bZ2XvfDwAt9KEEUrI5/kXmzNLHWVJddVOzWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4093.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199015)(9686003)(316002)(55016003)(5660300002)(2906002)(41300700001)(66556008)(26005)(76116006)(52536014)(33656002)(8676002)(38070700005)(8936002)(66946007)(66476007)(186003)(4326008)(66446008)(7696005)(64756008)(53546011)(6506007)(86362001)(478600001)(38100700002)(71200400001)(82960400001)(83380400001)(122000001)(54906003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXRSODJieVlhUWhXN1lwMlplYy9hOXNqcE84OWRiNWxFdklpQUtqUzJzbmtN?=
 =?utf-8?B?alBFY0RCakNuREF0ZmtscGQ2YWJqRWJpU1d6Q1BSSjdKOUc4VUVURUVhRmVv?=
 =?utf-8?B?UnlVdXpjZjh1eTg3YVlVZFphcEdLR2pnZmFLZlBWdUh6QmtQTGNSMmduYUF3?=
 =?utf-8?B?MDIvM2Mvb1E5NVJIcEd3UGRMdUJBOUdDdjdVTWI3NDdEdkNiUGwwT0ZiSTY3?=
 =?utf-8?B?U1NQNTlzQXViTTB1Qi9MMVpqNjFKaER0V3AzTTh1c25WTkxNM2FhYWdsUUtq?=
 =?utf-8?B?MENpaUg3VjhwdXh6QU5QQlUrZG92c0p5V0xsMzZZdTJzM1dqYVJLd0J1Z1M2?=
 =?utf-8?B?ZXE0UlpVTWpKQ0xxbmlxVHE1ZnovdVZuZFlyVzVjS3dvS1hVYmZ3ZzZOUlVI?=
 =?utf-8?B?aVdPR0cvU2pUdDR3U3RuTmhMMWZiUUlrMlIwbktyMHZNd2J0L2FzamY0MElo?=
 =?utf-8?B?ZFRJdTQycDhKWnRxdWVOM0x3Rmh2MG83ZHVvYW90UVdMTGF2SW83SW9WTEFn?=
 =?utf-8?B?bXdvdWU4NWh2WW5IT3pBWEswVnFmaTI0Sk8ybXdCa0NVRFJ6RTNNL2d1YTFF?=
 =?utf-8?B?MjdlcFZ5VjhVRkVkNk5Nb1hKVDI1bm04RG0yRDZIY0ZxcWk4MFVzOWdwOFBw?=
 =?utf-8?B?T2c1WXVWYVYxZHYvT1gzSHJ2R2pGV1p4SUhRc2IvWGxRdk0zNURvUXF6STNP?=
 =?utf-8?B?QzFJbXBaS0JuQ2JBUE9xb20vdjNXRnNxZnlTRE1OdnVZYzI1UmJuZ0x0SDg3?=
 =?utf-8?B?ZHo5Vm51MUVBMElhTkd5czlVYklqbWlGdCtBeWJLT2FuZ3RTa1hLYUtrcE9o?=
 =?utf-8?B?Zlo1NG1DSkQycTUyR0tyWHlFQW5LQXRDeVVwSThkSERMK3RWd2FmV1ZhMXdW?=
 =?utf-8?B?cTdSNGpIU1cyUlZkNVp5NmFVK2dreGg4aFNIKzlnZjJ3SE84NlUzR0ZJYStj?=
 =?utf-8?B?TUQ4S2NITmVhVDVQb2pWbnhNd1o5dGJBK1o1MmR0N1Fqc01wQ09teXhqS0Fx?=
 =?utf-8?B?OWtscjhvTFNyZGx4TXc0RVRFTVpMaDRDeUlsY2QzUmN1aWpRa0tXWGg0d0dX?=
 =?utf-8?B?ZXBFY2dFR0VqcDdtbEZOTE82THhzTkJrcXFRalBvSnlIQ1pvMlZlSkQ4V29v?=
 =?utf-8?B?N3NDZVVQd1ZuSVRmbEdrQ0pOZUxrTzE0TzA0K3BZbW5ZdXRVeDROZEk5VEh0?=
 =?utf-8?B?R084cjFZeHlhcWJ6bnYwYjNaamJZcER1REZ0QkdnVEhyVlFhZkRwYmVRREU1?=
 =?utf-8?B?TGx1Um5tWHJRZlZXMlZUQjI2MXpjUmF4TUZDWEoySFp3M0ppcTMzZXRLNzBL?=
 =?utf-8?B?NDdFeEt1THZmazhHc1ZvclluaTRYNy8vcDJFd3AzQWJQNWVwWTE0UXFhd3lr?=
 =?utf-8?B?TTIyUWZ4OWhzempGbDFpUHBIYkU2eWF5dzlxODRmYUZJbGRtaGlzKzNBZHRJ?=
 =?utf-8?B?Z0MvbkhZNmRVNlk5TVV1dWlFWlgzK0VIL1F2MXl4SDYvNWp4TDdJSkVIUXlY?=
 =?utf-8?B?MHJyRFlYMHQzZklkbUpPTlpRQjRxbVNTMjdNamNJOUhOcDdTcndQbmlVS0gv?=
 =?utf-8?B?MitwbFRzck1JTElETXFBdEVYSm9YeGpOdzVubUtpc2tkbng5QkV1eGRKcWpS?=
 =?utf-8?B?YkRKdncydWtqdWZYTkRxb216RTVVc3pDWnpSTnhwWlg3UmFUY2FZU2QzM1ZH?=
 =?utf-8?B?RU5LRHJFT0ZDRHhnZlNZR3NIamgxaWdLUWoyMDVnNmpsVFk5dkREWlJUdUJa?=
 =?utf-8?B?UXcvbjVta3ViZHB4M1VTKzV3anpyVU0wWjd2bjFWVjV0TExUQ0NCVWUvK0JL?=
 =?utf-8?B?R1hVZ3czcWlYK0o1UXVaa0pjQXVabDhxRE5XeHQzSHA1c2ZFSnVnZkd5Q1dO?=
 =?utf-8?B?T1FyNEFxcEJMZVRnMWs0Mlk1U2xNT0Q4aUZBZDloSW03am5oTDJLVmFDWXV1?=
 =?utf-8?B?R0RBZms1K3RFS2w0Ym5WQUlKK0ZiUGpOQTlGMkY5aFEvRXRWd2UyT1JXbFFa?=
 =?utf-8?B?Z08vOWUxZnREMTZlL1dLQkREZXZpaXlPSDcxeGRBNXRHOFc0bEdqOUNxRGZB?=
 =?utf-8?B?Lzl0RUpldmJ0UER3SU5iZ1hYOFNqbkNKR1pGaE5hdm1GOVMzR0FBemlvMmtO?=
 =?utf-8?Q?gIY9m1O0z2OwecUXYeRNIHk1U?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5620b21e-886c-4e86-2184-08dacc76eed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 10:47:21.0873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HV8BgLE7kV4yFUs9V0RFu1e5vb+R4lPgZrdkUPwu8GLEe8e4YTxYHM4Le9+BGkWZBH8LHlC9RdeEsKT6paAwWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gsc: Only initialize GSC in
 tile 0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gDQo+IE9uIDIxLzExLzIwMjIgMDk6MzUsIFdpbmtsZXIsIFRvbWFzIHdyb3RlOg0KPiA+
Pg0KPiA+PiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gPj4NCj4gPj4gRm9yIG11bHRpLXRpbGUgc2V0dXBzIHRoZSBHU0Mgb3BlcmF0aW9uYWwg
b25seSBvbiB0aGUgdGlsZSAwLg0KPiA+PiBTa2lwIEdTQyBhdXhpbGlhcnkgZGV2aWNlIGNyZWF0
aW9uIGZvciBhbGwgb3RoZXIgdGlsZXMgaW4gR1NDIGRldmljZSBpbml0IGNvZGUuDQo+ID4+IElu
aXRpYWxpemUgYmFzaWMgR1NDIGZpZWxkcyBhbmQgdXNlIHRoZSBzYW1lIHBhdGggYXMgSEVDSTEg
KEhFQ0lfUFhQKQ0KPiA+PiBkZXZpY2UgZGlzYWJsZS4NCj4gPj4NCj4gPj4gQ2M6IFRvbWFzIFdp
bmtsZXIgPHRvbWFzLndpbmtsZXJAaW50ZWwuY29tPg0KPiA+PiBDYzogVml0YWx5IEx1YmFydCA8
dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBB
bGV4YW5kZXIgVXN5c2tpbiA8YWxleGFuZGVyLnVzeXNraW5AaW50ZWwuY29tPg0KPiA+DQo+ID4g
QWNrZWQtYnk6IFRvbWFzIFdpbmtsZXIgPHRvbWFzLndpbmtsZXJAaW50ZWwuY29tPg0KPiANCj4g
RmVlbCBmcmVlIHRvIHVwZ3JhZGUgdG8gci1iIHNvIHNvbWVvbmUgY2FuIG1lcmdlIGl0LiA6KQ0K
PiANClJldmlld2VkLWJ5OiBUb21hcyBXaW5rbGVyIDx0b21hcy53aW5rbGVyQGludGVsLmNvbT4N
Cj4gDQo+ID4+IC0tLQ0KPiA+PiBWMjogTW92ZSBkZWNpc2lvbiB0byBza2lwIGluaXRpYWxpemF0
aW9uIGludG8gR1NDIGRldmljZSBpbml0IGNvZGUuDQo+ID4+ICAgICAgVGhpcyBpbml0aWFsaXpl
cyBiYXNpYyBHU0MgZmllbGRzIGFuZCB1c2VzIHRoZSBzYW1lIHBhdGgNCj4gPj4gICAgICBhcyBI
RUNJMSAoSEVDSV9QWFApIGRldmljZSBkaXNhYmxlLg0KPiA+PiAgICAgIEl0IGlzIHNpbXBsZXIg
YW5kIHByb3RlY3RzIGludGVycnVwdCBoYW5kbGVyIHRvby4NCj4gPj4NCj4gPj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nc2MuYyB8IDggKysrKysrKysNCj4gPj4gICAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nc2MuYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dzYy5jDQo+ID4+IGluZGV4IDk3NmZkZjI3ZTc5MC4uYmNjMzYwNTE1OGRiIDEw
MDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nc2MuYw0KPiA+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nc2MuYw0KPiA+PiBAQCAtMTc0
LDYgKzE3NCwxNCBAQCBzdGF0aWMgdm9pZCBnc2NfaW5pdF9vbmUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gPj4gKmk5MTUsIHN0cnVjdCBpbnRlbF9nc2MgKmdzYywNCj4gPj4gICAJaW50Zi0+
aXJxID0gLTE7DQo+ID4+ICAgCWludGYtPmlkID0gaW50Zl9pZDsNCj4gPj4NCj4gPj4gKwkvKg0K
PiA+PiArCSAqIE9uIHRoZSBtdWx0aS10aWxlIHNldHVwcyB0aGUgR1NDIGlzIGZ1bmN0aW9uYWwg
b24gdGhlIGZpcnN0IHRpbGUgb25seQ0KPiA+PiArCSAqLw0KPiA+PiArCWlmIChnc2NfdG9fZ3Qo
Z3NjKS0+aW5mby5pZCAhPSAwKSB7DQo+ID4+ICsJCWRybV9kYmcoJmk5MTUtPmRybSwgIk5vdCBp
bml0aWFsaXppbmcgZ3NjIGZvciByZW1vdGUNCj4gPj4gdGlsZXNcbiIpOw0KPiANCj4gSXMgdGhl
cmUgYW55IHZhbHVlIG9mIGFkZGluZyBhIGxvZyBtZXNzYWdlIGZvciB0aGlzPyBJIGRvbid0IGlt
bWVkaWF0ZWx5IHNlZQ0KPiB0aGF0IGl0IGlzIHdvcnRoIGl0LCBidXQgeW91ciBjYWxsLg0KPiAN
Cj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPj4gKwkJcmV0dXJuOw0KPiA+PiArCX0N
Cj4gPj4gKw0KPiA+PiAgIAlpZiAoaW50Zl9pZCA9PSAwICYmICFIQVNfSEVDSV9QWFAoaTkxNSkp
DQo+ID4+ICAgCQlyZXR1cm47DQo+ID4+DQo+ID4+IC0tDQo+ID4+IDIuMzQuMQ0KPiA+DQo=
