Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE2572400B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 12:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A21110E220;
	Tue,  6 Jun 2023 10:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FE010E22F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 10:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686048509; x=1717584509;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xcoyYvPjwbOe45a1lec1Hgty1rz85dXwj9PaTY9f7YI=;
 b=azijzlf2jrLfUHPUi3I5OZwnSGTpsQpwrLcTpYAekeHNkMFhhwbAqUz5
 8NaN5a/9dGO3gvMyQHJVUhwJp670wnDx2SjwEt5B60R+TKAgXvkjTRaFq
 FUN100Y8xWZNpGq+xxwvzT4ZTPZmcDoaOiowgPPRj49lEHU5CxiczsqVO
 kVz/xR0JwHFh4dK2KxwZ/eJSGvRFDxt9Gr3kc7kXmXWhUsXBQakL0Eebe
 syXsU0kxuWfn46cqBjj0kSjyhU4G4iYXffVjhaQRNYlbuHMwBkXNIp5Fs
 RtyVjCV5ShRMp88LUlwDsrv6xKf/E4zgUJU2vmUbNWsArVRDu9sNdCp0S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336259198"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="336259198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:48:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="738742762"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="738742762"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Jun 2023 03:48:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 03:48:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 03:48:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 03:48:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 03:48:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGorseA0/LunflH5VD6bsodM89u4yJWlHTTsJAoegy26rqiwzZGlBlAysKeea9YJj07KnNPWmtzonCbB3C6xjqCG5AJ6EiBrh8JxPbDjFLaCp0igMf8wb2DVHU8YdUBQICT5FcAyvW73KyHCsS7KpoLZNWGecJEe3auQpG/FennNLTfqGwMYI9MDeP+M3OvpxEfZUgYCHznlJig/a33xWPQ0TDomYO1F9rmLutfGQgqeADVZgYiro5nWh8XZO5XWM2Md4FUbm/HWBVbi1sHBapK4jXa2h7XMDI2g4OFBtertOWiRsUCUyrK77fB2DmXbrWAIqcDMsbzMNqaqTuKkjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xcoyYvPjwbOe45a1lec1Hgty1rz85dXwj9PaTY9f7YI=;
 b=mIgteFOjTaASOeu9hg8xgx0sBSxnxB60GO6TnBfFRvm4f85cb3AExiD6eJMkVDf9OB/NBs5iXN5G2l2Yo3aqHzxPNEdCSWaiPN5+bjjXUnvdsnF6fNSlGquFE5nePXnDU/Ap0Sxsci5ViQQk+qHxlkWCnhVwqIaYUp6r1N1w1pHvwK7I9gW/dH0oF5M6fIKP5bUkjn4pem7m9gBnPuGtRLsqvXsFUds5mpvX5XyzfFGcMwbG3R9wrsC4kzZmOCRicFruyEwvBdA6AXlMiEalPVUhayP6rbG028XYl5SRq2/PN7l+1KXctg8TbuDfEW14BNaiuQLNYY4v6Zed2tMuEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB5765.namprd11.prod.outlook.com (2603:10b6:510:139::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 10:48:11 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::24e5:66a2:aa47:4886]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::24e5:66a2:aa47:4886%4]) with mapi id 15.20.6455.027; Tue, 6 Jun 2023
 10:48:11 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v14 0/7] mtl: add support for pmdemand
Thread-Index: AQHZmFpGDrlpj6JFQUSp3/vbele2Da99k6mAgAAEZwA=
Date: Tue, 6 Jun 2023 10:48:11 +0000
Message-ID: <f70f3dab07cab724b185137029a961985caa90db.camel@intel.com>
References: <20230606093509.221709-1-vinod.govindapillai@intel.com>
 <87y1kwubie.fsf@intel.com>
In-Reply-To: <87y1kwubie.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB5765:EE_
x-ms-office365-filtering-correlation-id: 7a689326-51df-42fa-145b-08db667b85c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFnBtzIEmA1mGTOnhqlrsMWmd1AJ67DvbEtFHrJxUecXgtD/q7TB/KG4cEi9ck/XHYiAAF5ALqQBYOxVyt4vfqAvBqX1slEdR3+M9uHbO4pxnJYccZKfOR8AcsRvzAUyOQW1nhQIMAXfV0VqA9llau2oUzJRLozvBI3fzuZXipwKvutsgfQhLBU76GIpKlNeI64ZUwdH3OUqyfVCZJCNTHmKAf6xSidMK2SeKOvQJ1Kj6I8mivQi07P7H9VArIYmsMhyJqg6ghv7RK1VYj54nKH+I9drHw3EX4m6LXw9hXrvr6IcSeYTH5PtohytwGnXWABTk5vjF2Nu6s0rA5cIAoTfSNtm6Ey44b7lPeokPQno7Y7Uxeqb2jZH9zxe9iKtRpybDmaIrKc9mC1vG8oetN4uUlnTFZO9FsCTbDExf45Rn5kd3fLFKjwSfXN0KcZE8U2YtpYGLMl3XgKZcCirhEkmZjVyiTrLXs2sEUNqQNQWxKjZcUysahPvuIQnjzwmDXKjtkRmyw8veGCwxK6yDZs48cP48OnHW7ZbjUiQTFcv36lBbG1DhCmFZTKz1oBI+3lKMo7xcw0dqbbYsxp9IKms1Yp7fVHVpMyVrRlOUYS5A673eatifM32BiiL5eCs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(39860400002)(376002)(396003)(451199021)(8676002)(8936002)(110136005)(478600001)(54906003)(41300700001)(5660300002)(316002)(6486002)(91956017)(76116006)(64756008)(26005)(4326008)(66476007)(66556008)(66446008)(66946007)(71200400001)(6512007)(6506007)(2616005)(83380400001)(186003)(2906002)(38100700002)(122000001)(82960400001)(38070700005)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlJ1VW9KQjE3RExha1pVZjN1U0lBTjBpZHVDZGliSUErN3NYd25HaDErbFFI?=
 =?utf-8?B?a09XSEtjUjU2MUlSTzIvbkhPVHZkYUYwRnBsNFNBUW50c2FQdEtNVnpvQlNK?=
 =?utf-8?B?YnZVaXlFTTdmNkxVQ1Izd1MzU2ZzaFlLWUFYelQ4UzVOd1g4OVdjSEsyS1ZB?=
 =?utf-8?B?ZmorYXpyYnkvWTZtcXpXLzNIZU9rL0M4OVVZTnM1QWJYM21xcldsais4WElN?=
 =?utf-8?B?a01oR1lhRFhRK1Fhak9NamhzRUZYcEdLWmdqcWxvaGRXVjJJQUw5QmpRWERY?=
 =?utf-8?B?MndtL25URUdsTVNDMlNMTVFWM2t2V2Z3ZW5PZnBYRkwvSGtraW9kVXlIRnU3?=
 =?utf-8?B?RllNVVlDL08vcW5hN2gwNXJOZ0RmSE1kSmNLenZZd0dpaDV6UXFDZER2Y2t2?=
 =?utf-8?B?STJEeWZBRVBNOGhEUzJnZFFZWkdEYmdUUzMvbFZtb0tWWXJ1bXhVT2dOUml1?=
 =?utf-8?B?OWJ0UWZpWE5uaUpyZ2QzVDFIOGo1a1htV3UyRDh5RGs4VHhoTDJwcXdpVXR1?=
 =?utf-8?B?aCtwMG9EdUxiM285SkhtczM0ajJGSm9tTHpLcDBDU3REQXFLOTY3Znd5YjRj?=
 =?utf-8?B?dlM2cnhGTy9vVG83cmRPcjlTaTFhcytaVUtzK0V2ZlcrcE5OV1FyUjdadzJV?=
 =?utf-8?B?U1BZbkNZQ0hrdWxmbXR2YWNORVptS1lwVHdYTmticSsxd0k0T1dKQTVqaWQ1?=
 =?utf-8?B?NW5HYkVyQ2NnMmhvSXYwRW9CdGtCak1yc3V3bmp4VFRqN3dRRUVjV25hMTdv?=
 =?utf-8?B?T1N5Z0lucnA4Q3dHYW0wQjloUlNPY2V1WXJ5Q2E3dXNXY0FhK3EzZ2Nqb3Z3?=
 =?utf-8?B?c3NaSVh3TmIvelB1OCsxQUN0d0puWXh4NWczOFlGTmM4c3YrUzkzRHY0dW1M?=
 =?utf-8?B?R3V6WWZ5b2dwZXpOU3RHZEx6eUZLY1RXN0VtMmlrWVJ6QlVualBmcExVS1kr?=
 =?utf-8?B?WlRUSkhkMXh3c3lYcjRBL2Q4dXFQbmZoYW1DMzR0SGdvYi83QzlxRXJ0MnA4?=
 =?utf-8?B?QXVpbVVQNEF0ejIwb2lSdEhEcmluMmVhT005V09IaGJJVE91cVpLTU5RUGFt?=
 =?utf-8?B?VjBEaEVkQVdXaVR0QUI2L25JeU9HbGtEb25SZStOWHJuTFV2RnhSdGJBaGQ4?=
 =?utf-8?B?S0RpaU5PMGFQWndsZy9UcnQ1Q3FQSlZOZERDdWVvQys4VjAza1VxRVk2VlBk?=
 =?utf-8?B?VnRQWGh5VWhNU3ViblZWcktRQTRBM3N3VmNGS282ZE82SHdDb09tWnlFNTJH?=
 =?utf-8?B?ZldTTE5yM1ZVeVRmWHc4VVpHby83OTZqS1lyME8yYWpIL1NQOERDNWhvZDB5?=
 =?utf-8?B?Yy9XTi85YUdib29PNW1idnd6RGNwajFidnNJcGVvMm9rbG5zc2xGUEFpRS8x?=
 =?utf-8?B?ZFlCTXpONExjMjBReWUyWTJzcHM0YjNNVHdua0ZEM1I2bnBYSDNSbFJVdXE4?=
 =?utf-8?B?Yy94Q1BjWjhKNGJsY21ZT2I2REJLM2JpcjI3dTRVWTJ4ZHdySUp5aWQvSE4z?=
 =?utf-8?B?bE52MlZhT3hjTXFibUgyVVEyVndVamNWc0tIaTRQYVltRHA4b2JFb09TbnI0?=
 =?utf-8?B?bTBqZ1o3eWhJc0ZHTk1tMFBZMGlKd2VhUUgrR0xDSnhKQXI5L092VXNMTDRD?=
 =?utf-8?B?VDhRZ00zUG10WXdoSkRSSkJGWE16S1Z2NjdjN3ZPbExwSjZMZDZmK2tDbFNv?=
 =?utf-8?B?aGdCQUZmN2tiVDBpa0R3UWhtOTQwV3NZQXZhL1RrZUZqcnZIUEMvU1V3S3hs?=
 =?utf-8?B?YTRLNk5NRXlVTlMxaW9EYStWUWhoYnhKWGF0NUlRUXZnbmJHb3dTSkl2ZkpG?=
 =?utf-8?B?THhESXJJbW9HVTNJeDU1ZUw0Yy96VWUvbHlURjV4YlpKVVpVOGxHMXMvN3N6?=
 =?utf-8?B?MUJoM0Vha1Ryb2dLRWFhNEFTckNIc1RVTENJcmNodXZydjM4ZXR5TUdxUEpQ?=
 =?utf-8?B?eXEvK3dwOTk5WWVMZWpzckJFb2hZZFVsblRLQTFKVHQ0SElLZWtUUG5wRTFI?=
 =?utf-8?B?TmJhRjBsWTBOR0dqVFZ2dWpoaWJtSmovdDZWVmkxVmFQVVJCMW1PVng5ZFlM?=
 =?utf-8?B?U3daeEkremFMWDhDbjNFWWpXWm5jeWdoU1VIVmpmTnpUN2U1K2NSSnB6M1lx?=
 =?utf-8?B?YW5IdEZSaGZqZGpGd0trOVR4dG5GbTBTVCtpQWZIYmk3U280WEpiTDF6UzlE?=
 =?utf-8?Q?+6WfYRv0QnXBh8wvzZ7E+bs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B79949D1C31F4345B02D06E5D99E4007@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a689326-51df-42fa-145b-08db667b85c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 10:48:11.3853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvRLlAULOvs2p+QUgx7G4O2vPg6HeSLH1926nPXAX7HMUg3AbpcSM3ZsZRx1T2PNmGuxxIR/3YsKCbK9avRVR/p/BKpTvGEaF0owRlvKYfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5765
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v14 0/7] mtl: add support for pmdemand
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

T24gVHVlLCAyMDIzLTA2LTA2IGF0IDEzOjMyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAwNiBKdW4gMjAyMywgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IFNBR1YgY29uZmlndXJhdGlvbiBzdXBwb3J0IGZv
ciBNVEwNCj4gPiANCj4gPiB2MjogYWRkZWQgb25lIG1pc3NpbmcgcGF0Y2ggaW4gdGhlIHByZXZp
b3VzIHZlcnNpb24NCj4gPiANCj4gPiB2MzogY2hla2NwYXRjaCB3YXJuaW5nIGZpeGVzDQo+ID4g
wqDCoMKgIHVwZGF0ZSBpbmRleCBoYW5kbGluZyBmb3IgdGhlIGljbC90Z2wgUUdWIHBvaW50IGhh
bmRsaW5nDQo+ID4gwqDCoMKgIHByb2dyYW0gcG1kZW1hbmQgY29kZSBzaW1wbGlmaWVkDQo+ID4g
DQo+ID4gdjQ6IHVwZGF0ZSB0byBkZWJ1ZnMgYW5kIHBpcGUgdmFsdWVzIHBtZGVtYW5kIHJlZ2l0
ZXJzDQo+ID4gwqDCoMKgIHJlbW92ZWQgdGhlIG1hY3JvIHVzYWdlIGluIHVwZGF0ZV9wbWRlbWFu
ZF92YWx1ZXMNCj4gPiANCj4gPiBWNTogQWRkcmVzc2luZyBjb21tZW50cyBmcm9tIEd1c3Rhdm8g
YW5kIEphbmkNCj4gPiDCoMKgwqAgQW5kIHNvbWUgb3RoZXIgZml4ZXMgZm9yIGlzc3VlcyBmcm9t
IENJDQo+ID4gDQo+ID4gdjY6IEFkZHJlc3Npbmcgc29tZSBjb21tZW50cyBmcm9tIEd1c3Rhdm8N
Cj4gPiDCoMKgwqAgVXBkYXRlcyB0byBwbWRlbWFuZCBzdGF0ZSBzdHJ1Y3QsIGFjdGl2ZSBwaHlz
IGNhbGN1bGF0aW9ucw0KPiA+IMKgwqDCoCBHb3QgcmlkIG9mIHN1cHByZXNzIHdhcm5pbmcgcGF0
Y2ggZnJvbSB2NQ0KPiA+IA0KPiA+IHY3OiBSZWJhc2VkIGFuZCB1cGRhdGVzIHRvIG1heCBkZGlj
bGsgYW5kIGFjdGl2ZSBwaHlzIGNhbGN1bGF0aW9ucw0KPiA+IA0KPiA+IHY4OiB1cGRhdGVzIHRv
IGFjdGl2ZSBwaHlzIGNhbGN1YXRpb25zDQo+ID4gDQo+ID4gdjk6IEFkZHJlc3Mgc3R5bGluZyBp
c3N1ZXMNCj4gPiANCj4gPiB2MTA6IFVwZGF0ZXMgdG8gcGh5cyBjYWxjdWxhdGlvbiwgcG1kZW1h
bmQgc3RhdGUgaW5pdGlhbGl6YXRpb24gZHVyaW5nDQo+ID4gwqDCoMKgwqAgSFcgcmVhZG91dCAv
IHNhbml0aXphdGlvbg0KPiA+IA0KPiA+IHYxMTogRml4IENJIGNoZWNrcGF0Y2ggd2FybmluZ3MN
Cj4gPiANCj4gPiB2MTI6IEFkZHJlc3NpbmcgY29tbWVudHMNCj4gPiANCj4gPiB2MTM6IFVwZGF0
ZXMgYmFzZWQgb24gaW1yZSdzIGNvbW1lbnRzIHRvIGhhbmRsZSBub24gc2VyaWFsaXplIGNhc2Vz
LA0KPiA+IMKgwqDCoMKgIHVwZGF0ZXMgdHAgcGh5cyBtYXNrIGR1cmluZyBzYW5pdGl6ZSBjYWxs
cyBhZnRlciBIVyByZWFkb3V0DQo+ID4gDQo+ID4gdjE0OiBjaGVjayBkaXNwbGF5IHZlcnNpb24g
YmVmb3JlIGFjY2Vzc2lnIHBtZGVtYW5kIGZ1bmN0aW9ucw0KPiANCj4gT2theSwgcGxlYXNlIHN0
b3Agc2VuZGluZyBuZXcgdmVyc2lvbnMgbm93Lg0KPiANCj4gV2UgZG9uJ3Qgd2FudCB0byByZWFj
aCB2MTQgb24gYW55IHBhdGNoIHNlcmllcy4gSXQncyBhIGJ1cmRlbiBvbiB0aGUNCj4gZGV2ZWxv
cGVyLCB0aGUgcmV2aWV3ZXJzLCB0aGUgQ0ksIGV2ZXJ5b25lLiBQbGVhc2UgYWRqdXN0IHRvd2Fy
ZHMNCj4gd2FpdGluZyBmb3IgbW9yZSByZXZpZXcgY29tbWVudHMgYmVmb3JlIHNlbmRpbmcgYW5v
dGhlciB2ZXJzaW9uLCBhbmQNCj4gbWFraW5nIHRoZSBtb3N0IG9mIGVhY2ggdmVyc2lvbiBzZW50
LiBUaGVyZSBhcmUgc2V2ZXJhbCB2ZXJzaW9ucyBvZiB0aGUNCj4gc2VyaWVzIHRoYXQgZGlkbid0
IHJlY2VpdmUgYW55IGZlZWRiYWNrOyB3aHkgc2VuZCBhbm90aGVyIHZlcnNpb24/DQo+IA0KPiBJ
biB0aGlzIGNhc2UsIEFGQUlDVCwgc29tZSBvZiB0aGUgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzIGhh
dmUgUmV2aWV3ZWQtYnkNCj4gYnV0IGhhdmVuJ3QgYmVlbiBjaGFuZ2VkIGluIHRoZSBsYXN0IHRl
biB2ZXJzaW9ucyBvZiB0aGUgc2VyaWVzLiBXaHkNCj4gaGF2ZW4ndCB0aGV5IGJlZW4gbWVyZ2Vk
IGFscmVhZHk/IFdoYXQncyB0aGUgcG9pbnQgaW4gcmVzZW5kaW5nIHRoZW0NCj4gb3ZlciBhbmQg
b3ZlciBhZ2Fpbj8NCg0KWWVhaCEgVGhpcyBQbWRlbWFuZCBzdHVmZnMgaGFzIGJlZW4gYSBuaWdo
dG1hcmUhIEFwcGFyZW50bHkgaXQgbG9va3MgbGlrZSB0aGUgb3JpZ2luYWwgdmVyc2lvbg0KbGFj
a2VkIG1hbnkgZnVuY3Rpb25hbGl0aWVzIGFuZCBoYWQgYmVlbiBtYW55IHJldmlldyBjb21tZW50
cyEgSSBvdmVybG9va2VkIHNvbWUgZml4ZXMgd2hpY2ggaSBvbmx5DQpub3RpY2VkIGFmdGVyIGkg
c2VudCB0aGUgcGF0Y2guIFRoYXQgbWlnaHQgYmUgdGhlIHJlYXNvbiB3aHkgc29tZSBwYXRjaCBy
ZXZpc2lvbnMgYXJlIHNlbnQgd2l0aG91dA0KYW55IHJldmlldyBjb21tZW50cy4NCg0KTm93IElt
cmUgaXMgYWN0aXZlbHkgcmV2aWV3aW5nIHRoZSBwbWRlbWFuZCBwYXRjaC4gSG9wZWZ1bGx5IGNv
dWxkIGJlIGNsb3NlZCBzb29uDQoNClllcy4gVGhlIG90aGVyIHBhdGNoZXMgaW4gdGhlIHNlcmll
cyBjb3VsZCBiZSBtZXJnZWQuIEkgZG9udCBoYXZlIHRoZSBjb21taXQgcmlnaHRzLg0KSXQgd291
bGQgYmUgbmljZSBpZiBzb21lb25lIGNhbiBtZXJnZSB0aG9zZQ0KDQpCUg0KVmlub2QNCg0KPiAN
Cj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gDQo+ID4gTWlrYSBLYWhvbGEgKDEpOg0K
PiA+IMKgIGRybS9pOTE1L210bDogQWRkIHN1cHBvcnQgZm9yIFBNIERFTUFORA0KPiA+IA0KPiA+
IFZpbm9kIEdvdmluZGFwaWxsYWkgKDYpOg0KPiA+IMKgIGRybS9pOTE1OiBmaXggdGhlIGRlcmF0
aW5nIHBlcmNlbnRhZ2UgZm9yIE1UTA0KPiA+IMKgIGRybS9pOTE1OiB1cGRhdGUgdGhlIFFHViBw
b2ludCBmcmVxdWVuY3kgY2FsY3VsYXRpb25zDQo+ID4gwqAgZHJtL2k5MTU6IHN0b3JlIHRoZSBw
ZWFrIGJ3IHBlciBRR1YgcG9pbnQNCj4gPiDCoCBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9id19j
aGVja19xZ3ZfcG9pbnRzKCkNCj4gPiDCoCBkcm0vaTkxNTogbW9kaWZ5IG1heF9idyB0byByZXR1
cm4gaW5kZXggdG8gaW50ZWxfYndfaW5mbw0KPiA+IMKgIGRybS9pOTE1L210bDogZmluZCB0aGUg
YmVzdCBRR1YgcG9pbnQgZm9yIHRoZSBTQUdWIGNvbmZpZ3VyYXRpb24NCj4gPiANCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3
LmPCoMKgwqDCoMKgwqAgfCAzNDUgKysrKysrLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmjCoMKgwqDCoMKgwqAgfMKgwqAgNiArDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuY8KgIHzCoCAxNCArDQo+ID4gwqAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfMKgIDExICsNCj4g
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmPCoMKgIHzCoMKg
IDcgKw0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmPC
oCB8wqAgMjMgKy0NCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuY8KgwqDCoCB8wqAgMTQgKy0NCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21v
ZGVzZXRfc2V0dXAuY8KgwqDCoCB8wqAgMzYgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wbWRlbWFuZC5jIHwgNzE0ICsrKysrKysrKysrKysrKysrKw0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbWRlbWFuZC5oIHzCoCA2OSArKw0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDM2ICstDQo+ID4gwqAxMiBmaWxlcyBjaGFuZ2VkLCAxMTUzIGluc2VydGlv
bnMoKyksIDEyMyBkZWxldGlvbnMoLSkNCj4gPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BtZGVtYW5kLmMNCj4gPiDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BtZGVtYW5kLmgNCj4g
DQoNCg==
