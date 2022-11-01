Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D736153B5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F61C10E023;
	Tue,  1 Nov 2022 21:03:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB8610E023
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 21:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667336578; x=1698872578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=agCXFVF3byzsTQuPYBYaz34zEey5VuGYI3Bc/xbAbaE=;
 b=C6LUp3mhVirsJpyZPK4lQtHtMhRUxMzLeIBYwTNS5UlBECFanV1QMsIp
 9L4UTIngCrzJpqmZWPQCxgl9ntrLX9n4oRypJLxRaC/BwIxGQIsI++Ej7
 wvsVqfE7E7wYnSNGDLlKnBQcmBV9tgQyhzwuIFOOyGV4WAcQ9WEId0RBL
 AVJB/sBYEPnOWv/Kf1m0jVnpEImasPJZEQAq01xTPDPkynaUKryzquqQM
 oU30Q0J1wa9ZLyzT9EySCTy36GSiEjZirsSER0eaCYrlp2xKtoRMMDhbb
 t2QxOZs/cPvkWHONnofFnh1Px13WisoHrvFUohTV/T8Q13oug4oIB1MzZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="395552681"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="395552681"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 14:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="697544745"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="697544745"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2022 14:02:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 14:02:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 14:02:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 14:02:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSxVRzzESSc6bWB/hv1RXsQv3pxLRx9CDX27eTU8U8raAYeMUv99wNV2A438c0ivLG99FaAZ3WMP7V6wls0c/VMUjLjqARtixXIP6/ouX5CDxpA3vU544Hi/z0rKUqjpEkkZQxpJEYtVje6c+mHwQtECnpFs1pFXDwlEVi7pH9WNVGk3CPs7Wv3lGwNHJ+GnuED+Xu6Alh39zGgEOK8y7RGTXlm6ycVyVGTbf9jqypKkJe7YDbklfcqE7Qxuz5FWc2/6KBtp1UfSpkLxnbiGcsVF2RyRKaz760tBDLNo6JyfCCJnwr2g98BVBP4FJurQDSu9pXgaz98nv4Lr1XVsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agCXFVF3byzsTQuPYBYaz34zEey5VuGYI3Bc/xbAbaE=;
 b=UMcoDuwAdQHHYV9mRmpLj0f9SVh3ATgq+2FS12xRDv6U7PBf38dhA9zNVFckTNHuqZtxH6jccqR03QO3fzyT9/tya0XqIvw/yEmoynURecXEO2m3vZLBE1WiflbepR6i1oM6fLa+tehO+s3uQMKhxn3h/9P3xCEE1sIwCPStmJ/I+R3C5NgpebwWelqnC1NAU8cWoFfZZhVBu5XjJKPDJTS0EytBVKIYbKoOYIBXscepAxtYQNWS0FYALYyeMSG6LymGf/kRM6tPk9LREBn9zZdtlZAEaNgERBdkE8t55/BTqbSKMz6YuQrVpFe7qV7UoRxGNg4thgwCP5mUFM4ZrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by DM4PR11MB7304.namprd11.prod.outlook.com (2603:10b6:8:107::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Tue, 1 Nov
 2022 21:02:44 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba%4]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 21:02:44 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Remove inappropriate DSC slice alignment
 warning
Thread-Index: AQHY5REUxIJcB6L7tE+ICiPNmUH6pq4qjySAgAAPTgCAAAH5AA==
Date: Tue, 1 Nov 2022 21:02:43 +0000
Message-ID: <51ebcaea9c2d4a8a691ae4f473f20ba6e0599ce6.camel@intel.com>
References: <20221021054922.2753034-1-jouni.hogander@intel.com>
 <0839ad26187a137e1a1afb80ea6dc40d5dc9e3f0.camel@intel.com>
 <7fd6c03e88471339440401126043e7422df9a9c7.camel@intel.com>
In-Reply-To: <7fd6c03e88471339440401126043e7422df9a9c7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|DM4PR11MB7304:EE_
x-ms-office365-filtering-correlation-id: d31c3a61-c54f-4791-9bb5-08dabc4c6be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CTdQYqNj0W4qapNJ+BWvarPunAS4vuu3p2gbs2rB1/v8E2jMTaiaN+FcFDA7lnNWrnaWNVITB8h3aNsb1twwXpy3qEhunnWKJe9AQdGl+6zIyPN91u1geZ170EKVG70eonE2+DrDlHt9mIZRqW6p7LBUNn3xh5/XCS7l9ATCD0LjTDvI92WNInsmNZPcbnS2pAI/eW3yBx9rfbbGJAy3e3wwkBBk8WFqIgQc1Zr1f5BSC97gVbPfY0tRNOzsA5nL8fyslHcfJ9tzcCOGyoGB/lWcUr+gqeKUmzo4yakhylecVDN7ACE7NN+nz5g9NrlFPV6lT44+Di5CfmjvZHIZqE0myELS0WmKUfdGTjByVKxMaHbGwD5A5jivagf8muoEmnlHmX4Lxy8UiiJL1Q0Vn0QUlNTNG4QwoEeYIuirl45kqdtpP43tnG7CrdSKsW22GkXZm3kJBTg4x55/e8Gc8qzzDzOD2T7RAF4kdilZ/Pzkwt5Wuqi56lFrRABrsiIP15EgBxHOGD6wRbqNKkSwY4kigrvE0cyq9x13CA7bLV8HE9Suxczdo7wdW3qH1Zkv7x0erCqOvNbO9nA9C4tOneAwObDavK9UVWpbBAJreNdjLTPrr66toVWM5860jpAs96ifqQURloAD9JqnCzOczS9H8ZxtPiQgkCEbFI74nTi46+O7DFidP+bWCSyzRdK6P/mFTfU67agx8J/uBWeBEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(39860400002)(396003)(376002)(451199015)(2906002)(66446008)(91956017)(66476007)(71200400001)(64756008)(110136005)(6486002)(54906003)(4326008)(6636002)(8676002)(316002)(41300700001)(5660300002)(966005)(6506007)(4001150100001)(82960400001)(66946007)(8936002)(186003)(122000001)(76116006)(38100700002)(107886003)(26005)(2616005)(38070700005)(478600001)(6512007)(83380400001)(86362001)(66574015)(66556008)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUNuMEZJWXE2SGpXV2diTmtZT3BTTGNoUmtsdWsxVEZKRHY0UG4wTmhuV3ZN?=
 =?utf-8?B?b1plUmI2UXRXNTZYOVRtaGppK0dtUWlheEtpZFQ0cXg1bDRGd2gzQThiNDBq?=
 =?utf-8?B?U2kxYnUvMlJrSzJKQ0R0bnVpQmk1cHgrQjdGU0Z2aWVUeG55VTlvR3JjM25t?=
 =?utf-8?B?TWpwNU44YWNVNXZ4V0pXSXVhSUY2b0FCeXhaRmFDOU9Gd0dqQ2ZjNi90L0pt?=
 =?utf-8?B?WXdwR0dqa09sN3VmSmNiNXpHWnMyL2dLazlESTlleTlFc2g3bUtQWmw0dVNX?=
 =?utf-8?B?WVNUUVNZYk9rSE90bWs0SVV4TnBCWVV4amFvb2NqbldmdU14c2o3aGhnQzQw?=
 =?utf-8?B?RjBrejVoYk1lekJMcERwSml3cVh1ZUNoaTVKMWY0VTh1bVdpYmdTOXRiT1Rm?=
 =?utf-8?B?L0EydUlpb3NlamRBdHpneUdjZ3BSMjFpNlltbTFyR2FpL0x2ZXo3dGVjc3ox?=
 =?utf-8?B?ZHNiVUNIc20yZXV5a3UvY1ZWTEdGOUxBUzhYeWJRbm9VbHRnRHhQVEF2QllX?=
 =?utf-8?B?NnV1Y3hXZDVOY2h2ZkthSmtYT3BGU2JGaXhyaHBDVlFISktNWU9YenJiUGF1?=
 =?utf-8?B?djM0WWZsNTV4UUhOY3hPNlI2T3JneWFBY0JMOHFBeFVubEQ1Q2MzY1dxRlRV?=
 =?utf-8?B?emNyMHlqL1BEb29oaXNpSUJ2czF4SnhsaXRFOFBUN2ZROWN1TXZTSXg1SUpx?=
 =?utf-8?B?MXpKRE5rVXNXSHhqOU10dFVyQzc2a2Q3R2FJbFAyTTFMenRmeUdkMHZjUkNF?=
 =?utf-8?B?TS81ZTFUZ2tDZXFNL29zYmJsallmUHVoMUl6SUZldTVvNHhac2crcG5RaDNK?=
 =?utf-8?B?YVdkb1J6UzZ1VDJ1Qyt5Nnpaayt6Mkd6UnIzNWxRb1JjbWppcGgyN0xicmxQ?=
 =?utf-8?B?RzRVYTZlbmI1d2NieXIva1paTlpmRVBFRE81ZWNRZm93TU14T0NZZDBkMzBu?=
 =?utf-8?B?UmUrRFJ2Nm1maE1ZNStGS0pZWjJKNitxckI3dXR2dStqdGcyOWgyQS9YUDhJ?=
 =?utf-8?B?OFdGcHI2cUJHaXlTeFcrU3duWFdkUldJMmN1VHp4Z1R4Y2hGZTAxcHRnVGxj?=
 =?utf-8?B?VHBpVmhFQUJvNnF6MUFiNURTYzRsU3FlV0hpc2FOdlBDbDUzNFhxVkY2SGh4?=
 =?utf-8?B?Q0FYd3dzNzJCcUoyaUs3VHh0c3RBd3VYSkd0RUxSQnlVU21pd1VPNWRnRFBV?=
 =?utf-8?B?ckpmRlVJZzN0Z0xGS3F3NlZoWW9uREFJQlNsMHcxREZNdmtCYTVVajE0SU1V?=
 =?utf-8?B?WW00MkdTUTY0TGtZSk1sSlovb1dHZFJqRUJFTm80Vm1XZWhHaVpCWkdVVjlB?=
 =?utf-8?B?VXBYekJTdmhoVVBVZ1ZhbTZDelNmdW5jN3RidU4zQ3VHU3R2TVNQNGVzdGhr?=
 =?utf-8?B?NU52VWFkb3J2T0d6OUpXcFFJUWtRelFuTU5hNG5GQ1QzOE5IWittSWlMMEpx?=
 =?utf-8?B?U1Bzd0FwRU0xbVFKTmMyYWUvZEhlWWxsKzJ6TFRaVG9rVzBqWEdId3lxeURy?=
 =?utf-8?B?c04rS3VjVjk1TTN2QUNwMXZaQnNVbHdWSXNFc0l5U2pDQ0pmYktXQ05TQlJp?=
 =?utf-8?B?UTZKcll3TUNaZFIrTzQyN2gyeVhZcDkyd2djZ1BCMXJ1T243UXJwc1VocndP?=
 =?utf-8?B?ak0vU0RkWnhLM0t4RHF3QzNDbklaRjdFSERsQkxid21ydS9rTDFhSjdhcXc2?=
 =?utf-8?B?L29zM2g5bjRRREtNTWVBWHduMGVYMGJ0ejNjQlR3Tms0NzBWODl2MExLYk1t?=
 =?utf-8?B?YVRGc3hsL09SMzBCL2pNMW92ZEMvRkVKZmJETmJMUm8wVFpNck1nVUZoZ2Fh?=
 =?utf-8?B?MlByQVE1ZFhLdEVKZXpKZHlHeTBsSUQvUnZZays3K0hKUytZM0cyV0MzUUE3?=
 =?utf-8?B?UktCVjlucFE4TWVJYnd4b0c3ekg4WmNzbHBYZmxIOW1VYXhPSWZVT2VaZUpG?=
 =?utf-8?B?b3NaSVFjb3ZpZmJMdTlkN0pTZTMvYjBvY2Q4Ry95YnZDN0R5WjNQaWFUdkZW?=
 =?utf-8?B?WFNDNkZSQzBXL3JmMWVhTnE4NkdOWjhCZ3V6RlJVa1o1Q1Vzc1poc082d3Br?=
 =?utf-8?B?V0NQQVR4dkpDV3FOZktMNk5oMW5YcURkL3JJV2Q0WWJBUVRlMjNURVB1YkFu?=
 =?utf-8?B?WUh3b2VsWUk5dXZ6TTI2MERpanlIZFlzSU01UG10a0FSYXlnVU9oaUxRVHEw?=
 =?utf-8?B?WlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <34BB8248ED0878488AD9D86D46DE6DBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d31c3a61-c54f-4791-9bb5-08dabc4c6be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 21:02:43.9714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: du/DOAs9vodg67l36cv1ng2dybYWMMHie+LyGD2w6uCOfJJtBlQ61coPBFZqzRSaU3C+f7YGZ8nDEk1F63CkPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

T24gVHVlLCAyMDIyLTExLTAxIGF0IDIwOjU1ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyMi0xMS0wMSBhdCAyMDowMCArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gRnJpLCAyMDIyLTEwLTIxIGF0IDA4OjQ5ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIg
d3JvdGU6DQo+ID4gPiBTZWxlY3RpdmUgdXBkYXRlIGFyZWEgaXMgbm93IGFsaWduZWQgd2l0aCBE
U0Mgc2xpY2UgaGVpZ2h0IHdoZW4NCj4gPiA+IERTQyBpcyBlbmFibGVkLiBSZW1vdmUgaW5hcHBy
b3ByaWF0ZSB3YXJuaW5nIGFib3V0IG1pc3NpbmcgRFNDDQo+ID4gPiBhbGlnbm1lbnQuDQo+ID4g
PiANCj4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4g
DQo+ID4gPiBGaXhlczogNDdkNGFlMjE5MmNiICgiZHJtL2k5MTUvbXRsOiBFeHRlbmQgUFNSIHN1
cHBvcnQiKQ0KPiA+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsLy0vaXNzdWVzLzcyMTINCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5zaHVt
YW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyAtLS0NCj4gPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGluZGV4IDkwNGExMDQ5
ZWZmMy4uNjRlOWUxMzRmZGNhIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE2NzgsOSArMTY3OCw2IEBAIHN0YXRpYyB2
b2lkDQo+ID4gPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVudChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmMNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBwaXBl
X2NsaXAtPnkxIC09IHBpcGVfY2xpcC0+eTEgJSB5X2FsaWdubWVudDsNCj4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBpZiAocGlwZV9jbGlwLT55MiAlIHlfYWxpZ25tZW50KQ0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaXBlX2NsaXAtPnkyID0gKChwaXBlX2NsaXAtPnkyIC8g
eV9hbGlnbm1lbnQpICsgMSkNCj4gPiA+ICogeV9hbGlnbm1lbnQ7DQo+ID4gPiAtDQo+ID4gPiAt
wqDCoMKgwqDCoMKgwqBpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUt
DQo+ID4gPiA+IGRzYy5jb21wcmVzc2lvbl9lbmFibGUpDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZHJtX3dhcm4oJmRldl9wcml2LT5kcm0sICJNaXNzaW5nIFBTUjIgc2Vs
IGZldGNoDQo+ID4gPiBhbGlnbm1lbnQgd2l0aCBEU0NcbiIpOw0KPiA+IA0KPiA+IEl0IGlzIG5l
Y2Vzc2FyeSBjaGVjayBpZiBEU0MgYWxpZ25tZW50IGFuZCBQU1IyIGFsaWdubWVudCBtYXRjaGVz
LCBpZg0KPiA+IG5vdCBQU1IyIGNhbid0IGJlIGVuYWJsZWQuDQo+IA0KPiBUaGlzIGNoZWNrIGlz
IHRoZXJlIGF0IHRoZSBiZWdpbiBvZg0KPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdu
bWVudDoNCj4gDQo+IC8qIEFETFAgYWxpZ25zIHRoZSBTVSByZWdpb24gdG8gdmRzYyBzbGljZSBo
ZWlnaHQgaW4gY2FzZSBkc2MgaXMNCj4gZW5hYmxlZCAqLw0KPiBpZiAoY3J0Y19zdGF0ZS0+ZHNj
LmNvbXByZXNzaW9uX2VuYWJsZSAmJg0KPiAJKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fCBE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpKQ0KPiAJCXlfYWxpZ25tZW50ID0gdmRzY19jZmct
PnNsaWNlX2hlaWdodDsNCg0KVGhpcyBpcyBzdGlsbCB3cm9uZy4NClRoZXJlIGlzIG5vIGd1YXJh
bnRlZSB0aGF0IHJlcXVpcmVkIFBTUjIgYWxpZ25tZW50IG1hdGNoZXMgdmRzY19jZmctPnNsaWNl
X2hlaWdodC4NCg0KPiANCj4gRm9yIHNvbWUgcmVhc29uIHdoZW4gdGhpcyBnb3QgbWVyZ2VkIHdh
cm5pbmcgd2FzIHN0aWxsIGxlZnQgdGhlcmUuIE5vdw0KPiBqdXN0IHJlbW92aW5nIHRoZSB3YXJu
aW5nIGFzIHdlbGwuDQo+IA0KPiA+IA0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gwqAvKg0K
PiA+IA0KPiANCg0K
