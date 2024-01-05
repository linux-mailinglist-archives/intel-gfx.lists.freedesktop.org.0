Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D38825467
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 14:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4652310E5CB;
	Fri,  5 Jan 2024 13:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AF210E5CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 13:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704461038; x=1735997038;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=n+Lk8u/QReFrYDw3i1vFui65LK/AUsgxZlMmC/o3TOs=;
 b=hDa51jP601MUfr9MrU7M4DFAod/cB11nRitdnaeTeJjMpksuWwenJ1F5
 Mx0QUjk2ubvBaMmyKyO91HNXdJmSs5dtL9UeDOjBNWTm8OWYUmO96Nxoc
 7ppryQ+vtnQQuJs0lt8M48t0UmuUHYfD/OrgWIDz7StXYIrIF9fk4FKob
 PxyyK95g0AF8NEgxO6366INC6iOKpk/kq/B53DYyvE66M6cE7gMjaIV6l
 h1FQXU68ecBccWhSY9GUeci0G+Oa0jmOx7/BngTY4NSQZBxLr3JG4D94x
 7ovTOsRuLl4SoecJGNiAki35hxNgWRlj57OcgDRx0RPNMS9L6TCEzg+MQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="397225528"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="397225528"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:23:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="15239200"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 05:23:53 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 05:23:52 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 05:23:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 05:23:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 05:23:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lb/+A0r33LoXJtymfqCH5nr+d87tIBQ/eyrX1/AsYOcEh0YaX53z8ZhpOGrXm8t/dJy9si85L9fx0bNDT/5cJGh5l8BDAeZAxl/Yo96t9ibYr64TXIKdMs26U8NBfK8fN0v2lA8TCJn0lRx9PKx8DmEALj4PaXv7RnbSpHHl18U4VdKb78DWj5K8nwGZdyBiwQb6s2J2jUpnmzb8il16KgjJWnXfXlT8Jy31rWNEvm6Tf7ZecavHom5EFv7RHWQXh2gLafrFBFJsWNa9PL4HhgIbVc3zCcvUojdQBHe/vNM/c7rnNe5x2W1UZxg0CmQmaBxcTgjYawstfqbzxwOZJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n+Lk8u/QReFrYDw3i1vFui65LK/AUsgxZlMmC/o3TOs=;
 b=Hug/MUzpNQFK6uNoehqevshQlR0IkiAgGyH7q9b3RpXCJL9GtJfNlWSrlwFLbgFpKjTpBm/1CK35Iy3b+oxgKHhWJAnKMXWrsZdmzs8Budw/6tSupt+Zu3GT0+IBiOSUv+PSRMMMAz8ubYgPi1mN224B71XTjoP+T/MrHLUGRlpJvxcTxZGi/iCJM95vCntr8pKDlKLiNDJyFuokzAGF0wpjZz0RjmnehUINpQtGCqeWnLTHqcEvoQWEnDrs4nOXMVfXavge6yp8FKQjOYhxWFS+Rpfrq0itDm3tKw/xpxAqKTXNr6Nb51fTt+MVx2dM4E62CnP313AU+hycBWfbqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.17; Fri, 5 Jan 2024 13:23:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 13:23:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Thread-Topic: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Thread-Index: AQHaPuhTGH/J83xYAE+3mSjxEwSWx7DLNwMA
Date: Fri, 5 Jan 2024 13:23:49 +0000
Message-ID: <b335ea398c5c70c412515484b414032ab64fd91d.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-3-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: 5d14bc20-3622-4c41-ab8f-08dc0df18de6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WoRbaivBlx245bj8cpSjWp254yhKcvZNz2/c/TcN87hdt7FJZy32R0EakPPIFuZNfCdcbWfupEEf8BZQerSoWoXZzMoVpPVynNmzt5mfwQqPg/E/zv44O5sTP9Jml54Q9Sxr7+ZY7kXZgSPuKCvSS6fao1v7zSecfgL4JEjU+1Sr0e9IPAnbDeE9iuUMTBJ297vVp0+ybWN4ExsXMcPmVb2xeuKrpylq8kRvaZ0Oo3B2GTv+Wq2XIqQFOHTYgjSACCN+rfXqHGqJ+utGu46HG3yDIrtoG9jtpAA4ZzJ0XEYJZl9Ixp4eZm3Gf84/izh1KvdRMdFSHluWhTEZklX2ILtRmNwqFQAWlBhlE1Kj5AO/fPk54H5/SlwYhL7DnEAtji+jE3X6qE/4jJ+j8PSGrR0LhEaz2IMCgG1wIEK3ic70cyu6D21VVG6snVCgVNU5aBnHfs/Mit7S4C7ni0F0bdkKDl7NzDC+F7tUvTBWiFFuiZv07mSkr0/JjpIhG4+5Hb8ihI2lAj/TV7Vkq8Va9UCZoP1ymMJMZ6aGJGNw2Y2xZu801/+amNbqstBbi9l/vNb2098Adu33HSpfmy4ftWme1oMa9jSgqQ8WbEbHg7kB5uuZazzUl4KZr5uPepvr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(396003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(76116006)(66946007)(6636002)(66556008)(66476007)(66446008)(64756008)(122000001)(38100700002)(91956017)(82960400001)(6512007)(6506007)(71200400001)(86362001)(2616005)(66574015)(26005)(5660300002)(2906002)(36756003)(478600001)(6486002)(83380400001)(110136005)(316002)(8936002)(8676002)(38070700009)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WThLcEJxVXFhQUlHOU1VNDVlVVdWdHJoMEI1eFRoRmlMWlVRMHpFOUxXREpG?=
 =?utf-8?B?YnBHemRnVXpFbWt0cENNeThnTUJQR2ZuQ2FaaU0rT04rQ2gzZ0svZVNKTnJC?=
 =?utf-8?B?SXc5NVRIUWZuQ0VuM09JazZKaElKbEhJR2g0d3Fxdi9mRVJkTWs1SGlkRitv?=
 =?utf-8?B?MjJ3dlFBU21WUnNYT2U5Y1kxai8zUnVlcnF0bHNwU2tPN2ZYOWg1T2RlMTlN?=
 =?utf-8?B?S3NhQUMvdEt1ZE93Z2hHL2VJSXVVYjdadVRxWDFaeHVWNEVsVHFEMmxyakxt?=
 =?utf-8?B?U1Z4OTFoaG1wK1hnMkg5anArK1Y5aWF4UURSZHZIOGw2Q2ZmTGJjalFWUXcz?=
 =?utf-8?B?RG9DQ0psUVBYRkZoUzFUMDRVdjFMNDFkY09remwyZWxOdEpwRzdIRWJFeE4w?=
 =?utf-8?B?a1N0bGZqSnFPMitqcGRWKzJCSEN4a0FWcFRvUkxsZEFZR243TnhDSkVGMloy?=
 =?utf-8?B?bXhTekZFOTdzMWtPTXRjUWNnS0RVRUxOdTZLZUNNRUFncnBVTUFNdDZiYjRn?=
 =?utf-8?B?QkN3YUg4M2VKK1lDWHdXQko5SFVnRFdqS0grell1a0haYnJYR0ZPdEphelo4?=
 =?utf-8?B?cWJjdWsrbDdieXh5R0tXQVlXRFZNTS9HblBWdnJCMkxBSU52MTR4dmI5ejhl?=
 =?utf-8?B?cjVpS1F3NUZXd0JOcDE3d1cwdUpENDJsNFpBMUlXT1E2N0piYkdvNDhuOXV6?=
 =?utf-8?B?OWpxRHVWeVRlODl6bXFvT3dUYVkwYjBtVGhsZ1E2d3RvdTFIRk9ZZC9NenZY?=
 =?utf-8?B?TXVWeWhpU3Q0OVVlaXl4Nk85dmRRQitKbDdZM1Z5cERwdkJ4K1ZqTyt0azlO?=
 =?utf-8?B?YkQ4dWFJSWVId1dVZXBtOEVtUDgvcTVqcXpxbmtZQWVsQzgrcnJlVUNrSXNh?=
 =?utf-8?B?bytLQTNxbnJES1MxZE0yLzBuZHc4OGNsY09iZWNZT3ZDU2JTSVdyZFNMdU9T?=
 =?utf-8?B?anBEd1VKNExxOUdaVmJYZmpyd1AxUVM4ZFFrTkVFNVcwa0I5a3lqaElGcDc3?=
 =?utf-8?B?VkFCZW9OMkdHcHBkUE9XM2RvSXhVamxSTTNTUmNpNXA2djVTM1ZXZG4rU2d0?=
 =?utf-8?B?OEF2MEdEV1RHWFdER2xqazhrUWpqRzd6aWF4NDB6T1Z0eU13ZGlDVU95Wk90?=
 =?utf-8?B?dWVsV0RPRDR0QVRSSStUTkhhNGVsSXpaSmRrcGpnMGl5NzZrTUVLTzh2Z0ZS?=
 =?utf-8?B?eEpyZllYOVFwNmVHSXAxSk93UnZ6Nkh0Vk0xU1VTenlSV050eFRqckliRWlj?=
 =?utf-8?B?d0paUEN6c1c5UTg3WUFNeVJ0SElNWjRtTjFjcmR6Z0I2SEFCUzgxWDU4aGhv?=
 =?utf-8?B?QXRScEl5alA3YzA3bEIxam5icU9ieS85S1NITVJ5Y1RlekhhcmZXWjZYeTlG?=
 =?utf-8?B?a2l2Y2ZkYXJ6M1c5R2FGVG9PU3dsbzEzOUxqU3diYVdVNFhtQWNBZ3BwdU5L?=
 =?utf-8?B?NGY2VW5RL0h5Rjc2alB6MzhhOWtyT1QwL2Q2UnhwR2RLd0lIVVc1cXh1MThk?=
 =?utf-8?B?M3V4UkgzVUhiTUFJUElzVlVPdkN5cnlRTjVkQ04rdHg1Q2kvLzdGditPZ3d4?=
 =?utf-8?B?Zjc0RGtRcFNKOTkrWVI4Vkg3dnRDSUY3NVJRQW5GbHBXak5MR0tEYTZhTy9G?=
 =?utf-8?B?Q1gydnhqYkJhVW9xckhOTGZmQ0JveUlwWmdSekdwTnJqQ3FhQTlrRmYyeEVh?=
 =?utf-8?B?QUliY0FBN3gvTmdEWkxSNHZEenpEbWxUNUk0NVlMVVQ2Mm9oNXUwQ0p5UEls?=
 =?utf-8?B?b1dEWFZtRmFsMlVhZDlteVV1aGx6d2lIWDJ0NGNSd0srOE51eDdpV2tSMUtZ?=
 =?utf-8?B?clE3YzJ2K0tScHlWbVZuOVA2Ty9Rc0JsbXdUVzVFTGxFN3hEcTBxVFkxKzlx?=
 =?utf-8?B?QXJEOWc0VHNNR24vMW41RE9ZZGZRZUw3Rkt3Ung0emhRVGlmU005TGdoY3pk?=
 =?utf-8?B?WE1QL3dmSXFvNEpCVC9tNGZxMVlnT0Zhak9IakZGdjdwT1MyRFV6RUZSSG9k?=
 =?utf-8?B?MWhVVDZWTkVvY2RQdkZmLzdRVStMajJ4Y2xVanhUSm9qTXcrblNFUUs1R2ZU?=
 =?utf-8?B?U2lrMTFWcVhJMWJ1K3VuRzBGN2VLZGZYcFFhcmREZHFRaGpiOFd2cVZJSmI4?=
 =?utf-8?B?WE1BMnp5NG5uSUE5cVRTeWp0Yld0NGxQaTN4RGtaRURzTzNxQjVqbzQ2aUVJ?=
 =?utf-8?B?V1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F62BADEC81B0554DA20855E3A96211E4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d14bc20-3622-4c41-ab8f-08dc0df18de6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 13:23:49.8149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kbVCzoNODbdHr/qXSAy+2tZpUVgL2bP2rSJTsGYSkjBMR12gMmxAFyUZA2uJL/4h1eSekZt4v3FEM4u/pejpqGBw5KuZbTnS4U/2u9yTmC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
X-OriginatorOrg: intel.com
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjI5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gSWYg
YW4gSFBEIElSUSBzdG9ybSBpcyBkZXRlY3RlZCBvbiBhIGNvbm5lY3RvciBkdXJpbmcgZHJpdmVy
IGxvYWRpbmcKPiBvcgo+IHN5c3RlbSBzdXNwZW5kL3Jlc3VtZSAtIGRpc2FibGluZyB0aGUgSVJR
IGFuZCBzd2l0Y2hpbmcgdG8gcG9sbGluZyAtCj4gdGhlCj4gcG9sbGluZyBtYXkgZ2V0IGRpc2Fi
bGVkIHRvbyBlYXJseSAtIGJlZm9yZSB0aGUgaW50ZW5kZWQgMiBtaW51dGUKPiBIUERfU1RPUk1f
UkVFTkFCTEVfREVMQVkgLSB3aXRoIHRoZSBIUEQgSVJRIHN0YXlpbmcgZGlzYWJsZWQgZm9yIHRo
aXMKPiBkdXJhdGlvbi4gT25lIHN1Y2ggc2VxdWVuY2UgaXM6Cj4gCj4gVGhyZWFkIzHCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBUaHJlYWQjMgo+IGludGVsX2Rpc3BsYXlfZHJpdmVyX3Byb2JlKCktPgo+IMKgIGludGVs
X2hwZF9pbml0KCktPgo+IMKgwqDCoCAoSFBEIElSUSBnZXRzIGVuYWJsZWQpCj4gwqAgLsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9ocGRfaXJxX2hhbmRsZXIoKS0+Cj4gwqAgLsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAKPiBpbnRlbF9ocGRfaXJxX3N0b3JtX2RldGVjdCgpCj4gwqAgLsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2hwZF9pcnFfc2V0dXAoKS0KPiA+Cj4g
wqAgLsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoSFBEIElSUSBnZXRzCj4gZGlz
YWJsZWQpCj4gwqAgLsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gcXVldWVfZGVsYXllZF93b3Jr
KGhvdHBsdWcuaG90cGx1Z193b3JrKQo+IMKgIC7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAuLi4K
PiDCoCAuwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV9ob3RwbHVnX3dvcmtfZnVuYygpLQo+
ID4KPiDCoCAuwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gaW50ZWxfaHBkX2lycV9zdG9y
bV9zd2l0Y2hfdG9fcG9sbGluZygpLT4KPiDCoCAuwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAocG9sbGluZyBlbmFibGVkKQo+IMKgIC4KPiDCoCBpbnRlbF9ocGRfcG9sbF9kaXNhYmxl
KCktPgo+IMKgwqDCoCBxdWV1ZV93b3JrKGhvdHBsdWcucG9sbF9pbml0X3dvcmspCj4gwqAgLi4u
Cj4gwqAgaTkxNV9ocGRfcG9sbF9pbml0X3dvcmsoKS0+Cj4gwqDCoMKgIChwb2xsaW5nIGdldHMg
ZGlzYWJsZWQsCj4gwqDCoMKgwqAgSFBEIElSUSBpcyBzdGlsbCBkaXNhYmxlZCkKPiDCoCAuLi4K
PiAKPiDCoCAoQ29ubmVjdG9yIGlzIG5laXRoZXIgcG9sbGVkIG9yCj4gwqDCoCBkZXRlY3RlZCB2
aWEgSFBEIElSUXMgZm9yIDIgbWludXRlcykKPiAKPiDCoCBpbnRlbF9ocGRfaXJxX3N0b3JtX3Jl
ZW5hYmxlX3dvcmsoKS0+Cj4gwqDCoMKgIChIUEQgSVJRIGdldHMgZW5hYmxlZCkKPiAKPiBUbyBh
dm9pZCB0aGUgYWJvdmUgMiBtaW51dGUgc3RhdGUgd2l0aG91dCBlaXRoZXIgcG9sbGluZyBvciBl
bmFibGVkCj4gSFBECj4gSVJRLCBsZWF2ZSB0aGUgY29ubmVjdG9yJ3MgcG9sbGluZyBtb2RlIHVu
Y2hhbmdlZCBpbgo+IGk5MTVfaHBkX3BvbGxfaW5pdF93b3JrKCkgaWYgaXRzIEhQRCBJUlEgZ290
IGRpc2FibGVkIGFmdGVyIGFuIElSUQo+IHN0b3JtCj4gaW5kaWNhdGVkIGJ5IHRoZSBjb25uZWN0
b3IncyBIUERfRElTQUJMRUQgcGluIHN0YXRlLgoKSXMgaXQgYWN0dWFsbHkgb3JkZXIgd2hpY2gg
bmVlZHMgdG8gYmUgZW5zdXJlZCBoZXJlPyBJLmUuIGVuc3VyZSB0aGF0CnBvbGxpbmcgaXMgZGlz
YWJsZWQgYmVmb3JlIGhwZCBpbnRlcnJ1cHQgZ2V0cyBlbmFibGVkPyBXaHkgZGlzYWJsaW5nCnBv
bGxpbmcgaXMgcXVldWVkIHdvcmsgYW5kIG5vdCBqdXN0IGRvbmUgZHVyaW5nIGluaXQvcmVzdW1l
PwoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCj4gCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9ob3RwbHVnLmMgfCA3ICsrKysrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9ob3RwbHVnLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90
cGx1Zy5jCj4gaW5kZXggMGMwNzAwYzZlYzY2ZC4uNzQ1MTNjM2QzNjkwYiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCj4gQEAgLTcxMCw2ICs3
MTAsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X2hwZF9wb2xsX2luaXRfd29yayhzdHJ1Y3QKPiB3b3Jr
X3N0cnVjdCAqd29yaykKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhbmNlbF93
b3JrKCZkZXZfcHJpdi0KPiA+ZGlzcGxheS5ob3RwbHVnLnBvbGxfaW5pdF93b3JrKTsKPiDCoMKg
wqDCoMKgwqDCoMKgfQo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgc3Bpbl9sb2NrX2lycSgmZGV2X3By
aXYtPmlycV9sb2NrKTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9jb25uZWN0b3JfbGlzdF9p
dGVyX2JlZ2luKCZkZXZfcHJpdi0+ZHJtLCAmY29ubl9pdGVyKTsKPiDCoMKgwqDCoMKgwqDCoMKg
Zm9yX2VhY2hfaW50ZWxfY29ubmVjdG9yX2l0ZXIoY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbnVtIGhwZF9waW4gcGluOwo+IEBAIC03
MTgsNiArNzIwLDkgQEAgc3RhdGljIHZvaWQgaTkxNV9ocGRfcG9sbF9pbml0X3dvcmsoc3RydWN0
Cj4gd29ya19zdHJ1Y3QgKndvcmspCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAocGluID09IEhQRF9OT05FKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNvbnRpbnVlOwo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmIChkZXZfcHJpdi0+ZGlzcGxheS5ob3RwbHVnLnN0YXRzW3Bpbl0uc3RhdGUgPT0KPiBI
UERfRElTQUJMRUQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjb250aW51ZTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb25u
ZWN0b3ItPmJhc2UucG9sbGVkID0gY29ubmVjdG9yLT5wb2xsZWQ7Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChlbmFibGVkICYmIGNvbm5lY3Rvci0+YmFzZS5wb2xs
ZWQgPT0KPiBEUk1fQ09OTkVDVE9SX1BPTExfSFBEKQo+IEBAIC03MjYsNiArNzMxLDggQEAgc3Rh
dGljIHZvaWQgaTkxNV9ocGRfcG9sbF9pbml0X3dvcmsoc3RydWN0Cj4gd29ya19zdHJ1Y3QgKndv
cmspCj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2Nvbm5lY3Rvcl9s
aXN0X2l0ZXJfZW5kKCZjb25uX2l0ZXIpOwo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgc3Bpbl91bmxv
Y2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwo+ICsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGVu
YWJsZWQpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fa21zX2hlbHBlcl9w
b2xsX3Jlc2NoZWR1bGUoJmRldl9wcml2LT5kcm0pOwo+IMKgCgo=
