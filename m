Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE29449D05
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 21:18:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B16D6E1F8;
	Mon,  8 Nov 2021 20:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C9C6E1F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 20:18:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="231036473"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="231036473"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 12:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="731416622"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 08 Nov 2021 12:18:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 12:18:52 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 8 Nov 2021 12:18:52 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 8 Nov 2021 12:18:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSCccDlW/XMx6839RGsdHTe0TELUV5kJdoNt17wGQv6uyvw9Qvrla4Qd+WTYDjbosb7w1teb/TAvyCNZE3IGG/pV851hVekUyOk8a0sCLTkg2L2jl1KzzMquoZjBOzdJ8/C7HM0fwVLbb1uvH+rtWiJ7T8Vxk3RwQyzYrWpUP2DKnKiLHKJnl58qT+yw0sCIQYb9LlyHA1dUAsHdDTBk4ifLJhxdDqATtkVR1g6bCTejCa0f9fV1udRR1oiDDQN1VaG/mUOdQMKuWT9tNh5aSMDdu2RAH7Ecm1Pc3Ccgw7qHMsvJUm1f6lcgm2edcaIQl9HfB0ufMSmwMUYT2mjKHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RalTxLpdF62pR5MZ5HM9Rc91H021eaCN7wogHrf0Te4=;
 b=nttINlBMA2dZH7RaPdu82F74znSZPkCNv0NVCZPKCKBuf8Ia2IUJ61nUvtBvrtUyv+GTpm670/gy/Rfnf2X+j4mX40c9jNzoCfYmStttZAYcG6ogWdDxMGj5VH3NuqYBvo+ZZOUFHpeB6Bm02q6/4HFkI8okpvr64KcQSXDp88v8Plybw9qysQvSXT3768AplxzEaBkkgYWsaOSunpPAe61KGPGANSYDevVSItDR6CXuS2I6GuUXYkwwrjYRhW9htRntDjaqgWmWzehkXmRkmL3u3zNAQehzMs5zxDBVC0z6g29whqqt3DjaHip2P1No9iQpVObtEvOgmu6pvgVPww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RalTxLpdF62pR5MZ5HM9Rc91H021eaCN7wogHrf0Te4=;
 b=vswRIIzTuOZEOO5Dta+N3oeC5kiaeaVkj+qtKY6x+0EtoWQjejE5cnnY2CPnZskEkQ8FuWs3YduTXR5Bz2QFBLoPYCDanbw1oTnqix2nf8WEOtKBrMgeHDXviYJCcyN+03On9iutf7tygYxKRw2MOrt0hvqxVIDTehuvV8FSNoQ=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB2929.namprd11.prod.outlook.com (2603:10b6:208:75::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Mon, 8 Nov
 2021 20:18:48 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379%3]) with mapi id 15.20.4669.016; Mon, 8 Nov 2021
 20:18:48 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix Memory BW formulae for ADL-P
Thread-Index: AQHX0qZ+HIeyxN4ivU260PFO0Uw/W6v6Fl0A
Date: Mon, 8 Nov 2021 20:18:48 +0000
Message-ID: <e27483614ab00fdbfb7c4ff3cc18f4cf20314244.camel@intel.com>
References: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 272229ec-3a6a-4453-52c5-08d9a2f4f90b
x-ms-traffictypediagnostic: BL0PR11MB2929:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL0PR11MB2929E0E86B159D4C68F2DF3B9F919@BL0PR11MB2929.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tf0grE0GGyNcKDFasc9Fq6GdtqwfG/UukZhdhfb1x/80Pz2XTiWhw5mPPceI2sEz040sDlA/CflcgwYyV1Bitrqetre4dt4ZKqYsUIb3OTK06k8WcueKxJIWlVrcFukGNLwKV/wMVxHQ4aQnhJgTEh3wudI6sppMyvAgDMe07nDHiomns1A4ulsZfAP/chvq1yfo/VybNEak719o3e7izq66E8eOboRgRsnMsV5m+OSMHKERaculjSOs345QNrD5ZpRaUF4e3ogZoPEx7Ooxf1hqnCitYR3Sj1XR0oHwLc4HEIAKvtFqlaP9l+sSWQtuPsgKpXhVBTR55ricHfr0gdaxUvPC8dLLy5dPuopgaq8yO3XpEyuNcA7dnbpt3eZ7y2jTdf+UqEDstMym/KuCT2s0SIRn719AYD6X45wTXxRY1tkTPKdH5dbn2qJgVd8ju+OyTjD6YHywjYdylNs9DxEYQgz10odCvtPAcVYczSf5dAGPOhh7SQXsumIqewSBtmqD47OaN6Z2VSTb/nsir9mN4Il+hl47eCv80sIx9sUT+zTzY4CFd0k6pqL7Yn8zD4kpg2WLI8VCztVsoTR0XzSHFwWGCiCNgP+jlL/xVZkkfWD97xeZ6hH95w9BiAZoyqr2w2jQKi7axEH4n3Wfn7lzw2wmWYEykiAGX4HYzkT7v+PTuXGQNPnJqakyZxplIfdW5HIiPzz6IO8MlrPmhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(66556008)(26005)(66446008)(6486002)(66476007)(8676002)(122000001)(6506007)(64756008)(110136005)(5660300002)(66946007)(91956017)(316002)(186003)(38070700005)(6512007)(82960400001)(83380400001)(76116006)(86362001)(508600001)(2906002)(38100700002)(71200400001)(8936002)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vk9WeXVFVXUzWkxXVnNlSjc3b2xuNmk1THh3bkl3QkZpWlZqcEJGRFdxZXp5?=
 =?utf-8?B?cWFPZDZqM2ZHUEpndDdBdy8ySHQxK29UVU5CSWVreFlqdWVGMURHZ2hMZ3lY?=
 =?utf-8?B?a1hvbm0vOTN5OEJzcDQrWkxhV3ZTUUxpSVJlSXZNd2s5T3BwNkM1L212M3M3?=
 =?utf-8?B?cC9rV2JVMHpwUzZpZU5pRE8yN2IrLy9EVmtvWUdoVm1FMEV1ZFhoeEcxRDNP?=
 =?utf-8?B?M0svYXR3enV1c3ViazlhdHdiRE95VmFpTlhWNGxuNmNRellKZ0g5ZGRQck4z?=
 =?utf-8?B?QVIwU251VDNYSkRNS0UwaXJiYmc1aXVmNmxUSHllcjVyNm9xRStDbEtxZDJk?=
 =?utf-8?B?TWNyZEtaYzdiTDlSb0NXR3RuVU5rL0owblpuZmhnNkpqbnU2N0pTdDNQWXlW?=
 =?utf-8?B?QStaSXVkdTNjTVFnekszdElrM3p1Skd2NkZDWnN5U0ZoRjRKTExEaW8wUmIr?=
 =?utf-8?B?MU4xRUJZekNWTEl5SkRVelR0cFo5TmF4dHJBUTIwOTYrNWM4SFpsNm9MSEto?=
 =?utf-8?B?cVZUbWVzRE9LUG1JU2Jybk5wN2M3a0hVdHRvRkNORTdpcllRSytWOUF6Qm5x?=
 =?utf-8?B?R28zQVlNRmZMa01kSjRWSDMreGErSldMS3YrbmEvZ3loL2pMcWpyei9PWmlr?=
 =?utf-8?B?VERPdExWeTE1Rm0zM2ttZGxCK2ZCcndnNjJnT3Z5SmJ1MmdXb2RCUWhMZndj?=
 =?utf-8?B?RUwyYlREbnA3N2cvcmV2T1NYR1hhNVB2c0xMNWc5NnpJUHNQd1pDWS9RWm80?=
 =?utf-8?B?MGNFR3RGL2FLMTVFTXQrTmYvd0VYZytraDVQMWxIRnFLcFpMeHpjRVM5Nzc4?=
 =?utf-8?B?a2FjSWtjQ0N2SkZ3WUdyRVdHTnBWamFFa0JxL0toOWkrRUpNbUJsVWhCaEp1?=
 =?utf-8?B?aGg1M0RueTF6YnpQNUk2SXl6aG5aYWE4Nzk1LzFhdXg0empRZzdLUUJ3OHdO?=
 =?utf-8?B?dXV5OGJiMU9ndkZhb3VFTlQwdVhKL0d3UVJ0WUNCMkh2ZGFDZ0xxc1hRYThB?=
 =?utf-8?B?MmpMa3BGc2l1Y05UQ1FLbTFHOHZONU5CT0h6bUFWc1doT1pybFp1ZVptS0o4?=
 =?utf-8?B?VEU4VjdCaVdXZmVEVTJ0ckkrMkpHcmlUU1pSMC9vcXkzeHdQeEwzMEx2Rmk4?=
 =?utf-8?B?TEEweUVvL29vK28yenhyTitaa3ByQlZUU2xDS2ZUb3N2a2J5dXNkK0UxV2xx?=
 =?utf-8?B?STVZU0JlQ0JQK0lBaUc4YkxlRTFkbnQwZkwzWGl5cUd3NFFpRGtGUC93WE1V?=
 =?utf-8?B?R2pWL3Q3dE1kdHhkM1QrY2pRL0FQdVVkeUIyRkpVYnBOY1YwU0lsbWozWURQ?=
 =?utf-8?B?NnRLY2ZuY2NtMjRHeW1sc09jdDB3dCtuditkem91SkY2N2lUcTRVZ1c4NXZQ?=
 =?utf-8?B?aTFhZzdhc2tkeDIxYmRCSXhlcVBwQnJoRHUrb0lrYVNLWGdQOGxpYURCSUJO?=
 =?utf-8?B?RGp5aHlTcHhYMThmbm11WFJHSENGQWVGMWphL09VbUR2cnF0SmxKbnRFV2Q3?=
 =?utf-8?B?Y294NnJUVG8zdGxHUmllUjZRNlZwQVNtOUNGQVBRWTJ4cUFzaDlvTkRWaUNM?=
 =?utf-8?B?dnhwNVFMbjVOS0w2TEFOamUwZ2pDUW5waUp0cWZ0UFp1bDNmUjczWEdTQmZJ?=
 =?utf-8?B?REI0cnpqTXRmUzExaThDSEZhZ1BQbGFTZmdYcDd1YjJTNnBTOG83b2k4Q1FC?=
 =?utf-8?B?VWFEbGFEL2NsR0N3cXUzc1JXcjY5dWU2MnAxTkZZeGlta3k0V2UvU1NFdURt?=
 =?utf-8?B?ZDdJc2RJdGZDckJWb0pJNEV6VkZJUjV3YnhlYThVajB2clV0aU9QVy9KdnRO?=
 =?utf-8?B?VG5aUmN0RnJVcExQenU3ZVE4bklaVlhaQ3UxVVN1ZHhHSTZ1dDEvQVhFQ3NK?=
 =?utf-8?B?bCtEN0xpS0tIRFkwcng0bHVPVVVnNE5iampaVDNZMFl4OTUxbTQ3SXNreDRZ?=
 =?utf-8?B?bU8wc1VHLytlOHdNbk52anVhQ2lDdDJDbDR3T1RTNktUQkYxU3NxVmR3TlFu?=
 =?utf-8?B?akdWZ3Zmd2RLdDU5L2hUb1hyNGpyOG5ZNmhyQlVycHd5OHZDckhKV1ZXcWN2?=
 =?utf-8?B?ZmxScEVxcU5adWErYUt4M2hlSjh6NGVsbUFycnJEWVlqaFNYaGIwS0VzWmZR?=
 =?utf-8?B?NHM2aW5yM3lxSmlEVEhEbTJ2YUlaQU9RUld4WEh2YndXZyt1cXk5MmdIZlln?=
 =?utf-8?Q?1aAzFiPbTdwFp2magd3Hvbw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D28779162A140B42A3C9182B6316E534@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 272229ec-3a6a-4453-52c5-08d9a2f4f90b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2021 20:18:48.3256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hCXDgpjqQ2gD23VOou8LCBA6Ztm2r+EAVnPCK9zwKAu0JQck0pY+lhQuK8LmSQQtnjMsbAHxjbPE5+W4GPfc6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2929
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix Memory BW formulae for ADL-P
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gRnJpLCAyMDIxLTExLTA1IGF0IDE3OjM3IC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFk
YSB3cm90ZToNCj4gVGhlIGVhcmxpZXIgdXBkYXRlIHRvIEJXIGZvcm11bGFlIGJyb2tlIEFETC1Q
LiBJbmNsdWRlDQo+IEdFTjEzIHRvIHVzZSBUR0wgcGF0aCBmb3IgQlcgcGFyYW1ldGVycy4NCj4g
DQo+IEZpeGVzOiBjNjRhOWE3YzA1YmUgZHJtL2k5MTU6IFVwZGF0ZSBtZW1vcnkgYmFuZHdpZHRo
IGZvcm11bGFlDQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0K
PiBSZXBvcnRlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEu
c3JpcGFkYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5jDQo+IGluZGV4IDE1YzAwNjE5NGM4NS4uYWJlYzM5NGY2ODY5IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC0xNDcsNyArMTQ3LDcgQEAgc3Rh
dGljIGludCBpY2xfZ2V0X3Fndl9wb2ludHMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiAgCXFpLT5udW1fcG9pbnRzID0gZHJhbV9pbmZvLT5udW1fcWd2X3BvaW50czsN
Cj4gIAlxaS0+bnVtX3BzZl9wb2ludHMgPSBkcmFtX2luZm8tPm51bV9wc2ZfZ3ZfcG9pbnRzOw0K
PiAgDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMikNCj4gKwlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDEyKQ0KPiAgCQlzd2l0Y2ggKGRyYW1faW5mby0+dHlwZSkgew0K
PiAgCQljYXNlIElOVEVMX0RSQU1fRERSNDoNCj4gIAkJCXFpLT50X2JsID0gaXNfeV90aWxlID8g
OCA6IDQ7DQo=
