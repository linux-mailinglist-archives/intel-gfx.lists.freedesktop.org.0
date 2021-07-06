Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EF23BDFBC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 01:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DAD6E5C8;
	Tue,  6 Jul 2021 23:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1496D6E5C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 23:21:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="189587728"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="189587728"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 16:21:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="491497551"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2021 16:21:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 16:21:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 6 Jul 2021 16:21:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 6 Jul 2021 16:21:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aa+zP1ZwCeDL5+6zNIWtt2zg0Iee2GXS7yxipFQ1f1i0ftR/1MXz1yF2erRn5TmzRu0khksn3q/zIhpzq1xECfQStLuqeoenAQej07Vc86IHTCRWj6Ks13nLXSnX4vNve4YHmQfavWlfbHxnBBFSMWQHfBlJrVUitwlrk++XZtuZRJ1p8SF3PQTHWv2OhvQpyDjba9QL1+mAfYRKuhx+VSqVK9cbVS6FUK9HoS4nQgG4Bji6Nci337JZBwUdXqnzrMCLaOUED2dDWFClx3mK2KzudfiAhbFiP/eVAG1Y29t3QcQ1If8m2J10zkP3Zwiwjo120rjTEAL3PGoPYru+ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xi7348k2TEA8RBFzuknE4ni4vKw7ecvxEl3Z2UTCssI=;
 b=b1P8CIHF1rsFl5m7tZVc/6eSAnWi3mNvdYWgA4bw2mvq+/AG91HovDzoPErDWNxndKBgfb4Pi+PWFTcvlGg56l0zt9sa698XiqvNPmFat/KxkvUGS9T155e4l0SQA+7ZehOMN40g/XHR0QxUpXYoDQXDqC19AMYbveCGJsBiBdwmYw1QyqBCKLzOodI5FVBUShi0TTiqdOJ42iUo+Qemugm8oYqcHTkMhHirwCzepXaOwh+WQ9kBOIij6rRYEQqoxYFrv6ILpaCVfFiqA6z2EH54rg0tt9OwxUKao9Jc2CCYVwCv6IyS6WiVIwWaTPJYAhR8BBtM+u3rfKy9dSW7+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xi7348k2TEA8RBFzuknE4ni4vKw7ecvxEl3Z2UTCssI=;
 b=IxTUMMDy7uY6qQE++R+Sm5jQ7azzotRkUOBVt4Em68qDDD01q9eYmTo4oCJT+Bwomw56Y85+/cTXdOYF7KMKHimWn6kEYM8r2PQfy9Ho2arzHI2O7HF+6tGjhbYmf7ZUGqTcwLO2waXGK02Os122mGmrrZnzfRiaIjGvCc0pGL0=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB1280.namprd11.prod.outlook.com (2603:10b6:300:2b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.27; Tue, 6 Jul
 2021 23:21:34 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::995c:45e9:2c8b:d7fc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::995c:45e9:2c8b:d7fc%3]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 23:21:33 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpS95QOyOh1EUeOK/zUPhH+r6s2lloA
Date: Tue, 6 Jul 2021 23:21:33 +0000
Message-ID: <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
In-Reply-To: <20210706152541.25021-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4db782f-47cf-46df-8d54-08d940d4cb6e
x-ms-traffictypediagnostic: MWHPR11MB1280:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12806A9B863F495B9DC37FA3891B9@MWHPR11MB1280.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b6gsdflVxrt8pMB9RJwgoYsTjfm3JtblkQE2T1a5MIbkTwKVe/HDnKDXM7bgwcvrblKidttMpFRaLZmxMn7je/gtsKaDwSWUcVPfOwftnYNOUx/wvRNATfWHnhKbXIa0dRTB+cWMNl/g/bewcxsWH84N2A0HjsJn0Hg5uc0VvWpZLj17ouUOg5SP1PHCTfcwBoYUO9vKEdC5s6Mjcf5NeXwirugHGEJzGz9YD9dzoF7DhB8rehxN5ks5OMTwseO4SnTd4KR35py4tnTC2Halp1s5lgQDrVnzX92XST6emOo0Bav8P94kpPdSQ6NNT0tM5pcjurKyrliPrDfaVGxsWcnrHqtPf4A9RafYnU0WMiz5vqMXIyIXRWc7f/YtVyU55wL8ew60waYW79YBBSS4G0i7n9Kb6KhygEl3iecla6Zg3Y01/aVeZUAAkoWkAwrclnFDw0GS9hbAFJTGfHGO0UWIF71AtRhiMygczELQqYZvjTa0LAf8wNN8S3ffYmlByRMnb6EIBHZVPts2Q/U3RYOEZ+vXv0K+U0szeddQOcMW7vV+Lfg1zd1RcuPnGpjpPA98yfZmvJLzfTOM7XLRAEHA+Vkje5fU6/upkOmNTBgJX1+cgA1Ai7UHTiHvNxM9JSILBeDn37i71F17NUVW3zcBodxEEi2UhN9NwApRqxJ+bN8awE3mKSm31MeodEQ/wnbNPAczsZElespQIlf2H4Ckum4jRAQm8ybKcWnfD0V/tCMs6bY+0owRKyHduEi0Qo9FucP7aEzo7lFO85uNRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(366004)(346002)(39860400002)(6486002)(26005)(316002)(86362001)(2616005)(186003)(83380400001)(36756003)(6512007)(8676002)(6506007)(76116006)(107886003)(122000001)(8936002)(966005)(71200400001)(2906002)(6636002)(64756008)(66556008)(4326008)(38100700002)(66446008)(66476007)(5660300002)(110136005)(91956017)(54906003)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rlo0bHZGekR3L0JsUzRzdWVsM0I3cE0zcVFxVVpmZFljQXlwcVZrZGRwT2Zu?=
 =?utf-8?B?VmpOcGdBVWtSRW4vSjBwcDJmcmFUN1hHNWZidVQyT0J6bitrSEVZTytCWk9S?=
 =?utf-8?B?UUJoV3pQdTZDUWNxb2l5dkY5dHRjVm9JNnU5WkNha2VIQzhyS0w2Qnc5ZFB6?=
 =?utf-8?B?dEYwSDFSWmsxWjlzZU9rRm5tQ3lzZEN5aFJuNTZFYVlCOUVKdC9zWTI2a2Zv?=
 =?utf-8?B?RWNSTi8wSmc4c3MvZXhHTE9DaXBBWVFUT2lOVWZuSVB1ZG5FN081dkVNdkoy?=
 =?utf-8?B?WXYxL0k0eDA5RkpRdXA1a1lTaTdzVkQ5ZlJWZGt4b1YyK2ZPRkJZZzZZdXYr?=
 =?utf-8?B?bXo0RzJXcWUrUFJyaUJwOEF4cGRBOTNDM2ZwZzFpNGpVbjJSeVBiVHEySG5D?=
 =?utf-8?B?eHVoNHVNbkY1RWI3WkpTS2FScVc2Y0xoMjE3NWQwTm5xMDBhWkRyTy9MOTNx?=
 =?utf-8?B?SndqTms3UGFZL0lxWHBLbjQ1MWZUcm55NWljMWplTE1CY2pUM0V4MDQxbFAr?=
 =?utf-8?B?NjQwd2JPU0NROVRhNXFZbzRZL3MyckhwSUZCTTNhTVR3RjNjbEVMTTRpVmd5?=
 =?utf-8?B?ZDdVZUdqYi9LQUI4K2NSek90WFVmT2RoNUUyRG1sOS9KbDdRY3doV1ZmUWRD?=
 =?utf-8?B?OXI1emEwTWx0V2U1MHRQM3p3bWhDOFdsWGphemo4cWZXMGRFVEY1N1BsTGVN?=
 =?utf-8?B?bGVTcHN5ZDR5cjVtYjVXMjAvSmNqYU9IY3lQWGFKdG10cURRTkZrTGIrQUhT?=
 =?utf-8?B?VG1aUWNQek0velN2SC93RnIwbzYzSU1rZTM3M05WeVBZMkZYbHpIazdsQXF6?=
 =?utf-8?B?Ky8yUloxZVU5cjl4OVUzdmlOR3JvTFhZQVNQMEx4MWZvQ1J2NHZ2Yld6S3Zl?=
 =?utf-8?B?WXJGODVlaE1lUzk1VTZYK2hsTC8xeXQ3UjZsTzlSaXcweG1PTG1GQ2lOcUN4?=
 =?utf-8?B?VWxqTGtEUStDRGVDb0NTZ09SeHZldlBpb0QxWnNDRmtDeDkxbzJ0b0VZVlNV?=
 =?utf-8?B?ZlVDUzhXUlRsNUtLV0ZSRWVPcFh1alBZYlEzZjAyN09Wb3dvMlZ0ei8vZ21R?=
 =?utf-8?B?MGZoQXRjWk4rSzhqQXdta0VVWUdTM0Jma21BNnp1ZnRnMDdnektDWXRiTmJi?=
 =?utf-8?B?Z0NWRXZ4WE9FTjdPRXBvYnFMWE9SbHdCVDlqU0VFT2hSdDd6Z1BhVnFLUXNh?=
 =?utf-8?B?YWg2czZNREZwYW1Cb1E3cHM5YnJkTmJtbGlzb2E0emVQWFJ2dzM0T09PMng1?=
 =?utf-8?B?Z1NIUDJNaGloV3pDcGVzK3RMSUNua3NZM2F6MVE2M2ZlMkptVGlLSzhOR3Rs?=
 =?utf-8?B?ejJaUklkbHBsZ2N5dkYyWGRmUWJNWHhMSi9UK3B3azlFUXJIc0J5TU5SNm9P?=
 =?utf-8?B?ME9qbytXUyt5aXI3TXhuOXhLZ3gyUkVEVndpb2VQZWg0TUlsUDl2b2Q4VkRh?=
 =?utf-8?B?MU5qMDM0TnNEbnZOTTRoTGVXNk4yVTk1QmxaRUg5SUhZY2d6NWp5eXFyTDUx?=
 =?utf-8?B?R3BQSGhTanhxUUF5Z3Bob3R5Y0g2YXJLMkxtcDI5ZEVHWFRDNWFTOE95UjlE?=
 =?utf-8?B?cC80d1RTRG5xOU5YYlhNMG1wMHBiNm1Bd1dKdDFEa3ZyNTBIcUdPZHA5OXhP?=
 =?utf-8?B?UmJsa3h2eldmSEcxY1F4ci90dFdaSC9UOWJDNWRacXVrd09UbkxmdCtFeWw2?=
 =?utf-8?B?U3VodzRSNDJKVXpLeFFrblV6SE1aRGxPVWRmcWt1ZDdmSjJWRFlPMlVkVU1G?=
 =?utf-8?B?S1RCOVpQVUhmTUV1TEVJZ0NQUjZXUm00eW1BVTFySXRCZkxkUjhLMWd4WUxN?=
 =?utf-8?B?MS91Mldpd3J1UVE3aXNqQT09?=
Content-ID: <3332C86B971C0245A194EDB53DCB8AAD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4db782f-47cf-46df-8d54-08d940d4cb6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2021 23:21:33.6375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zeaGFQVfAsYAmJnJ5GCAyubVRKCMxbDz0DeLWeXIjQUeRjTLTxRLkpc7/LX2fAR4AfLEUVV7suy9qWjHmp20nqYMBuOaIWPBu5smGXpujxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1280
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBiZWxpZXZlIEltcmXigJlzIExUIGZhbGxiYWNrOg0KaHR0cHM6Ly9naXRodWIuY29tL2lkZWFr
L2xpbnV4L2NvbW1pdHMvbGlua3RyYWluaW5nLWZhbGxiYWNrLWZpeCAgYW5kDQpDaHJvbWUgdXNl
ciBzcGFjZSBmaXg6IA0KaHR0cHM6Ly9jaHJvbWl1bS1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9j
L2Nocm9taXVtL3NyYy8rLzMwMDM0ODcNCnNob3VsZCBhZGRyZXNzIENocm9tZSBjb25jZXJucyBm
b3IgTFQgZmFpbHVyZSBhbmQgTFRUUFJzDQoNClRoYW5rcw0KS2hhbGVkDQoNCk9uIFR1ZSwgMjAy
MS0wNy0wNiBhdCAyMzoyNSArMDgwMCwgTGVlIFNoYXduIEMgd3JvdGU6DQo+IEFmdGVyIERQUlgg
bGluayB0cmFpbmluZywgaW50ZWxfZHBfbGlua190cmFpbl9waHkoKSBkaWQgbm90DQo+IHJldHVy
biB0aGUgdHJhaW5pbmcgcmVzdWx0IHByb3Blcmx5LiBJZiBsaW5rIHRyYWluaW5nIGZhaWxlZCwN
Cj4gaTkxNSBkcml2ZXIgd291bGQgbm90IHJ1biBpbnRvIGxpbmsgdHJhaW4gZmFsbGJhY2sgZnVu
Y3Rpb24uDQo+IEFuZCBubyBob3RwbHVnIHVldmVudCB3b3VsZCBiZSByZWNlaXZlZCBieSB1c2Vy
IHNwYWNlIGFwcGxpY2F0aW9uLg0KPiANCj4gRml4ZXM6IGIzMGVkZmQ4ZDBiNCAoImRybS9pOTE1
OiBTd2l0Y2ggdG8gTFRUUFIgbm9uLXRyYW5zcGFyZW50IG1vZGUNCj4gbGluayB0cmFpbmluZyIp
DQo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
Q2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5j
aGlvdUBpbnRlbC5jb20+DQo+IENjOiBXaWxsaWFtIFRzZW5nIDx3aWxsaWFtLnRzZW5nQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggMDhiY2VhZTQwYWE4Li5lNDQ3
ODhiMmM1NjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC04NDksNyArODQ5LDcgQEAgaW50ZWxf
ZHBfbGlua190cmFpbl9hbGxfcGh5cyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAg
CX0NCj4gIA0KPiAgCWlmIChyZXQpDQo+IC0JCWludGVsX2RwX2xpbmtfdHJhaW5fcGh5KGludGVs
X2RwLCBjcnRjX3N0YXRlLA0KPiBEUF9QSFlfRFBSWCk7DQo+ICsJCXJldCA9IGludGVsX2RwX2xp
bmtfdHJhaW5fcGh5KGludGVsX2RwLCBjcnRjX3N0YXRlLA0KPiBEUF9QSFlfRFBSWCk7DQo+ICAN
Cj4gIAlpZiAoaW50ZWxfZHAtPnNldF9pZGxlX2xpbmtfdHJhaW4pDQo+ICAJCWludGVsX2RwLT5z
ZXRfaWRsZV9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
