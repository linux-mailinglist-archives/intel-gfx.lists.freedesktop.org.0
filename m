Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AD7647362
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6420410E4B8;
	Thu,  8 Dec 2022 15:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7A510E4B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670514193; x=1702050193;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EPE2EJkLTuexhB/rFeACmXLga+2tC50kxSnU6/0hs5U=;
 b=iRjlC7tMEpdr/Kp1LdY7klnve1p7wHy4Lx6hZHFwEq1Wo0T5IhsnWBHo
 +eos1wdB+73wtUaH5XreLxwqhAF1tWUN8+w5gMV4KyGo5Eib/ls2qG4tS
 BVSTikdLATqjB2CipC8EdghIwj/4gqXvMVVseO2TDiOGGg9Yo0KgGaIoQ
 4Op0Pc3uNGq2xeVwaqqBf/ZjJpVFctTY7kJcDga2YbvZV4qpr/E1sLOWR
 0zJJK2vYqVNCK3GkyecUKnZqbnS2CSqkps17+hT7tHdH24QsITmVK1RwW
 4d3cTd3tWSBsYuEjFhqebvfeyB3ctbhmRqNSJpXuyB1L2VO+LsjL0UJXk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300632423"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300632423"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="640665327"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="640665327"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 08 Dec 2022 07:31:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 07:31:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 07:31:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 07:31:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jB2Sx7uNKZ8ICuJVOMDX34Z02iAcAoNLpnQrOs7ZYv494WiuTQZgjMwcuB36DkqVdQjUU8XX86gccwdaA4GLUuLlWwhCukbVY877kYDl4YU/shC1fBHosVU7jGQ8pzVfwo/lSvlQWsNs6IdZCP6ucsTSSRy2lgWR262d2vsUsHVBqAxeTwk6O7uJUxjcn0KfUQWZrrdWQO+KsN3zmCiyfTs1aTN3oE+nfGb8Q9/DZDNpjjYthruLD+mcMdGtZIUj+/3CwsRnoJfrb+C3dutit05Y4AwEgy9g0OEgPURKYpyIQQwiqWIX6snBdsUXYtvb7LcL2GS1cMqU9Z19J9rdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPE2EJkLTuexhB/rFeACmXLga+2tC50kxSnU6/0hs5U=;
 b=M8Vg7KZIt/jSyEML9NZvQAsFD8Dp9Zn79jXeTB8Heg1anwI3neck4uri+oZudo9d2vhoxC99KelIlhlOuZUEb2sQVatPpOXznaxmcJcK+p3fcloM99fcgYQ1m719hftYUZXenz4yTsAYzFb1cp3mS0Ai5YbnYq7GDzGY9cutQxT09DI0VNXOdYUFM0KzaS69DGV+6c4WLKEqXTeFX33wKtQgQVcFuxrUEAxTRRsDPKxFEjJvAWXuvUqGcyva+P/wRJXRF6kLoNEN7+LR2Mwysgyx8FJcNjJc4mMkNqzO1CCiGSYENw+tIIaVbkyY/cPfST+Mo01FZ36TmQ3Y+L9gEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6510.namprd11.prod.outlook.com (2603:10b6:930:42::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.16; Thu, 8 Dec
 2022 15:31:14 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:31:14 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 8/9] drm/i915: Fix whitespace
Thread-Index: AQHZAPPsjoZxJ6jxd0mXpvmWB46D6q5kMjvg
Date: Thu, 8 Dec 2022 15:31:13 +0000
Message-ID: <PH7PR11MB5981BA05F5CC003F6378D498F91D9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
 <20221125173156.31689-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20221125173156.31689-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6510:EE_
x-ms-office365-filtering-correlation-id: 7cb15ca3-387f-4523-d89c-08dad9313dc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YgJ0Ijp3bwTU0XRkP1tJU1e9/4quIvYJxZ7Kj2ECq+Cpqo9ggPx2OtdGaSLhhvrwNee+U3nKbp3lqO9L/fxRcSAWHSZJK+Bn3OoMB1GxKDpykuYUGeXbiwlG3DmUZSl/FevkVTVPJG6tsPOPJyCnQi0SYu8luXLFRz+NiMPD+VIwrNEculQoocpEQri2merx0mBemfIHO8ODfQYYRIW6S58agLuNNbN2J4At1GBfu/J0S3lvgYyvVr/4Zt76giBbrKNtsFkTIZZPYLDqG+d4GC7g3plJRzD5ZFpgWpsPs2GxL/yihF5YaZMaxXKwCI0L0uLi8TGhoQBHiX3Rf0vfTfSko9hKcg1LeKvyb0fPpTX9TmJOdt8IPUypAtSQV+ejzrD5THpeanoPNEYnmP7vY4wy9udDKlqURqUatLa4gyne/WXuLbwp9/LQ9awLmv+3wtWyeC51JDteKWVUi+Y5S/g/IoEfDvYrlXA08t1TxFAtOPk4OwD5uYJLM0e+6WKc1v83u4GGXH9n6H7ZAViKAF8iYQd25DF4OzeMNX2w5YVvb5rrugCa9dBNbWR9NnANi4GuuDTC6SCEdeJzjz+H7POMZXNhaospKcOqTQcwZzXEnFjiEX5q8KgO7OiyJcbafVb7qu9c1WD/NtBFDER2rFltP+N66tTR0/jdAeggbZ5vTwkCAdbzK2FrYAT4FCA4hBS4qeyTZrP1KvPmXjxCrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(366004)(346002)(39860400002)(451199015)(2906002)(86362001)(33656002)(83380400001)(38070700005)(66574015)(110136005)(478600001)(71200400001)(26005)(9686003)(186003)(55236004)(53546011)(7696005)(6506007)(82960400001)(41300700001)(38100700002)(122000001)(55016003)(5660300002)(8936002)(52536014)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUszUmZybmlPYktUZHlFQ2JUeUEwQ055RmtxV2hJTVhmK2ZNU04zbkZJTzU0?=
 =?utf-8?B?V0dRdFpBb2JsYW11Rjd4V2ZMSWY0a25LbmJaL1BraVMrYVQxVmlGYkRZMEl5?=
 =?utf-8?B?eU8vZEh6N3dDbVZ0SDlXZTYyZDNuRzRTTDcydER2UDBkVmcxR29rN3gvRDdn?=
 =?utf-8?B?M0svQjFuRStCbXRTOW5PVHMrTXI5WFk1STNlUVluRHVINlVVSm9lVUdsMys4?=
 =?utf-8?B?b3pnMVFRT2Uvd21yNUhjeE5QaVBiYWd2RGNFdHZnakZ2MXFZb1V0WVRnYlJ1?=
 =?utf-8?B?U2hCNTl3bU1qcE8xVXZSU1hKSjh1dVYrZ216anpiQzlyUmlGYkxVdFBzVUF3?=
 =?utf-8?B?THdDWDRzRVprNjFUZHBaRHNQTnM5ZnNGOE45YkkvMGV4cVNHbkl2V0cvck5p?=
 =?utf-8?B?bUtHb3ArY1lwVUxERFlrYXdYeDZCUGorb0dvNk1BSURKT2xDL1Vad3AzK0sz?=
 =?utf-8?B?SFRPSk1QS0Z1Q01HY1BCb3ZhOElsR0xtd0k2SXhFaXBTUGtCNFBxV2hmVENG?=
 =?utf-8?B?VU8xazFESUh3S2VXQzVJRGdUenJEYU9Nb2tmc2hIN1A0bFpSZTJFM25CZldI?=
 =?utf-8?B?RGd4YXdtVkF0SFcvdFByWUFHUjBvMS9zWlhZZmt5QkRmMDlIc2FWOGJhSWd5?=
 =?utf-8?B?Ym9PcGRhWHBCRXVqdlc5Zk0yVmh6MUl1ZlBORHFYa2JTaUdreE15MlU3UW82?=
 =?utf-8?B?WmNWTEVKZnYzQ1FNbTZoRVphbHV0Sk83RWlsNzRqcnJBMitqZzQyTlhQcU9m?=
 =?utf-8?B?Z2RRRXJpRDROOUluZld0UmhxcnorelRjNjBXSDNBK3hkVHdLY21Ta0JwdGNF?=
 =?utf-8?B?UGxaQ1lOb0NZNER1UW93SFROTXdpT29BNjNGaFZFK1RpU09SbElSN0hpTDE2?=
 =?utf-8?B?bUptLzRIM2hwYjBiQTU0Y2ZIMk15UGNCQ0pKZlNQNndGOFdOOHQwUnV2SXZz?=
 =?utf-8?B?MGRaWVQ3QURGQTdGZ1kzNDJqMmN1UjhOVENzNGgvVExVOUcyZys0aitUeTdw?=
 =?utf-8?B?cmhFL2xob3BBVTZUOVFNdlhaRDlLeUdCd1FLSkgxaWpia2xzaFhXRjFoVklw?=
 =?utf-8?B?VFhTWHJXYW9ydzJZblNmbisyNzFHMm91ZiswYldFM1A4ZS84cmhKUXlYSXRG?=
 =?utf-8?B?VE5WWkpsWHN0TGQrMjdZK3grWlRzUmhwTFBTLzN6ZDFwbXM2Q0RpQVdMKzQ1?=
 =?utf-8?B?aEsyczRubDhhWENMNVpsK1RaTzM0WDdIYVhqakMyWTd3bWYrWkFWSE52UFRm?=
 =?utf-8?B?em12OG1memR3SG5DMk9WTjhnYkNocHFjY1dGMXNUeHpPdDRObU0vTjh5SzlW?=
 =?utf-8?B?M0NUVGk2VWk2R3crQkk0cjFucGFNYk9TalBSdFdEVExOcnYrTlVLdmNQdTR5?=
 =?utf-8?B?T2hTZUY1Z1Q0cDJwODdrT3g0dTQvOUg1a0s3V0RXSkFvNnZ1MlpIMlBhVTh5?=
 =?utf-8?B?di9HelRTbWFDNlhyU0Zhd1I2ZEZBRE1uQzJaL0JNS1JVNGxUckZHWVQzZzEr?=
 =?utf-8?B?RU5FSE9zMEhGbEU5Rms2QkZ4ZnFHK3g4RnI0MWZRbnFsZHdISng2UHloNi9I?=
 =?utf-8?B?bUhrMUxBTzZvZjFkVUx2Q0hsbHpkRW1jalNycDVJTVBlbkl3bjNaS2hhcDVy?=
 =?utf-8?B?TXIwdllRVU1CNEVhSmEweklFbUplVnJMdVFnajUyaXZicThMOEtOYjBFOU4x?=
 =?utf-8?B?bkEvNUNSZVVuRWRlTHdHeXBLeFVkRlVmZlk4U1I1S0FlaVpFZUxjQjRENmJu?=
 =?utf-8?B?MjR1N1o1STIySjVOUENWNnNVcG1GT01RV2VFeUVSVjJ0NW9QT29aWlhqY0FZ?=
 =?utf-8?B?OEVQREEveVZZTXMzNzZ3MXhpRU1WTXQ1YkdiWHNldHcva1hzYW16cE4zb1hr?=
 =?utf-8?B?K1ZmdEFxRW1rc1JwdXNNVEJaMWp4aEdqb3hpQk5OVCs2REdKOU1WYk03NGU4?=
 =?utf-8?B?bWZBd0sxMVIxeWRpZ081Q3pBLzYyT1V2YmtwcXlFNTIwSTI4cFQ4aTEyVWlY?=
 =?utf-8?B?Y1FMSTBZNWdGY3UySTlUSUdJM0FtN0RqRFVEYUpxRjFweVNYTjdpUDhZYjdY?=
 =?utf-8?B?d3BQQmR6TFBaMFNOVlBSRHVYSUc3aHNsenpYMk1pdlJCcVlpU0NKTHpJbGVC?=
 =?utf-8?Q?vDvyj0QvsTieVVkaneFiZNNDi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb15ca3-387f-4523-d89c-08dad9313dc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 15:31:13.8616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BYpIKDXueEX61Y5poCaAcs9HMeNF4C4+3uG9OOI8oKl4a8F2nhq9YwGLnAV6FnZRbw3lwBFeg5Eko4RVrNOm7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6510
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915: Fix whitespace
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIg
MjUsIDIwMjIgMTE6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYyIDgvOV0gZHJtL2k5MTU6IEZpeCB3aGl0ZXNwYWNlDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gU3Ry
YXkgc3BhY2VzIGhhdmUgc251Y2sgaW4gd2hlcmUgZXZlcnl0aGluZyBlbHNlIHVzZXMgdGFicy4N
Cj4gDQo+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYyB8
IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBz
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jDQo+IGluZGV4
IGY2YmM4OTYzMzhkZS4uODgwYzUzMGQ1ODMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gQEAgLTUzNSw3ICs1MzUsNyBAQCB2b2lkIGludGVsX3Bw
c19jaGVja19wb3dlcl91bmxvY2tlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKSAgfQ0K
PiANCj4gICNkZWZpbmUgSURMRV9PTl9NQVNLCQkoUFBfT04gfCBQUF9TRVFVRU5DRV9NQVNLIHwg
MA0KPiB8IFBQX1NFUVVFTkNFX1NUQVRFX01BU0spDQo+IC0jZGVmaW5lIElETEVfT05fVkFMVUUg
ICAJKFBQX09OIHwgUFBfU0VRVUVOQ0VfTk9ORSB8IDANCj4gfCBQUF9TRVFVRU5DRV9TVEFURV9P
Tl9JRExFKQ0KPiArI2RlZmluZSBJRExFX09OX1ZBTFVFCQkoUFBfT04gfCBQUF9TRVFVRU5DRV9O
T05FIHwgMA0KPiB8IFBQX1NFUVVFTkNFX1NUQVRFX09OX0lETEUpDQo+IA0KPiAgI2RlZmluZSBJ
RExFX09GRl9NQVNLCQkoUFBfT04gfCBQUF9TRVFVRU5DRV9NQVNLIHwgMA0KPiB8IDApDQo+ICAj
ZGVmaW5lIElETEVfT0ZGX1ZBTFVFCQkoMCAgICAgfCBQUF9TRVFVRU5DRV9OT05FIHwgMA0KPiB8
IDApDQo+IC0tDQo+IDIuMzcuNA0KDQo=
