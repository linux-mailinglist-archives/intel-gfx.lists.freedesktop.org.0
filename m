Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6062B39EE56
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 07:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01E56EA04;
	Tue,  8 Jun 2021 05:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232676EA04
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 05:45:50 +0000 (UTC)
IronPort-SDR: pmLmHI4JUBiMcZ5Q+mk5FVYc97ReySgXdn6jFlD9LLoFsmH8Ti3wqOqiL3LrjvK+9nRy+bI69b
 UmU7nEg9Rdow==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204590863"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="204590863"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 22:45:48 -0700
IronPort-SDR: pIVAvIE/ceL1XmXZkTCaDdgpXGicXIqcHKQUQ4a5jh3ku+rC5dVSKwbft1LhlryGaEpMCB8TkY
 WkFYUwa4RPPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="476476628"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jun 2021 22:45:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 22:45:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 7 Jun 2021 22:45:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 7 Jun 2021 22:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E55LqFdcSF44K6FX+6wWtASthvgsZKdl7rBJKPm24KQPgUCR9GCf6+YW6TDKpOIudy6daQS0w2bsJFgPsreRJEHxkNiwlnVVo2dVUtKsnnHhSWVIMohNBq6whXa8zJR7+PzUqMmu/O4BIwiPpaPjkkVqkoJPLewlV57TjfxXQjuqcz0zomGG8dlfKii5+0FPFSt2sP5ayBas420v3gNFo5R8AQGyshahAhb8hmPJSyaZintCHqhFFCAo5w2isYrIa8Ny6UAEvRt3toSoPA9tv6meDv75bb/pCuRuue8FlxNDPPphHPMlio0dRA3sBYDOx116t7XDYJzMFjaukSiW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nLgQYbu2bXu9Fr+qkV1KJEDgacLLS68ahPGBdS1YDUY=;
 b=Xy1Se8eIje5pLijZxyb/eZwiXle9sjZexw5wTdcsZ7SSN+8qO68Y2OQGbS5v1grNrZOXQd0wC3PIJaZnFBwZg7wpT6va8+c1ZXwWi12CXOlNYA7C03jmM/F4BLcPNzU7Wkbjwdg4S3Vk4hRvPBg/+ip/D/VyQj81TxKmekABqsaI3XVnM+m82F6u4FJD0POr2Q0bk/Tncr216FEYn1CrzSH1tQ8Kf/UYTMJzgfSyuGE4m/p8x376GXvkpaNyOk1Xqc/doSwQ63ea28LzTRC/khHKs3XCcmbU8onr6zfDKmNmIIlGkoibCE9EpY9RGrIaslGPSEImkkVb9qM0qM2Qlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nLgQYbu2bXu9Fr+qkV1KJEDgacLLS68ahPGBdS1YDUY=;
 b=DiExLjYf0xT1LfyPOWoimGsLNtbXqOXjNz9JSzcyzr0UdhjO6zsRsSGEDgsHH1U/DcevAkz5ofPdS7betjjkc8WfFez18PM5Ynw3JnBjG08xZQukokFnkZnQOenmHiAZGDX44K5+1jPua5J1ofko3t0jwLxgtfKGDxiV/zPzogU=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3344.namprd11.prod.outlook.com (2603:10b6:805:c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 05:44:22 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 05:44:21 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>
Thread-Topic: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
Thread-Index: AQHXXCgsCnnJOCQGN0eYrGOITcIyQqsJmicw
Date: Tue, 8 Jun 2021 05:44:21 +0000
Message-ID: <SN6PR11MB34216A53DD83648CBA80B3FDDF379@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210608052630.394064-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210608052630.394064-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.204.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66fcf2cf-4fb0-439b-f61d-08d92a407763
x-ms-traffictypediagnostic: SN6PR11MB3344:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB33442E5849C05CDE62851B00DF379@SN6PR11MB3344.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:324;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GytpcYW1KBep8OJAn8c32h9ZyeGiMRuA/SxfcmIvZH1v3ualFnUQNzFfHirUr3SigefDinC1iLZKp/tZ3mLbE2Fzy49BKb0QBTCaYasrytUABSvbcpKl7cxUOyf4U7WstCIO3BJd3srn6pUyj7Suhkt92fU/L/NqwOQdt8MNvV3ATWkHcSTmfGssHjzXEu9Xd1G6J39KFZABOaJIQM4QviAxMByJcEOKHUsLXGkzICiYiOgxCg8cz9OUbNLmY9eIlzXavxZV4V0dIvJ04VeEnI38gBBhgmgsUbx4SEGmU6+6uK4n5HprNI1/ovZsNhT3/SpjvaTpDznvW/ukmWdCzp6z8YSYKYJgiUUf4ch7u5swqCUlVouSABRVCPElG0azfutUqY4cfGrUvBzeDSoHkhYCCyO5SkK8YNm5FE58DCAP92ie8MDZfPKLCHDjG59/Eg8GyfuDzHb0YJIXXKmVfKuA8Ql+0fiGEfjsLrx8YEDDA0xWKjSP+JaZzaTGHT/ghB9SD8jjhd6HDPLXw4sNfMyVlwZuJfHAgiCR7rrOdxjCXv1ow+yGU8hgKExKtK2GbDagJvsqfJUf3yTSkkVtt50p2U5SkA/TDj2cMwJckv3e6wsYwrGnTDO8QIvINej+GjWebT/gXqIWG7Ok4gi86w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(39860400002)(396003)(71200400001)(2906002)(5660300002)(26005)(186003)(33656002)(966005)(55016002)(9686003)(86362001)(8676002)(110136005)(83380400001)(53546011)(6506007)(7696005)(122000001)(66946007)(66556008)(76116006)(38100700002)(64756008)(66446008)(52536014)(478600001)(66476007)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2xlTFhzb2FwMGZ1Mm9tcWIwVXNOaXUrVzlUb2ZBNXNlK1JmN2p4TUpvdFBB?=
 =?utf-8?B?NEJUeWxwVmt3dytXWUpLQ0I3SFBFRnVBV2F3SU52N0E0aGo2MVVLRTlweTJ6?=
 =?utf-8?B?KzY3T01hVGh6Z1B1OGY5K1FMOVNtNGZsV3lWUjZkME9zYmp2Q3JjRDcyeHFj?=
 =?utf-8?B?VGJPYStBZG1KSGNSUlY3TW5tN0JsOGx1dXRuNUloOVVSbnNWNDNUSlNOVU92?=
 =?utf-8?B?bjdDOG94Q0FWYUF3NURTeFdsTkxoUDJsMUVNQ3hQWFdzWFd3Q1RHcUliM2Mw?=
 =?utf-8?B?bGpBV2tqaHgwQ1NPU1gzcmNpRVNyc1EvdEttMXVLb3hyVTFQMllLYmp0cXVz?=
 =?utf-8?B?WDlodktBeElMS29HSGlyL3ZWV3RBUG5XZlpVaU1waStMK2lIckNoQjUvWjE2?=
 =?utf-8?B?NE13VGVnQUg3WUhhNi9pcURaekpJR2x1cERYa0RaTzZpT0ZPUlpva3FSd3h3?=
 =?utf-8?B?N3V2d1o5NlZuS2dUL1NOc25UZGwxT1VvQ3RXdG5FeHQwcnF3aThmWDdLZjNm?=
 =?utf-8?B?QjJoMmJWU0lsQy9CQ3BLUGpRdjhkcEtaczlVRytuWTh1d1l0bmMzYm8xeW9o?=
 =?utf-8?B?WjVseWhFd3A3ZndXTDBDdGVtRlNYR3ZkQ1kyN2Z0VGZGeUJRbHVaUmoyTnY5?=
 =?utf-8?B?aVg1OXdZdkFhSzNXY2lHUzBubkh4WHhUQUI0YlZ6NkVUTjc1RXpOMVM0L041?=
 =?utf-8?B?ZWg3d2pCd1RqQmMycDkxRjZYQTI2TCtNV0tDWjhiRlcwUWlWRXR4cjQrRW54?=
 =?utf-8?B?c3B5RXVFaVptQjNoREsyaGRTbHBCU2RiNWRjRC9ZT1ZtbjIweDhZczhLejNl?=
 =?utf-8?B?ZVUyeTFRVEZrVDhWWG1xamNXVjB3TmJDUUNubFV3ZjZCa091SWxrSzA0WmFX?=
 =?utf-8?B?bTJuN0NReWtIUFpRZ3N5dG14YUJIWGRybVRheHVEeFhjRHpnR2gxTzBpMTIr?=
 =?utf-8?B?aG9WTUx3ZlJzNFRJM1pzdFJQVFVPNEtzKzRwWXpkQVk0M095OHovTG1MS0xR?=
 =?utf-8?B?dE9QenQ1Sm41aVZ5L3dXOUs3alJqdGx6MytSbkFYei9qL00wNFluQUR1Z28v?=
 =?utf-8?B?MUlkSC9BQ1JsNVVLdElEaDRiY0Z4Vkcrd29LZnNnYXJTMG9YNkZNLzN4RzFY?=
 =?utf-8?B?ZU9RaXI1TW5jUnlJaC9sL1lOUEF5czBNWGd0T3hCaXhBSmF3YWZLK0dKbi92?=
 =?utf-8?B?Y0M4Yzl3RnNFZEdQMUdaR2llelZVYStmMnV0cFZmUVZZTXMyTnAwYjBERlBh?=
 =?utf-8?B?Y09YaTVJQm9GdVhJVDNiR0hpalZWZ1Q1WllHWXpJV0NrYkcvQStEK3JpM0Qy?=
 =?utf-8?B?dUtSd2JoblM3WSt5NHJpVExQNVBZc1AxNWxEU0RncEVEcWZHR3R2SFNaUlZF?=
 =?utf-8?B?ejRvS1d5L1VLNHRlSllBUEdrMW8yMlMxS2trRDZkT3d1OHlFU1ZKYVk1Rmxa?=
 =?utf-8?B?amdhMjgxeEh3dVZtN2lOY21ocEowRUVsVHJGanJueWplV0hQLzB4aUNiMFow?=
 =?utf-8?B?eDFYSzd2QlNJYi8yMVQwU3M1VmFBbVEyWVZKQWdKMHFQZEhXNFQyYnRyNWZn?=
 =?utf-8?B?YzhkM0tnaC95d1Y5YXBoZzBvM1hrdzJMRGMvbkt3Y1NZTkxQYVVvSmdJSHVS?=
 =?utf-8?B?UER2SUxQZFZTKzRoVnd3cUhsMHZsMHAwaUlhcTBpRXRObHpXZzFzU2lvc3Rw?=
 =?utf-8?B?WjY4WHRjYUtrY0xvbnZlR2cySnpGM0JJVy9SR2VzNjg3MkxNMFVObEJYbyt6?=
 =?utf-8?Q?8l/FJllfBof/75/WZv1pXXfkk7vXGNHWiFDVfBR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66fcf2cf-4fb0-439b-f61d-08d92a407763
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 05:44:21.7440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VIn7Hn66dr7cgRA/4dLUdtUy8MLUDN6xgZVYBroui7UdVejWov6Fz6ZjAR6u80GI8UajdmMrnCNSuPI8vUtZijQdisJ77KUD7IqmIBbpVbWGhvCGh6CF7ySwanaVk13rANxV7HQHGnYmgrJzpvQE0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGxlYXNlIGlnbm9yZSB0aGlzLiBNdWx0aXBsZSBtYWlsIHNlbnQgYnkgbWlzdGFrZS4NCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFRlamFzDQo+IFVwYWRo
eWF5DQo+IFNlbnQ6IDA4IEp1bmUgMjAyMSAxMDo1Nw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBtaW5nb0ByZWRoYXQuY29tOw0KPiBi
cEBhbGllbjguZGUNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIFYzXSB4ODYvZ3B1OiBh
ZGQgSmFzcGVyTGFrZSB0byBnZW4xMSBlYXJseSBxdWlya3MNCj4gDQo+IExldCdzIHJlc2VydmUg
SlNMIHN0b2xlbiBtZW1vcnkgZm9yIGdyYXBoaWNzLg0KPiANCj4gSmFzcGVyTGFrZSBpcyBhIGdl
bjExIHBsYXRmb3JtIHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0aCBJQ0wvRUhMIGNoYW5nZXMuDQo+
IA0KPiBSZXF1aXJlZCBkdWUgdG8gYmVsb3cgcmVmZXJlbmNlIHBhdGNoOg0KPiANCj4gY29tbWl0
IDI0ZWEwOThiN2MwZDgwYjU2ZDYyYTIwMDYwOGUwYjAyOTA1NmJhZjYNCj4gZHJtL2k5MTUvanNs
OiBTcGxpdCBFSEwvSlNMIHBsYXRmb3JtIGluZm8gYW5kIFBDSSBpZHMNCj4gDQo+IFYyOg0KPiAg
ICAgLSBBZGRlZCBtYWludGFpbmVyIGxpc3QgaW4gY2MNCj4gICAgIC0gQWRkZWQgcGF0Y2ggcmVm
IGluIGNvbW1pdCBtZXNzYWdlDQo+IFYxOg0KPiAgICAgLSBBZGRlZCBDYzogeDg2QGtlcm5lbC5v
cmcNCj4gDQo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4NCj4gQ2M6
IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPg0KPiBDYzogQm9yaXNsYXYgUGV0a292IDxi
cEBhbGllbjguZGU+DQo+IENjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPg0KPiBD
YzogeDg2QGtlcm5lbC5vcmcNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBUZWphcyBVcGFkaHlheQ0KPiA8dGVqYXNr
dW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgYXJjaC94
ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtz
LmMgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gaW5kZXggYjU1M2ZmZTliOTg1
Li4zODgzN2RhZDQ2ZTYgMTAwNjQ0DQo+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWly
a3MuYw0KPiArKysgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gQEAgLTU0OSw2
ICs1NDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50ZWxfZWFybHlf
aWRzW10NCj4gX19pbml0Y29uc3QgPSB7DQo+ICAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJseV9v
cHMpLA0KPiAgCUlOVEVMX0lDTF8xMV9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5URUxf
RUhMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gKwlJTlRFTF9KU0xfSURTKCZnZW4xMV9lYXJs
eV9vcHMpLA0KPiAgCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5U
RUxfUktMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gIAlJTlRFTF9BRExTX0lEUygmZ2VuMTFf
ZWFybHlfb3BzKSwNCj4gLS0NCj4gMi4zMS4xDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
