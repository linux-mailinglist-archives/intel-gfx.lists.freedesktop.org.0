Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B13B7FB91B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F5A10E4DF;
	Tue, 28 Nov 2023 11:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73A010E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701170006; x=1732706006;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vX+0HJamCfNsOecnOkAybA6Vv4RkTb7U2JS9J2OTrkU=;
 b=f+1bRpQQYqj95jcDZlnioLIUSY3ein9HoH63qIt/fYVt7UKbbDzsnHgX
 w0eFCub43zfTiC4wPIcqP3QCx9fWvrTkZh+op7sJPKN3TMGY+w13LpBoU
 MREcN6lG+ljBsDsW9ZFlqF6ZEMytXoaArUdOv4h7quSfO2mq3IB04CYSc
 YfBv46d/ZLMYyxwh5Cc4URFryGYASwHWCYqQAS23XrNB+3hfonOdy24eP
 rb0ufar20qJ26pXQj+JBkjWXbV8Y2cYdVmDGeOtH7f6i3m5Upq+FoYOJ5
 5FqtB29Ncxeo5X+h1rvSNwG3uHJf0z2CccBGT5zoV/dP0V//rwliLLokT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="391773493"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="391773493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761898825"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761898825"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 03:13:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 03:13:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 03:13:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 03:13:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 03:13:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dX1463q00Jxs9+Ln/VkEOB8Bu5c9viXLYvFDAkSmM5UWQLoXLK1/c6sdwWDZsUmauq+hWOuukPYseuX2ol7bWvsTStZXolVED5HawGZsstseQ6wcqgu1x9FSwekDYz6WB8+jurScdVOxPw4Xe982cqG1XS8ZS8HQDqRUYOnnf5DXb8FYCSgKtgcRXbYRpyyiQFMPuSGtaY6NEPoXF9rkaI5/SQSH7OCq1dat+kijw/v/34LrbYVSlrxgqWvfu94P43D9pMDJFftBDaoiEL/D/PPYcXKLFAjtTtOB16Siox/IOHXyOEmGj9/cyG2/9C8SaL2R2Kz6eFumdAm2bUWegg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vX+0HJamCfNsOecnOkAybA6Vv4RkTb7U2JS9J2OTrkU=;
 b=gCqy9PnlsejqvPprzz+rjJaR5CVrEQEZC8Ff104a659CvnCpslXfuGDmLEPzL5IkHeNQvy1VpHqagB0SfPA8vVog+x3uFJzgTKq/RbPsOT7EEM9D43hvuSJyTWGyRehSQpDEelQQBEYHhOEcfUFgt1yI1Lhw6UOJJlK99z9qj3VQz/Rf0cQsY0PZQd9HzBdOwQbHXyyNMspxeu9uyA5phMwbMkVRenTTpT8JYna01z1dY9KKXKS3bJboBvifcwRM/YBTstsxHuTb7r4VuNHr6Rl5FXI9EzFbE80G3R/zkPDOlJsZOSgF92oV2+WE2eqBQLiP6T8JlWfbjTEOfdAA1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6371.namprd11.prod.outlook.com (2603:10b6:208:3ad::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Tue, 28 Nov
 2023 11:13:22 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 11:13:22 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
Thread-Index: AQHaIUnaqMdlg7GqSE2Omyt0uWS8xbCOYDQAgAAdaYCAARa58A==
Date: Tue, 28 Nov 2023 11:13:21 +0000
Message-ID: <MW4PR11MB70541B8039EAE67255FF1953EFBCA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231127154702.979401-1-mika.kahola@intel.com>
 <87o7ff87ol.fsf@intel.com>
 <170110995777.56286.5633956627662473681@gjsousa-mobl2>
In-Reply-To: <170110995777.56286.5633956627662473681@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6371:EE_
x-ms-office365-filtering-correlation-id: 32fa91ed-9b39-4035-4799-08dbf003086a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UHA+CiBBi35wYCHhU8nthWcB50A03FGW2/2dQ8JFZLiF+MkTgXyJzzrxQYOhohuBXs2CMmqFtvFnB+en+4842JL9ej2jtFfCY/sf5zk6C/4QjnQza2O4kTGxOjFWe5hpVzdYkb+m9jPsBbhKsFwTNamWxxQPq56zVKPkT5F6UjFLdo+JbEjB2kBrCxVaLM3rf9sBGL26VSoScGUe/T6a3LOhkkrhcDegjhgYn91LxFgX2vMzcHU1gcSokbXOOzQL3fdeSK1kjeY2KhoNoGHagXGyNmKe5eWG/FUcZxbIClUlhitcWCI7aneonBB80ttUmQdCrLbClz7vNREfepoSpqVMVmU8ZnbOFb7C5EClEnZQ+wWa90ETHhAmeStGP/ujVwmCCZfqO09XH84amUip4huj9wASk2L0sqlY92NPiNmCCjEP9piHDdaBZpYrL4VYxPhqAe+dnGbNSG+8tRoaeoyZE3tLMPPInEzoN7CcW+us94sBwhs7ZgHgygMyL3AXdsDPVW7dvEV0SC90pD0Hpqh8GqRtG3W7OwPjiFYzjUeGUvMltlBePHzITeO9JvLwr8+zhXhzfXFc213RfCbrRnypk3SnO8/y1oxMXx3e94GndInuzpQcbA/Gm6J++QCw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(478600001)(38100700002)(6506007)(7696005)(53546011)(71200400001)(66556008)(64756008)(66476007)(316002)(76116006)(66446008)(110136005)(66946007)(8676002)(86362001)(8936002)(52536014)(2906002)(122000001)(55016003)(82960400001)(83380400001)(38070700009)(33656002)(4001150100001)(41300700001)(5660300002)(9686003)(26005)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RU1OY1BQME9tT2ZBdU16RTg5UzF2NkJMbFhKZ3d2c2JNT01hckk5SFBSY3hM?=
 =?utf-8?B?S1k0ZjczUDdEQlh1aXIvaEdtR3FINXRkeXNqVkRoMFdhN1ljeWw5bTdWUlRo?=
 =?utf-8?B?TTRHNFBVU2NmUzB6NWRtbWMrcEd1VmlHOE9Xa2xvVFF0cEpKNzVrN3REK3Uw?=
 =?utf-8?B?M082WUxkajJLMG94MjBOWnFhT0NlSUUwSWpzUWhNZXJldGtGY0VHcHNkYXhF?=
 =?utf-8?B?b0JpYmNZWHFzUElvNE5ScnFCNFJmYmwxcjBpMjA5alA5K3VzSWs4UWxTTkNP?=
 =?utf-8?B?RzVqSlluTDdPNkNmQ3BTS0tGWVVtaXNsMXpMQ2VQVmNuN0RKcWV0MVBVYkor?=
 =?utf-8?B?LzF5aTZGUmVvbC92Q1Z5WWg4VktFdGtsWHBhTkFKRGg2ZWVaTzR3a1Z3b0xV?=
 =?utf-8?B?ZXdCQTFNc0o4dGlhNWU5NWRmeXJ2dGplNG9hNDhkQ0NCVjZyeGhMN1lpU1FS?=
 =?utf-8?B?NWxJeUNMYy9SelZacEhhMjMvbkVnSktxSk9jejFqOTMrQkdrSCtaQTA1U3h6?=
 =?utf-8?B?Yzhidi9tMEQvZTBiY1dRUlFHUjZ2b0VaVWhGUDZnWkp5WjlsK21zMGNYM1Nr?=
 =?utf-8?B?dC81UTNRQnU4aHdpM1ZLaFpWd04rS04vSlMweC8yNk1Ec3RBemtXaW9mNWdu?=
 =?utf-8?B?QXdHWlAvT2laRU5JVGhYVUVXSndiN25YZGhwSnN6RUliblZOSDNuS0tuMVVv?=
 =?utf-8?B?WktTMkdFTVNaRUQ0TVBCTzhYRXF1UW05WU9aNFhwcy9Uc3pMSnl6dTVhNmNW?=
 =?utf-8?B?MEVIeVlJZ3grN3Q5ZEJlR2JRSG9XZTMwWWozWTB1aklZRStUVmZiaUFYZFgw?=
 =?utf-8?B?ZUZmd0Y4YWNJTkVCTnpKcEJyUk9FYzRzUS9nOVRTeTRqc0hVV3NoOEpDWk9X?=
 =?utf-8?B?c2xSNlBTWXJqUzhuWGkrbm1rVEZJNysyWFQ3UVFKT2J6U0Z5N2dlQm5EZXVX?=
 =?utf-8?B?NU1XR090WC80T2U0RkVsSUVPV0JXTG54NXBCa3VLejZRcm9NS0ZMV1o3MU1W?=
 =?utf-8?B?YVgzSmZubDA0Zmw0cVFJZTNqTS8wQUJMRFV0MHpQQld3YVhlOERtRDdwQm0r?=
 =?utf-8?B?bXc4Kzc4VlVwUUhXTERjMm1tSnMvbkN2NjZlRVhaOGZXQTBoQnhZT2dhYW4v?=
 =?utf-8?B?R0IxZ1lOM01KLytvdVBRUEx5Y1UwUldSVFQ1N1NpcFhZaW83NDZFNGY1UGNF?=
 =?utf-8?B?cEFhZXZ6d1kwcDFtMGt5TkhCZEpkeXc5a3dQNGdMVklmL041MUYyazBaU0tC?=
 =?utf-8?B?dFRaVnAzMG1KREdPQ2JUb0hBdnJrbG5lUW5DVWNjKy9weWpQSGhHTXA4eCto?=
 =?utf-8?B?OEdKL2tFWDhYMS9XaGtWT3B0ZmFNY21IYUNhcEUyMTErZENWdDZEOGlUUHRH?=
 =?utf-8?B?QlJLTjZlYTFLS2NPQThvL1FKVVVza0lxb1ZMcXhValRQVk5RSXJoRC9mSGFl?=
 =?utf-8?B?aTZ2RVdoQXNmRVhSY2JUSkY1VVJpeHlVdjBjdksvUEp5Z1BvZ2xEZkxxeDA1?=
 =?utf-8?B?NEdiU1dWbkd0QXJZZlBXVXZESkQwcmtOdDhRVGZ5cjhzd1dqRndsc09jL3Yv?=
 =?utf-8?B?a1ZNaUZQZkdKcUZHc1hNUWJNSzFTRm9YdDBsSVdIUVE5WUVQQXpQV08xcGFR?=
 =?utf-8?B?UTV1dU93Z3NrWjBqSnhpZ1hCbG1FOVV4UmN1dG94cG9LYUFHRTc2citKVUZa?=
 =?utf-8?B?dExucm1kS1BQdU1JS2xpZU1IcitLa1RJeStiZ0JzZTJ6VDV2OU96bGxPazZv?=
 =?utf-8?B?RDZUTlFkVEJKaVdFaXZsRjV4K25jZllBVWd0Q0JUc3ppK0FyWDY4SVoyZWtD?=
 =?utf-8?B?STlkd1BDZ1NWcjVMNG9OT21ncGtuS1VSKzduNlFLaWR6TC8wOUY0aDJZUG8w?=
 =?utf-8?B?bWluTjgxcnBCNmlRWFZtQ1R3R0V4S2N6SkxlTll1YlpRL3lFZlRLWE1XQUlC?=
 =?utf-8?B?Lzl5YzFYVlpxcTBpbXZCdkxxNVFJS1ZrMmRVUjFEeEp2cUsxRXl6SzExem16?=
 =?utf-8?B?aDhOZXZqU01IeVFVY3RBczNGQVgweW9LVjRIUDBIYm4xdVRyVG9vVlI2WUd2?=
 =?utf-8?B?d3NzTU10ZDhtOE56bkZPUHFLdmVwMCtxTVZ1Znk4UUpKTlh1dWhUQ28xakV3?=
 =?utf-8?Q?xDzNW+wGg1tvim8FpOsxLViK7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32fa91ed-9b39-4035-4799-08dbf003086a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2023 11:13:21.9372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: As3jVe5lgroKR4hNYpqLYv/WBgUxl8hsLx3MzxcOxePEtK3Yff6m9xdAmPW7C1laTZwnKVVp5lnT/8LyLaTcew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6371
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDI3LCAy
MDIzIDg6MzMgUE0NCj4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5j
b20+OyBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJt
L2k5MTUvZGlzcGxheTogU2tpcCBzdGF0ZSB2ZXJpZmljYXRpb24gd2l0aCBUQlQtQUxUIG1vZGUN
Cj4gDQo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjMtMTEtMjcgMTM6NDc6MjItMDM6MDApDQo+
ID5PbiBNb24sIDI3IE5vdiAyMDIzLCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
PiB3cm90ZToNCj4gPj4gV2l0aCBUQlQtQUxUIG1vZGUgd2UgYXJlIG5vdCBwcm9ncmFtbWluZyBD
MjAgY2hpcCBQTEwncyBhbmQgaGVuY2Ugd2UNCj4gPj4gZG9uJ3QgbmVlZCB0byBjaGVjayBzdGF0
ZSB2ZXJpZmljYXRpb24uIFdlIGRvbid0IG5lZWQgdG8gcHJvZ3JhbSBEUA0KPiA+PiBsaW5rIHNp
Z25hbCBsZXZlbHMgaS5lLnByZS1lbXBoYXNpcyBhbmQgdm9sdGFnZSBzd2luZyBlaXRoZXIuDQo+
ID4+DQo+ID4+IFRoaXMgcGF0Y2ggZml4ZXMgZG1lc2cgZXJyb3JzIGxpa2UgdGhpcyBvbmUNCj4g
Pj4NCj4gPj4gIltkcm1dIEVSUk9SIFBIWSBGIFdyaXRlIDBjMDYgZmFpbGVkIGFmdGVyIDMgcmV0
cmllcy4iDQo+ID4+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMgfCA3ICsrKysrKysNCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gaW5kZXggYThmYTc2NTgwODAyLi4zYTMwY2ZmZDQ1
MGMgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+ID4+IEBAIC00MTgsNiArNDE4LDEwIEBAIHZvaWQgaW50ZWxfY3gwX3BoeV9z
ZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPj4gICAg
ICAgICAgdTggb3duZWRfbGFuZV9tYXNrID0gaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2so
aTkxNSwgZW5jb2Rlcik7DQo+ID4+ICAgICAgICAgIGludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0K
PiA+PiAgICAgICAgICBpbnQgbl9lbnRyaWVzLCBsbjsNCj4gPj4gKyAgICAgICAgc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPQ0KPiA+PiArIGVuY190b19kaWdfcG9ydChlbmNv
ZGVyKTsNCj4gPj4gKw0KPiA+PiArICAgICAgICBpZiAoaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0
X21vZGUoZGlnX3BvcnQpKQ0KPiA+PiArICAgICAgICAgICAgICAgIHJldHVybjsNCj4gPj4NCj4g
Pj4gICAgICAgICAgd2FrZXJlZiA9IGludGVsX2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oZW5j
b2Rlcik7DQo+ID4+DQo+ID4+IEBAIC0zMTM2LDYgKzMxNDAsOSBAQCB2b2lkIGludGVsX2N4MHBs
bF9zdGF0ZV92ZXJpZnkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4+ICAg
ICAgICAgIGVuY29kZXIgPSBpbnRlbF9nZXRfY3J0Y19uZXdfZW5jb2RlcihzdGF0ZSwgbmV3X2Ny
dGNfc3RhdGUpOw0KPiA+PiAgICAgICAgICBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBl
bmNvZGVyLT5wb3J0KTsNCj4gPj4NCj4gPj4gKyAgICAgICAgaWYgKGludGVsX3RjX3BvcnRfaW5f
dGJ0X2FsdF9tb2RlKGVuY190b19kaWdfcG9ydChlbmNvZGVyKSkpDQo+ID4+ICsgICAgICAgICAg
ICAgICAgcmV0dXJuOw0KPiA+PiArDQo+ID4NCj4gPlNob3VsZG4ndCB3ZSByZWFkIGFuZCBlbnN1
cmUgaXQncyBkaXNhYmxlZD8NCj4gDQo+IEluIFRCVC1hbHQgbW9kZSwgdGhlIFBIWSBpcyBvd25l
ZCBieSB0aGUgVGh1bmRlcmJvbGQgY29udHJvbGxlciwgYW5kIGl0IGNvdWxkIGJlIGluIHVzZS4N
Cj4gDQo+IEkgZ3Vlc3Mgd2hhdCB3ZSBjb3VsZCBkbyBpcyB2ZXJpZnkgdGhhdCBQT1JUX0NMT0NL
X0NUTCBoYXMgdGhlIGV4cGVjdGVkIGJpdHMgZGVwZW5kaW5nIG9uIHRoZSBtb2RlLiBUaGF0IGNv
dWxkIGRvbmUgaGVyZSBvciBpbg0KPiBhIGZvbGxvd3VwIHNlcmllcy4NCg0KRnJvbSBQT1JUX0NM
T0NLX0NUTCB3ZSBjb3VsZCBjaGVjayBpZiBEREkgb3IgYW55IHRyYW5zY29kZXIgZGlyZWN0ZWQg
dG8gRERJIGlzIGVuYWJsZWQuIEkgY291bGQgZG8gc29tZSB0ZXN0aW5nIHdpdGggdGhpcy4gUHJv
YmFibHkgdGhpcyBpcyBhIHN1YmplY3QgZm9yIGEgZm9sbG93IHVwIHBhdGNoLg0KDQotTWlrYS0N
Cj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4NCj4gPj4gICAgICAgICAgaW50ZWxf
Y3gwcGxsX3JlYWRvdXRfaHdfc3RhdGUoZW5jb2RlciwgJm1wbGxfaHdfc3RhdGUpOw0KPiA+Pg0K
PiA+PiAgICAgICAgICBpZiAoaW50ZWxfaXNfYzEwcGh5KGk5MTUsIHBoeSkpDQo+ID4NCj4gPi0t
DQo+ID5KYW5pIE5pa3VsYSwgSW50ZWwNCg==
