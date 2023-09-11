Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC9479AACD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 20:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384E710E34A;
	Mon, 11 Sep 2023 18:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BEC10E34A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 18:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694456507; x=1725992507;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oTxbtnTwokjSvyc7ZJIayw9JY4vMMmAd3OMAxn+CNPI=;
 b=EZPhktStI2S8aeZxhiIKGr4FsqMpITN2lXkB1XYaD0ALMvMoHUzmuUuc
 hp7NugviXiJztMUB+OqmpcNPaCuS5UJ8l2Njy+y381e1IY76myEud5vpF
 f31qFlr/XNrgb6yvzx2DDQF12pvp1EPpEub3on5FrMICTYgdRu3PMVSoV
 vkpE2J6yaON9/RFC8Vj/FTdWbI9hT0PrFyiFPWOQFIGSSe6Of+dw63MUB
 W+hmxeCGx7oQrBNx+4DUE3wQnLGqNW2qLrTPc2D/bjdvp65601IAspvd4
 weQ3iCC7vlaKpA05bBrxeEqpbDwHdag1yOhmDB3nzkBbscEPTsF8F3iFQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444597549"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444597549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 11:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720074297"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="720074297"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 11:21:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 11:21:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 11:21:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 11:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nSixuHBzlwrEW1cqQQKjm7NEnnIMnZa0ernfcKeXF9nxMJ/SMr7m9qjim+0VUSFxjfTP+AmBYaoYsHKxyrXSrUWIJngKirNaxy6qCuovfrhv2d7HO6WkV/rDmWNHiroYE+tVP/Px3uKNx24EI501w8p5MFRDe5+ybAUG0eZL3fQfc6+r8YVsMIgnVvBMl5ajz85SCEn+19kGRqVf4lz+gFBgz6PR8M0HtBLWb/un9XpDdbYHgA3Vg95Qi8L+tE3D7m0bI/mth4+/GVGSvsm38qs3nET0+kfjJvG9VVIEUDMslV7uriAnLfyYNh5hPu4eFXhynEf6ATRM3xADWG5XBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTxbtnTwokjSvyc7ZJIayw9JY4vMMmAd3OMAxn+CNPI=;
 b=a86W1DVLNCvujPa4lIW8RSeGYPEWvAr5J0+B9w7fCziSUAxrvused7cp+LwctRx4MAafXTbFVd3rdnbeanFo3q/8SitKj3vp/LjCSrrD8G1wJDR1Jr4SXtvVCZ5MKc4m+s8hHm8Z9/kXGqOmOwxJbzUzOYT1Q66BAj0ONJx655JEVvY39MuDs4UBOfPYC4ruRMO2ghvYP9dGCvxLHX38UDhGdqsIjoQjtFNkdyUgZHCfvcWnuN7JraHBwwRc4JWCFq4OiCBfXE1RwKSuzAvFxqtYe8wwLodO2w2z+sJjSnGSlTDTlwOq5Gagbovjwb1Yh1MpY0/mDDXkoPjurlFXlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM3PR11MB8672.namprd11.prod.outlook.com (2603:10b6:0:44::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 18:21:18 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 18:21:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/6] drm/i915: Enable VRR later during
 fastsets
Thread-Index: AQHZ2XJuflyYTAWTZUmZxoB4VTf/VrAWBoIg
Date: Mon, 11 Sep 2023 18:21:18 +0000
Message-ID: <IA1PR11MB634836589D4C5368CB2105AAB2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230828054140.28054-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM3PR11MB8672:EE_
x-ms-office365-filtering-correlation-id: f8ef416c-3611-4a77-5ed6-08dbb2f3e490
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0ww7ARw7clOEtBrZdDNy0iRRyzXGaMJVlkSkleSs0J5OMgNqS0IKxNq/5fsrti9R4GIUnhYvQC0WKPXJfr7akU6NUqMnRqivK/+C0m1tF67xg8JiHNGcj6OdRIFOUdLwQVPE5YCoyVNHfrr0IPh+nk0UNbYcKNOJzgw5UozKxpv5xRdcJxLsw46i4KFdelm+dI3uKJ8tGA40tE9rLkSHSgA8cA/dac0RRYI6B43FT2TYzHVZL7LgUQU8Q1oRgXWRgAk1CeBAE2wT5B0N0+CyU/AfTvoXAw3+GaqSRX7NGePmowBf0ZgQd8qMOwXbaljvVGrsqcVthArs/3nbQUmRS/dYysMLj8LxLQdwsvsKqkQQmv57c4zGkk31PLqmWMYZnwcoUyEV+sec7jKhqTQZe02XmPb8u+pfR3GMhz0v4ARM0fGMDgp1a8CRRMOpQrbJv8U1EHNb+ZgxWp7PIoD5LEEDtnaSPDvnCSU7jheQKKvFnGGf7l55nAk2sgO7waE7lB8/qIo3IRBkWQYDsobfQccfsnBqRCJ/6z5vWhrYoXwhSdSe9D0IDapuHeH6q8ztPgj5XbExgI8KhJKBhjE3G8OuGuwbrZvWpSO5rss+YKiU6/2DU3sSImBunIJzlj7s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(396003)(376002)(186009)(1800799009)(451199024)(66556008)(66476007)(76116006)(7696005)(316002)(66446008)(6506007)(64756008)(110136005)(55236004)(53546011)(9686003)(41300700001)(478600001)(71200400001)(8936002)(8676002)(52536014)(26005)(5660300002)(122000001)(38100700002)(82960400001)(55016003)(38070700005)(33656002)(66946007)(2906002)(86362001)(83380400001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHduUG1waVl3bUUrdytGeGh0MVVYc1pSR2I0NTVxZzRybnlXQm04ZEFzbEEx?=
 =?utf-8?B?dUtpTDI3WVFkYkk5aGZUZURRdURCSWI5NEZIVTAvMUE1Y2FOOEJVMFRyU28z?=
 =?utf-8?B?SCs2VGszSWJLR29KaDRTcmYxYlJBWnNub0tpdDZkbTdocmp3UGdNL0xMR05X?=
 =?utf-8?B?SGx0d2JudkhCOU53d212SCtCWXdCM2ZENlJ6bDJaYmdUUjNJaVJWVk9KaGhL?=
 =?utf-8?B?V1pJVGZ2c2xudXpkTE43NlBGMDUySlJoTEVvajkzU3cxeU9oaDFIZi9hT2s0?=
 =?utf-8?B?dWxCQjlGSnpGelJiS0t3SURaZmF0SjBHazdkNHhFUG00bWdobFZ4c2ZSaDdE?=
 =?utf-8?B?R1VwanRUYjh3emdHOGo2TnI4TDNSVFJPU1NPUDVrMEJOcmExT2MvLzJmMllJ?=
 =?utf-8?B?M0RINEpwaWxSZUR5dWZIMldJdnVMZUhzL2hYVWtKTG85aDFZeHBiZERtMmtJ?=
 =?utf-8?B?RUdsWkU1OHdtdGlMdnBtd3E2NzlsYUlHQkpvd1JuU3ROYkdGZFIxY2JVWDd1?=
 =?utf-8?B?WEluSTZuRUJ3VmRnMFkzT0RZTld5RHFRUUptU0xVKzI0L3plejRxNUdBZlNL?=
 =?utf-8?B?MDN2ZXdIdEk5T2x1b3JobHNIdVJ4cmdqL2lXWno4dWQvNFBNQ2dHUDIxU0xU?=
 =?utf-8?B?OFhSeTlTNFBnQnpLcXNZY2hjNEFWai9jZndFK1ArRGVMRjdmd05rSU4yV2xN?=
 =?utf-8?B?ck5NR2dtVzNUc0JUb3czaXVFd0YzeWNwL2lOQ0NoMDVidlRJdnlYS0IySmJ2?=
 =?utf-8?B?S244aFpOYjFiYXRJRFpqS0YvOURjaXZ1Um14Y0FUQmszVnJ6MWlaYUJXcXlV?=
 =?utf-8?B?d250S3d2WWU0T05ZbkRMM0hud0dBNTUwUmdmYzdGQmo1ZWtTbDFoRkxWQVc3?=
 =?utf-8?B?WENuTzZESm9IMEM1cndkaUxaSGJ1dnhicGlxRzErOW5MRlhPdWw4Y0J6cmho?=
 =?utf-8?B?aVF3QW9Ga1YyWk9qL0VvNlpJN2pmUVRzbFd4TjVVeWtWZHo4RGRSaEgwRVA2?=
 =?utf-8?B?ZklBQ1d3TS9EallGSUcvcUUyR21US09sbHJQK0d3ZmV0dWlPb0NnVzNmbWVW?=
 =?utf-8?B?cHdxL0I5eWxIODI3c0JnYzBUR1V1a05uRC9vZC9kUnBsa1l4Q21iSUJhM1JW?=
 =?utf-8?B?YlM5OW9za0x6L3A0Y1YycWRNR1Q0K2VNd0xwVjFjQ1JmeFp5ajE0dlpxNUJW?=
 =?utf-8?B?WGVlemNLMXl0b2FaMUsyMnhxU0I4Z2N6ZjVsZ2d6L2syWWtTakgzZSt6MXE4?=
 =?utf-8?B?U1QvZDBzV1pSTlYvZ0MyU00zVmVjeUxsc1BNLzZ1eHZHbUpDbEE0Q0Yyc3ZJ?=
 =?utf-8?B?cU82bWZGNXBPczU1RFpveWx4d3VPeUE3aVJzNlNUR0dORkJoak4vVGV3NUdr?=
 =?utf-8?B?QzB1SUIveW11QXRyVVA0Q0g2NjF2MWRNenBPbHltS1BWd0tqWWp5d2t4M3ZI?=
 =?utf-8?B?aU5Jd1ZVUmd3VTZLV3lMNG1sWHRsSmNWOUhYWElWd01nektOZ3dSTlJjTW5h?=
 =?utf-8?B?dllOUGRMeXZZNjg1VFFyZ0M3bENCVjc3Y3ROQ0tNV1dSdFVucWQybEtNdVBp?=
 =?utf-8?B?aUtpTFZWTnJoZnlLZi9qZnpJVkhieUdFTDZXSkpmdDBQUVd2L3BjaWRYcVNm?=
 =?utf-8?B?b05CSWEzcWtaZVpBUW9xR2crSTRWL3YvRTlqcG1NUlFIbk0vZVhxSS90Kzgv?=
 =?utf-8?B?UXd1WkhFWFZiYXFHSjAyY01ZQ1RwRzd1czh5ZkdkMnpnSEs4Tno0QytEMlU1?=
 =?utf-8?B?cUlVQlBXSUd6d3VqRVVMYmc4Y1p0VHkyS0MxbFh6dG5vUzJUdEZlbG5KRmdQ?=
 =?utf-8?B?MFJZVTJQTXAzUmpkejJNczNVZU9ERFdpMkdPSmY1UGhoeldSQlJsSTZYWDYx?=
 =?utf-8?B?U2Jlc0ZIMWhObms5emJlbi90dDRiQzBUZjR6a3V6SnhJYWZCYklLaUVGTHov?=
 =?utf-8?B?RDk2NXBueWtaS1A4aWR6Nm1PSHFpcmFIWHhYS2ZHMVprdXNyc1BLczlUYkdq?=
 =?utf-8?B?UWF0dHE5RWZjWGsyWFBpSzczMHozUFQxdGM1WDBnRWk1VHV1L1lUNnpOZ1RF?=
 =?utf-8?B?cHNCOEpQV3pEUzNyZzJCVEh5Yi9FSHIxbWFIejY5emZGbnlXRjZ2M1pkTnJE?=
 =?utf-8?B?ZGNKUWdaRjY1OE1xZlNhWTdIQ2dsZ2g1Q0N2bHdiZWQvaFhXaFgvT3NTdXRG?=
 =?utf-8?Q?Qijmyp59TR3kBh4PYE3bBeg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ef416c-3611-4a77-5ed6-08dbb2f3e490
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 18:21:18.4123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MByXUFWgNyeiEan1j8EX8DqCHK9ITAysHKwQCR1DbWSQK5AEV2x3PycK0DK+OmzoizCtPOs5EyStIzDzhOIrsZgRq5oMXXAzLSZsaK7vXNRckesE9wF+uig4pOBfxHrU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Enable VRR later during
 fastsets
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDI4IEF1Z3VzdCAyMDIzIDExOjEyDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCA0LzZd
IGRybS9pOTE1OiBFbmFibGUgVlJSIGxhdGVyIGR1cmluZyBmYXN0c2V0cw0KPiANCj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IElu
IG9yZGVyIHRvIHJlY29uY2lsZSBzZWFtbGVzcyBNL04gdXBkYXRlcyB3aXRoIFZSUiB3ZSdsbCBu
ZWVkIHRvIGRlZmVyIHRoZQ0KPiBmYXN0c2V0IFZSUiBlbmFibGUgdG8gaGFwcGVuIGFmdGVyIHRo
ZSBzZWFtbGVzcyBNL04gdXBkYXRlICh3aGljaA0KPiBoYXBwZW5zIGR1cmluZyB0aGUgdmJsYW5r
IGV2YWRlIGNyaXRpY2FsIHNlY3Rpb24pLiBTbyBqdXN0IHB1c2ggdGhlIFZSUg0KPiBlbmFibGUg
dG8gYmUgdGhlIGxhc3QgdGhpbmcgZHVyaW5nIHRoZSB1cGRhdGUuDQo+IA0KPiBUaGlzIHdpbGwg
YWxzbyBhZmZlY3QgdGhlIHZibGFuayBldmFzaW9uIGFzIHRoZSB0cmFuc2NvZGVyIHdpbGwgbm93
IHN0aWxsIGJlDQo+IHJ1bm5pbmcgd2l0aCB0aGUgb2xkIFZSUiBzdGF0ZSBkdXJpbmcgdGhlIHZi
bGFuayBldmFzaW9uLiBTbyBqdXN0IGdyYWIgdGhlDQo+IHRpbWluZ3MgYWx3YXlzIGZyb20gdGhl
IG9sZCBjcnRjIHN0YXRlIGR1cmluZyBhbnkgbm9uLW1vZGVzZXQgY29tbWl0LCBhbmQNCj4gYWxz
byBncmFiIHRoZSBjdXJyZW50IHN0YXRlIG9mIFZSUiBmcm9tIHRoZSBhY3RpdmUgdGltaW5ncyAo
YXMgd2UgZGlzYWJsZSBWUlINCj4gYmVmb3JlIHZibGFuayBldmFzaW9uIGR1cmluZyBmYXN0c2V0
cykuDQo+IA0KPiBUaGlzIGFsc28gZml4ZXMgdmJsYW5rIGV2YXNpb24gZm9yIHNlYW1sZXNzIE0v
TiB1cGRhdGVzIGFzIHdlIG5vdyBwcm9wZXJseQ0KPiBhY2NvdW50IGZvciB0aGUgZmFjdCB0aGF0
IHRoZSBNL04gdXBkYXRlIGhhcHBlbnMgYWZ0ZXIgdmJsYW5rIGV2YXNpb24uDQo+IA0KPiBDYzog
TWFuYXNpIE5hdmFyZSA8bmF2YXJlbWFuYXNpQGNocm9taXVtLm9yZz4NCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyAgICB8IDM1ICsr
KysrKysrKysrKy0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIxICsrKysrKysrLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNl
cnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IGU0NmExNWQ1OWQ3OS4uMTk5MmU3MDYwMjYz
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBA
QCAtNDcyLDE1ICs0NzIsMzEgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfY3J0Y192YmxhbmtfZXZh
ZGVfc2NhbmxpbmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCQkg
ICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJCQkJICAgICAgaW50ICptaW4sIGlu
dCAqbWF4LCBpbnQNCj4gKnZibGFua19zdGFydCkgIHsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9j
cnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsNCj4gLQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSA9ICZuZXdfY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGU7DQo+ICsJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ICsJY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGU7DQo+IA0KPiAtCWlmIChuZXdfY3J0Y19z
dGF0ZS0+dnJyLmVuYWJsZSkgew0KPiAtCQlpZiAoaW50ZWxfdnJyX2lzX3B1c2hfc2VudChuZXdf
Y3J0Y19zdGF0ZSkpDQo+IC0JCQkqdmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJyX3ZtaW5fdmJs
YW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsNCj4gKwkvKg0KPiArCSAqIER1cmluZyBmYXN0c2V0
cy9ldGMuIHRoZSB0cmFuc2NvZGVyIGlzIHN0aWxsDQo+ICsJICogcnVubmluZyB3aXRoIHRoZSBv
bGQgdGltaW5ncyBhdCB0aGlzIHBvaW50Lg0KPiArCSAqDQo+ICsJICogVE9ETzogbWF5YmUganVz
dCB1c2UgdGhlIGFjdGl2ZSB0aW1pbmdzIGhlcmU/DQo+ICsJICovDQo+ICsJaWYgKGludGVsX2Ny
dGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ICsJCWNydGNfc3RhdGUgPSBuZXdf
Y3J0Y19zdGF0ZTsNCj4gKwllbHNlDQo+ICsJCWNydGNfc3RhdGUgPSBvbGRfY3J0Y19zdGF0ZTsN
Cj4gKw0KPiArCWFkanVzdGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsN
Cj4gKw0KPiArCWlmIChjcnRjLT5tb2RlX2ZsYWdzICYgSTkxNV9NT0RFX0ZMQUdfVlJSKSB7DQo+
ICsJCWlmIChpbnRlbF92cnJfaXNfcHVzaF9zZW50KGNydGNfc3RhdGUpKQ0KPiArCQkJKnZibGFu
a19zdGFydCA9DQo+IGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChjcnRjX3N0YXRlKTsNCj4g
IAkJZWxzZQ0KPiAtCQkJKnZibGFua19zdGFydCA9DQo+IGludGVsX3Zycl92bWF4X3ZibGFua19z
dGFydChuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJCQkqdmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJy
X3ZtYXhfdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpOw0KPiAgCX0gZWxzZSB7DQo+ICAJCSp2Ymxh
bmtfc3RhcnQgPSBpbnRlbF9tb2RlX3ZibGFua19zdGFydChhZGp1c3RlZF9tb2RlKTsNCj4gIAl9
DQo+IEBAIC03MTAsMTUgKzcyNiw2IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAqLw0KPiAgCWludGVsX3Zycl9z
ZW5kX3B1c2gobmV3X2NydGNfc3RhdGUpOw0KPiANCj4gLQkvKg0KPiAtCSAqIFNlYW1sZXNzIE0v
TiB1cGRhdGUgbWF5IG5lZWQgdG8gdXBkYXRlIGZyYW1lIHRpbWluZ3MuDQo+IC0JICoNCj4gLQkg
KiBGSVhNRSBTaG91bGQgYmUgc3luY2hyb25pemVkIHdpdGggdGhlIHN0YXJ0IG9mIHZibGFuayBz
b21laG93Li4uDQo+IC0JICovDQo+IC0JaWYgKG5ld19jcnRjX3N0YXRlLT5zZWFtbGVzc19tX24g
JiYNCj4gaW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJaW50
ZWxfY3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MobmV3X2NydGNfc3RhdGUsDQo+IC0JCQkJCQkg
bmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUpOw0KPiAtDQo+ICAJbG9jYWxfaXJxX2VuYWJsZSgp
Ow0KPiANCj4gIAlpZiAoaW50ZWxfdmdwdV9hY3RpdmUoZGV2X3ByaXYpKQ0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBjZmFkOTY3
YjU2ODQuLjYzMmYxZjU4ZGY5ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTY0NzYsNiArNjQ3Niw4IEBAIHN0YXRpYyB2b2lk
IGNvbW1pdF9waXBlX3Bvc3RfcGxhbmVzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAgCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIHsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7
DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0NCj4g
KwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0NCj4gIAkJaW50ZWxf
YXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IA0KPiBAQCAtNjQ4Nyw2
ICs2NDg5LDkgQEAgc3RhdGljIHZvaWQgY29tbWl0X3BpcGVfcG9zdF9wbGFuZXMoc3RydWN0DQo+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSA5ICYmDQo+ICAJICAgICFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3Rh
dGUpKQ0KPiAgCQlza2xfZGV0YWNoX3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOw0KPiArDQo+ICsJ
aWYgKHZycl9lbmFibGluZyhvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpKQ0KPiArCQlp
bnRlbF92cnJfZW5hYmxlKG5ld19jcnRjX3N0YXRlKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9p
ZCBpbnRlbF9lbmFibGVfY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgQEAg
LTY1MjcsMTINCj4gKzY1MzIsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfY3J0YyhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCWludGVsX2RwdF9jb25maWd1cmUo
Y3J0Yyk7DQo+ICAJfQ0KPiANCj4gLQlpZiAodnJyX2VuYWJsaW5nKG9sZF9jcnRjX3N0YXRlLCBu
ZXdfY3J0Y19zdGF0ZSkpIHsNCj4gLQkJaW50ZWxfdnJyX2VuYWJsZShuZXdfY3J0Y19zdGF0ZSk7
DQo+IC0JCWludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKG5ld19jcnRjX3N0YXRlLA0K
PiAtCQkJCQkJIG5ld19jcnRjX3N0YXRlLT52cnIuZW5hYmxlKTsNCj4gLQl9DQo+IC0NCj4gIAlp
ZiAoIW1vZGVzZXQpIHsNCj4gIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5wcmVsb2FkX2x1dHMgJiYN
Cj4gIAkJICAgIGludGVsX2NydGNfbmVlZHNfY29sb3JfdXBkYXRlKG5ld19jcnRjX3N0YXRlKSkN
Cj4gQEAgLTY1NjksNiArNjU2OCwxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfY3J0Yyhz
dHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJaW50ZWxfcGlwZV91
cGRhdGVfZW5kKHN0YXRlLCBjcnRjKTsNCj4gDQo+ICsJLyoNCj4gKwkgKiBWUlIvU2VhbWxlc3Mg
TS9OIHVwZGF0ZSBtYXkgbmVlZCB0byB1cGRhdGUgZnJhbWUgdGltaW5ncy4NCj4gKwkgKg0KPiAr
CSAqIEZJWE1FIFNob3VsZCBiZSBzeW5jaHJvbml6ZWQgd2l0aCB0aGUgc3RhcnQgb2YgdmJsYW5r
IHNvbWVob3cuLi4NCj4gKwkgKi8NCj4gKwlpZiAodnJyX2VuYWJsaW5nKG9sZF9jcnRjX3N0YXRl
LCBuZXdfY3J0Y19zdGF0ZSkgfHwNCj4gKwkgICAgKG5ld19jcnRjX3N0YXRlLT5zZWFtbGVzc19t
X24gJiYNCj4gaW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkpDQo+ICsJ
CWludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKG5ld19jcnRjX3N0YXRlLA0KPiArCQkJ
CQkJIG5ld19jcnRjX3N0YXRlLT52cnIuZW5hYmxlKTsNCj4gKw0KDQpDaGFuZ2UgTEdUTQ0KUmV2
aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVs
LmNvbT4NCj4gIAkvKg0KPiAgCSAqIFdlIHVzdWFsbHkgZW5hYmxlIEZJRk8gdW5kZXJydW4gaW50
ZXJydXB0cyBhcyBwYXJ0IG9mIHRoZQ0KPiAgCSAqIENSVEMgZW5hYmxlIHNlcXVlbmNlIGR1cmlu
ZyBtb2Rlc2V0cy4gIEJ1dCB3aGVuIHdlIGluaGVyaXQgYQ0KPiAtLQ0KPiAyLjQxLjANCg0K
