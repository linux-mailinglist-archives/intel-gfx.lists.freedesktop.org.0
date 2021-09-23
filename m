Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8574158AE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 08:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B2F6ECE6;
	Thu, 23 Sep 2021 06:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2616ECE6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 06:58:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223423295"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223423295"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 23:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="550707658"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Sep 2021 23:58:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 23:57:59 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 23:57:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 23:57:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 23:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AR8fBL1rpQUsfsp8eUpRj5zqd/vm65rovp1xzS/tzYeP5GPfB3RcVVPJnIkLhq4XcwBrf4d1tiGS15mcjJoUITC4YDGXnJBl+xWy0JMKIudOb40mGUebikOzOar17v/cCs4QLPxz2uJald5rOy1WETOWaz3qoIcB5oPIdSirEYq5eEcq2cs+ZAzIMKK43YFq/OzxqIwTsBhWbWg946NOcrCwTI6KHyG7AgmBG0t8vaYYpHf7ag5TuGk2wpYjzMFgkCVnn0zxPvj0dqh4e8UZbuI0e63r+R1JI+pPhfkf+LfDpt5IueFoNcNUCCyuqUqgVIaaki8CTH30JyhIc5lVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=dnzGNIsvw4HeY6gL3I9zx5x97RDrAPKfyw5PeVXeaIA=;
 b=SIvKQEQlS5Sf45vNS0KCaL0O6ipX04YLlFT5OccwCjtg+b6IGLhi9iPMQuXPj0IgK6Y70Jlc2pjjYQNuFEYdGhhHitd0Gu6T0jEN1wPB9lnFBqxSSjGWAg6mwP4ZsrOtzIF3xax9uK3myvXLiS3R/uhndYQFitcndGhTxgQKbgvlLVtUMgu1YmQpFu8GUsddXPywEdwh56DjYeLhZuOt7JUFNRcWyKzmo2vC53KmEUM3L4eDd/N+kGtu4OAwDz15Ln6PTkBpHsopkOec9U43oqKMfsyWVKRCWk2F4O4saUpFkG4NhLeurFfxreQ10Sv0B2wDzVyfzWtvqe/qDk63CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dnzGNIsvw4HeY6gL3I9zx5x97RDrAPKfyw5PeVXeaIA=;
 b=X8frhCj9k90k+EmZ4XpBNsqWJCgF+y9+FkM38Lu5IDm6DDXJlmdOK+q0WDLtvJwmpVBTScAXD7mcmZcs6h+cCf5AJyirAlbsGwsdcgbWgihLo3DkUQJL5JHmgxkQ+GHhr0d9kI/vtnbvshdZijOhKQziUu3omx+o/LPyOpTkEvM=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3685.namprd11.prod.outlook.com (2603:10b6:a03:fa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 23 Sep
 2021 06:57:57 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7d17:fce5:7d65:61e1]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7d17:fce5:7d65:61e1%5]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 06:57:57 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Chegondi, Harish" <harish.chegondi@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "sean.z.huang@intel.com"
 <sean.z.huang@intel.com>, "Huang@freedesktop.org" <Huang@freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH v11 08/17] drm/i915/pxp: Implement arb
 session teardown
Thread-Index: AQHXr0b5DIaGxuvNdUOAUrDjZEjIZ6uwq3cAgACGzoA=
Date: Thu, 23 Sep 2021 06:57:57 +0000
Message-ID: <0fef3c12253d4cbb6abc0a3104c5818865827789.camel@intel.com>
References: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
 <20210922001531.399533-9-alan.previn.teres.alexis@intel.com>
 <20210922225600.GA55710@intel.com>
In-Reply-To: <20210922225600.GA55710@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7342a3ac-4527-47a5-9551-08d97e5f7993
x-ms-traffictypediagnostic: BYAPR11MB3685:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB368525E72AAD4D6961A2EC958AA39@BYAPR11MB3685.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sjZ+FP5hvdpAeJsggDOlUbtQF4vTietzF1YWsnsMvCKgSXqv+oyVbPhCghbQ6ukpMGiju1hCiitVGq9XoXSOhBoc0mhp5huWLOh3MM9B13tz2msCcU7gMT9iTkO7qM9xXZdAWdQs2k+3KpC37sDZU9aE0v8NNA8/1im2dZ9jiEYlIHWdvaHQNijt11pMcSxLza9yPJUgZuCY/Z/SCya/4NaXEoPKj4rwgNf/mUf25I532MpQF4ICOqZ9fFZ1xJjniJDa8NSEHpnmZxclc0e30JyIE6NA1nLQx06uZHUHVSEHVLHF/xjQ5P/tMszJq+cS7z2A9GL53I1a0x8Rt14aKhvRv1gW8JD6N8H5iHu83vN1XGR9A5/vjDXSdqBFCnGnnm0seWkMMp54gHu80ve6PIInzT70njof3mnEpfl2dEzUtMqsXRzE3jdwvRouVYemVqFUMKT2QpNpKgUzdt0P4DN/dIcENUzH+oswbOscfZHx1E9dJpfGvWp36X9na/Sjc5wqKESsZS3M3ZlPNLVqTMPuW19TCaBfmnrKzHsreeWwcczbdZfucq4YKdYgY4qdc6hjjo1w4e4gSA0cbipxPxncndY+WhkyQpfO6BAQmcBrP3pG+kV+iE914pgKqPSfvaMv10FNy93ZA3aIjE7uNQ3re2p1A6FaaYRu/Lr6+j60t674mc/ghvZqkXRsK9qXyXVDn1dL/1cte7n+igSegg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(122000001)(66946007)(5660300002)(37006003)(6506007)(8676002)(26005)(71200400001)(54906003)(8936002)(36756003)(316002)(2616005)(66556008)(6512007)(186003)(86362001)(66446008)(6486002)(76116006)(64756008)(66476007)(83380400001)(508600001)(38100700002)(6636002)(6862004)(4326008)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZFVYOGN5Q0NhNFJpc2ZlYis3OGphRmZwTHNrMmx3QXYwZUQ3SHh3M1pRRHVl?=
 =?utf-8?B?U2tBNk5iRUYwWFlZemhnTStORUFlOWhOUlFvSytsUjlQU2hSTitMSFg4cXdw?=
 =?utf-8?B?dElJM2Q2QUw5ZzJydjZ1UnpyMkZlTm5Eb3pPSmxaa2VCWVNXMWhhSGtKczZj?=
 =?utf-8?B?RkVyVFBSbXpSbXYwa1NrdGhmd1g1UHFrSUF4ZU1TZlY5dS9QK3NCamNlQmlo?=
 =?utf-8?B?dXdEQmRCS2dnNmFaSFJFZnM4cnIyUnpjN1FzZEZjLzM1bVYyakgvL1pUNmU2?=
 =?utf-8?B?WXpIa3M2WXp4TnM1aHUxMGhqR25CeW9uNS96RlZUazFwbUh5SndEbWsxL3Vs?=
 =?utf-8?B?cVRlN3lZaklkRFBEencvbjJwbVpScUtzSnNBak1oSktYek40ZXAxKzBkRmxy?=
 =?utf-8?B?ODB0TFVVSS9xdm4yUHRlTkFwczlNVGZxQUk1dWVsOFNGUEtVOWJ1aE1sUWdk?=
 =?utf-8?B?UlI4ZTFpNGQwcm9ySnNmZmJrN2E4ajdPR0VBVzdXQ0llZ1FUVDVJeCtaN3hF?=
 =?utf-8?B?ekN2dk9YaHN3RGFPTTFaU3hHRC93dnNrc3ptTUVZWnRTc2VPdHhESEtKb2t0?=
 =?utf-8?B?UDFrbFFGbC9xUHdkcXpzU3VZbnVDNkRtaTJOcjBlNXRoK3JxZVh6R2hDejRx?=
 =?utf-8?B?VmZ6SnpyUW55WEFVM2FySkhhSkJxRUVuWWF2enhveXFaVzBKK3VNWmxzTEJ6?=
 =?utf-8?B?bytVNFZNSHVsNnlqdG53RmVrbWRsc1RCK0NtejNycWxPU1RRc3hzRHMvSzZZ?=
 =?utf-8?B?QVRXeU94NEI4TFlMVGY2OTUyOUphSUMxbThlb3RHaGwvY2UwN0xjV0sreUVB?=
 =?utf-8?B?bW5vNHd2KzdtQVdxSXAxd08wM1ZXME9xZGM3V244QWd1T3AvcWphTldUcTR5?=
 =?utf-8?B?QWdKM242RmdReDkxdjQvS0hKeDJFQ1dacXNiZXpDWmY1NU1XR2hJaG5aVFNW?=
 =?utf-8?B?ZkhmNHZSYUhXUGF4VGJxb0xrQmtiQnFiZ3puQS84UHNsM2piTGZyUENaZGg2?=
 =?utf-8?B?WEdnS3ArTGl0M3k4dHUweGdLdGw2alhwSXQwMFdyU2F2V0hCcG9EdWNvaXds?=
 =?utf-8?B?Y1JsMks2QjJrSFhaSEJaSFVhME0yYVc2a3JmZXBGTTVFZVdMK1V6NEJPaWVO?=
 =?utf-8?B?TEFNNUtYSVVHbTUwNjNtQmM3ZXlkMVNnRVhPWWtBTnB3U285VjVNUFJwd0Jt?=
 =?utf-8?B?bUNDa29YWGxjd0J5R2xXd3ZkeUEwUy94M05vTjZwcXN0NVZBMllZRGZmNkVs?=
 =?utf-8?B?VHhMOW1INiticTdmNTZuQkowUTBzS1dGaHpYLzMwUy9ZMzhNWC9aVk5XNnZs?=
 =?utf-8?B?T1RqL2ZUMHlYUFRpVENoR005M3BpRy9FVGlhN1VwRmg2R3hKM1VjbVB3TjZy?=
 =?utf-8?B?bnRJVU5mQXpuWE1PeG5mT0pTVDMreXlIbERDZDBQbjJzTEkxRWNsRjZnOXIz?=
 =?utf-8?B?QldWbzFxckVrWVdvYW1lT05JUjl0Q3VCR1YyRkpzU0JxeEsvd3JYL29qNXRH?=
 =?utf-8?B?T3NtVnlTeTMwcFhxUUcwaDlJNlk0MjdkZHBzV1F1TDI4Y2pmd0hPaWxIalkx?=
 =?utf-8?B?b3VKcjVsY3hkVWtJaURVaGJUbUVnUWZ3WVBCNXE1TGdvZnNOeTlaYVdVWXJw?=
 =?utf-8?B?NXVPTHlJVHlyclh3TFU1U0ZxNDQ0MjZpZzFZeHBQVVUzR0lWZDdpV2k3WVJX?=
 =?utf-8?B?Vkd4R2kxSnRQUmI2TmhMcHpkc3lycTBlS3pPS1l2WDI2L0ZaU3FmV3IreTRM?=
 =?utf-8?B?SnNOaWp3dytEN3dCSmZsMlVlcWQrai9hTWtEeDBTeEg5dGxyZ2NFMGx6aWFi?=
 =?utf-8?B?aHhyK0l0VFBJUmhHOC9Kdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <617D13AE1715524B81CF4911720DF5B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7342a3ac-4527-47a5-9551-08d97e5f7993
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 06:57:57.4614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j406bKW6Kkm9LwrsFLKpKFjKSKjpTWAkG4+Pi3xEdc+1nd/NeiPKlk29J6mmAtRajtW1ouX0RNZgSPP/eVhQBtXnargIFXAqVLqIGklUeCevPdArAhO5kgx163nzx3hL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 08/17] drm/i915/pxp: Implement arb
 session teardown
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

DQoNCg0KT24gV2VkLCAyMDIxLTA5LTIyIGF0IDE1OjU2IC0wNzAwLCBIYXJpc2ggQ2hlZ29uZGkg
d3JvdGU6DQo+IE9uIFR1ZSwgU2VwIDIxLCAyMDIxIGF0IDA1OjE1OjIyUE0gLTA3MDAsIEFsYW4g
UHJldmluIHdyb3RlOg0KPiA+IEZyb206ICJIdWFuZywgU2VhbiBaIiA8c2Vhbi56Lmh1YW5nQGlu
dGVsLmNvbT4NCj4gPiANCj4gPiBUZWFyZG93biBpcyB0cmlnZ2VyZWQgd2hlbiB0aGUgZGlzcGxh
eSB0b3BvbG9neSBjaGFuZ2VzIGFuZCBubw0KPiA+IGxvbmcgbWVldHMgdGhlIHNlY3VyZSBwbGF5
YmFjayByZXF1aXJlbWVudCwgYW5kIGhhcmR3YXJlIHRyYXNoZXMNCj4gPiBhbGwgdGhlIGVuY3J5
cHRpb24ga2V5cyBmb3IgZGlzcGxheS4gQWRkaXRpb25hbGx5LCB3ZSB3YW50IHRvIGVtaXQgYQ0K
PiA+IHRlYXJkb3duIG9wZXJhdGlvbiB0byBtYWtlIHN1cmUgd2UncmUgY2xlYW4gb24gYm9vdCBh
bmQgcmVzdW1lDQo+ID4gDQo+ID4gdjI6IGVtaXQgaW4gdGhlIHJpbmcsIHVzZSBoaWdoIHByaW8g
cmVxdWVzdCAoQ2hyaXMpDQo+ID4gdjM6IGJldHRlciBkZWZpbmVzLCBzdGFsbGluZyBmbHVzaCwg
Y2xlYW5lZCB1cCBhbmQgcmVuYW1lZCBzdWJtaXNzaW9uDQo+ID4gICAgIGZ1bmNzIChDaHJpcykN
Cj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBIdWFuZywgU2VhbiBaIDxzZWFuLnouaHVhbmdAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPg0KPiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlICAgICAgICAgICAgICAgIHwgICAxICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAgMjIgKystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3B4cC9pbnRlbF9weHAuYyAgICAgICAgIHwgICA3ICstDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmMgICAgIHwgMTQxICsrKysrKysrKysrKysrKysrKysN
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuaCAgICAgfCAgMTUg
KysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9zZXNzaW9uLmMgfCAg
MjkgKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3Nlc3Npb24u
aCB8ICAgMSArDQo+ID4gIDcgZmlsZXMgY2hhbmdlZCwgMjEyIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwX2NtZC5jDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5oDQo+ID4gDQoNCj4gPiAgDQo+ID4gIHZvaWQgaW50
ZWxfcHhwX2ZpbmlfaHcoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi44MDY3OGRhZmRlMTUNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuYw0KPiA+IA0KDQo+
ID4gK2ludCBpbnRlbF9weHBfdGVybWluYXRlX3Nlc3Npb24oc3RydWN0IGludGVsX3B4cCAqcHhw
LCB1MzIgaWQpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOw0KPiA+ICsJ
c3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcHhwLT5jZTsNCj4gPiArCXUzMiAqY3M7DQo+ID4g
KwlpbnQgZXJyOw0KPiBlcnIgbmVlZHMgdG8gYmUgaW5pdGlhbGl6ZWQgdG8gMC4gSWYgbm90IGlu
aXRpYWxpemVkLCBpdCBtYXkgYmUgdXNlZA0KPiB1bmluaXRpYWxpemVkIGluIHRoZSBsaW5lIEkg
bWVudGlvbmVkIGJlbG93Lg0KPiA+ICsNCj4gPiArCWlmICghaW50ZWxfcHhwX2lzX2VuYWJsZWQo
cHhwKSkNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArDQo+ID4gKwlycSA9IGk5MTVfcmVxdWVzdF9j
cmVhdGUoY2UpOw0KPiA+ICsJaWYgKElTX0VSUihycSkpDQo+ID4gKwkJcmV0dXJuIFBUUl9FUlIo
cnEpOw0KPiA+ICsNCj4gPiArCWlmIChjZS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYikg
ew0KPiA+ICsJCWVyciA9IGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsNCj4g
PiArCQlpZiAoZXJyKQ0KPiA+ICsJCQlnb3RvIG91dF9ycTsNCj4gPiArCX0NCj4gPiArDQo+ID4g
KwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIFNFU1NJT05fVEVSTUlOQVRJT05fTEVOKDEpICsg
V0FJVF9MRU4pOw0KPiA+ICsJaWYgKElTX0VSUihjcykpIHsNCj4gPiArCQllcnIgPSBQVFJfRVJS
KGNzKTsNCj4gPiArCQlnb3RvIG91dF9ycTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwljcyA9IHB4
cF9lbWl0X3Nlc3Npb25fdGVybWluYXRpb24oY3MsIGlkKTsNCj4gPiArCWNzID0gcHhwX2VtaXRf
d2FpdChjcyk7DQo+ID4gKw0KPiA+ICsJaW50ZWxfcmluZ19hZHZhbmNlKHJxLCBjcyk7DQo+ID4g
Kw0KPiA+ICtvdXRfcnE6DQo+ID4gKwlpOTE1X3JlcXVlc3RfZ2V0KHJxKTsNCj4gPiArDQo+ID4g
KwlpZiAodW5saWtlbHkoZXJyKSkNCj4gdW5pbml0aWFsaXplZCAnZXJyJyBtYXkgYmUgdXNlZCBp
biB0aGUgYWJvdmUgbGluZS4NCnRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcyBIYXJpc2ggLSBpdHMg
YSB2YWxpZCBidWcuDQppIHNob3VsZCBoYXZlIHVzZWQgYSBzdHJvbmdlciBtYWtlIG9wdGlvbiB3
aGVuIGJ1aWxkaW5nIC8gdGVzdGluZy4NCnNpbmNlIHRoZSBzZXJpZXMgbmVlZHMgYSByZWJhc2Ug
YW55d2F5IChkcm0tdGlwIGZyb20ganVzdCBub3cNCmNhdXNpbmcgaXNzdWVzKSwgSSB3aWxsIHB1
c2ggYSBuZXcgcmV2IG91dC4NCi4uYWxhbg0KPiA+ICsJCWk5MTVfcmVxdWVzdF9zZXRfZXJyb3Jf
b25jZShycSwgZXJyKTsNCj4gPiANCj4gPiArDQo+ID4gKwlweHBfcmVxdWVzdF9jb21taXQocnEp
Ow0K
